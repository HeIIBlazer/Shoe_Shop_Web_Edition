
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="w-100 d-flex justify-content-center">
    <div class="mb-0" style="width: 70em;">
        <h2 style="padding-bottom: 15px; font-size: 36px" class="my-4 w-100 d-flex justify-content-center">STORE PROFIT</h2>
        <p class="d-flex justify-content-center">
            <button class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="true" aria-controls="collapseExample" style="width: 20em; margin-bottom: 15px">
              SHOW PROFIT FOR ALL TIME
            </button>
        </p>
        <div class="collapse justify-content-center" id="collapseExample">
            <div style="width: 70em; padding-left: 0px; text-align: center; padding-bottom: 15px">
                <p>${allGain}&nbsp;</p>
            </div>
        </div>
        <h3 class="my-2 w-100 d-flex justify-content-center">THE STORE'S PROFIT FOR A CERTAIN MOUNTH</h2>
        <p class="d-flex justify-content-center">
            ${gainForAMonth}&nbsp;
        </p>
        <div class="d-flex justify-content-center" style="font-size: 18px; font-family: Molot">
            <div class="list-group d-flex align-content-start flex-wrap" style="width: 35em; text-align: center">
                <a href="gainForSeptember" class="list-group-item list-group-item-action list-group-item-warning">SEPTEMBER</a>
                <a href="gainForOctober" class="list-group-item list-group-item-action list-group-item-warning">OCTOBER</a>
                <a href="gainForNovember" class="list-group-item list-group-item-action list-group-item-warning">NOVEMBER</a>

                <a href="gainForMarch" class="list-group-item list-group-item-action list-group-item-info">MARCH</a>
                <a href="gainForApril" class="list-group-item list-group-item-action list-group-item-info">APRIL</a>
                <a href="gainForMay" class="list-group-item list-group-item-action list-group-item-info">MAY</a>
            </div>
            <div class="list-group d-flex align-content-start flex-wrap" style="width: 35em; text-align: center">
                <a href="gainForDecember" class="list-group-item list-group-item-action list-group-item-primary">DECEMBER</a>
                <a href="gainForJanuary" class="list-group-item list-group-item-action list-group-item-primary">JANUARY</a>
                <a href="gainForFebruary" class="list-group-item list-group-item-action list-group-item-primary">FEBRUARY</a>

                <a href="gainForJune" class="list-group-item list-group-item-action list-group-item-danger">JUNE</a>
                <a href="gainForJuly" class="list-group-item list-group-item-action list-group-item-danger">JULY</a>
                <a href="gainForAugust" class="list-group-item list-group-item-action list-group-item-danger">AUGUST</a>
            </div>   
        </div>
    </div>
</div>