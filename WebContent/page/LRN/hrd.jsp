<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>하루, 단어 > 외우자</title>
    <script src="../../js/jquery-2.1.1.min.js"></script>
    <script src="../../js/jquery-ui.min.js"></script>
    <script src="../../js/jquery.easing.1.3.js"></script>
    <script src="../../js/gnb_dropdown.js"></script>
    <script src="../../js/LRN/hrd_card.js"></script>
    <script src="../../js/wordlist.js"></script>
    <link rel="stylesheet" href="../../css/pc960/cat_common.css">
    <link rel="stylesheet" href="../../css/pc960/LRN/LRN_common.css">
    <link rel="stylesheet" href="../../css/Mobile/LRN/LRN_mobile_common.css">
    <link rel="stylesheet" href="../../css/Mobile/mobile_common.css">
    <link rel="stylesheet" href="../../css/pc960/LRN/hrd.css">
    <link href="https://fonts.googleapis.com/css?family=Stylish:400" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poor+Story:400" rel="stylesheet">
</head>
<body>
    <!-- haru header -->
    <jsp:include page="../haru_header.jsp" />
    <!-- //haru header -->
    <!-- Contents Here -->
    <div id="haru_LRN_header">
        <div id = "haru_LRN_header_subject" class="haru_pc">
            <h1 class="haru_pc">외우자</h1>            
            <p class="haru_pc">하루, 단어는 외우자의 카테고리 안에서 여러분들에게<br> 스마트한 학습방법을 제공하고자 합니다.</p>
        </div>
        <h1 class="haru_mobile">하루단어</h1>
    </div>
    <div id="haru_contents_wrap">
        <aside id="haru_aside" class="haru_pc">
            <!-- SNB -->
            <jsp:include page="LRN_SNB.jsp" />
            <!-- //SNB -->
        </aside>
        <section id="haru_subcontents">
            <header id="haru_subheader" class="haru_pc">
                <div id="haru_subtitle">하루단어</div>
                <div id="haru_cat">
                    <p>HOME > 외우자 > 하루단어</p>
                </div>
            </header>                    
            <!-- SubContents Here -->
            <!-- HRD Card!! -->
            <article id="LRN_HRD_wrap">
                <div id="LRN_HRD_card"
                onclick="fadeInOut()">
                    <div id="LRN_HRD_card1" class="HRD_card card_active">
                        <h2 id="HRD_card1"></h2>
                    </div>
                    <div id="LRN_HRD_card2" class="HRD_card">
                        <h2 id="HRD_card2"></h2>
                    </div>
                    <div id="LRN_HRD_card3" class="HRD_card">
                        <h2 id="HRD_card3"></h2>
                    </div>
                </div>
                <div id="LRN_HRD_dknow" class="HRD_button" onclick="dknowlistoutput()">
                    모르는 단어로
                </div>
                <div id="LRN_HRD_next" class="HRD_button" onclick="wordoutput()">
                    다 음
                </div>
                <div id="LRN_HRD_mynote" class="HRD_button_small">
                    내 단어장으로
                </div>
                <div id="LRN_HRD_timer">
                    <p id="HRD_timer"></p>
                </div>
            </article>
            <!-- //HRD Card!! -->
            <!-- Don'know word -->
            <article id="LRN_HRD_dknow_List">
                <div id="LRN_HRD_dknow_title">
                    <h1>모르는 단어 List</h1>
                    <img src="../../img/arrow1.png" alt="늘이기/감추기" id="LRN_HRD_dknow_UD">
                </div>
                <div id="LRN_HRD_dknow_table_wrap">
                    <table id="LRN_HRD_dknow_table">
                        <thead>
                            <tr>
                                <th class="table_counter">순번</th>
                                <th class="table_kanji">한자</th>
                                <th class="table_yomigana">요미가나</th>
                                <th class="table_korean">뜻</th>
                                <th class="table_time">체크한 시간</th>
                                <th class="table_delete">삭제</th>
                            </tr>
                        </thead>
                        <tbody id="LRN_HRD_dknowlist">
                        </tbody>
                    </table>
                    <div class="delete_list" onclick="dknowlistdelete()">List 전체 삭제</div>
                </div>
            </article>
            <!-- //Don'know word -->
            <!-- //SubContents Here -->
        </section>
    </div>
    <!-- //Contents Here -->
    <!-- haru footer -->
    <jsp:include page="../haru_footer.jsp" />
    <!-- //haru footer -->
</body>
</html>