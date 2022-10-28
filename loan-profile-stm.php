<?php
ob_start();
include "include/header.php";
include "include/sidebar.php";
include "include/topbar.php";
if ($clientAcc == 0) {
    redirect("404");
    ob_end_flush();
}
?>
<!-- Breadcrumb -->
<div id="breadcrumb">
    <div class="container_fluid">
        <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
            <ol class="breadcrumb d-flex justify-content-center">
                <li class="breadcrumb-item"><a href="./index.html">ড্যাশবোর্ড</a></li>
                <li class="breadcrumb-item">ফিল্ড</li>
                <li class="breadcrumb-item"><a href="<?= baseUrl('field') ?>?field=<?= $_GET['field'] ?>" id="breadcrumb_field_name"></a></li>
                <li class="breadcrumb-item">কেন্দ্র</li>
                <li class="breadcrumb-item"><a href="<?= baseUrl('centers') ?>?center=<?= $_GET['center'] ?>" id="breadcrumb_center_name"></a></li>
                <li class="breadcrumb-item" id="sttus"></li>
                <li class="breadcrumb-item"><a href="<?= baseUrl('client-profile') ?>?field=<?= $_GET['field'] ?>&&center=<?= $_GET['center'] ?>&&savings=1&&client=<?= $_GET['client'] ?>">সদস্য প্রোফাইল</a></li>
                <li class="breadcrumb-item active" aria-current="page"><span id="current_page"></span> ঋণ প্রোফাইল</li>
            </ol>
        </nav>
    </div>
</div>

