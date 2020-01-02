<%@ page import="com.example.demo.entity.Student" %>
<%@ page import="com.example.demo.service.StudentService" %>
<%@ page import="com.example.demo.service.impl.StudentServiceImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<%
    request.setCharacterEncoding("utf-8");
    StudentService studentService = new StudentServiceImpl();
    String name = request.getParameter("name");
    Integer age = Integer.parseInt(request.getParameter("age"));
    Student student = new Student();
    student.setName(name);
    student.setAge(age);
    studentService.insertStudent(student);
    out.println("添加成功");
%>



</body>
</html>
