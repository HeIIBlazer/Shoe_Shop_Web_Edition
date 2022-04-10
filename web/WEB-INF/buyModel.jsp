

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="w-100 d-flex justify-content-center">
    <form action="buyModel" method="POST" >
        <div class="card border-0 mb-3" style="width: 40em;">
            <h2 style="padding-top: 100px" class="my-4 w-100 d-flex justify-content-center">BUYING SHOES</h2>
            <label for="buyModels" class="form-label mt-4">AVAILABLE MODELS</label>
            <select class="form-select"  id="buyModels" name="buyModels">
                <c:forEach var="model" items="${models}">
                    <option style="text-align: center" value="${model.id}">Model: ${model.modelName} // Size: ${model.modelSize} // Brand: ${model.modelFirm} // Price: ${model.price} // Amount: ${model.amount}</option>
                </c:forEach>
            </select>
            <input class="btn btn-primary mt-5" type="submit" value="BUY">
        </div>
    </form>
</div>