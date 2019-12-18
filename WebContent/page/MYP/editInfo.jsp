<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>하루, 단어 > My 페이지</title>
    <script src="../../js/jquery-2.1.1.min.js"></script>
    <script src="../../js/jquery-ui.min.js"></script>
    <script src="../../js/jquery.easing.1.3.js"></script>
    <script src="../../js/gnb_dropdown.js"></script>
    <script src="../../js/MYP/wrongAnswerNotes.js"></script>
    <link rel="stylesheet" href="../../css/pc960/cat_common.css">
    <link rel="stylesheet" href="../../css/pc960/MYP/MYP_common.css">
    <link href="https://fonts.googleapis.com/css?family=Stylish:400" rel="stylesheet">
    <link rel="stylesheet" href="../../css/pc960/MEM/MEM_common.css">
    <link rel="stylesheet" href="../../css/Mobile/MYP/MYP_mobile_common.css">
    <link rel="stylesheet" href="../../css/Mobile/mobile_common.css">
    <style>
        .mod {
            background: #E8D7CA;
        }

        .MEM_inputBox{
            width: 68%
        }
        #editInfo>div {
            padding: 5%;
            border-top: 1px solid gray;
            border-bottom: 1px solid gray;
            margin-bottom: 20px;
            width: 70%;
        }
    
        #editInfo>div>div>span {
            display: inline-block;
            width: 85px; 
        }
        @media only screen and (max-width:767px){
            #editInfo>div{
                width:87%;
            }
            #editInfo{
                padding-left: 3%;
            }
            #editInfo>div>div>span {
                display: block;
            }
            .MEM_inputBox{
                width: 80%;
                margin-right: 1%;
            }
        }
    </style>
    <script>
        $("document").ready(function () {

                $("#nameInput").attr("value", "관리자");

                $("#idInput").attr("value", "admin");

                $("#nicknameInput").attr("value", "admin123");
                $("#nicknameInput").attr('disabled','disabled');

                $("#emailInput").attr("value", "admin@email.com");
                $("#emailInput").attr('disabled','disabled');

                $("#nicknameEditBtn").click(function () {
                    $("#nicknameInput").removeAttr('disabled');
                });

                $("#emailEditBtn").click(function () {
                    $("#emailInput").removeAttr('disabled');
                });
            });
        
    </script>
</head>

<body>
    <!-- haru header -->
    <jsp:include page="../haru_header.jsp" />
    <!-- //haru header -->
    <!-- Contents Here -->
    <div id="haru_MYP_header">
        <div id = "haru_MYP_header_subject" class="haru_pc">
        <h1 class="haru_pc">My 페이지</h1>       
        <p class="haru_pc">학습하면서 틀린 단어, 어려웠던 단어 등을 조회하고,<br>회원정보를 변경하실 수 있습니다.</p>
        </div>
        <h1 class="haru_mobile">회원정보변경</h1>
    </div>
    <div id="haru_contents_wrap">
        <aside id="haru_aside" class="haru_pc">
            <!-- SNB -->
            <jsp:include page="MYP_SNB.jsp" />
            <!-- //SNB -->
        </aside>
        <section id="haru_subcontents">
            <header id="haru_subheader" class="haru_pc">
                <div id="haru_subtitle">회원정보변경</div>
                <div id="haru_cat">
                    <p>HOME > My 페이지 > 회원정보변경</p>
                </div>
            </header>
            <!-- SubContents Here -->
            <div id="editInfo">
                <div>
                    <div id="name">
                        <span>이름</span>
                        <input type="text" placeholder="이름" class="MEM_inputBox" onkeydown="clearError(this.id)"
                            id="nameInput" disabled>
                        <!-- <button class="MEM_btn">수정</button> -->
                        <p id="nameInputError"></p>
                    </div>
                    <div id="id">
                        <span>아이디</span>
                        <input type="text" placeholder="아이디" class="MEM_inputBox" onkeydown="clearError(this.id)"
                            id="idInput" disabled>
                        <!-- <button class="MEM_btn">수정</button> -->
                        <p id="idInputError"></p>
                    </div>
                    <div id="nickname">
                        <span>별명</span>
                        <input type="text" placeholder="별명" class="MEM_inputBox" onkeydown="clearError(this.id)"
                            id="nicknameInput">
                        <button class="MEM_btn" id="nicknameEditBtn">수정</button>
                        <p id="nicknameInputError"></p>
                    </div>
                    <div id="email">
                        <span>이메일</span>
                        <input type="email" placeholder="이메일 주소" class="MEM_inputBox" onkeydown="clearError(this.id)"
                            id="emailInput">
                        <button class="MEM_btn" id="emailEditBtn">수정</button>
                        <p id="emailInputError"></p>
                    </div>
                    <div id="password">
                        <span>비밀번호</span>
                        <button class="MEM_btn openModal" id="changePWBtn0">비밀번호 변경 페이지로 이동</button>
                    </div>
                </div>
                <!-- bottom button -->
                <a href="/index.jsp"><button class="MEM_cancelBtn">취소</button></a> 
                <button class="MEM_confirmBtn" onclick="editInfoConfirm()">변경내용 저장</button>
                <br><br>
            </div>
            <!-- //SubContents Here -->
        </section>
    </div>
    <!-- //Contents Here -->

    <!-- haru footer -->
    <jsp:include page="../haru_footer.jsp" />
    <!-- //haru footer -->
</body>

</html>