<!-- Client Profile -->
<div class="client_profile">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="profile_intro">
                    <div class="img rounded">
                        <img id="client_img" src="<?= baseUrl('/') ?>img/pngfind.com-copyright-png-938050.png" alt="">
                    </div>
                    <div class="p_status text-center my-3">
                        <span class="d-inline-block py-2 px-4 text-capitalize rounded" style="color: #fff; font-size: 18px;" id="status"></span>
                    </div>
                    <div class="p-short">
                        <ul>
                            <li class="text-center name" id="name"></li>
                            <li class="d-flex justify-content-between">বই নম্বর <span id="book"></span></li>
                            <li class="d-flex justify-content-between">ফিল্ড <span id="field_name"></span></li>
                            <li class="d-flex justify-content-between">কেন্দ্র <span id="center_name"></span></li>
                            <li class="d-flex justify-content-between">ক্ষেত্র <span id="period_name"></span></li>
                            <li class="d-flex justify-content-between">মোবাইল <span id="phone"></span></li>
                            <li class="d-flex justify-content-between">যোগদান তারিখ <span id="start_date"></span></li>
                            <li class="d-flex justify-content-between">ক্লোজের তারিখ <span id="close_at"></span></li>
                            <!-- <button class="btn btn-sm my-3 px-3 form-control rounden bg-primary text-center d-inline-block text-white">Edit</button> -->
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="account-cards">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="account_card">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <div class="row align-items-center">
                                            <div class="card_detail">
                                                <h4 class="py-2">সঞ্চয় জমা</h4>
                                                <h3><span class="counter_up" id="savings"></span>৳</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="account_card">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <div class="row align-items-center">
                                            <div class="card_detail">
                                                <h4 class="py-2">সর্বমোট সঞ্চয় উত্তোলন</h4>
                                                <h3><span class="counter_up" id="withdrawal"></span>৳</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="account_card">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <div class="row align-items-center">
                                            <div class="card_detail">
                                                <h4 class="py-2">কিস্তি সংখ্যা</h4>
                                                <h3><span class="counter_up" id="recInstallment"></span> টি/<span class="counter_up" id="totalInstallment"></span> টি</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="account_card">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <div class="row align-items-center">
                                            <div class="card_detail">
                                                <h4 class="py-2">ঋণ আদায়</h4>
                                                <h3><span class="counter_up" id="loanRecover"></span>৳/<span class="counter_up totalLoan"></span>৳</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="account_card">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <div class="row align-items-center">
                                            <div class="card_detail">
                                                <h4 class="py-2">লাভ আদায়</h4>
                                                <h3><span class="counter_up" id="interestRecover"></span>৳/<span class="counter_up totalInterest"></span>৳</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="account_card">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <div class="row align-items-center">
                                            <div class="card_detail">
                                                <h4 class="py-2">ঋণ বাকি</h4>
                                                <h3><span class="counter_up" id="loanRemaining"></span>৳/<span class="counter_up totalLoan"></span>৳</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="account_card">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <div class="row align-items-center">
                                            <div class="card_detail">
                                                <h4 class="py-2">লাভ বাকি</h4>
                                                <h3><span class="counter_up" id="interestRemaining"></span>৳/<span class="counter_up totalInterest"></span>৳</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="account_card">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <div class="row align-items-center">
                                            <div class="card_detail">
                                                <h4 class="py-2">সর্বমোট আদায় (ঋণ + লাভ)</h4>
                                                <h3><span class="counter_up" id="totalRecover"></span>৳/<span class="counter_up totalAmount"></span>৳</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="account_card">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <div class="row align-items-center">
                                            <div class="card_detail">
                                                <h4 class="py-2">সর্বমোট বাকি (ঋণ + লাভ)</h4>
                                                <h3><span class="counter_up" id="totalLoanRemaining"></span>৳/<span class="counter_up totalAmount"></span>৳</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="account_chart">
                    <div class="account_loan_chart p-4">
                        <div class="chart_heading mb-3">
                            <h4><span id="period_chartName"></span> ঋণ সংগ্রহের চার্ট</h4>
                        </div>
                        <div>
                            <canvas id="profile_account_loan_chart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="account_statment client_profile_stm">
            <div class="table text-end">
                <div id="reportrange" class="d-inline-block" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc;">
                    <i class="fa fa-calendar"></i>&nbsp;
                    <span id="date_range"></span> <i class="fa fa-caret-down"></i>
                </div>
                <div class="recent_collection">
                    <nav>
                        <div class="nav nav-tabs d-flex justify-content-between" id="nav-tab" role="tablist">
                            <button class="col-6 col-sm-3 nav-link active" id="nav-accstm-tab" data-bs-toggle="tab" data-bs-target="#nav-accstm" type="button" role="tab" aria-controls="nav-accstm" aria-selected="true">একাউন্ট বিবৃতি</button>
                            <button class="col-6 col-sm-3 nav-link" id="nav-loan-tab" data-bs-toggle="tab" data-bs-target="#nav-loan" type="button" role="tab" aria-controls="nav-loan" aria-selected="true">সঞ্চয় জমা</button>
                            <button class="col-6 col-sm-3 nav-link" id="nav-loanSavingsWithdrawal-tab" data-bs-toggle="tab" data-bs-target="#nav-loanSavingsWithdrawal" type="button" role="tab" aria-controls="nav-loanSavingsWithdrawal" aria-selected="true">সঞ্চয় উত্তোলন</button>
                            <button class="col-6 col-sm-3 nav-link" id="nav-accCheck-tab" data-bs-toggle="tab" data-bs-target="#nav-accCheck" type="button" role="tab" aria-controls="nav-accCheck" aria-selected="true">বই চেক</button>
                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-accstm" role="tabpanel" aria-labelledby="nav-accstm-tab">
                            <div class="table_heading d-flex align-items-center justify-content-between my-3">
                                <h4>একাউন্ট বিবৃতি</h4>
                                <a href="" class="d-inline-block py-1 px-3 text-capitalize bg-secondary bg-gradient rounded" style="color: #fff; cursor: pointer; font-size: 18px;">Print</a>
                            </div>
                            <table id="clientProfileStm" class="w-100 table table-responsive table-bordered table-hover table-striped text-start">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>তারিখ</th>
                                        <th>সঞ্চয়</th>
                                        <th>উত্তোলন</th>
                                        <th>অবশিষ্ট সঞ্চয়</th>
                                        <th>ঋণ আদায়</th>
                                        <th>ঋণ বাকি</th>
                                        <th>লাভ আদায়</th>
                                        <th>লাভ বাকি</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <td colspan="2" class="text-end border-top">সর্বমোট</td>
                                        <td class="border-top" style="font-weight: bolder;"></td>
                                        <td class="border-top" style="font-weight: bolder;"></td>
                                        <td class="border-top" style="font-weight: bolder;"></td>
                                        <td class="border-top" style="font-weight: bolder;"></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        <div class="tab-pane fade show" id="nav-loan" role="tabpanel" aria-labelledby="nav-loan-tab">
                            <div class="table_heading d-flex align-items-center justify-content-between my-3">
                                <h4>ঋণ বিবৃতি</h4>
                                <a href="" class="d-inline-block py-1 px-3 text-capitalize bg-secondary bg-gradient rounded" style="color: #fff; cursor: pointer; font-size: 18px;">Print</a>
                            </div>
                            <table id="clientProfileCollection" class="w-100 table table-responsive table-bordered table-hover table-striped text-start">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>তারিখ</th>
                                        <th>সময়</th>
                                        <th>অফিসার</th>
                                        <th>মন্তব্য</th>
                                        <th>সংগ্রহ</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <td colspan="5" class="text-end border-top">সর্বমোট</td>
                                        <td class="border-top" style="font-weight: bolder;"></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        <div class="tab-pane fade show" id="nav-loanSavingsWithdrawal" role="tabpanel" aria-labelledby="nav-loanSavingsWithdrawal-tab">
                            <div class="table_heading d-flex align-items-center justify-content-between my-3">
                                <h4>উত্তোলন বিবৃতি</h4>
                                <a href="" class="d-inline-block py-1 px-3 text-capitalize bg-secondary bg-gradient rounded" style="color: #fff; cursor: pointer; font-size: 18px;">Print</a>
                            </div>
                            <table id="clientProfileWithdrawal" class="w-100 table table-responsive table-bordered table-hover table-striped text-start">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>তারিখ</th>
                                        <th>অফিসার</th>
                                        <th>মন্তব্য</th>
                                        <th>উত্তোলন</th>
                                        <th>অবশিষ্ট জমা</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <td colspan="4" class="text-end border-top">সর্বমোট</td>
                                        <td colspan="2" class="border-top" style="font-weight: bolder;"></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        <div class="tab-pane fade show" id="nav-accCheck" role="tabpanel" aria-labelledby="nav-accCheck-tab">
                            <div class="table_heading d-flex align-items-center justify-content-between my-3">
                                <h4>বই চেক</h4>
                                <a href="" class="d-inline-block py-1 px-3 text-capitalize bg-secondary bg-gradient rounded" style="color: #fff; cursor: pointer; font-size: 18px;">Print</a>
                            </div>
                            <table id="clientProfileCheck" class="w-100 table table-responsive table-bordered table-hover table-striped text-start">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>চেকের তারিখ</th>
                                        <th>পরবর্তি চেকের তারিখ</th>
                                        <th>জমা ছিলো</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
