
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="w-100 d-flex justify-content-center">
    <form action="editMyInfo" method="POST" >
        <div class="card border-0 mb-3" style="width: 40em;">
            <h2 style="padding-bottom: 50px" class="my-4 w-100 d-flex justify-content-center">CHANGING PERSONAL DATA</h2>

            <div class="form-group">
                <label for="editFirstName" class="form-label mt-4">CHANGE NAME</label>
                <input type="text" class="form-control" id="editFirstName" name="editFirstName" aria-describedby="" placeholder="" value="${firstName}">
                <small id="editFirstName" hidden class="form-text text-muted">Error</small>
            </div>
            <div class="form-group">
                <label for="editLastName" class="form-label mt-4">CHANGE SURNAME</label>
                <input type="text" class="form-control" id="editLastName" name="editLastName" aria-describedby="" placeholder="" value="${lastName}">
                <small id="editLastName" hidden class="form-text text-muted">Error</small>
            </div>
            <div class="form-group">
                <label for="editPhone" class="form-label mt-4">CHANGE PHONE NUMBER</label>
                <input type="text" class="form-control" id="editPhone" name="editPhone" aria-describedby="" placeholder="" value="${phone}">
                <small id="editPhone" hidden class="form-text text-muted">Error</small>
            </div>
            <div class="form-group">
                <label for="editMoney" class="form-label mt-4">CHANGE THE AMOUNT OF MONEY</label>
                <input type="text" class="form-control" id="editMoney" name="editMoney" aria-describedby="" placeholder="" value="${money}">
                <small id="editMoney" hidden class="form-text text-muted">Error</small>
            </div>
            <input class="btn btn-primary mt-5" type="submit" value="SAVE CHANGES">
        </div>
    </form>
</div>