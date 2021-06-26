<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!--Flash sale-->
  <div class="flash-sale">
    <div class=" ttx">
        <div class="title-box">
            <h2 class="x"><i class="fa fa-bolt" aria-hidden="true"></i> FLASH SALE</h2>
            <h2 id="tm-sale"></h2>
        </div>
       <div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">
            <div class="carousel-inner" role="listbox">
              <a class="btn-floating" href="#multi-item-example" 
                    data-slide="prev"><i class="fa fa-chevron-left"></i></a>
                <div class="carousel-item active col-md-12 col-lg-12" id="ims">
                    <c:forEach items="${flashsaleProducts}" var="flashsaleProduct">
                    	<div class="xc" style="float:left">
	                        <div class="cd-item">
	                            <img class="card-img-t" 
	                            src="bookinforimage/${flashsaleProduct.bookInformation.mainImage}" 
	                            id="image_cap" name="image_cap">
	                            <a href="#0" class="cd-trigger">Quick View</a>
	                        </div>
	                            
	                           <div class="card-bd" id="card-bd">                              
	                             <h4 class="card-tt" title="${flashsaleProduct.bookInformation.bookName}">
	                             <a href="book-detail?bookId=${flashsaleProduct.bookInformation.bookId}">
										 ${flashsaleProduct.bookInformation.bookName}</a></h4>
	                             <p class="card-txt">${flashsaleProduct.productDiscount} đ</p>
	                             <p class="card-km">${flashsaleProduct.bookInformation.bookPrice} đ</p>
	                         </div>
                    	</div>
                    </c:forEach>
       
                </div>
                <div class="carousel-item col-lg-12 col-md-12">
                    
                    
                	 <c:forEach items="${products}" var="product">
                	 	<div class="xc" style="float:left">
	                        <div class="cd-item">
	                            <img class="card-img-t" src="bookinforimage/${product.bookInformation.mainImage}"
	                             id="image_cap" name="image_cap">
	                            <a href="#0" class="cd-trigger">Quick View</a>
	                        </div>
	                        <div class="card-bd" id="card-bd">
								<h4 class="card-tt" title="${product.bookInformation.bookName}">
									<a href="book-detail?bookId=${product.bookInformation.bookId}">
											${product.bookInformation.bookName}</a></h4>
	                            <p class="card-txt">${product.productDiscount} đ</p>
	                            <p class="card-km">${product.bookInformation.bookPrice} đ</p>
	                     	</div>
                	 </div>
                	 </c:forEach>
                 
                
                    
                </div>
                
                <a class="btn-righting" href="#multi-item-example" 
                    data-slide="next"><i class="fa fa-chevron-right"></i></a>  
            </div>
        </div>
        
        <div class="more-flash">
            <button>Xem Thêm</button>
        </div>
    </div>
    
        </div>
        <!--/FLASH SALE-->