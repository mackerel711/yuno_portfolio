<?php require('./common/php/header.php'); ?>

<link rel="stylesheet" href="./index.css">

<body>
<div class="container-fluid main-container">
    <p id="smily-emoji">😀</p>
    <a href="mailto:yuno@yunofficial.info"><img id="smily-emoji-says" src="./images/welcome_mail.png"></a>
    <div class="row firstRow"></div>
    <div class="row">
        <div class="col-md-2 col-4 offset-md-3 offset-1 mb-1 newly-post-index"><a href="./works/graphic.php"><h1>GRAPHIC</h1><span><img src="../images/new.png"></span></a></div>
        <div class="col-md-4 col-6 mb-1"><a href="./works/webdesign.php"><h1>WEB DESIGN</h1></a></div>
    </div>
    <div class="row">
        <div class="col-md-4 col-4 offset-md-2 offset-2 mb-1"><a href="./works/branding.php"><h1>BRANDING</h1></a></div>
        <div class="col-md-4 col-4 newly-post-index"><a href="./works/logo.php"><h1>LOGO</h1><span><img src="../images/new.png"></span></a></div>
    </div>
    <div class="row">
        <div class="col-md-2 col-3 offset-md-3 offset-1 mb-1"><a href="./works/civi.php"><h1>CI VI</h1></a></div>
        <div class="col-md-4 col-7 mb-1"><a href="./works/bedesignstudio.php"><h1>BE DESIGN STUDIO</h1></a></div>
    </div>
    <div class="row">
        <div class="col-md-4 col-4 offset-md-4 offset-4 mb-1"><a href="mailto:yuno@yunofficial.info"><h1>MAIL</h1></a></div>
    </div>
</div>
</body>
<script>
$(() => {
    $('#smily-emoji').on('click', () => {
        $('#smily-emoji-says').toggle('');
    });
});
</script>
</html>