include "include/footer.php";
?>

<script>
    $(document).ready(function() {
        let queryString = window.location.search;
        let urlParams = new URLSearchParams(queryString);
        let fieldID = urlParams.get('field');
        let centerID = urlParams.get('center');
        let clientID = urlParams.get('client');
        let loans = urlParams.get('loans');

        function cardLoad() {
            $.ajax({
                url: "codes/fieldDataAuthenticate.php",
                type: "POST",
                data: {
                    clientCard: 1,
                    centerID: centerID,
                    fieldID: fieldID
                },
                dataType: "JSON",
                success: function(data) {
                    if (data != false) {
                        $.each(data, function(key, value) {
                            $("#breadcrumb_field_name").text(value.field_name);
                            $("#breadcrumb_center_name").text(value.center_name);
                        })
                    }
                }
            })
        }
        cardLoad();

        if (clientID != null) {

            function profileLoad() {
                $.ajax({
                    url: "codes/clientProfileStmAuthenticate.php",
                    type: "POST",
                    data: {
                        clientProfileSTM: 1,
                        clientID: clientID,
                        loansID: loans
                    },
                    dataType: "json",
                    success: function(data) {
                        // console.log(data);
                        if (data != false) {
                            $.each(data, function(key, value) {
                                $("#name").text(value.name);
                                $("#book").text(value.book);
                                $("#field_name").text(value.field_name);
                                $("#center_name").text(value.center_name);
                                $("#period_name").text(value.period_name);
                                $("#period_chartName").text(value.period_name);
                                $("#current_page").text(value.period_name);
                                $("#phone").text(value.client_mobile_1);
                                $("#start_date").text(value.created_at);
                                $("#close_at").text(value.closing_at);

                                $("#savings").text(value.balance);
                                $("#withdrawal").text(value.total_withdrawal);
                                $("#recInstallment").text(value.recoverInstrallment);
                                $("#totalInstallment").text(value.total_intsallment);
                                $("#loanRecover").text(value.loan_recover);
                                $(".totalLoan").text(value.total_loan);
                                $("#interestRecover").text(value.interest_recover);
                                $(".totalInterest").text(value.total_interest);
                                $("#loanRemaining").text(value.loan_remaining);
                                $("#interestRemaining").text(value.interest_remaining);
                                $("#totalRecover").text(value.loan_recover + value.interest_recover);
                                $(".totalAmount").text(value.total_loan + value.total_interest);
                                $("#totalLoanRemaining").text(value.loan_remaining + value.interest_remaining);

                                if (value.status == 1) {
                                    $("#status").text("ACTIVE");
                                    $("#sttus").text("একটিভ ঋণ সদস্য");
                                    $("#status").addClass("bg-success");
                                } else if (value.status == 2) {
                                    $("#status").text("PANDING");
                                    $("#status").addClass("bg-warning");
                                } else {
                                    $("#status").text("DEACTIVE");
                                    $("#status").addClass("bg-danger");
                                    $("#sttus").text("ক্লোজ ঋণ সদস্য");
                                }
                                if (value.client_img != null) {
                                    $("#client_img").attr("src", "./img/" + value.client_img);
                                } else {
                                    $("#client_img").attr("src", "https://avatars.dicebear.com/api/micah/" + value.name + ".svg ");

                                }
                            })
                        }
                    }
                })
            }
            profileLoad();

            function profileChartLoad() {
                $.ajax({
                    url: "codes/clientProfileStmAuthenticate.php",
                    type: "POST",
                    data: {
                        clientProfileChartLoad: 1,
                        clientID: clientID,
                        loansID: loans,
                        fieldID: fieldID,
                        centerID: centerID
                    },
                    dataType: "JSON",
                    success: function(data) {
                        // account page chart
                        var account_loan_data_table = data;

                        const account_loan_chart = document.getElementById('profile_account_loan_chart').getContext('2d');
                        const account_loan_chart_config = new Chart(account_loan_chart, {
                            type: 'line',
                            data: {
                                datasets: [{
                                    label: 'ঋণ আদায় ৳',
                                    backgroundColor: [
                                        'rgba(255, 99, 132, 1)',
                                        'rgba(54, 162, 235, 1)',
                                        'rgba(201, 203, 207, 1)',
                                        'rgba(255, 205, 86, 1)',
                                        'rgba(255, 159, 64, 1)',
                                        'rgba(75, 192, 192, 1)',
                                        'rgba(153, 102, 255, 1)',

                                    ],
                                    borderColor: 'rgba(255, 99, 132, 1)',
                                    color: '#fff',
                                    data: account_loan_data_table,
                                    parsing: {
                                        yAxisKey: 'loan',
                                    }
                                }, {
                                    label: 'ঋণ-সঞ্চয় আদায় ৳',
                                    backgroundColor: [
                                        'rgba(255, 99, 132, 1)',
                                        'rgba(153, 102, 255, 1)',
                                        'rgba(54, 162, 235, 1)',
                                        'rgba(201, 203, 207, 1)',
                                        'rgba(255, 205, 86, 1)',
                                        'rgba(255, 159, 64, 1)',
                                        'rgba(75, 192, 192, 1)',

                                    ],
                                    borderColor: 'rgba(153, 102, 255, 1)',
                                    color: '#fff',
                                    data: account_loan_data_table,
                                    parsing: {
                                        yAxisKey: 'deposit',
                                    }
                                }, {
                                    label: 'ঋণ-সঞ্চয় উত্তোলন ৳',
                                    backgroundColor: [
                                        'rgba(54, 162, 235, 1)',
                                        'rgba(255, 99, 132, 1)',
                                        'rgba(255, 159, 64, 1)',
                                        'rgba(201, 203, 207, 1)',
                                        'rgba(255, 205, 86, 1)',
                                        'rgba(75, 192, 192, 1)',
                                        'rgba(153, 102, 255, 1)',

                                    ],
                                    borderColor: 'rgba(255, 159, 64, 1)',
                                    color: '#fff',
                                    data: account_loan_data_table,
                                    parsing: {
                                        yAxisKey: 'withdrawal',
                                    }
                                }, {
                                    label: 'লাভ আদায় ৳',
                                    backgroundColor: [
                                        'green',
                                    ],
                                    borderColor: 'green',
                                    color: '#fff',
                                    data: account_loan_data_table,
                                    parsing: {
                                        yAxisKey: 'interest',
                                    }
                                }]
                            },
                            options: {
                                parsing: {
                                    xAxisKey: 'date',
                                },
                                plugins: {
                                    legend: {
                                        display: true,
                                        position: 'top',
                                        labels: {
                                            color: '#fff'
                                        }
                                    }
                                },
                                scales: {
                                    x: {
                                        ticks: {
                                            color: '#fff'
                                        },
                                        title: {
                                            display: true,
                                            text: "তারিখ সমুহ",
                                            color: '#fff',
                                            padding: {
                                                top: 20
                                            }
                                        }
                                    },
                                    y: {
                                        ticks: {
                                            color: '#fff'
                                        },
                                        title: {
                                            display: true,
                                            text: "টাকা",
                                            color: '#fff',
                                        }
                                    }
                                }
                            },
                        });
                    }
                })
            }
            profileChartLoad();


            window.addEventListener('load', function() {
                var dates = document.getElementById('date_range').innerText;
                var range = dates.split("-");
                var from_date = range[0];
                var end_date = range[1];

                let spanText = document.querySelector('#reportrange span')
                spanText.addEventListener('DOMSubtreeModified', function() {
                    dates = document.querySelector('#reportrange span').innerText;
                    range = dates.split("-");
                    from_date = range[0];
                    end_date = range[1];
                    if (dates != "") {
                        // console.log(from_date);
                        accStmLoad();
                        clientProfileCollection();
                        clientProfileWithdrawal();
                        clientProfileCheck();
                    }
                })

                function accStmLoad() {
                    $('#clientProfileStm').DataTable({
                        // "processing": true,
                        // "serverSide": true,
                        "fnRowCallback": function(nRow, aData, iDisplayIndex, iDisplayIndexFull) {
                            // Bold the grade for all 'A' grade browsers
                            if (aData[4] == "A") {
                                $('td:eq(4)', nRow).html('<b>A</b>');
                            }
                        },
                        // footerCallback: function(row, data, start, end, display) {
                        //     var api = this.api();

                        //     // Remove the formatting to get integer data for summation
                        //     var intVal = function(i) {
                        //         return typeof i === 'string' ? i.replace(/[\$,]/g, '') * 1 : typeof i === 'number' ? i : 0;
                        //     };

                        //     // Total over all pages
                        //     total = api
                        //         .column(2)
                        //         .data()
                        //         .reduce(function(a, b) {
                        //             return intVal(a) + intVal(b);
                        //         }, 0);
                        //     totalwith = api
                        //         .column(3)
                        //         .data()
                        //         .reduce(function(a, b) {
                        //             return intVal(a) + intVal(b);
                        //         }, 0);
                        //     totalwith = api
                        //         .column(4)
                        //         .data()
                        //         .reduce(function(a, b) {
                        //             return intVal(a) + intVal(b);
                        //         }, 0);

                        //     // Total over this page
                        //     pageTotal = api
                        //         .column(2, {
                        //             page: 'current'
                        //         })
                        //         .data()
                        //         .reduce(function(a, b) {
                        //             return intVal(a) + intVal(b);
                        //         }, 0);
                        //     pageTotalwith = api
                        //         .column(3, {
                        //             page: 'current'
                        //         })
                        //         .data()
                        //         .reduce(function(a, b) {
                        //             return intVal(a) + intVal(b);
                        //         }, 0);
                        //     pageTotalwith = api
                        //         .column(4, {
                        //             page: 'current'
                        //         })
                        //         .data()
                        //         .reduce(function(a, b) {
                        //             return intVal(a) + intVal(b);
                        //         }, 0);

                        //     // Update footer
                        //     $(api.column(2).footer()).html('৳' + pageTotal + "/-");
                        //     $(api.column(3).footer()).html('৳' + pageTotalwith + "/-");
                        //     $(api.column(3).footer()).html('৳' + pageTotalwith + "/-");
                        // },
                        // "retrieve": true,
                        "paging": false,
                        "bDestroy": true,
                        "order": [],
                        "searching": true,
                        "ajax": {
                            url: "codes/clientLoanAccSTMAuthenticate.php",
                            type: "POST",
                            data: {
                                loansID: loans,
                                from_date: from_date,
                                end_date: end_date,
                            },
                            dataType: "JSON",
                            success: function(data) {
                                console.log(data);
                            }
                        }
                    })
                }

                function clientProfileCollection() {
                    $('#clientProfileCollection').DataTable({
                        // "processing": true,
                        // "serverSide": true,
                        "fnRowCallback": function(nRow, aData, iDisplayIndex, iDisplayIndexFull) {
                            // Bold the grade for all 'A' grade browsers
                            if (aData[4] == "A") {
                                $('td:eq(4)', nRow).html('<b>A</b>');
                            }
                        },
                        footerCallback: function(row, data, start, end, display) {
                            var api = this.api();

                            // Remove the formatting to get integer data for summation
                            var intVal = function(i) {
                                return typeof i === 'string' ? i.replace(/[\$,]/g, '') * 1 : typeof i === 'number' ? i : 0;
                            };

                            // Total over all pages
                            total = api
                                .column(5)
                                .data()
                                .reduce(function(a, b) {
                                    return intVal(a) + intVal(b);
                                }, 0);

                            // Total over this page
                            pageTotal = api
                                .column(5, {
                                    page: 'current'
                                })
                                .data()
                                .reduce(function(a, b) {
                                    return intVal(a) + intVal(b);
                                }, 0);

                            // Update footer
                            $(api.column(5).footer()).html('৳' + pageTotal + "/-");
                        },
                        // "retrieve": true,
                        "paging": true,
                        "bDestroy": true,
                        "order": [],
                        "searching": true,
                        "ajax": {
                            url: "codes/clientProfileCollectionAuthenticate.php",
                            type: "POST",
                            data: {
                                savingsID: savings,
                                from_date: from_date,
                                end_date: end_date,
                            }
                            // dataType: "JSON",
                            // success: function(data) {
                            //     console.log(data);
                            // }
                        }
                    })
                }

                function clientProfileWithdrawal() {
                    $('#clientProfileWithdrawal').DataTable({
                        // "processing": true,
                        // "serverSide": true,
                        "fnRowCallback": function(nRow, aData, iDisplayIndex, iDisplayIndexFull) {
                            // Bold the grade for all 'A' grade browsers
                            if (aData[4] == "A") {
                                $('td:eq(4)', nRow).html('<b>A</b>');
                            }
                        },
                        footerCallback: function(row, data, start, end, display) {
                            var api = this.api();

                            // Remove the formatting to get integer data for summation
                            var intVal = function(i) {
                                return typeof i === 'string' ? i.replace(/[\$,]/g, '') * 1 : typeof i === 'number' ? i : 0;
                            };

                            // Total over all pages
                            total = api
                                .column(4)
                                .data()
                                .reduce(function(a, b) {
                                    return intVal(a) + intVal(b);
                                }, 0);

                            // Total over this page
                            pageTotal = api
                                .column(4, {
                                    page: 'current'
                                })
                                .data()
                                .reduce(function(a, b) {
                                    return intVal(a) + intVal(b);
                                }, 0);

                            // Update footer
                            $(api.column(4).footer()).html('৳' + pageTotal + "/-");
                        },
                        // "retrieve": true,
                        "paging": true,
                        "bDestroy": true,
                        "order": [],
                        "searching": true,
                        "ajax": {
                            url: "codes/clientProfileWithdrawalAuthenticate.php",
                            type: "POST",
                            data: {
                                savingsID: savings,
                                from_date: from_date,
                                end_date: end_date,
                            }
                            // dataType: "JSON",
                            // success: function(data) {
                            //     console.log(data);
                            // }
                        }
                    })
                }

                function clientProfileCheck() {
                    $('#clientProfileCheck').DataTable({
                        // "processing": true,
                        // "serverSide": true,
                        "fnRowCallback": function(nRow, aData, iDisplayIndex, iDisplayIndexFull) {
                            // Bold the grade for all 'A' grade browsers
                            if (aData[4] == "A") {
                                $('td:eq(4)', nRow).html('<b>A</b>');
                            }
                        },
                        // "retrieve": true,
                        "paging": true,
                        "bDestroy": true,
                        "order": [],
                        "searching": true,
                        "ajax": {
                            url: "codes/clientProfileCheckAuthenticate.php",
                            type: "POST",
                            data: {
                                savingsID: savings,
                                from_date: from_date,
                                end_date: end_date,
                            }
                            // dataType: "JSON",
                            // success: function(data) {
                            //     console.log(data);
                            // }
                        }
                    })
                }
                accStmLoad();
                clientProfileCollection();
                clientProfileWithdrawal();
                clientProfileCheck();
            })

        } else {
            $(location).attr('href', 'http://localhost/gkcsl/404');
        }
    })
</script>
</body>

</html>