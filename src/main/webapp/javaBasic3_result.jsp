<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    // ※必要な処理を実装してください

    // 入力値取得
    request.setCharacterEncoding("UTF-8");

    String name = request.getParameter("name") ;
    String age = request.getParameter("age") ;
    String bloodtype = request.getParameter("bloodType") ;
    
    int x =0 ;
    if(!age.isEmpty()){
    	  x = Integer.parseInt(age) ;
    }
    
    // ロボットからの返信用メッセージ作成

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Java基礎_演習問題3</title>
</head>
<body>
  <h1>Java基礎 - 演習問題3</h1>

  <h2>ロボットからの返信</h2>
  <div>
    <!-- 必要に応じて処理を変更してください  -->

    <p><% if(name.isEmpty()){
            out.println("こんにちは名無しさん");      
    } else if(name.equals("ロボット") ){
            out.println("こんにちはロボットさん！私と同じ名前ですね！");
    }  else{
     out.println("こんにちは、"+name+"さん！") ;
     
     }
      %>
    </p>
    <p><% if( x == 20){
    	out.println("私と同い年なんですね！") ;
    } else if ( x > 20){
    	out.println("私よりも"+(x-20)+"歳年上ですね。") ;
    } else if(x<20){
    	out.println("私よりも"+(20-x)+"歳年下ですね。") ;
    } else if(age.isEmpty()){
    	out.println("私よりも20歳年下ですね。") ;
    }
    		
    %>
	</p> 
    <p><% switch (bloodtype){
    case "typeA" :
    	out.println("私もA型です！") ;
    	break ;
    case "typeB" :
    	out.println("B型の人と話すのは初めてです。") ;
    	break ;
    case "typeAB" :
    	out.println("私の母がAB型です。") ;
    	break ;
    default :
    	out.println("私の父がO型です。") ;
    	break ;
    }
    
   %></p>
  </div>
  <a href="javaBasic3_input.jsp">戻る</a>
</body>
</html>