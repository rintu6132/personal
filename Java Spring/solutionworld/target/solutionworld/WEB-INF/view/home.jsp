<%--
  Created by IntelliJ IDEA.
  User: ri2kumar
  Date: 4/19/2023
  Time: 12:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"  initial-scale="1.0">
    <title>www.solution_world.com</title>

</head>

<body>
<%
    String username=(String) request.getAttribute("username");
%>
<nav id="navbar" class="h_nav_resp">
    <div class="logo">
        <img src="https://www.shutterstock.com/image-photo/concept-information-search-magnifying-glass-260nw-1362025946.jpg" alt="SW">
    </div>
    <ul class="leftnav v_nav_resp">
        <li><a href="#home">Home</a></li>
        <li><a href="#service">Services</a></li>
        <li><a href="#about">About Us</a></li>
        <li><a href="#contact">Contact Us</a></li>
    </ul>
    <div class="rightnav">
        <p style="color: #f2f2f2" >Welcome - <%=username%> </p>
    </div>
</nav>
<section id="home">

    <h1>Welcome to Solution World!</h1>
    <div class="home_box">
        <p>This Web-site helps you to find the solution of competitive programming.</p><br>

        <p>Solution are available in (C++ , Java , Python ).</p><br>

        <p>You can  participate in the contest .</p><br>

        <p>Happy Learning.</p>

    </div>
</section>
<section id="service">
    <h2>Our Services</h2>
    <div class="service_box">
        <div class="service">
            <img src="https://examsbook.co.in/img/post/large/qdH7saHMBd11computer-awareness-questions.jpg" alt="">
            You can practice the problems here!
<%--            <a action="practice" href="practice_problem.html">Practice</a>--%>
            <form action="practice" method="post">
                <button type="submit">Practice Here</button>
            </form>
        </div>
        <div class="service">
            <img src="https://www.online-tech-tips.com/wp-content/uploads/2021/06/Featured-How-to-Search-for-a-Word-or-Text-on-a-Webpage-in-Any-Web-Browser.jpg" alt="">
            You can search for the solutions here!
            <form action="problem" method="post">
                <button type="submit">Go to Problem</button>
            </form>
        </div>
        <div class="service">
            <img src="data:image/jpeg;base64,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" alt="">
            You can participate in the contest here!
            <form action="contest" method="post">
                <button type="submit">Go to Contest</button>
            </form>
        </div>
    </div>
</section>
<section id="about">
    <h2>About Us</h2>
    <div class="profile_box">
        <div class="profile">
            <div><img src="https://scontent.fbho1-3.fna.fbcdn.net/v/t1.6435-9/119884977_3166328990142144_249076722459117392_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=SCUd4lyqm0YAX_c-0yG&_nc_ht=scontent.fbho1-3.fna&oh=00_AfCBN_9XMsCu4Z6uVoFwmQ0ai7dZ3zT-Akvac4jyTAX-cQ&oe=6466ECCF" alt=""></div>
            <div>Prashant</div>
            <div>Java</div>
        </div>
        <div class="profile">
            <div><img src="https://media.licdn.com/dms/image/D5603AQEVZZdiNH19Ew/profile-displayphoto-shrink_800_800/0/1679734866846?e=1687392000&v=beta&t=cpSbn-uD4JLAsutMqXosBVyHAuC6HdQ-t6PQjySZHuc" alt=""></div>
            <div>Rintu Kumar</div>
            <div>Python</div>
        </div>
        <div class="profile">
            <div><img src="https://www.facebook.com/kumarritesh.sinha?mibextid=ZbWKwL" alt=""></div>
            <div>Ritesh Kumar</div>
            <div>C++</div>
        </div>
    </div>
</section>
<section id="contact">
    <h2>Contact Us</h2>
    <div class="social">
        Follow Us
        <div class="social_link">
            <a href="https://www.facebook.com">
                <img src="https://static-prod.adweek.com/wp-content/uploads/2017/10/Facebook-Logo-Hero-652x367.png" alt="Facebook" class="logo">
            </a>
            <a href="https://www.instagram.com">
                <img src="https://upload.wikimedia.org/wikipedia/commons/9/95/Instagram_logo_2022.svg" alt="Instagram" class="logo">
            </a>
            <a href="https://www.twitter.com">
                <img src="https://play-lh.googleusercontent.com/wIf3HtczQDjHzHuu7vezhqNs0zXAG85F7VmP7nhsTxO3OHegrVXlqIh_DWBYi86FTIGk" alt="Twitter" class="logo">
            </a>
            <a href="https://www.youtube.com">
                <img src="https://yt3.googleusercontent.com/584JjRp5QMuKbyduM_2k5RlXFqHJtQ0qLIPZpwbUjMJmgzZngHcam5JMuZQxyzGMV5ljwJRl0Q=s900-c-k-c0x00ffffff-no-rj" alt="Youtube" class="logo">
            </a>
        </div>
        <div class="contact_id">
            <div>Mail:-solution.world@gmail.com</div>
            <div>Mobile:-9988776655</div>
            <div>phone:-123-456-789</div>
        </div>
    </div>
