<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%
    // ※必要な処理を実装してください

    // 入力値取得
    String num1 = request.getParameter("num1") ;
    String num2 = request.getParameter("num2") ;
    String operator = request.getParameter("operator") ;


    // 表示するメッセージ用の変数

    // メッセージ作成

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3(発展)</title>
<style>
.number {
    width: 80px;
}
</style>
</head>
<body>

  <h1>Java基礎 - 演習問題3(発展)</h1>
  <h2>四則演算</h2>

  <p>
    <!-- メッセージの表示  -->
	<% if (num1.isEmpty() && num2.isEmpty()){
			out.println("数値がどちらとも未入力です") ;		
	} else if (num1.isEmpty() || num2.isEmpty()){
		out.println("数値を入力してください") ;
	}else {
		int x = Integer.parseInt(num1) ;
		int y = Integer.parseInt(num2) ;
		
	}
	
	%>
  </p>

  <form action="javaBasicDev3.jsp" method="post">
    <input type="number" min="1" max="999999" class="number" name="num1">
    <select name="operator">
      <option value="add">＋</option>
      <option value="sub">ー</option>
      <option value="mul">×</option>
      <option value="div">÷</option>
    </select> <input type="number" min="1" max="999999" class="number"
      name="num2">
    <button type="submit">計算</button>
  </form>
  
  
</body>
</html>