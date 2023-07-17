<%--
  Created by IntelliJ IDEA.
  User: ri2kumar
  Date: 4/19/2023
  Time: 10:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Problems</title>
</head>
<body>
<nav id="navbar">
    <h2 id="heading">PROBLEMS LIST</h2>
</nav>
<hr size="2%" color="black">
<section>
    <div id="section">
        <div id="search">
            <i class="fas fa-search"></i>
            <input type="text" name="" id="search-input" placeholder="Search the Problem Here" onkeyup="search()">
        </div>
        <div class="prob-list" id="prob-list">
            <div class="prob"><form action="allvowels" method="post"><button type="submit">All Vowels.</button></form></div>
            <div class="prob"><form action="savepatients" method="post"><button type="submit">Save Patients.</button></form></div>
            <div class="prob"><form action="microandArrayupdate" method="post"><button type="submit">Micro and Array update.</button></form></div>
            <div class="prob"><form action="marktheanswer" method="post"><button type="submit">Mark the Answer.</button></form></div>
            <div class="prob"><form action="takeoff" method="post"><button type="submit">Takeoff.</button></form></div>
            <div class="prob"><form action="countingfrogpaths" method="post"><button type="submit">Counting Frog Paths.</button></form></div>
            <div class="prob"><form action="fungame" method="post"><button type="submit">Fun Game.</button></form></div>
            <div class="prob"><form action="magicalword" method="post"><button type="submit">Magical Word.</button></form></div>
            <div class="prob"><form action="docter'ssecret" method="post"><button type="submit">Doctor's Secret.</button></form></div>
            <div class="prob"><form action="findthestring" method="post"><button type="submit">Find The String.</button></form></div>
            <div class="prob"><form action="harry'sfile" method="post"><button type="submit">Harry's File.</button></form></div>
            <div class="prob"><form action="disktower" method="post"><button type="submit">Disk Tower.</button></form></div>
            <div class="prob"><form action="pizzaconfusion" method="post"><button type="submit">Pizza Confusion.</button></form></div>
            <div class="prob"><form action="breakupapp" method="post"><button type="submit">Breakup App.</button></form></div>
            <div class="prob"><form action="charsum" method="post"><button type="submit">Char Sum.</button></form></div>
            <div class="prob"><form action="minimizecost" method="post"><button type="submit">Minimize Cost.</button></form></div>
            <div class="prob"><form action="sevensegmentdisplay" method="post"><button type="submit">Seven Segment Display.</button></form></div>
            <div class="prob"><form action="littleshinopairs" method="post"><button type="submit">Little Shino Pairs.</button></form></div>
            <div class="prob"><form action="thewealthylandlord" method="post"><button type="submit">The Wealthy Landlord.</button></form></div>
            <div class="prob"><form action="factorial" method="post"><button type="submit">Factorial.</button></form></div>
            <div class="prob"><form action="easyone" method="post"><button type="submit">Easy One.</button></form></div>
        </div>
    </div>
</section>
<style>
    *{
        margin: 0px;
        padding: 0px;
    }
    body{
        background-color: #f2f2f2;
    }
    button{
        border: none;
        background-color: white;
        font-size: 15px;
    }
    #navbar{
        display: flex;
        justify-content: center;
        align-items: center;
        position: sticky;
        top: 0;
    }
    #navbar #heading{
        width: 90%;
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 10px;
    }
    hr{
        margin: 0px 25px;
    }
    section{
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }
    section #section{
        margin: 25px 50px;
        width: 400px;
        height: 500px;
        background: #fff;
        border-radius: 15px;
        box-shadow: 4px 4px 30px rgba(0,0,0,0.08);
        display: flex;
        flex-direction: column;
        overflow-y: scroll;
    }
    section #section::-webkit-scrollbar{
        display: none;
    }
    section #search{
        width: 90%;
        height: 30px;
        margin: 15px;
        border: 2px solid rgb(87, 80, 80);
        border-radius: 10px;
        background-color: white;
        position: sticky;
        top: 22.5px;
    }
    section #search input{
        margin: 5px;
        padding: 2.5px;
        border: none;
        outline: none;
        font-size: 15px;
    }
    section #search i{
        margin: 5px;
        padding: 2.5px;
        color: rgb(87, 80, 80);
    }
    section .prob{
        margin: 20px 10px;
    }
    section a{
        text-decoration: none;
        color: black;
        font-size: 17.5px;
        padding: 10px;
    }
</style>
<script>
    const search=()=>{
        const searchbox=document.getElementById("search-input").value.toUpperCase();
        const quesitems=document.getElementById("prob-list")
        const ques=document.querySelectorAll(".prob")
        const qname=document.getElementsByTagName("form")
        for(var i=0;i<qname.length;i++){
            let match=ques[i].getElementsByTagName('form')[0];
            if(match){
                let textval=match.textContent||match.innerHTML
                if(textval.toUpperCase().indexOf(searchbox)>-1){
                    ques[i].style.display="";
                }
                else{
                    ques[i].style.display="none";
                }
            }
        }
    }
</script>
</body>

</html>
