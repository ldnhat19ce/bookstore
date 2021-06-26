<%--
  Created by IntelliJ IDEA.
  User: LENHAT
  Date: 10/9/2020
  Time: 7:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <div class="modal-content">
        <form>
            <div class="modal-header" >
                <h4 class="modal-title" style="color: black;">Thông tin</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <table class="table table-striped table-responsive-md
                            btn-table tb-x1" style="margin-top: 10px;">

                    <thead>

                    </thead>

                    <tbody >

                    <tr>
                        <th scope="row">Mã Sách</th>
                        <td>${bookInformation.bookId}</td>
                    </tr>
                    <tr >
                        <th scope="row">Tên Sách</th>
                        <td>${bookInformation.bookName}</td>
                    </tr>
                    <tr>
                        <th scope="row">Số Lượng</th>
                        <td>${bookInformation.bookAmount}</td>
                    </tr>
                    <tr>
                        <th scope="row">Năm Sản Xuất</th>
                        <td>${bookInformation.bookDate}</td>
                    </tr>
                    <tr>
                        <th scope="row">Trọng Lượng</th>
                        <td>${bookInformation.bookWeight}</td>
                    </tr>
                    <tr>
                        <th scope="row">Kích Thước</th>
                        <td>${bookInformation.booksize}</td>
                    </tr>
                    <tr>
                        <th scope="row">Số Trang</th>
                        <td>${bookInformation.numberPage}</td>
                    </tr>
                    <tr>
                        <th scope="row">Nhà Xuất Bản</th>
                        <td>${bookInformation.pulish.pulishName}</td>
                    </tr>
                    <tr>
                        <th scope="row">Nhà Cung Cấp</th>
                        <td>${bookInformation.supplier.supplierName}</td>
                    </tr>
                    <tr>
                        <th scope="row">Hình Thức Bìa</th>
                        <td>${bookInformation.form.formName}</td>
                    </tr>
                    <tr>
                        <th scope="row">Tác giả</th>
                        <td>${bookInformation.author.authorName}</td>
                    </tr>


                    </tbody>

                </table>
                <span id="idHolder"></span>
            </div>s
            <div class="modal-footer">
                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                <input type="submit" class="btn btn-danger" value="Thêm">
            </div>
        </form>
    </div>

