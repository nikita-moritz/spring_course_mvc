<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ taglib prefix="c" uri="http://jakarta.apache.org/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<body>

<h2>Dear Employee, you are welcome!</h2>
<br>
<br>
<%--Your name: ${param.employeeName}--%>
<%--Your name: ${nameAttribute}--%>

Your name: ${employee.name}
<br>
Your surname: ${employee.surname}
<br>
Your salary: ${employee.salary}
<br>
Your department: ${employee.department}
<br>
Your car brand: ${employee.carBrand}
<br>



<ul>
    <c:forEach var="lang" items="$(employee.languages)">

        <li> ${lang} </li>

    </c:forEach>
</ul>


<br><br>
</body>
</html>