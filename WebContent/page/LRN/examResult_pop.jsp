<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="../../js/jquery-2.1.1.min.js"></script>
    <script src="../../js/jquery-ui.min.js"></script>
    <script src="../../js/jquery.easing.1.3.js"></script>
    <script src="../../js/LRN/examResult_pop.js"></script>

    <link rel="stylesheet" href="../../css/pc960/LRN/examResult_pop.css">

    <title>검정결과</title>
</head>
<body class="no-drag">
    <div class="wrap">
        <div id="header">
            <div class="description">
                검정결과 화면(총 <span id="allCount"></span>문제중 <span id="correctCount"></span>문제 맞음)<br>
                검정결과는 다음과 같습니다.
            </div>
            <div class="timer"></div>
        </div>

        <div id="section">
            
        </div>

        <div id="footer">
            <div class="saveBtn">저장하기</div>
        </div>
    </div>

</body>
</html>