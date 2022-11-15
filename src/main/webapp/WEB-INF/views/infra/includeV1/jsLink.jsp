<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

	  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="https://kit.fontawesome.com/a1961b2393.js" crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		
		<script type="text/javascript">
			$("#btnLogout").on("click", function(){
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					,url: "/member/logoutProc"
					,data: {}
					,success: function(response) {
						if(response.rt == "success") {
							location.href = '/main';
						} else {
							// by pass
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				});
			});			
			var goUrlList = "/search";
			var goOrderList = "/modify";
			var goBasketList = "/basket";
			var goWishList = "/wish"
			var form = $("form[name=form]");
			
			$("#btnSearch").on("click", function() {
				 form.attr("action", goUrlList).submit();
			});
			
			goForm2 = function(keyValue) {
		    	seq.val(keyValue);
				form.attr("action", goOrderList).submit();
			}
			goForm3 = function(keyValue) {
		    	seq.val(keyValue);
				form.attr("action", goBasketList).submit();
			}
			goForm4 = function(keyValue) {
		    	seq.val(keyValue);
				form.attr("action", goWishList).submit();
			}


		</script>