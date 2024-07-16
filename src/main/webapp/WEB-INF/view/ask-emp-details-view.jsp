<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>
<h2>Dear Employee, Please enter your details</h2>

<br>
<br>

<%--<form action="showDetails" method="get">--%>
<%--    <input type="text" id="empId" name="employeeName"--%>
<%--           placeholder="Write your name"/>--%>

<%--    <input type="submit" value="Submit">--%>
<%--</form>--%>

<form:form action="showDetails" modelAttribute="employee">

    Name: <form:input path="name"/>
    <br><br>
    SurName: <form:input path="surname"/>
    <br><br>
    Salary: <form:input path="salary"/>
    <br><br>
    Department: <form:select path="department">
    <%-- <form:option value="Information Technology" label="IT"/>
     <form:option value="Human Resources" label="HR"/>
     <form:option value="Sales" label="Sales"/>--%>
    <form:options items="${employee.departments}"/>
</form:select>
    <br><br>
    Which car do you want?
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
<%--    Audi<form:radiobutton path="carBrand" value="Audi"/>--%>
<%--    BMW<form:radiobutton path="carBrand" value="BMW"/>--%>
<%--    Mercedes<form:radiobutton path="carBrand" value="Mercedes"/>--%>
    <br><br>
    Foreign language(s):
    EN <form:checkbox path="languages" value="English"/>
    DE <form:checkbox path="languages" value="German"/>
    FR <form:checkbox path="languages" value="French"/>
    <br><br>

    <input type="submit" value="OK">
</form:form>

</body>
</html>