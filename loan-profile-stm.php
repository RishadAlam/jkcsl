<?php
include "include/header.php";
include "include/sidebar.php";
include "include/topbar.php";
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
                                                <h3><span class="counter_up" id="recInstallment"></span>/<span class="counter_up" id="totalInstallment"></span></h3>
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
        <div class="account_statment">
            <div class="table">
                <div class="recent_collection">
                    <div class="table_heading d-flex justify-content-between my-3">
                        <h4>একাউন্ট বিবৃতি</h4>
                        <a href="" class="d-inline-block py-1 px-3 text-capitalize bg-secondary bg-gradient rounded" style="color: #fff; cursor: pointer; font-size: 18px;">Print</a>

                        <div id="reportrange" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc;">
                            <i class="fa fa-calendar"></i>&nbsp;
                            <span></span> <i class="fa fa-caret-down"></i>
                        </div>
                    </div>
                    <table id="account_list" class="table table-responsive table-bordered table-hover table-striped">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>তারিখ</th>
                                <th>অফিসার</th>
                                <th>সঞ্চয় আদায়</th>
                                <th>সঞ্চয় উত্তোলন</th>
                                <th>অবশিষ্ট সঞ্চয়</th>
                                <th>ঋণ আদায়</th>
                                <th>লাভ আদায়</th>
                                <th>মোট ঋণ আদায় (ঋণ + লাভ)</th>
                                <th>মোট ঋণ বাকি</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>৩০/১২/২০২০</td>
                                <td>মরিয়ম আক্তার</td>
                                <td>২৫০০</td>
                                <td>৫০০০</td>
                                <td>৫০০০</td>
                                <td>২৫০০</td>
                                <td>২৫০০</td>
                                <td>৫০০০</td>
                                <td>২৫০০০</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>৩০/১২/২০২০</td>
                                <td>মরিয়ম আক্তার</td>
                                <td>২৫০০</td>
                                <td>৫০০০</td>
                                <td>৫০০০</td>
                                <td>৫০০০</td>
                                <td>২৫০০</td>
                                <td>৫০০০</td>
                                <td>২৫০০০</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>৩০/১২/২০২০</td>
                                <td>মরিয়ম আক্তার</td>
                                <td>২৫০০</td>
                                <td>৫০০০</td>
                                <td>৫০০০</td>
                                <td>২৫০০</td>
                                <td>২৫০০</td>
                                <td>৫০০০</td>
                                <td>২৫০০০</td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="5" class="text-end border-top">সর্বমোটঃ</td>
                                <td class="border-top">৫০০০০</td>
                                <td class="border-top">১০০০০</td>
                                <td class="border-top">১০০০০</td>
                                <td class="border-top">১০০০০</td>
                                <td class="border-top">১০০০০</td>
                            </tr>
                        </tfoot>
                    </table>
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
                        console.log(data);
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


        } else {
            $(location).attr('href', 'http://localhost/gkcsl/404');
        }
    })

    // account page chart
    var account_loan_data_table = [{
            date: '01-05-2019',
            loan_collection: {
                credit: 1500,
                debit: 3000,
                profit: 2000
            }
        },
        {
            date: '02-05-2019',
            loan_collection: {
                credit: 1350,
                debit: 3200,
                profit: 450
            }
        },
        {
            date: '03-05-2019',
            loan_collection: {
                credit: 2000,
                debit: 2000,
                profit: 352
            }
        },
        {
            date: '04-05-2019',
            loan_collection: {
                credit: 2600,
                debit: 1500,
                profit: 251
            }
        },
        {
            date: '05-05-2019',
            loan_collection: {
                credit: 1500,
                debit: 2500,
                profit: 852
            }
        },
    ]

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
                    yAxisKey: 'loan_collection.credit',
                }
            }, {
                label: 'ঋণ-সঞ্চয় উত্তোলন ৳',
                backgroundColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(201, 203, 207, 1)',
                    'rgba(255, 205, 86, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',

                ],
                borderColor: 'rgba(54, 162, 235, 1)',
                color: '#fff',
                data: account_loan_data_table,
                parsing: {
                    yAxisKey: 'loan_collection.debit',
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
                    yAxisKey: 'loan_collection.profit',
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
</script>
</body>

</html>