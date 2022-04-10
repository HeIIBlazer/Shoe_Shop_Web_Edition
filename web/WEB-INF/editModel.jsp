
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="w-100 d-flex justify-content-center">
    <div class="card border-0 mb-3" style="width: 40em;">
        <h2 style="padding-bottom: 30px" class="my-4 w-100 d-flex justify-content-center">CHANGING SHOES</h2>
        <label for="theModels" style="text-align: center;" class="form-label mt-1">AVAILABLE SHOES</label>
        <form action="chooseModelToEdit" method="POST">
            <select class="form-select"  id="theModels" name="theModels">
                <c:forEach var="model" items="${models}">
                    <option style="text-align: center" value="${model.id}">Model: ${model.modelName} // Size: ${model.modelSize} // Brand: ${model.modelFirm} // Price: ${model.price}</option>
                </c:forEach>
            </select>
            <input class="btn btn-secondary mt-3 w-100" type="submit" value="CHOOSE">
        </form>
        <form action="editModel" method="POST" >
            <div class="form-group">
                <label for="editModelName" class="form-label mt-4">CHANGE NAME</label>
                <input type="text" class="form-control" id="editModelName" name="editModelName" aria-describedby="" placeholder="" value="${modelName}">
                <small id="editModelName" hidden class="form-text text-muted">Error</small>
            </div>
            <div class="form-group">
                <label for="editModelSize" class="form-label mt-4">CHANGE SIZE</label>
                <input type="text" class="form-control" id="editModelSize" name="editModelSize" aria-describedby="" placeholder="" value="${modelSize}">
                <small id="editModelSize" hidden class="form-text text-muted">Error</small>
            </div>
            <div class="form-group">
                <label for="editModelFirm" class="form-label mt-4">CHANGE BRAND NAME</label>
                <input type="text" class="form-control" id="editModelFirm" name="editModelFirm" aria-describedby="" placeholder="" value="${modelFirm}">
                <small id="editModelFirm" hidden class="form-text text-muted">Error</small>
            </div>
            <div class="form-group">
                <label for="editPrice" class="form-label mt-4">CHANGE COST</label>
                <input type="text" class="form-control" id="editPrice" name="editPrice" aria-describedby="" placeholder="" value="${price}">
                <small id="editPrice" hidden class="form-text text-muted">Error</small>
            </div>
            <input class="btn btn-primary mt-5 w-100" type="submit" value="SAVE CHANGES">
        </form>
    </div>
</div>
       