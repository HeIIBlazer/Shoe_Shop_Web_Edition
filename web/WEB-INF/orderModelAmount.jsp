

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="w-100 d-flex justify-content-center" style="padding-top: 40px;">
        <div class="card border-0 mb-3" style="width: 40em;">
            <h2 style="padding-bottom: 50px" class="my-4 w-100 d-flex justify-content-center">REQUEST FOR ADDITIONAL PAIRS</h2>
            <div class="justify-content-center">
                <label for="theModels" style="text-align: center;" class="form-label mt-1">AVAILABLE MODELS</label>
                <form action="orderModelAmount" method="POST" >
                    <select class="form-select"  id="theModels" name="theModels">
                        <c:forEach var="model" items="${models}">
                            <option style="text-align: center" value="${model.id}">Model: ${model.modelName} // Size: ${model.modelSize} // Brand: ${model.modelFirm} // Price: ${model.price} // Amount: ${model.amount}</option>
                        </c:forEach>
                    </select>
                    
                    <label style="padding-top: 50px" for="amount">CHOOSE NUMBER OF PAIRS:</label>
                    <input type="number" value="1" id="amount" name="amount" min="1" max="50">
                    <input class="btn btn-primary mt-5" style="width: 40em"  type="submit" value="REQUEST">
                </form>
            </div>
        </div>
