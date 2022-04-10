<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    #dropdownMenuLink {
        background-color: #212529;
        border: none;
    }
    
    dropdownMenuLink {
        margin-bottom: 1px
    }
</style>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a style="font-size: 26px; font-weight: 700; margin-bottom: 5px;" class="navbar-brand" href="index">SHOE SHOP WEB EDITION</a>
        
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <c:if test="${authUser.role eq 'ADMINISTRATOR' or authUser.role eq 'SECONDADMIN'}">
                <div class="dropdown">
                    <a class="btn btn-secondary dropdown-toggle" style="font-size: 22px; margin-right: 10px" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                      ADMIN PANEL
                    </a>

                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                      <li><a class="dropdown-item" href="showAdminPanel">MANAGING ROLES</a></li>
                    <li><a class="dropdown-item" href="showGain">STORE PROFIT</a></li>
                    </ul>
                </div>
                <a style="font-size: 20px; color: white; font-weight: 400; margin-bottom: 2px" class="navbar-brand" href="showBuyModel">BUY SHOES</a>
                <div class="dropdown">
                    <a class="btn btn-secondary dropdown-toggle" style="margin-right: 4px" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                      ADD
                    </a>

                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                      <li><a class="dropdown-item" href="showAddModel">MODEL</a></li>
                      <li><a class="dropdown-item" href="addUser">USERS</a></li>
                      <li><a class="dropdown-item" href="showOrderModelAmount">NUMBER OF AVAILABLE MODELS</a></li>
                    </ul>
                </div>

                <div class="dropdown">
                    <a class="btn btn-secondary dropdown-toggle" style="margin-right: 4px" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                        CHANGE
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                      <li><a class="dropdown-item" href="showEditModel">MODEL</a></li>
                      <li><a class="dropdown-item" href="showEditUserInfo">OTHER USER</a></li>
                      <li><a class="dropdown-item" href="showEditMyInfo">PERSONAL DATA</a></li>
                      <li><a class="dropdown-item" href="showEditMyLogin">LOG IN DATA</a></li>
                    </ul>
                </div>
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <li class="nav-item">
                        <c:catch var="user">
                            <p class="nav-item" style="margin-left: 680px; margin-top: 2px; color: white;">YOURE BALANCE: ${authUser.money}$</p>
                        </c:catch>
                    </li>
                </ul>
            </c:if>

            <c:if test="${authUser.role eq 'MANAGER'}">
                <a style="font-size: 22px; color: white; font-weight: 400; margin-bottom: 3px" class="navbar-brand" href="showBuyModel">Купить обувь</a>
                <div class="dropdown">
                    <a class="btn btn-secondary dropdown-toggle" style="margin-right: 4px" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                      ADD
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                      <li><a class="dropdown-item" href="showAddModel">MODEL</a></li>
                      <li><a class="dropdown-item" href="addUser">USER</a></li>
                    </ul>
                </div>

                <div class="dropdown">
                    <a class="btn btn-secondary dropdown-toggle" style="margin-right: 4px" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                        CHANGE
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                      <li><a class="dropdown-item" href="showEditModel">MODEL</a></li>
                      <li><a class="dropdown-item" href="showEditUserInfo">OTHER USER</a></li>
                      <li><a class="dropdown-item" href="showEditMyInfo">PERSONAL DATA</a></li>
                      <li><a class="dropdown-item" href="showEditMyLogin">LOG IN DATA</a></li>
                    </ul>
                </div>
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <li class="nav-item">
                        <c:catch var="user">
                            <p class="nav-item" style="margin-left: 880px; margin-top: 2px; color: white;">YOURE BALANCE: ${authUser.money}$</p>
                        </c:catch>
                    </li>
                </ul>
            </c:if>

            <c:if test="${authUser.role eq 'BUYER'}">
                <a style="font-size: 22px; color: white; font-weight: 400; margin-bottom: 3px" class="navbar-brand" href="showBuyModel">BUE SHOES</a>
                <div class="dropdown">
                    <a class="btn btn-secondary dropdown-toggle" style="margin-right: 4px" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                        ACCOUNT SETTINGS
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                        <li><a class="dropdown-item" href="showEditMyInfo">PERSONAL DATA</a></li>
                        <li><a class="dropdown-item" href="showEditMyLogin">LOG IN DATA</a></li>
                    </ul>
                </div>
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <li class="nav-item">
                        <c:catch var="user">
                            <p class="nav-item" style="margin-left: 1060px; margin-top: 2px; color: white;">YOURE BALANCE: ${authUser.money}$</p>
                        </c:catch>
                    </li>
                </ul>
            </c:if>
                
            <c:if test="${authUser eq null}">
                <a style="font-size: 20px; color: white; font-weight: 400; margin-bottom: 0px" class="navbar-brand" href="showListModels">MODEL LIST</a>
            </c:if>
        </div>
        
            <ul class="navbar-nav  mb-2 mb-lg-0">
                <c:if test="${authUser eq null}">
                    <li class="nav-item">
                      <a class="nav-link" href="showIndex">LOG IN</a>
                    </li>
                </c:if>
                <c:if test="${authUser ne null}">
                    <li class="nav-item">
                      <a class="nav-link" href="logout">LOG OUT</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>