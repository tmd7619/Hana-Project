<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="${pageContext.request.contextPath}/resources/admin/img/logo/logo.png" rel="icon">
    <link href="${pageContext.request.contextPath}/resources/admin/vendor/fontawesome-free/css/all.min.css"
          rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/admin/vendor/bootstrap/css/bootstrap.min.css"
          rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/admin/css/ruang-admin.min.css" rel="stylesheet">

</head>

<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>


<body id="page-top" style="width: 70%;margin-left: 15%; ">


<div id="wrapper" style="margin-top:100px">
    <div id="content-wrapper" class="d-flex flex-column">
        <div id="content">

            <!-- Container Fluid-->
            <div class="container-fluid" id="container-wrapper">
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">${userVO.username} 손님 회원 정보</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"/>
                    </ol>
                </div>

                <div class="row mb-3">
                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card h-100">
                            <div class="card-body">
                                <div class="row align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-uppercase mb-1">Earnings (Monthly)
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
                                        <div class="mt-2 mb-0 text-muted text-xs">
                                            <span class="text-success mr-2"><i class="fa fa-arrow-up"></i> 3.48%</span>
                                            <span>Since last month</span>
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-calendar fa-2x text-primary"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Earnings (Annual) Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card h-100">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-uppercase mb-1">Sales</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">650</div>
                                        <div class="mt-2 mb-0 text-muted text-xs">
                                            <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 12%</span>
                                            <span>Since last years</span>
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-shopping-cart fa-2x text-success"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- New User Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card h-100">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-uppercase mb-1">New User</div>
                                        <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">366</div>
                                        <div class="mt-2 mb-0 text-muted text-xs">
                                            <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 20.4%</span>
                                            <span>Since last month</span>
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-users fa-2x text-info"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Pending Requests Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card h-100">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-uppercase mb-1">Pending Requests</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
                                        <div class="mt-2 mb-0 text-muted text-xs">
                                            <span class="text-danger mr-2"><i
                                                    class="fas fa-arrow-down"></i> 1.10%</span>
                                            <span>Since yesterday</span>
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-comments fa-2x text-warning"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Area Chart -->
                    <div class="col-xl-8 col-lg-7">
                        <div class="card mb-4">
                            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                <h6 class="m-0 font-weight-bold text-primary">${userVO.username} 님의 자산 현황</h6>
                                <div class="dropdown no-arrow">
                                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                       data-toggle="dropdown"
                                       aria-haspopup="true" aria-expanded="false">
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                         aria-labelledby="dropdownMenuLink">
                                        <div class="dropdown-header">Dropdown Header:</div>
                                        <a class="dropdown-item" href="#">Action</a>
                                        <a class="dropdown-item" href="#">Another action</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">Something else here</a>
                                    </div>
                                </div>
                            </div>

                            <div class="card-body">
                                <%--                                <div class="chart-area">--%>
                                <%--                                    <canvas id="myAreaChart"></canvas>--%>
                                <%--                                </div>--%>
                                <div class="chart-container" style="position: relative; height:200px; width:40vw">
                                    <canvas id="clientChart" style="margin-left: -58px;margin-top:26px;padding-left: 10px;
                                padding-right: 10px;"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Pie Chart -->
                    <div class="col-xl-4 col-lg-5">
                        <div class="card mb-4">
                            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                <h6 class="m-0 font-weight-bold text-primary">Products Sold</h6>
                                <div class="dropdown no-arrow">
                                    <a class="dropdown-toggle btn btn-primary btn-sm" href="#" role="button"
                                       id="dropdownMenuLink"
                                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Month <i class="fas fa-chevron-down"></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                         aria-labelledby="dropdownMenuLink">
                                        <div class="dropdown-header">Select Periode</div>
                                        <a class="dropdown-item" href="#">Today</a>
                                        <a class="dropdown-item" href="#">Week</a>
                                        <a class="dropdown-item active" href="#">Month</a>
                                        <a class="dropdown-item" href="#">This Year</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="mb-3">
                                    <div class="small text-gray-500">Oblong T-Shirt
                                        <div class="small float-right"><b>600 of 800 Items</b></div>
                                    </div>
                                    <div class="progress" style="height: 12px;">
                                        <div class="progress-bar bg-warning" role="progressbar" style="width: 80%"
                                             aria-valuenow="80"
                                             aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <div class="small text-gray-500">Gundam 90'Editions
                                        <div class="small float-right"><b>500 of 800 Items</b></div>
                                    </div>
                                    <div class="progress" style="height: 12px;">
                                        <div class="progress-bar bg-success" role="progressbar" style="width: 70%"
                                             aria-valuenow="70"
                                             aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <div class="small text-gray-500">Rounded Hat
                                        <div class="small float-right"><b>455 of 800 Items</b></div>
                                    </div>
                                    <div class="progress" style="height: 12px;">
                                        <div class="progress-bar bg-danger" role="progressbar" style="width: 55%"
                                             aria-valuenow="55"
                                             aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <div class="small text-gray-500">Indomie Goreng
                                        <div class="small float-right"><b>400 of 800 Items</b></div>
                                    </div>
                                    <div class="progress" style="height: 12px;">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 50%"
                                             aria-valuenow="50"
                                             aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <div class="small text-gray-500">Remote Control Car Racing
                                        <div class="small float-right"><b>200 of 800 Items</b></div>
                                    </div>
                                    <div class="progress" style="height: 12px;">
                                        <div class="progress-bar bg-success" role="progressbar" style="width: 30%"
                                             aria-valuenow="30"
                                             aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer text-center">
                                <a class="m-0 small text-primary card-link" href="#">View More <i
                                        class="fas fa-chevron-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <%--                    <!-- Message From Customer-->--%>
                    <%--                    <div class="col-xl-4 col-lg-5 ">--%>
                    <%--                        <div class="card">--%>
                    <%--                            <div class="card-header py-4 bg-primary d-flex flex-row align-items-center justify-content-between">--%>
                    <%--                                <h6 class="m-0 font-weight-bold text-light">Message From Customer</h6>--%>
                    <%--                            </div>--%>
                    <%--                            <div>--%>
                    <%--                                <div class="customer-message align-items-center">--%>
                    <%--                                    <a class="font-weight-bold" href="#">--%>
                    <%--                                        <div class="text-truncate message-title">Hi there! I am wondering if you can--%>
                    <%--                                            help me with a--%>
                    <%--                                            problem I've been having.--%>
                    <%--                                        </div>--%>
                    <%--                                        <div class="small text-gray-500 message-time font-weight-bold">Udin Cilok ·--%>
                    <%--                                            58m--%>
                    <%--                                        </div>--%>
                    <%--                                    </a>--%>
                    <%--                                </div>--%>
                    <%--                                <div class="customer-message align-items-center">--%>
                    <%--                                    <a href="#">--%>
                    <%--                                        <div class="text-truncate message-title">But I must explain to you how all this--%>
                    <%--                                            mistaken idea--%>
                    <%--                                        </div>--%>
                    <%--                                        <div class="small text-gray-500 message-time">Nana Haminah · 58m</div>--%>
                    <%--                                    </a>--%>
                    <%--                                </div>--%>
                    <%--                                <div class="customer-message align-items-center">--%>
                    <%--                                    <a class="font-weight-bold" href="#">--%>
                    <%--                                        <div class="text-truncate message-title">Lorem ipsum dolor sit amet, consectetur--%>
                    <%--                                            adipiscing elit--%>
                    <%--                                        </div>--%>
                    <%--                                        <div class="small text-gray-500 message-time font-weight-bold">Jajang Cincau ·--%>
                    <%--                                            25m--%>
                    <%--                                        </div>--%>
                    <%--                                    </a>--%>
                    <%--                                </div>--%>
                    <%--                                <div class="customer-message align-items-center">--%>
                    <%--                                    <a class="font-weight-bold" href="#">--%>
                    <%--                                        <div class="text-truncate message-title">At vero eos et accusamus et iusto odio--%>
                    <%--                                            dignissimos--%>
                    <%--                                            ducimus qui blanditiis--%>
                    <%--                                        </div>--%>
                    <%--                                        <div class="small text-gray-500 message-time font-weight-bold">Udin Wayang ·--%>
                    <%--                                            54m--%>
                    <%--                                        </div>--%>
                    <%--                                    </a>--%>
                    <%--                                </div>--%>
                    <%--                                <div class="card-footer text-center">--%>
                    <%--                                    <a class="m-0 small text-primary card-link" href="#">View More <i--%>
                    <%--                                            class="fas fa-chevron-right"></i></a>--%>
                    <%--                                </div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                </div>--%>
                    <%--                <!--Row-->--%>

                    <!-- Modal Logout -->
                    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
                         aria-labelledby="exampleModalLabelLogout"
                         aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabelLogout">Ohh No!</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <p>Are you sure you want to logout?</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Cancel
                                    </button>
                                    <a href="login.html" class="btn btn-primary">Logout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!---Container Fluid-->
        </div>
    </div>
