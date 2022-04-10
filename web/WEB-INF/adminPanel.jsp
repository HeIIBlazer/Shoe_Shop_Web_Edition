

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="w-100 d-flex justify-content-center">
    <form action="setRole" method="POST">
        <div class="card border-0 mb-3" style="width: 40em;">
            <h2 style="padding-top: 50px; padding-bottom: 25px; font-size: 30px; text-align: center;" class="my-4 w-100 d-flex justify-content-center">ASSIGN A ROLE TO A REGISTERED USER</h2>
            <label for="сhooseUser" class="form-label mt-4">REGISTERED USERS</label>
            <select class="form-select"  id="сhooseUser" name="сhooseUser">
                <c:forEach var="user" items="${users}">
                    <option style="text-align: center" value="${user.id}">${user.firstName} // ${user.lastName} // ${user.role}</option>
                </c:forEach>
            </select>
            <label for="chooseRole" style="padding-top: 45px" class="form-label mt-4">CHOOSE A ROLE</label>
            <select class="form-select"  id="chooseRole" name="chooseRole">
                <option style="text-align: center" value="SECONDADMIN">ADDITIONAL ADMINISTRATOR</option>
                <option style="text-align: center" value="MANAGER">MANAGER</option>
                <option style="text-align: center" value="BUYER">BUYER</option>
            </select>
            <input class="btn btn-primary mt-5" type="submit" value="SET ROLE">
        </div>
    </form>
</div>