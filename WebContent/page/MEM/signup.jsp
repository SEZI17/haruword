<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<span class="modal_close" onclick="closeModal()">&times;</span>
<h1 id="modalHeader">회원 정보 입력</h1>
<div id="modal_name">
    이름 <input type="text" placeholder="이름 (2~5글자 한글)" class="modal_inputBox" onkeydown="clearError(this.id)" id="nameInput">
    <p id="nameInputError"></p>
</div>
<div id="modal_id">
    아이디 <input type="text" placeholder="아이디 (영문 및 숫자 4~10글자)" class="modal_inputBox" onkeydown="clearError(this.id)" id="idInput">
    <p id="idInputError"></p>
</div>
<div id="modal_nickname">
    별명<input type="text" placeholder="별명 (2~10글자, 특수문자 제외)" class="modal_inputBox" onkeydown="clearError(this.id)" id="nicknameInput">
    <p id="nicknameInputError"></p>
</div>
<div id="modal_email">
    이메일 주소<input type="email" placeholder="이메일 주소" class="modal_inputBox" onkeydown="clearError(this.id)" id="emailInput">
    <p id="emailInputError"></p>
</div>
<div id="modal_password">
    비밀번호<input type="password" placeholder="비밀번호 (8자리 이상)" class="modal_inputBox" onkeydown="clearError(this.id)" id="passwordInput">
    <p id="passwordInputError"></p>
</div>
<div id="modal_passwordCheck">
    비밀번호 확인<input type="password" placeholder="비밀번호 확인" class="modal_inputBox" onkeydown="clearError(this.id)" id="passwordCheckInput">
    <p id="passwordCheckInputError"></p>
</div>
<button class="modal_confirmBtn" onclick="signupConfirm()">회 원 가 입</button>