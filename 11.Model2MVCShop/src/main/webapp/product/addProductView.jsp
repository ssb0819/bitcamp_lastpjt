<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">

	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<style>
	
	  body {
            padding-top : 50px;
        }
        
       body > div.container{
        	border: 3px solid #D6CDB7;
            margin-top: 10px;
        }

        

    </style>
	
	<script type="text/javascript">
	
	function fncAddProduct(){
		//Form 유효성 검증
	 	var name = ${'#prodName'}.val();
		var detail = document.detailForm.prodDetail.value;
		var manuDate = document.detailForm.manuDate.value;
		var price = document.detailForm.price.value;

		if(name == null || name.length<1){
			alert("상품명은 반드시 입력하여야 합니다.");
			return;
		}
		if(detail == null || detail.length<1){
			alert("상품상세정보는 반드시 입력하여야 합니다.");
			return;
		}
		if(manuDate == null || manuDate.length<1){
			alert("제조일자는 반드시 입력하셔야 합니다.");
			return;
		}
		if(price == null || price.length<1){
			alert("가격은 반드시 입력하셔야 합니다.");
			return;
		}

		$("form").attr("method" , "POST").attr("action" , "/product/addProduct").submit();
	}
	
		function removeFile(elem){
			$(elem).parent().parent().remove();
		}
	
		$(function(){
			
			$('button:contains("추가")').on('click',function(){
				
				var addFile = "<div class='form-group'>"
							    +"<label for='uploadFile' class='col-sm-offset-1 col-sm-3 control-label'></label>"
							   	+"<div class='col-sm-4'>"
							     	+"<input type='file' class='form-control-file border' id='uploadFile' name='uploadFile' multiple='multiple'>"
							    +"</div><div class='col-sm-1'>"
									+"<button type='button' class='btn btn-default' onClick='javascript:removeFile(this);' >삭제</button>"
							    +"</div></div>";
				
				$('#add').append(addFile);
			});
			
		});
	
		$(function(){
			$("button:contains('등록')").on("click",function(){
				fncAddProduct();
			});
		});
		
	</script>
	
</head>
<body>
	
	<!-- ToolBar Start /////////////////////////////////////-->
	<div class="navbar  navbar-default">
        <div class="container">
        	<a class="navbar-brand" href="/index.jsp">Model2 MVC Shop</a>
   		</div>
   	</div>
   	<!-- ToolBar End /////////////////////////////////////-->
   	
   	<div class="container">
   	
   		<h1 class="bg-primary text-center">상 품 등 록</h1>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal" enctype="multipart/form-data">
		  
		  <div class="form-group">
		    <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">상품명</label>
		    <div class="col-sm-4">
		      <input type=text" class="form-control" id="prodName" name="prodName" placeholder="상품명">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">상품상세정보</label>
		    <div class="col-sm-6">
		      <input type="text" class="form-control" id="prodDetail" name="prodDetail" placeholder="200자내로 입력하세요"
		      			 style="height: 100px" >
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="price" class="col-sm-offset-1 col-sm-3 control-label">가격</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="price" name="price" placeholder="가격">
		    </div>
		  </div>
		  		  
		  <div class="form-group">
		    <label for="thumbnail" class="col-sm-offset-1 col-sm-3 control-label">썸네일이미지</label>
		    <div class="col-sm-4">
		      <input type="file" class="form-control-file border" id="thumbnail" name="thumbnail" >
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="uploadFile" class="col-sm-offset-1 col-sm-3 control-label">본문이미지</label>
		    <div class="col-sm-4">
		     	<input type="file" class="form-control-file border" id="uploadFile" name="uploadFile" multiple="multiple">
		    </div>
		    <div class="col-sm-1">
				<button type="button" class="btn btn-default"  >추가</button>
		    </div>
		  </div>
		  
		  <div id="add"></div>
		  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >등록</button>
			  <button type="button" class="btn btn-primary"  >취소</button>
		    </div>
		  </div>
		</form>
   	
   	</div>
		
</body>
</html>