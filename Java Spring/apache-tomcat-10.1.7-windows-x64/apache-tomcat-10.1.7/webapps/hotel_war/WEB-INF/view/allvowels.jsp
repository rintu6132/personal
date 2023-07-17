<%--
  Created by IntelliJ IDEA.
  User: ri2kumar
  Date: 4/20/2023
  Time: 4:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<header id="queshead">
  <h1 id="ques" class="mhead">All Vowels</h1>
  <a href="#soln"><button class="button">Go to Solution</button></a>
</header>
<hr size="2%" color="black">
<section id="question">
  <div id="problem">
    <h3 class="shead">Problem:</h3>
    <p> Vowels are very essential characters to form any meaningful word in English dictionary. There are 5
      vowels in english language - <b>a, e, i, o, u</b>. You are given a randoms string containing only
      lowercase letters and you need to find if the string contains all the vowels.</p>
  </div>
  <div id="input">
    <h3 class="shead">Input:</h3>
    <p>First line contains <b>N</b>, the size of the string.</p>
    <p>Second line contains the letters (only lowercase).</p>
  </div>
  <div id="output">
    <h3 class="shead">Output:</h3>
    <p>Print <b>"YES"</b> (without the quotes) if all vowels are found in the string.</p>
    <p>Otherwise print <b>"NO"</b> (without the quotes).</p>
  </div>
  <div id="constraint">
    <h3 class="shead">Constraints:</h3>
    <p>The size of the string will not be greater than 10,000 i.e <b>1 ≤ N ≤ 10000</b>.</p>
  </div>
  <div id="sinput">
    <h3 class="shead">Sample Input:</h3>
    <p>8</p>
    <p>atuongih</p>
  </div>
  <div id="soutput">
    <h3 class="shead">Sample Output:</h3>
    <p>NO</p>
  </div>
</section>
<header id="solnhead">
  <h1 id="soln" class="mhead">Solution</h1>
  <a href="#ques"><button class="button">Go to Problem</button></a>
</header>
<nav>
        <span id="lang">
            <a href="#python" id="langa">Python</a>
            <a href="#java" id="langa">Java</a>
            <a href="#c++" id="langa">C++</a>
            <a href="#c" id="langa">C</a>
        </span>
</nav>
<section id="solution">
  <div id="python">
    <h3 class="shead"><u>Python:</u></h3>
    <ol>
      <li>n=int(input())</li>
      <li>s=input()</li>
      <li>s=list(s.strip())</li>
      <li>v=["a","e","i","o","u"]</li>
      <li>j=0</li>
      <li>for i in range(5):</li>
      <li>&nbsp &nbsp &nbsp &nbsp if v[i] in s:</li>
      <li>if j==5:</li>
      <li>&nbsp &nbsp &nbsp &nbsp print("YES")</li>
      <li>else:</li>
      <li>&nbsp &nbsp &nbsp &nbsp print("NO")</li>
    </ol>
  </div>
  <div id="java">
    <h3 class="shead"><u>Java:</u></h3>
    <ol>
      <li>import java.util.Scanner;</li>
      <li>public class AllVowel</li>
      <li>{</li>
      <li>public static void main(String[] args)// TODO Auto-generated method stub</li>
      <li>{</li>
      <li>Scanner sc=new Scanner(System.in);</li>
      <li>int size=sc.nextInt();</li>
      <li>sc.nextLine();</li>
      <li>String s=sc.nextLine();</li>
      <li>String vowel="aeiou";</li>
      <li>boolean find=false;</li>
      <li>for(int j=0;j&ltvowel.length();j++)</li>
      <li>{</li>
      <li>find=false;</li>
      <li>for(int i=0;i&lts.length();i++)</li>
      <li>{</li>
      <li>if(vowel.charAt(j)==s.charAt(i))</li>
      <li>{</li>
      <li>find=true;</li>
      <li>break;</li>
      <li>}</li>
      <li>}</li>
      <li>if(!find)</li>
      <li>{</li>
      <li>break;</li>
      <li>}</li>
      <li>}</li>
      <li>if(find)</li>
      <li>System.out.println("YES");</li>
      <li>else</li>
      <li>System.out.println("NO");</li>
      <li>}</li>
      <li>}</li>
    </ol>
  </div>
  <div id="c++">
    <h3 class="shead"><u>C++:</u></h3>
    <ol>
      <li>Solution is not available.</li>
    </ol>
  </div>
  <div id="c">
    <h3 class="shead"><u>C:</u></h3>
    <ol>
      <li>Solution is not available.</li>
    </ol>
  </div>
</section>
<style>
  *{
    margin: 0px;
    padding: 0px;
  }
  html{
    scroll-behavior: smooth;
  }
  .mhead{
    width: 75%;
    text-align: center;
  }
  .shead{
    padding: 10px 0px;
  }
  .button{
    padding: 2.5px;
    border-radius: 7.5px;
    background-color: white;
    color: black;
    cursor: pointer;
  }
  a{
    margin: 10px;
    padding: 5px;
    text-decoration: none;
    color: white;
  }
  div{
    padding: 10px;
  }
  p{
    padding: 5px 25px;
  }
  ol{
    border: 2px solid black;
    border-radius: 10px;
    background-color: rgb(54, 54, 54);
    color: rgb(32, 199, 32);
  }
  li{
    margin: 0px 30px;
    padding: 5px;
  }
  hr{
    margin: 0px 25px;
  }
  header{
    display: flex;
    justify-content: center;
    align-items: center;
  }
  #question{
    display: flex;
    flex-direction: column;
    margin: 25px;
    border: 2px solid black;
    border-radius: 10px;
    background-color: #f2f2f2;
  }
  #solnhead::before{
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
    margin: 0px 25px;
  }
  #solnhead{
    position: sticky;
    top: 0;
    color: white;
  }
  nav{
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 10px;
    position: sticky;
    top: 60px;
  }
  #lang{
    background-color: black;
    border-radius: 5px;
    padding: 5px;
  }
  #lang a:hover{
    border: 2px solid white;
    border-radius: 7.5px;
    color: black;
    background-color: white;
    padding: 1px;
  }
  #solution{
    display: flex;
    flex-direction: column;
    margin: 25px;
  }
</style>
</body>
</html>
