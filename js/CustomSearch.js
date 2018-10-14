
var PNo = 0;
var SLNo = 0;
var NotIn = "0";
var Page_No = 0;
var Total_Results = 0;
var Status = "False";

var CheckedValues = [];



    var searchvalue = document.getElementById('<%= hdsearchtext.ClientID %>').value;
    var categories = document.getElementById('<%= hdcategories.ClientID %>').value;



    if (searchvalue == "" || searchvalue == null) {
        return;
    }


    $(".master-categories input").click(function () {


        PNo = 0;
        SLNo = 0;
        NotIn = "0";
        Page_No = 0;
        Total_Results = 0;
        Status = "False";
        divTable.innerHTML = "";
        //var searchvalue = document.getElementById('<%= hdsearchtext.ClientID %>').value;
        //alert(document.getElementById('Content_Master_Categories1_hfSelectedValues').value);
        categories = document.getElementById('Content_Master_Categories1_hfSelectedValues').value
        bindThreadsList(searchvalue, PNo, SLNo, categories);

    });


    bindThreadsList(searchvalue, PNo, SLNo, categories);


    function bindThreadsList(searchParameter, PageNo, SearchLevel, Categories) {


        $("#divLoading").show();
        $.ajax({
            type: "POST",
            contentType: "application/json; charset=utf-8",
            url: "SearchResults.aspx/GetResultsNew",
            data: '{SearchParameter:"' + searchParameter + '", PageNo:' + PageNo + ', SearchLevel:' + SearchLevel + ', NotIn: "' + NotIn + '", Categories:"' + Categories + '"}',
            dataType: "json",
            success: function (response) {
                var tabledata = response.d;
                var CurrrentURL = window.location.host;
                if (tabledata.length > 0) {
                    var html = [];
                    var htmlPageNo = [];

                    for (var i = 0; i < tabledata.length; i++) {

                        html.push("<div class='panel panel-default'><div class='panel-body'><div class='col-md-1 content-icon'><img src='../img/" + tabledata[i].SubFormatID + ".png' alt='Resource-Document'></div><div class='col-md-11 content-data'><div class='question'><b><a class='resource-title' href='ViewResult.aspx?RID=" + tabledata[i].ResourceID + "'>" + tabledata[i].Title + "</a></b>  </div>        <a href='ViewResult.aspx?RID=" + tabledata[i].ResourceID + "'>" + CurrrentURL + "/" + tabledata[i].DisplayURL + "/" + tabledata[i].ResourceID + " </a>   <p>" + tabledata[i].Description + "</p>    <div class='row content-details'>  <div class='col-md-4'> <b>Uploaded By: </b>" + tabledata[i].CreatedBy + "</div>  <div class='col-md-4 text-center'> <b>Uploded Date: </b> " + tabledata[i].CreatedDate + "</div>  <div class='col-md-4 text-right'> <b>Views: </b>" + tabledata[i].ViewsCount + "</div> </div></div></div></div>");
                        SLNo = tabledata[i].SearchLevel;
                        PNo = tabledata[i].PageNo;
                        NotIn = NotIn + "," + tabledata[i].ResourceID;
                        Total_Results = parseInt(Total_Results) + 1;
                    }

                    if (tabledata.length < 10) Status = "True";

                    if (Page_No > 0) {
                        htmlPageNo.push('<span class="pageno"> Page: ' + Page_No + '  </span>');
                        divTable.innerHTML = divTable.innerHTML + htmlPageNo.join('');
                    }

                    divTable.innerHTML = divTable.innerHTML + html.join('');
                    //divTable.innerHTML = html.join('');
                    $("#divLoading").hide();

                    //PNo = parseInt(PNo) + 1;


                }
                else {

                    var html = [];
                    if (PageNo == "0") {
                        html.push('<span class="alert alert-box error-message radius text-center" ><br /><br /><br /><h2>No results found for ' + searchParameter + '</h2> </span>');
                    }
                    else {
                        html.push('<div class="row"><div class="col-md-6"><span class="pageno" >No more results. </span></div><div class="col-md-6 text-right"><span class="pageno" >Total Results:' + Total_Results + ' </span></div></div>');
                    }

                    divTable.innerHTML = divTable.innerHTML + html.join('');
                    $("#divLoading").hide();
                    $(window).unbind('scroll');
                }


            },
            error: function (xhr, status, error) {
                alert('Error: ' + error);
                $("#divLoading").hide();
            }
        });
    }


    var now = new Date().getTime();
    $(window).scroll(function () {
        if ($(document).height() <= $(window).scrollTop() + $(window).height()) {
            if (Status == "False") {
                if (new Date().getTime() - now > 1000) {
                    $("#divLoading").show();
                    PNo = parseInt(PNo) + 1;
                    Page_No = parseInt(Page_No) + 1;
                    bindThreadsList(searchvalue, PNo, SLNo, document.getElementById('Content_Master_Categories1_hfSelectedValues').value);
                    now = new Date().getTime();
                }
            }

        }
    });
