<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    </style>
	
	<script type="text/javascript"></script>
	
</head>
<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
   	
   	<div class="container">
	
		<div class="page-header text-info">
	       <h3>상 품 검 색</h3>
	    </div>
	    
	</div>
	
	<div class="row">
	
		<c:forEach var="product" items="${list}" >
		  <div class="col-sm-6 col-md-4">
		    <div class="thumbnail">
		      <img src="/images/uploadFiles/${product.fileName}" width="200" height="auto">
		      <div class="caption" align="center">
		        <h3>${ product.prodName }</h3>
		        <p>&#8361;${ product.price }</p>
		        <p><a href="/product/getProduct?prodNo=${product.prodNo}&menu=search&currentPage=${search.currentPage}" class="btn btn-primary" role="button">상세보기</a> 
		        <a href="/purchase/addPurchaseView/${ product.prodNo }" class="btn btn-default" role="button">구매하기</a></p>
		      </div>
		    </div>
		  </div>
		</c:forEach>	
		  
	</div>
	
	<!-- PageNavigation Start... -->
	<jsp:include page="../common/pageNavigator_new.jsp"/>
	<!-- PageNavigation End... -->

</body>
</html>