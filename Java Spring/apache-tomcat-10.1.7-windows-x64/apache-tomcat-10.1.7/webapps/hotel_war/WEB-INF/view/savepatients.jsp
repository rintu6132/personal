<%--
  Created by IntelliJ IDEA.
  User: ri2kumar
  Date: 4/20/2023
  Time: 4:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
body>
<header id="queshead">
    <h1 id="ques" class="mhead">Save Patients</h1>
    <a href="#soln"><button class="button">Go to Solution</button></a>
</header>
<hr size="2%" color="black">
<section id="question">
    <div id="problem">
        <h3 class="shead">Problem:</h3>
        <p>A new deadly virus has infected large population of a planet. A brilliant scientist has discovered a new
            strain of virus which can cure this disease. Vaccine produced from this virus has various strength
            depending on midichlorians count. A person is cured only if midichlorians count in vaccine batch is more
            than midichlorians count of person. A doctor receives a new set of report which contains midichlorians
            count of each infected patient, Practo stores all vaccine doctor has and their midichlorians count. You
            need to determine if doctor can save all patients with the vaccines he has. The number of vaccines and
            patients are equal.</p>
    </div>
    <div id="input">
        <h3 class="shead">Input:</h3>
        <p>First line contains the number of vaccines - <b>N</b>.</p>
        <p>Second line contains <b>N</b> integers, which are strength of vaccines.</p>
        <p>Third line contains <b>N</b> integers, which are midichlorians count of patients.</p>
    </div>
    <div id="output">
        <h3 class="shead">Output:</h3>
        <p>Print a single line containing <b>"Yes"</b> or <b>"No"</b>.</p>
    </div>
    <div id="constraint">
        <h3 class="shead">Constraints:</h3>
        <p><b>1 &lt N &lt 10</b>.</p>
    </div>
    <div id="sinput">
        <h3 class="shead">Sample Input:</h3>
        <p>5</p>
        <p>123 146 454 542 456</p>
        <p>100 328 248 689 200</p>
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
            <li>v=list(map(int,input().split()))</li>
            <li>m=list(map(int,input().split()))</li>
            <li>c=0</li>
            <li>for i in range(len(v)):</li>
            <li>&nbsp &nbsp &nbsp &nbsp if v[i]>m[i]:</li>
            <li>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp c+=1</li>
            <li>&nbsp &nbsp &nbsp &nbsp else:</li>
            <li>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp break</li>
            <li>if c==n:</li>
            <li>&nbsp &nbsp &nbsp &nbsp print('Yes')</li>
            <li>else:</li>
            <li>&nbsp &nbsp &nbsp &nbsp print('No')</li>
        </ol>
    </div>
    <div id="java">
        <h3 class="shead"><u>Java:</u></h3>
        <ol>
            <li>import java.util.Scanner;</li>
            <li>public class SavePatients</li>
            <li>{</li>
            <li>public static void main(String[] args)// TODO Auto-generated method stub</li>
            <li>{</li>
            <li>Scanner sc=new Scanner(System.in);</li>
            <li>int n=sc.nextInt();</li>
            <li>int p1[]=new int[n];</li>
            <li>int v1[]=new int[n];</li>
            <li>boolean save=true;</li>
            <li>for(int i=0;i&ltn;i++)</li>
            <li>{</li>
            <li>v1[i]=sc.nextInt();</li>
            <li>}</li>
            <li>for(int i=0;i&ltn;i++)</li>
            <li>{</li>
            <li>p1[i]=sc.nextInt();</li>
            <li>}</li>
            <li>for(int i=0;i&ltn;i++)</li>
            <li>{</li>
            <li>if(v1[i]&ltp1[i])</li>
            <li>{</li>
            <li>save=false;</li>
            <li>break;</li>
            <li>}</li>
            <li>}</li>
            <li>if(save)</li>
            <li>{</li>
            <li>System.out.println("YES");</li>
            <li>}</li>
            <li>else</li>
            <li>{</li>
            <li>System.out.println("NO");</li>
            <li>}</li>
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
    #langa:hover{
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
