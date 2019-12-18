<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<span class="modal_close" onclick="closeModal()">&times;</span>
<h1 id="modalHeader">아이디 찾기</h1>
<div id="modal_name">
    <input type="text" placeholder="이름" class="modal_inputBox" onkeydown="clearError(this.id)" id="nameInput">
    <p id="nameInputError"></p>
</div>
<div id="modal_email">
    <input type="email" placeholder="이메일 주소" class="modal_inputBox" onkeydown="clearError(this.id)" id="emailInput">
    <p id="emailInputError"></p>
</div>
<button id="findIDBtn" class="modal_confirmBtn" onclick="forgotIdConfirm()">아이디 찾기</button>
<br>
<hr><br>
<p style="text-align: center">비밀번호를 잊으셨나요? &nbsp<a href="#" style="color:darkblue" class="redirectModal" id="forgotPWBtn2">비밀번호 찾기</a></p>
<script>
        //redirect modal
        $(".redirectModal").click(function () {
            var idName = $(this).attr("id");
            idName = idName.substring(0, idName.length - 1);
            $("#" + idName + "0").click();
        });
    </script>