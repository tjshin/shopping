package com.study.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.study.utility.Utility;

@Controller
public class NoticeController {

	@Autowired
	@Qualifier("com.study.notice.NoticeServiceImpl")
	private NoticeService service;

//	@GetMapping("/")
//	public String home(Locale locale, Model model) {
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//
//		String formattedDate = dateFormat.format(date);
//
//		model.addAttribute("serverTime", formattedDate);
//		return "/home";
//	}

	@GetMapping("/notice/admin/create")
	public String create() {

		return "/notice/admin/create";
	}

	@PostMapping("/notice/admin/create")
	public String create(NoticeDTO dto) {

		if (service.create(dto) == 1) {
			return "redirect:../list";
		} else {
			return "/notice/error";
		}

	}

	@RequestMapping("/notice/list")
	public String list(HttpServletRequest request) {
		// 검색관련------------------------
		String col = Utility.checkNull(request.getParameter("col"));
		String word = Utility.checkNull(request.getParameter("word"));

		if (col.equals("total")) {
			word = "";
		}

		// 페이지관련-----------------------
		int nowPage = 1;// 현재 보고있는 페이지
		if (request.getParameter("nowPage") != null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		int recordPerPage = 10;// 한페이지당 보여줄 레코드갯수

		// DB에서 가져올 순번-----------------
		int sno = ((nowPage - 1) * recordPerPage);
		int eno = nowPage * recordPerPage;

		Map map = new HashMap();
		map.put("col", col);
		map.put("word", word);
		map.put("sno", sno);
		map.put("eno", eno);
		map.put("cnt", recordPerPage);

		int total = service.total(map);

		List<NoticeDTO> list = service.list(map);

		String paging = Utility.paging(total, nowPage, recordPerPage, col, word);

		// request에 Model사용 결과 담는다
		request.setAttribute("list", list);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("paging", paging);

		// view페이지 리턴
		return "/notice/list";
	}

	@GetMapping("/notice/read")
	public String read(int noticeno, Model model) {

		service.upCnt(noticeno);

		NoticeDTO dto = service.read(noticeno);

		String content = dto.getContent().replaceAll("\r\n", "<br>");

		dto.setContent(content);

		model.addAttribute("dto", dto);

		return "/notice/read";
	}

	@GetMapping("/notice/admin/update")
	public String update(int noticeno, Model model) {

		model.addAttribute("dto", service.read(noticeno));

		return "/notice/admin/update";
	}

	@PostMapping("/notice/admin/update")
	public String update(NoticeDTO dto, RedirectAttributes redirect, HttpServletRequest request) {

		int cnt = service.update(dto);
		if (cnt == 1) {
			redirect.addAttribute("col", request.getParameter("col"));
			redirect.addAttribute("word", request.getParameter("word"));
			redirect.addAttribute("nowPage", request.getParameter("nowPage"));
			return "redirect:../list";
		} else {
			return "../error";
		}

	}

	@GetMapping("/notice/admin/delete")
	public String delete() {

		return "/notice/admin/delete";
	}

	@PostMapping("/notice/admin/delete")
	public String delete(HttpServletRequest request, int noticeno, String passwd, RedirectAttributes redirect) {

		int cnt = service.delete(noticeno);
		if (cnt == 1) {
			redirect.addAttribute("col", request.getParameter("col"));
			redirect.addAttribute("word", request.getParameter("word"));
			redirect.addAttribute("nowPage", request.getParameter("nowPage"));
			return "redirect:../list";
		} else {
			return "../error";
		}

	}
}