</div>

<!-- Scroll to top -->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<script src="${pageContext.request.contextPath}/resources/admin/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/ruang-admin.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/vendor/chart.js/Chart.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/demo/chart-area-demo.js"></script>
<script>
    $(document).ready(function () {


    })


    var userId = {
        userId: "${userVO.userId}"
    }
    console.log(userId)

    var clientAssets;
    var deposit;
    var fund;
    var bond;
    var wrap;
    var stock;

    /* 고객 자산 정보 가져오기  */
    $
        .ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/client/assets",
            data: JSON.stringify(userId),
            contentType: "application/json; charset=utf-8;",
            dataType: "json",
            success: function (res) {
                console.log(res);
                deposit = res.deposit
                fund = res.fund
                bond = res.bond
                wrapAccount = res.wrapAccount
                stock = res.stock

                var ctx = document.getElementById("clientChart")
                    .getContext("2d");
                var myPie = new Chart(
                    ctx,
                    {
                        type: 'pie',
                        data: {
                            labels: ["예금", "펀드", "랩어카운트", "주식",
                                "채권"],
                            datasets: [{
                                backgroundColor: ["#00b638",
                                    "#efaa30", "#50c8ea",
                                    "#3cba9f", "#e8c3b9"],
                                data: [deposit, fund,
                                    wrapAccount, stock, bond]
                            }],
                        },
                        options: {
                            title: {
                                display: true,
                                text: '${userVO.username} 고객님의 자산 보유 현황',
                                fontStyle: 'bold',
                                fontSize: 20,
                                maintainAspectRatio: false,
                            },
                            tooltips: {
                                callbacks: {
                                    // this callback is used to create the tooltip label
                                    label: function (tooltipItem,
                                                     data) {
                                        // get the data label and data value to display
                                        // convert the data value to local string so it uses a comma seperated number
                                        var dataLabel = data.labels[tooltipItem.index];
                                        var value = ': '
                                            + data.datasets[tooltipItem.datasetIndex].data[tooltipItem.index]
                                                .toLocaleString();

                                        // make this isn't a multi-line label (e.g. [["label 1 - line 1, "line 2, ], [etc...]])
                                        if (Chart.helpers
                                            .isArray(dataLabel)) {
                                            // show value on first line of multiline label
                                            // need to clone because we are changing the value
                                            dataLabel = dataLabel
                                                .slice();
                                            dataLabel[0] += value;
                                        } else {
                                            dataLabel += value;
                                        }

                                        // return the text to display on the tooltip
                                        return dataLabel;
                                    }
                                }
                            }
                        }
                    });
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
            }
        });


</script>

</body>

</html>