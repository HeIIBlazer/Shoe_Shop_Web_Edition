

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div id="all-content">
    <c:if test="${authUser eq null}">
        <h2 class="my-0 w-100 d-flex justify-content-center">REGISTRATION</h2>  
    </c:if>
    <c:if test="${authUser.role eq 'ADMINISTRATOR' or 'MANAGER'}">
        <h2 class="my-0 w-100 d-flex justify-content-center">NEW USER REGESTRATION</h2>  
    </c:if>
    <c:if test="${authUser.role eq 'BUYER'}">
        <h2 class="my-0 w-100 d-flex justify-content-center">REGISTRATION</h2>  
    </c:if>
    <div class="w-100 d-flex justify-content-center">
        <form action="signUp" method="POST" >
            <div class="card border-0 mb-3" style="width: 29em;">
                <div class="form-group">
                  <label for="firstName" class="form-label mt-5">NAME</label>
                  <input type="text" class="form-control" id="firstName" name="firstName" aria-describedby="" placeholder="" value="${firstName}">
                  <small id="firstName" hidden class="form-text text-muted">Error</small>
                </div>
                <div class="form-group">
                  <label for="lastName" class="form-label mt-3">SURNAME</label>
                  <input type="text" class="form-control" id="lastName" name="lastName" aria-describedby="" placeholder="" value="${lastName}">
                  <small id="lastName" hidden class="form-text text-muted">Error</small>
                </div>
                <div class="form-group">
                  <label for="phone" class="form-label mt-3">PHONE NUMBER</label>
                  <input type="text" class="form-control" id="phone" name="phone" aria-describedby="" placeholder="" value="${phone}">
                  <small id="phone" hidden class="form-text text-muted">Error</small>
                </div>
                <div class="form-group">
                  <label for="money" class="form-label mt-3">AMOUNT OF MONEY</label>
                  <input type="text" class="form-control" id="money" name="money" aria-describedby="" placeholder="" value="${money}">
                  <small id="money" hidden class="form-text text-muted">Error</small>
                </div>
                <div class="form-group">
                  <label for="login" class="form-label mt-3">LOGIN</label>
                  <input type="text" class="form-control" id="login" name="login" aria-describedby="" placeholder="" value="${login}">
                  <small id="login" hidden class="form-text text-muted">Error</small>
                </div>
                <div class="form-group">
                  <label for="password1" class="form-label mt-3">PASSWORD</label>
                  <input type="password" class="form-control" id="password1" name="password1" aria-describedby="" placeholder="" value="">
                  <small id="password1" hidden class="form-text text-muted">Error</small>
                </div>
                <div class="form-group">
                  <label for="password2" class="form-label mt-3">PASSWORD CONFIRM</label>
                  <input type="password" class="form-control" id="password2" name="password2" aria-describedby="" placeholder="" value="">
                  <small id="password2" hidden class="form-text text-muted">Error</small>
                </div>
                <input class="btn btn-primary mt-5" type="submit" value="SAVE">
            </div>
        </form>
    </div>
</div>