</section>
<article id="article">
    <div class="article">
        <a href="#">Terms & Conditions</a>
        <a href="#">Privacy & Policy</a>
        <a href="#">Security</a>

    </div>
    <div class="article">
        <a href="#">Delete Account</a>

        <a href="#">Help Center</a>
    </div>
</article>
<footer id="footer">
    <div>
        <p>2023@ Copyright &copy; www.solution_world.com. All rights reserved!</p>
    </div>
</footer>
<script src="resp.js"></script>
<style>
    *{
        margin: 0px;
        padding: 0px;
    }
    html{
        scroll-behavior: smooth;
    }
    h1{
        font-size: 75px;
        margin: 10px;
    }
    h2{
        font-size: 25px;
        margin: 5px;
    }
    p{
        font-size: 19px;
    }
    nav::before{
        background-color: black;
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        height: 100%;
        z-index: -1;
        opacity: 0.75;
    }
    #navbar{
        display: flex;
        position: sticky;
        top: 0;
    }
    .leftnav{
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .rightnav{
        display: flex;
        justify-content: center;
        align-items: center;
        position: absolute;
        top: 10px;
        right: 20px;
    }
    .logo{
        top: 15px;
        left: 5px;
        margin: 5px;
    }
    .logo img{
        height: 30px;
        width: 30px;
        border: 2px solid white;
        border-radius: 50px;
    }
    .leftnav li{
        list-style: none;
        padding: 10px 30px;

    }
    .leftnav li a{
        text-decoration: none;
        color: white;
        font-weight: bold;
    }
    .leftnav li a:hover{
        border: 2px solid white;
        border-radius: 10px;
        color: black;
        background-color: white;
        padding: 1px;
    }
    #home::before{
        background:url(https://img.freepik.com/premium-photo/man-without-face-hood-holds-laptop-his-hands-dark_164357-6566.jpg?w=360) no-repeat center center/cover;
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        height: 100vh;
        z-index: -1;
        opacity: 1;
    }
    #home{
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        height: 100vh;
        color: white;
    }
    .home_box{
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        margin: 5px 10px;
    }
    #service{
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        margin: 25px 0px;
    }
    .service_box{
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 15px;
    }
    .service{
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        height: 300px;
        width: 300px;
        border: 2px solid rgb(196, 194, 194);
        border-radius: 15px;
        background-color: #f2f2f2;
        margin: 10px;
    }
    .service img{
        width: 60%;
        height: 55%;
        border-radius: 20px;
        margin: 10px;
    }
    .service button{
        border: 2px solid rgb(121, 117, 117);
        border-radius: 10px;
        background-color: rgb(172, 169, 169);
        font-weight: bold;
        margin: 10px;
        padding: 5px;
    }
    #about{
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        margin: 25px 0px;
    }
    .profile_box{
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 15px;
    }
    .profile{
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        height: 200px;
        width: 175px;
        margin: 10px;
        border: 2px solid rgb(196, 194, 194);
        border-radius: 15px;
        background-color: #f2f2f2;
    }
    .profile img{
        height: 115px;
        width: 115px;
        border-radius: 25px;
        margin: 10px 0px;
    }
    #contact{
        display: flex;
        align-items: center;
        flex-direction: column;
        color: black;
        margin-top: 25px;
        padding: 10px;
        background-color: #f2f2f2;
    }
    .social{
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        margin-top: 20px;
    }
    .social_link{
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 10px;
    }
    .social_link a{
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }
    .social_link a img{
        height: 40px;
        width: 40px;
        margin: 10px 50px 0px 50px;
        border: 2px solid white;
        border-radius: 10px;
    }
    .contact_id{
        display: flex;
        flex-direction: column;
        margin: 10px;
    }
    .contact_id div{
        margin: 10px;
    }
    #article{
        display: flex;
        background-color: rgb(53, 51, 51);
    }
    .article{
        display: flex;
        flex-direction: column;
        margin: 25px 75px;
    }
    .article a{
        text-decoration: none;
        color: white;
        padding: 10px;
    }
    #footer{
        display: flex;
        justify-content: center;
        align-items: center;
        height: 35px;
        background-color: black;
        color: white;
    }
    #footer div{
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        margin: 2.5px 15px;
    }
</style>
</body>

</html>
