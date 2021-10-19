<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contents Details</title>

<script type="text/javascript">
	function updateC() {
		var url = "update";
		url += "?contentsno=${dto.con}";

		location.href = url;
	}

	function updatePw() {
		var url = "updatePwForm";
		url += "?id=${dto.id}";

		location.href = url;
	}

	function updateFile() {
		var url = "updateFile";
		url += "?id=${dto.id}";
		url += "&oldfile=${dto.fname}";
		location.href = url;
	}
	function deleteM() {
		var url = "delete";
		url += "?id=${dto.id}";
		url += "&oldfile=${dto.fname}";
		location.href = url;
	}
</script>

</head>
<body>

</body>
</html>