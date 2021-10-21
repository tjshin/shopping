let modal = $(".modal");
 
let modalRegisterBtn = $("#modalRegisterBtn");
 
$("#modalCloseBtn").on("click", function (e) {
 
  modal.modal('hide');
});
 
 
$("#addOrdersBtn").on("click", function (e) {
  modal.find("button[id !='modalCloseBtn']").hide();
 
  modalRegisterBtn.show();
 
  $(".modal").modal("show");
 
});
 
 
modalRegisterBtn.on("click", function (e) {
 
  let order = {
	
    id: session.getAttribute("id"),
    contentsno: session.getAttribute("contentsno")
    
  };
  orderService
    .add(order)
    .then(result => {
 
      modal.modal("hide");
 
    }); //end add
 
}); //end modalRegisterBtn.on