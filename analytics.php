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
                <li class="breadcrumb-item active" aria-current="page">হিসাব এনালেটিক্স</li>
            </ol>
        </nav>
    </div>
</div>

<!-- Analytics -->
<section id="analytics">
    <div class="container-fluid">
        <div class="analytics_tabs">
            <div class="date_picker text-end">
                <div id="reportrange" class="d-inline-block p-3 rounded-0 shadow-none" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc;">
                    <i class="fa fa-calendar"></i>&nbsp;
                    <span></span> <i class="fa fa-caret-down"></i>
                </div>
            </div>

            <!-- Main Tabs -->
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <a class="nav-link active" id="savings-tab" data-bs-toggle="tab" href="#savings" role="tab" aria-controls="savings" aria-selected="true">সঞ্চয় ও ডিপিএস</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="loan-tab" data-bs-toggle="tab" href="#loan" role="tab" aria-controls="loan" aria-selected="false">ঋণ</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="client-add-remove-tab" data-bs-toggle="tab" href="#client-add-remove" role="tab" aria-controls="client-add-remove" aria-selected="false">সদস্য নিবন্ধন/ক্লোজিং</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="loan-add-close-tab" data-bs-toggle="tab" href="#loan-add-close" role="tab" aria-controls="loan-add-close" aria-selected="false">ঋণ নিবন্ধন/ক্লোজিং</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="expance-tab" data-bs-toggle="tab" href="#expance" role="tab" aria-controls="expance" aria-selected="false">খরচ</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="income-tab" data-bs-toggle="tab" href="#income" role="tab" aria-controls="income" aria-selected="false">আয়</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="score-tab" data-bs-toggle="tab" href="#score" role="tab" aria-controls="score" aria-selected="false">হিসাব</a>
                </li>
            </ul>

            <!-- Main Tab contents -->
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="savings" role="tabpanel" aria-labelledby="savings-tab">
                    <div class="savings">
                        <!-- Savings Filter Form -->
                        <form action="">
                            <div class="row">
                                <!-- Field -->
                                <div class="col-md-6 mb-3 select">
                                    <label for="feild" class="pb-2 text-white">ফিল্ড</label>
                                    <select id="feild" class="form-control form-input p-3">
                                        <option class="feild" value="all" selected>সকল ফিল্ড</option>
                                        <option value="">কালামিয়া বাজার</option>
                                        <option value="">বহদ্দারহাট</option>
                                        <option value="">মোহাম্মদপুর</option>
                                    </select>
                                </div>
                                <!-- Centers -->
                                <div class="col-md-6 mb-3 select">
                                    <label for="center" class="pb-2 text-white">কেন্দ্র</label>
                                    <select id="center" class="form-control form-input p-3">
                                        <option class="feild" value="all" selected>সকল কেন্দ্র</option>
                                        <option value="">কালামিয়া বাজার</option>
                                        <option value="">বহদ্দারহাট</option>
                                        <option value="">মোহাম্মদপুর</option>
                                    </select>
                                </div>
                                <!-- offisers -->
                                <div class="col-md-6 mb-3 select">
                                    <label for="officer" class="pb-2 text-white">অফিসার</label>
                                    <select id="officer" class="form-control form-input p-3">
                                        <option class="feild" value="all" selected>সকল অফিসার</option>
                                        <option value="">আল-আমিন</option>
                                        <option value="">লিজা আক্তার</option>
                                        <option value="">রামিম হোসেন</option>
                                    </select>
                                </div>
                                <!-- time period -->
                                <div class="col-md-6 mb-3 select">
                                    <label for="period" class="pb-2 text-white">ক্ষেত্র</label>
                                    <select id="period" class="form-control form-input p-3">
                                        <option class="feild" value="all" selected>সকল ক্ষেত্র</option>
                                        <option value="">ডিপিএস</option>
                                        <option value="">বুধবার</option>
                                        <option value="">ড়বিবার</option>
                                    </select>
                                </div>
                            </div>
                        </form>

                        <!-- Chart -->
                        <div class="main_content">
                            <!-- Chart Heading -->
                            <div class="analytics_chart_heading text-center">
                                <h2>সর্বমোট কালেকশন ৩০০০০৳ এবং উত্তোলন ৩০০০০৳</h2>
                            </div>
                            <!-- Analytics Chart -->
                            <div class="analytics_chart">
                                <canvas id="savings_chart"></canvas>
                            </div>
                            <!-- analytics Table -->
                            <div class="table mt-5">
                                <table id="recent_savings_collection" class="table table-responsive table-bordered table-hover table-striped" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>নাম</th>
                                            <th>বই নং</th>
                                            <th>ফিল্ড</th>
                                            <th>ক্ষেত্র</th>
                                            <th>সঞ্চয়</th>
                                            <th>তারিখ</th>
                                            <th>অফিসার</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মোহাম্মদপুর</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>মোহাম্মদপুর</td>
                                            <td>মাসিক</td>
                                            <td>২০০০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>ফাতেমা বানু</td>
                                            <td>২০৬০</td>
                                            <td>কালামিয়া বাঁজার</td>
                                            <td>বুধবার</td>
                                            <td>২৫০</td>
                                            <td>০৪ঃ১৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>সাথী আক্তার</td>
                                            <td>২২১২</td>
                                            <td>সিএমবি</td>
                                            <td>শুক্রবার</td>
                                            <td>১১৫</td>
                                            <td>০৪ঃ১৬</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>নাসরিন বেগম</td>
                                            <td>৩০১১</td>
                                            <td>১কিঃমি</td>
                                            <td>রবিবার</td>
                                            <td>১৩০</td>
                                            <td>১০ঃ২৫</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>জরিনা বেগম</td>
                                            <td>২০২৫</td>
                                            <td>বহদ্দারহাট</td>
                                            <td>দৈনিক</td>
                                            <td>৩০০</td>
                                            <td>১১ঃ২০</td>
                                            <td>জাকির হোসেন</td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>হাসনেহেনা আক্তার</td>
                                            <td>৩১২০</td>
                                            <td>মোহাম্মদপুর</td>
                                            <td>মাসিক</td>
                                            <td>৫০০</td>
                                            <td>১১ঃ২৯</td>
                                            <td>আব্দুল মালেক</td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>ফুল বানু</td>
                                            <td>২০২৭</td>
                                            <td>বহদ্দারহাট</td>
                                            <td>দৈনিক</td>
                                            <td>২৫০</td>
                                            <td>১২ঃ০০</td>
                                            <td>আব্দুল মালেক</td>
                                        </tr>
                                        <tr>
                                            <td>9</td>
                                            <td>সখিনা বেগম</td>
                                            <td>২০২৮</td>
                                            <td>কালামিয়া বাঁজার</td>
                                            <td>বুধবার</td>
                                            <td>১০০</td>
                                            <td>১২ঃ১০</td>
                                            <td>জাকির হোসেন</td>
                                        </tr>
                                        <tr>
                                            <td>10</td>
                                            <td>সোনিয়া আক্তার</td>
                                            <td>২০২৩</td>
                                            <td>মোহাম্মদপুর</td>
                                            <td>মাসিক</td>
                                            <td>২০০</td>
                                            <td>১১ঃ১৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মোহাম্মদপুর</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>মোহাম্মদপুর</td>
                                            <td>মাসিক</td>
                                            <td>২০০০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>ফাতেমা বানু</td>
                                            <td>২০৬০</td>
                                            <td>কালামিয়া বাঁজার</td>
                                            <td>বুধবার</td>
                                            <td>২৫০</td>
                                            <td>০৪ঃ১৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>সাথী আক্তার</td>
                                            <td>২২১২</td>
                                            <td>সিএমবি</td>
                                            <td>শুক্রবার</td>
                                            <td>১১৫</td>
                                            <td>০৪ঃ১৬</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>নাসরিন বেগম</td>
                                            <td>৩০১১</td>
                                            <td>১কিঃমি</td>
                                            <td>রবিবার</td>
                                            <td>১৩০</td>
                                            <td>১০ঃ২৫</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>জরিনা বেগম</td>
                                            <td>২০২৫</td>
                                            <td>বহদ্দারহাট</td>
                                            <td>দৈনিক</td>
                                            <td>৩০০</td>
                                            <td>১১ঃ২০</td>
                                            <td>জাকির হোসেন</td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>হাসনেহেনা আক্তার</td>
                                            <td>৩১২০</td>
                                            <td>মোহাম্মদপুর</td>
                                            <td>মাসিক</td>
                                            <td>৫০০</td>
                                            <td>১১ঃ২৯</td>
                                            <td>আব্দুল মালেক</td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>ফুল বানু</td>
                                            <td>২০২৭</td>
                                            <td>বহদ্দারহাট</td>
                                            <td>দৈনিক</td>
                                            <td>২৫০</td>
                                            <td>১২ঃ০০</td>
                                            <td>আব্দুল মালেক</td>
                                        </tr>
                                        <tr>
                                            <td>9</td>
                                            <td>সখিনা বেগম</td>
                                            <td>২০২৮</td>
                                            <td>কালামিয়া বাঁজার</td>
                                            <td>বুধবার</td>
                                            <td>১০০</td>
                                            <td>১২ঃ১০</td>
                                            <td>জাকির হোসেন</td>
                                        </tr>
                                        <tr>
                                            <td>10</td>
                                            <td>সোনিয়া আক্তার</td>
                                            <td>২০২৩</td>
                                            <td>মোহাম্মদপুর</td>
                                            <td>মাসিক</td>
                                            <td>২০০</td>
                                            <td>১১ঃ১৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মোহাম্মদপুর</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>মোহাম্মদপুর</td>
                                            <td>মাসিক</td>
                                            <td>২০০০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>ফাতেমা বানু</td>
                                            <td>২০৬০</td>
                                            <td>কালামিয়া বাঁজার</td>
                                            <td>বুধবার</td>
                                            <td>২৫০</td>
                                            <td>০৪ঃ১৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>সাথী আক্তার</td>
                                            <td>২২১২</td>
                                            <td>সিএমবি</td>
                                            <td>শুক্রবার</td>
                                            <td>১১৫</td>
                                            <td>০৪ঃ১৬</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>নাসরিন বেগম</td>
                                            <td>৩০১১</td>
                                            <td>১কিঃমি</td>
                                            <td>রবিবার</td>
                                            <td>১৩০</td>
                                            <td>১০ঃ২৫</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>জরিনা বেগম</td>
                                            <td>২০২৫</td>
                                            <td>বহদ্দারহাট</td>
                                            <td>দৈনিক</td>
                                            <td>৩০০</td>
                                            <td>১১ঃ২০</td>
                                            <td>জাকির হোসেন</td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>হাসনেহেনা আক্তার</td>
                                            <td>৩১২০</td>
                                            <td>মোহাম্মদপুর</td>
                                            <td>মাসিক</td>
                                            <td>৫০০</td>
                                            <td>১১ঃ২৯</td>
                                            <td>আব্দুল মালেক</td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>ফুল বানু</td>
                                            <td>২০২৭</td>
                                            <td>বহদ্দারহাট</td>
                                            <td>দৈনিক</td>
                                            <td>২৫০</td>
                                            <td>১২ঃ০০</td>
                                            <td>আব্দুল মালেক</td>
                                        </tr>
                                        <tr>
                                            <td>9</td>
                                            <td>সখিনা বেগম</td>
                                            <td>২০২৮</td>
                                            <td>কালামিয়া বাঁজার</td>
                                            <td>বুধবার</td>
                                            <td>১০০</td>
                                            <td>১২ঃ১০</td>
                                            <td>জাকির হোসেন</td>
                                        </tr>
                                        <tr>
                                            <td>10</td>
                                            <td>সোনিয়া আক্তার</td>
                                            <td>২০২৩</td>
                                            <td>মোহাম্মদপুর</td>
                                            <td>মাসিক</td>
                                            <td>২০০</td>
                                            <td>১১ঃ১৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="loan" role="tabpanel" aria-labelledby="loan-tab">
                    <div class="loan">
                        <!-- Savings Filter Form -->
                        <form action="">
                            <div class="row">
                                <!-- Field -->
                                <div class="col-md-6 mb-3 select">
                                    <label for="feild" class="pb-2 text-white">ফিল্ড</label>
                                    <select id="feild" class="form-control form-input p-3">
                                        <option class="feild" value="all" selected>সকল ফিল্ড</option>
                                        <option value="">কালামিয়া বাজার</option>
                                        <option value="">বহদ্দারহাট</option>
                                        <option value="">মোহাম্মদপুর</option>
                                    </select>
                                </div>
                                <!-- Centers -->
                                <div class="col-md-6 mb-3 select">
                                    <label for="center" class="pb-2 text-white">কেন্দ্র</label>
                                    <select id="center" class="form-control form-input p-3">
                                        <option class="feild" value="all" selected>সকল কেন্দ্র</option>
                                        <option value="">কালামিয়া বাজার</option>
                                        <option value="">বহদ্দারহাট</option>
                                        <option value="">মোহাম্মদপুর</option>
                                    </select>
                                </div>
                                <!-- offisers -->
                                <div class="col-md-6 mb-3 select">
                                    <label for="officer" class="pb-2 text-white">অফিসার</label>
                                    <select id="officer" class="form-control form-input p-3">
                                        <option class="feild" value="all" selected>সকল অফিসার</option>
                                        <option value="">আল-আমিন</option>
                                        <option value="">লিজা আক্তার</option>
                                        <option value="">রামিম হোসেন</option>
                                    </select>
                                </div>
                                <!-- time period -->
                                <div class="col-md-6 mb-3 select">
                                    <label for="period" class="pb-2 text-white">ক্ষেত্র</label>
                                    <select id="period" class="form-control form-input p-3">
                                        <option class="feild" value="all" selected>সকল ক্ষেত্র</option>
                                        <option value="">ডিপিএস</option>
                                        <option value="">বুধবার</option>
                                        <option value="">ড়বিবার</option>
                                    </select>
                                </div>
                            </div>
                        </form>

                        <!-- Chart -->
                        <div class="main_content">
                            <!-- Chart Heading -->
                            <div class="analytics_chart_heading text-center">
                                <h2>সর্বমোট ঋণ আদায় ৩০০০০৳, সঞ্চয় আদায় ২৬০০০৳ <br> লাভ আদায় ২০০০০৳ এবং সঞ্চয় উত্তোলন ৩০০০০৳</h2>
                            </div>
                            <!-- Analytics Chart -->
                            <div class="analytics_chart">
                                <canvas id="loan_chart"></canvas>
                            </div>
                            <!-- analytics Table -->
                            <div class="table mt-5">
                                <table id="recent_loan_collection" class="table table-bordered table-responsive table-hover table-striped" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>নাম</th>
                                            <th>বই নং</th>
                                            <th>ফিল্ড</th>
                                            <th>ক্ষেত্র</th>
                                            <th>ঋণ আদায়</th>
                                            <th>সঞ্চয়</th>
                                            <th>লাভ</th>
                                            <th>সময়</th>
                                            <th>অফিসার</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="client-add-remove" role="tabpanel" aria-labelledby="client-add-remove-tab">
                    <div class="client">
                        <!-- Savings Filter Form -->
                        <form action="">
                            <div class="row">
                                <!-- Field -->
                                <div class="col-md-6 mb-3 select">
                                    <label for="feild" class="pb-2 text-white">ফিল্ড</label>
                                    <select id="feild" class="form-control form-input p-3">
                                        <option class="feild" value="all" selected>সকল ফিল্ড</option>
                                        <option value="">কালামিয়া বাজার</option>
                                        <option value="">বহদ্দারহাট</option>
                                        <option value="">মোহাম্মদপুর</option>
                                    </select>
                                </div>
                                <!-- Centers -->
                                <div class="col-md-6 mb-3 select">
                                    <label for="center" class="pb-2 text-white">কেন্দ্র</label>
                                    <select id="center" class="form-control form-input p-3">
                                        <option class="feild" value="all" selected>সকল কেন্দ্র</option>
                                        <option value="">কালামিয়া বাজার</option>
                                        <option value="">বহদ্দারহাট</option>
                                        <option value="">মোহাম্মদপুর</option>
                                    </select>
                                </div>
                                <!-- offisers -->
                                <div class="col-md-6 mb-3 select">
                                    <label for="officer" class="pb-2 text-white">অফিসার</label>
                                    <select id="officer" class="form-control form-input p-3">
                                        <option class="feild" value="all" selected>সকল অফিসার</option>
                                        <option value="">আল-আমিন</option>
                                        <option value="">লিজা আক্তার</option>
                                        <option value="">রামিম হোসেন</option>
                                    </select>
                                </div>
                                <!-- time period -->
                                <div class="col-md-6 mb-3 select">
                                    <label for="period" class="pb-2 text-white">ক্ষেত্র</label>
                                    <select id="period" class="form-control form-input p-3">
                                        <option class="feild" value="all" selected>সকল ক্ষেত্র</option>
                                        <option value="">ডিপিএস</option>
                                        <option value="">বুধবার</option>
                                        <option value="">ড়বিবার</option>
                                    </select>
                                </div>
                            </div>
                        </form>

                        <!-- Chart -->
                        <div class="main_content">
                            <!-- Chart Heading -->
                            <div class="analytics_chart_heading text-center">
                                <h2>সদস্য ভর্তি ২৫ জন এবং ক্লোজিং ১০ জন</h2>
                            </div>
                            <!-- Analytics Chart -->
                            <div class="analytics_chart">
                                <canvas id="client_chart"></canvas>
                            </div>
                            <!-- analytics Table -->
                            <div class="table mt-5">
                                <table id="recent_loan_collection" class="table table-bordered table-responsive table-hover table-striped" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>নাম</th>
                                            <th>বই নং</th>
                                            <th>ফিল্ড</th>
                                            <th>ক্ষেত্র</th>
                                            <th>ঋণ আদায়</th>
                                            <th>সঞ্চয়</th>
                                            <th>লাভ</th>
                                            <th>সময়</th>
                                            <th>অফিসার</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="loan-add-close" role="tabpanel" aria-labelledby="loan-add-close-tab">
                    <div class="loan_reg">
                        <!-- Savings Filter Form -->
                        <form action="">
                            <div class="row">
                                <!-- Field -->
                                <div class="col-md-6 mb-3 select">
                                    <label for="feild" class="pb-2 text-white">ফিল্ড</label>
                                    <select id="feild" class="form-control form-input p-3">
                                        <option class="feild" value="all" selected>সকল ফিল্ড</option>
                                        <option value="">কালামিয়া বাজার</option>
                                        <option value="">বহদ্দারহাট</option>
                                        <option value="">মোহাম্মদপুর</option>
                                    </select>
                                </div>
                                <!-- Centers -->
                                <div class="col-md-6 mb-3 select">
                                    <label for="center" class="pb-2 text-white">কেন্দ্র</label>
                                    <select id="center" class="form-control form-input p-3">
                                        <option class="feild" value="all" selected>সকল কেন্দ্র</option>
                                        <option value="">কালামিয়া বাজার</option>
                                        <option value="">বহদ্দারহাট</option>
                                        <option value="">মোহাম্মদপুর</option>
                                    </select>
                                </div>
                                <!-- offisers -->
                                <div class="col-md-6 mb-3 select">
                                    <label for="officer" class="pb-2 text-white">অফিসার</label>
                                    <select id="officer" class="form-control form-input p-3">
                                        <option class="feild" value="all" selected>সকল অফিসার</option>
                                        <option value="">আল-আমিন</option>
                                        <option value="">লিজা আক্তার</option>
                                        <option value="">রামিম হোসেন</option>
                                    </select>
                                </div>
                                <!-- time period -->
                                <div class="col-md-6 mb-3 select">
                                    <label for="period" class="pb-2 text-white">ক্ষেত্র</label>
                                    <select id="period" class="form-control form-input p-3">
                                        <option class="feild" value="all" selected>সকল ক্ষেত্র</option>
                                        <option value="">ডিপিএস</option>
                                        <option value="">বুধবার</option>
                                        <option value="">ড়বিবার</option>
                                    </select>
                                </div>
                            </div>
                        </form>

                        <!-- Chart -->
                        <div class="main_content">
                            <!-- Chart Heading -->
                            <div class="analytics_chart_heading text-center">
                                <h2>ঋণ নিবন্ধন ২৫ জন ২৫১০০০৳ এবং ক্লোজিং ১০ জন</h2>
                            </div>
                            <!-- Analytics Chart -->
                            <div class="analytics_chart">
                                <canvas id="loan_reg_chart"></canvas>
                            </div>
                            <!-- analytics Table -->
                            <div class="table mt-5">
                                <table id="recent_loan_collection" class="table table-bordered table-responsive table-hover table-striped" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>নাম</th>
                                            <th>বই নং</th>
                                            <th>ফিল্ড</th>
                                            <th>ক্ষেত্র</th>
                                            <th>ঋণ আদায়</th>
                                            <th>সঞ্চয়</th>
                                            <th>লাভ</th>
                                            <th>সময়</th>
                                            <th>অফিসার</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="expance" role="tabpanel" aria-labelledby="expance-tab">
                    <div class="expance">
                        <!-- Savings Filter Form -->
                        <form action="">
                            <div class="row">
                                <div class="period_tabs mb-3">
                                    <div class="form-check d-inline-block">
                                        <input class="form-check-input" checked hidden type="radio" name="expance" id="allexpance" value="option1">
                                        <label class="form-check-label" for="allexpance">
                                            সকল খরচ
                                        </label>
                                    </div>
                                    <div class="form-check d-inline-block">
                                        <input class="form-check-input" hidden type="radio" name="expance" id="daily_expance" value="option1">
                                        <label class="form-check-label" for="daily_expance">
                                            দৈনিক খরচ
                                        </label>
                                    </div>
                                    <div class="form-check d-inline-block">
                                        <input class="form-check-input" hidden type="radio" name="expance" id="salery_expance" value="option1">
                                        <label class="form-check-label" for="salery_expance">
                                            বেতন খরচ
                                        </label>
                                    </div>
                                    <div class="form-check d-inline-block">
                                        <input class="form-check-input" hidden type="radio" name="expance" id="fdr_expance" value="option1">
                                        <label class="form-check-label" for="fdr_expance">
                                            এফ.ডি.আর খরচ
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </form>

                        <!-- Chart -->
                        <div class="main_content">
                            <!-- Chart Heading -->
                            <div class="analytics_chart_heading text-center">
                                <h2>দৈনিক খরচ ২০০৫২৳, বেতন ৫০১২৬৫৳ এবং এফ.ডি.আর ৫০১২৬৳</h2>
                            </div>
                            <!-- Analytics Chart -->
                            <div class="analytics_chart">
                                <canvas id="expance_chart"></canvas>
                            </div>
                            <!-- analytics Table -->
                            <div class="table mt-5">
                                <table id="recent_loan_collection" class="table table-bordered table-responsive table-hover table-striped" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>নাম</th>
                                            <th>বই নং</th>
                                            <th>ফিল্ড</th>
                                            <th>ক্ষেত্র</th>
                                            <th>ঋণ আদায়</th>
                                            <th>সঞ্চয়</th>
                                            <th>লাভ</th>
                                            <th>সময়</th>
                                            <th>অফিসার</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                        <tr>
                                            <td>১</td>
                                            <td>মরিয়ম আক্তার</td>
                                            <td>৩০২০</td>
                                            <td>মাসিক</td>
                                            <td>মাসিক</td>
                                            <td>২৫০০</td>
                                            <td>১৩০</td>
                                            <td>১৩০</td>
                                            <td>০৬ঃ২৫</td>
                                            <td>আল-আমিন</td>
                                        </tr>
                                        <tr>
                                            <td>২</td>
                                            <td>আব্দুল্লাহ হুমায়ুন</td>
                                            <td>৩০২২</td>
                                            <td>বুধবার</td>
                                            <td>বুধবার</td>
                                            <td>২০০০</td>
                                            <td>৯০</td>
                                            <td>১৩০</td>
                                            <td>০৩ঃ১৩</td>
                                            <td>লিজা আক্তার</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="income" role="tabpanel" aria-labelledby="income-tab">
                    <!-- Chart -->
                    <div class="main_content">
                        <!-- Chart Heading -->
                        <div class="analytics_chart_heading text-center">
                            <h2>সর্বমোট আয় ২০০৫২৳</h2>
                        </div>
                        <!-- Analytics Chart -->
                        <div class="analytics_chart">
                            <canvas id="income_chart"></canvas>
                        </div>
                        <!-- analytics Table -->
                        <div class="table mt-5">
                            <table id="recent_loan_collection" class="table table-bordered table-responsive table-hover table-striped" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>নাম</th>
                                        <th>বই নং</th>
                                        <th>ফিল্ড</th>
                                        <th>ক্ষেত্র</th>
                                        <th>ঋণ আদায়</th>
                                        <th>সঞ্চয়</th>
                                        <th>লাভ</th>
                                        <th>সময়</th>
                                        <th>অফিসার</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>১</td>
                                        <td>মরিয়ম আক্তার</td>
                                        <td>৩০২০</td>
                                        <td>মাসিক</td>
                                        <td>মাসিক</td>
                                        <td>২৫০০</td>
                                        <td>১৩০</td>
                                        <td>১৩০</td>
                                        <td>০৬ঃ২৫</td>
                                        <td>আল-আমিন</td>
                                    </tr>
                                    <tr>
                                        <td>২</td>
                                        <td>আব্দুল্লাহ হুমায়ুন</td>
                                        <td>৩০২২</td>
                                        <td>বুধবার</td>
                                        <td>বুধবার</td>
                                        <td>২০০০</td>
                                        <td>৯০</td>
                                        <td>১৩০</td>
                                        <td>০৩ঃ১৩</td>
                                        <td>লিজা আক্তার</td>
                                    </tr>
                                    <tr>
                                        <td>১</td>
                                        <td>মরিয়ম আক্তার</td>
                                        <td>৩০২০</td>
                                        <td>মাসিক</td>
                                        <td>মাসিক</td>
                                        <td>২৫০০</td>
                                        <td>১৩০</td>
                                        <td>১৩০</td>
                                        <td>০৬ঃ২৫</td>
                                        <td>আল-আমিন</td>
                                    </tr>
                                    <tr>
                                        <td>২</td>
                                        <td>আব্দুল্লাহ হুমায়ুন</td>
                                        <td>৩০২২</td>
                                        <td>বুধবার</td>
                                        <td>বুধবার</td>
                                        <td>২০০০</td>
                                        <td>৯০</td>
                                        <td>১৩০</td>
                                        <td>০৩ঃ১৩</td>
                                        <td>লিজা আক্তার</td>
                                    </tr>
                                    <tr>
                                        <td>১</td>
                                        <td>মরিয়ম আক্তার</td>
                                        <td>৩০২০</td>
                                        <td>মাসিক</td>
                                        <td>মাসিক</td>
                                        <td>২৫০০</td>
                                        <td>১৩০</td>
                                        <td>১৩০</td>
                                        <td>০৬ঃ২৫</td>
                                        <td>আল-আমিন</td>
                                    </tr>
                                    <tr>
                                        <td>২</td>
                                        <td>আব্দুল্লাহ হুমায়ুন</td>
                                        <td>৩০২২</td>
                                        <td>বুধবার</td>
                                        <td>বুধবার</td>
                                        <td>২০০০</td>
                                        <td>৯০</td>
                                        <td>১৩০</td>
                                        <td>০৩ঃ১৩</td>
                                        <td>লিজা আক্তার</td>
                                    </tr>
                                    <tr>
                                        <td>১</td>
                                        <td>মরিয়ম আক্তার</td>
                                        <td>৩০২০</td>
                                        <td>মাসিক</td>
                                        <td>মাসিক</td>
                                        <td>২৫০০</td>
                                        <td>১৩০</td>
                                        <td>১৩০</td>
                                        <td>০৬ঃ২৫</td>
                                        <td>আল-আমিন</td>
                                    </tr>
                                    <tr>
                                        <td>২</td>
                                        <td>আব্দুল্লাহ হুমায়ুন</td>
                                        <td>৩০২২</td>
                                        <td>বুধবার</td>
                                        <td>বুধবার</td>
                                        <td>২০০০</td>
                                        <td>৯০</td>
                                        <td>১৩০</td>
                                        <td>০৩ঃ১৩</td>
                                        <td>লিজা আক্তার</td>
                                    </tr>
                                    <tr>
                                        <td>১</td>
                                        <td>মরিয়ম আক্তার</td>
                                        <td>৩০২০</td>
                                        <td>মাসিক</td>
                                        <td>মাসিক</td>
                                        <td>২৫০০</td>
                                        <td>১৩০</td>
                                        <td>১৩০</td>
                                        <td>০৬ঃ২৫</td>
                                        <td>আল-আমিন</td>
                                    </tr>
                                    <tr>
                                        <td>২</td>
                                        <td>আব্দুল্লাহ হুমায়ুন</td>
                                        <td>৩০২২</td>
                                        <td>বুধবার</td>
                                        <td>বুধবার</td>
                                        <td>২০০০</td>
                                        <td>৯০</td>
                                        <td>১৩০</td>
                                        <td>০৩ঃ১৩</td>
                                        <td>লিজা আক্তার</td>
                                    </tr>
                                    <tr>
                                        <td>১</td>
                                        <td>মরিয়ম আক্তার</td>
                                        <td>৩০২০</td>
                                        <td>মাসিক</td>
                                        <td>মাসিক</td>
                                        <td>২৫০০</td>
                                        <td>১৩০</td>
                                        <td>১৩০</td>
                                        <td>০৬ঃ২৫</td>
                                        <td>আল-আমিন</td>
                                    </tr>
                                    <tr>
                                        <td>২</td>
                                        <td>আব্দুল্লাহ হুমায়ুন</td>
                                        <td>৩০২২</td>
                                        <td>বুধবার</td>
                                        <td>বুধবার</td>
                                        <td>২০০০</td>
                                        <td>৯০</td>
                                        <td>১৩০</td>
                                        <td>০৩ঃ১৩</td>
                                        <td>লিজা আক্তার</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="score" role="tabpanel" aria-labelledby="score-tab">
                    <div class="score">

                        <!-- Chart -->
                        <div class="main_content">
                            <!-- Chart Heading -->
                            <div class="analytics_chart_heading text-center">
                                <h2>সর্বমোট <br> (আয় ৩০০০০৳ + লাভ ৩০০০০৳) - খরচ ৩০০০০৳ = ফলাফল ৩০০০০৳</h2>
                            </div>
                            <!-- Analytics Chart -->
                            <div class="analytics_chart">
                                <canvas id="score_chart"></canvas>
                            </div>
                            <!-- analytics Table -->
                            <div class="table mt-5">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="audit_table p-3">
                                            <div class="audit_heading  text-center my-3">
                                                <h3 class="fw-bolder">খরচ</h3>
                                            </div>
                                            <div class="audit_savings_table">
                                                <table class="table table-responsive table-striped">
                                                    <thead>
                                                        <th>#</th>
                                                        <th>খাত</th>
                                                        <th>টাকা</th>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>ডিপিএস</td>
                                                            <td>250130৳</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>ডিপিএস</td>
                                                            <td>250130৳</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>ডিপিএস</td>
                                                            <td>250130৳</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>ডিপিএস</td>
                                                            <td>250130৳</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>ডিপিএস</td>
                                                            <td>250130৳</td>
                                                        </tr>
                                                    </tbody>
                                                    <tfoot>
                                                        <tr>
                                                            <td>সর্বমোট</td>
                                                            <td>৫২১৪৫২০৳</td>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="audit_table p-3">
                                            <div class="audit_heading  text-center my-3">
                                                <h3 class="fw-bolder">আয়</h3>
                                            </div>
                                            <div class="audit_savings_table">
                                                <table class="table table-responsive table-striped">
                                                    <thead>
                                                        <th>#</th>
                                                        <th>খাত</th>
                                                        <th>টাকা</th>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>ডিপিএস</td>
                                                            <td>250130৳</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>ডিপিএস</td>
                                                            <td>250130৳</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>ডিপিএস</td>
                                                            <td>250130৳</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>ডিপিএস</td>
                                                            <td>250130৳</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>ডিপিএস</td>
                                                            <td>250130৳</td>
                                                        </tr>
                                                    </tbody>
                                                    <tfoot>
                                                        <tr>
                                                            <td>সর্বমোট</td>
                                                            <td>৫২১৪৫২০৳</td>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="audit_table p-3">
                                            <div class="audit_heading  text-center my-3">
                                                <h3 class="fw-bolder">ঋণ লাভ আদায়</h3>
                                            </div>
                                            <div class="audit_savings_table">
                                                <table class="table table-responsive table-striped">
                                                    <thead>
                                                        <th>#</th>
                                                        <th>ক্ষেত্র</th>
                                                        <th>টাকা</th>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>ডিপিএস</td>
                                                            <td>250130৳</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>ডিপিএস</td>
                                                            <td>250130৳</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>ডিপিএস</td>
                                                            <td>250130৳</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>ডিপিএস</td>
                                                            <td>250130৳</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>ডিপিএস</td>
                                                            <td>250130৳</td>
                                                        </tr>
                                                    </tbody>
                                                    <tfoot>
                                                        <tr>
                                                            <td>সর্বমোট</td>
                                                            <td>৫২১৪৫২০৳</td>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="audit_table p-3">
                                            <div class="audit_heading  text-center my-3">
                                                <h3 class="fw-bolder">সর্বশেষ হিসাব</h3>
                                            </div>
                                            <div class="audit_savings_table">
                                                <table class="table table-responsive table-striped">
                                                    <thead>
                                                        <th>#</th>
                                                        <th>খাত</th>
                                                        <th>টাকা</th>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>সর্বমোট (আয় + লাভ)</td>
                                                            <td>250130৳</td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>সর্বমোট খরচ</td>
                                                            <td>250130৳</td>
                                                        </tr>
                                                    </tbody>
                                                    <tfoot>
                                                        <tr class="bg-success">
                                                            <td></td>
                                                            <td class="d-flex justify-content-between">ফলাফল <span><i class='bx bx-plus'></i></span></td>
                                                            <td>৫২১৪৫২০৳</td>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php
include "include/footer.php";
?>

<script>
    // Savings Charts
    var savings_data_table = [{
            date: '01-08-2022',
            savings_collection: {
                debit: 1500,
                DPS: 2000
            }
        },
        {
            date: '02-08-2022',
            savings_collection: {
                debit: 1350,
                DPS: 450
            }
        },
        {
            date: '03-08-2022',
            savings_collection: {
                debit: 2000,
                DPS: 352
            }
        },
        {
            date: '04-08-2022',
            savings_collection: {
                debit: 2600,
                DPS: 251
            }
        },
        {
            date: '05-08-2022',
            savings_collection: {
                debit: 1500,
                DPS: 852
            }
        },
        {
            date: '06-08-2022',
            savings_collection: {
                debit: 1500,
                DPS: 2000
            }
        },
        {
            date: '07-08-2022',
            savings_collection: {
                debit: 1350,
                DPS: 450
            }
        },
        {
            date: '08-08-2022',
            savings_collection: {
                debit: 2000,
                DPS: 352
            }
        },
        {
            date: '09-08-2022',
            savings_collection: {
                debit: 2600,
                DPS: 251
            }
        },
        {
            date: '10-08-2022',
            savings_collection: {
                debit: 1500,
                DPS: 852
            }
        },
        {
            date: '11-08-2022',
            savings_collection: {
                debit: 1500,
                DPS: 2000
            }
        },
        {
            date: '12-08-2022',
            savings_collection: {
                debit: 1350,
                DPS: 450
            }
        },
        {
            date: '13-08-2022',
            savings_collection: {
                debit: 2000,
                DPS: 352
            }
        },
        {
            date: '14-08-2022',
            savings_collection: {
                debit: 2600,
                DPS: 251
            }
        },
        {
            date: '15-08-2022',
            savings_collection: {
                debit: 1500,
                DPS: 852
            }
        },
        {
            date: '16-08-2022',
            savings_collection: {
                debit: 1500,
                DPS: 2000
            }
        },
        {
            date: '17-08-2022',
            savings_collection: {
                debit: 1350,
                DPS: 450
            }
        },
        {
            date: '18-08-2022',
            savings_collection: {
                debit: 2000,
                DPS: 352
            }
        },
        {
            date: '19-08-2022',
            savings_collection: {
                debit: 2600,
                DPS: 251
            }
        },
        {
            date: '20-08-2022',
            savings_collection: {
                debit: 1500,
                DPS: 852
            }
        },
    ]
    const savings_chart = document.getElementById('savings_chart').getContext('2d');
    const myChart = new Chart(savings_chart, {
        type: 'line',
        data: {
            datasets: [{
                label: 'আদায় ৳',
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
                data: savings_data_table,
                parsing: {
                    yAxisKey: 'savings_collection.DPS',
                }
            }, {
                label: 'উত্তোলন ৳',
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
                data: savings_data_table,
                parsing: {
                    yAxisKey: 'savings_collection.debit',
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

    // Loan Chart
    var loan_data_table = [{
            date: '01-08-2022',
            loan_collection: {
                loan: 200,
                savings: 240,
                profit: 50,
                withdraw: 100
            }
        },
        {
            date: '02-08-2022',
            loan_collection: {
                loan: 450,
                savings: 301,
                profit: 62,
                withdraw: 640
            }
        },
        {
            date: '03-08-2022',
            loan_collection: {
                loan: 352,
                savings: 125,
                profit: 85,
                withdraw: 148
            }
        },
        {
            date: '04-08-2022',
            loan_collection: {
                loan: 251,
                savings: 201,
                profit: 30,
                withdraw: 248
            }
        },
        {
            date: '05-08-2022',
            loan_collection: {
                loan: 852,
                savings: 125,
                profit: 64,
                withdraw: 541
            }
        },
    ]
    const loan_chart = document.getElementById('loan_chart').getContext('2d');
    const loan_chart_config = new Chart(loan_chart, {
        type: 'line',
        data: {
            datasets: [{
                label: 'ঋণ আদায় ৳',
                backgroundColor: [
                    'rgba(75, 192, 192, 1)'
                ],
                borderColor: 'rgba(75, 192, 192, 1)',
                color: '#fff',
                data: loan_data_table,
                parsing: {
                    yAxisKey: 'loan_collection.loan',
                }
            }, {
                label: 'সঞ্চয় আদায় ৳',
                backgroundColor: [
                    'rgba(255, 159, 64, 1)'
                ],
                borderColor: 'rgba(255, 159, 64, 1)',
                color: '#fff',
                data: loan_data_table,
                parsing: {
                    yAxisKey: 'loan_collection.savings',
                }
            }, {
                label: 'লাভ আদায় ৳',
                backgroundColor: [
                    'rgba(54, 162, 235, 1)',

                ],
                borderColor: 'rgba(54, 162, 235, 1)',
                color: '#fff',
                data: loan_data_table,
                parsing: {
                    yAxisKey: 'loan_collection.profit',
                }
            }, {
                label: 'সঞ্চয় উত্তোলন ৳',
                backgroundColor: [
                    'red'
                ],
                borderColor: 'red',
                color: '#fff',
                data: loan_data_table,
                parsing: {
                    yAxisKey: 'loan_collection.withdraw',
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


    // Client Chart
    var client_data_table = [{
            date: '01-08-2022',
            client_collection: {
                client_add: 2,
                close: 2
            }
        },
        {
            date: '02-08-2022',
            client_collection: {
                client_add: 4,
                close: 3
            }
        },
        {
            date: '03-08-2022',
            client_collection: {
                client_add: 3,
                close: 1
            }
        },
        {
            date: '04-08-2022',
            client_collection: {
                client_add: 2,
                close: 2
            }
        },
        {
            date: '05-08-2022',
            client_collection: {
                client_add: 8,
                close: 1
            }
        },
    ]
    const client_chart = document.getElementById('client_chart').getContext('2d');
    const client_chart_config = new Chart(client_chart, {
        type: 'line',
        data: {
            datasets: [{
                label: 'সদস্য ভর্তি',
                backgroundColor: [
                    'rgba(75, 192, 192, 1)'
                ],
                borderColor: 'rgba(75, 192, 192, 1)',
                color: '#fff',
                data: client_data_table,
                parsing: {
                    yAxisKey: 'client_collection.client_add',
                }
            }, {
                label: 'সদস্য ক্লোজ',
                backgroundColor: [
                    'rgba(255, 159, 64, 1)'
                ],
                borderColor: 'rgba(255, 159, 64, 1)',
                color: '#fff',
                data: client_data_table,
                parsing: {
                    yAxisKey: 'client_collection.close',
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


    // loan Registration ANd Close Chart
    var loan_reg_data_table = [{
            date: '01-08-2022',
            loan_reg_collection: {
                loan_reg: 2,
                loan_close: 2
            }
        },
        {
            date: '02-08-2022',
            loan_reg_collection: {
                loan_reg: 4,
                loan_close: 3
            }
        },
        {
            date: '03-08-2022',
            loan_reg_collection: {
                loan_reg: 3,
                loan_close: 1
            }
        },
        {
            date: '04-08-2022',
            loan_reg_collection: {
                loan_reg: 2,
                loan_close: 2
            }
        },
        {
            date: '05-08-2022',
            loan_reg_collection: {
                loan_reg: 8,
                loan_close: 1
            }
        },
    ]
    const loan_reg_chart = document.getElementById('loan_reg_chart').getContext('2d');
    const loan_reg_chart_config = new Chart(loan_reg_chart, {
        type: 'line',
        data: {
            datasets: [{
                label: 'ঋণ নিবন্ধন',
                backgroundColor: [
                    'rgba(75, 192, 192, 1)'
                ],
                borderColor: 'rgba(75, 192, 192, 1)',
                color: '#fff',
                data: loan_reg_data_table,
                parsing: {
                    yAxisKey: 'loan_reg_collection.loan_reg',
                }
            }, {
                label: 'ঋণ ক্লোজ',
                backgroundColor: [
                    'rgba(255, 159, 64, 1)'
                ],
                borderColor: 'rgba(255, 159, 64, 1)',
                color: '#fff',
                data: loan_reg_data_table,
                parsing: {
                    yAxisKey: 'loan_reg_collection.loan_close',
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


    // expance Chart
    var expance_data_table = [{
            date: '01-08-2022',
            expance_collection: {
                expance: 254,
                salery: 2215,
                fdr: 2354
            }
        },
        {
            date: '02-08-2022',
            expance_collection: {
                expance: 421,
                salery: 3215,
                fdr: 2351
            }
        },
        {
            date: '03-08-2022',
            expance_collection: {
                expance: 301,
                salery: 1215,
                fdr: 3551
            }
        },
        {
            date: '04-08-2022',
            expance_collection: {
                expance: 225,
                salery: 2215,
                fdr: 2451
            }
        },
        {
            date: '05-08-2022',
            expance_collection: {
                expance: 875,
                salery: 1215,
                fdr: 2951
            }
        },
    ]
    const expance_chart = document.getElementById('expance_chart').getContext('2d');
    const expance_chart_config = new Chart(expance_chart, {
        type: 'line',
        data: {
            datasets: [{
                label: 'দৈনিক খরচ ৳',
                backgroundColor: [
                    'rgba(75, 192, 192, 1)'
                ],
                borderColor: 'rgba(75, 192, 192, 1)',
                color: '#fff',
                data: expance_data_table,
                parsing: {
                    yAxisKey: 'expance_collection.expance',
                }
            }, {
                label: 'বেতন ৳',
                backgroundColor: [
                    'rgba(255, 159, 64, 1)'
                ],
                borderColor: 'rgba(255, 159, 64, 1)',
                color: '#fff',
                data: expance_data_table,
                parsing: {
                    yAxisKey: 'expance_collection.salery',
                }
            }, {
                label: 'এফ.ডি.আর ৳',
                backgroundColor: [
                    'rgba(155, 169, 64, 1)'
                ],
                borderColor: 'rgba(155, 169, 64, 1)',
                color: '#fff',
                data: expance_data_table,
                parsing: {
                    yAxisKey: 'expance_collection.fdr',
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


    // income Chart
    var income_data_table = [{
            date: '01-08-2022',
            income_collection: {
                income: 2354
            }
        },
        {
            date: '02-08-2022',
            income_collection: {
                income: 2351
            }
        },
        {
            date: '03-08-2022',
            income_collection: {
                income: 3551
            }
        },
        {
            date: '04-08-2022',
            income_collection: {
                income: 2451
            }
        },
        {
            date: '05-08-2022',
            income_collection: {
                income: 2951
            }
        },
    ]
    const income_chart = document.getElementById('income_chart').getContext('2d');
    const income_chart_config = new Chart(income_chart, {
        type: 'line',
        data: {
            datasets: [{
                label: 'আয় ৳',
                backgroundColor: [
                    'rgba(75, 192, 192, 1)'
                ],
                borderColor: 'rgba(75, 192, 192, 1)',
                color: '#fff',
                data: income_data_table,
                parsing: {
                    yAxisKey: 'income_collection.income',
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

    var score_data_table = [{
            date: '01-08-2022',
            score_collection: {
                expance: 254,
                income: 2215,
                profit: 2354,
                result: 234
            }
        },
        {
            date: '02-08-2022',
            score_collection: {
                expance: 421,
                income: 3215,
                profit: 2351,
                result: 231
            }
        },
        {
            date: '03-08-2022',
            score_collection: {
                expance: 301,
                income: 1215,
                profit: 3551,
                result: 351
            }
        },
        {
            date: '04-08-2022',
            score_collection: {
                expance: 225,
                income: 2215,
                profit: 2451,
                result: 241
            }
        },
        {
            date: '05-08-2022',
            score_collection: {
                expance: 875,
                income: 1215,
                profit: 2951,
                result: 291
            }
        },
    ]
    const score_chart = document.getElementById('score_chart').getContext('2d');
    const score_chart_config = new Chart(score_chart, {
        type: 'line',
        data: {
            datasets: [{
                label: 'খরচ ৳',
                backgroundColor: [
                    'rgba(75, 192, 192, 1)'
                ],
                borderColor: 'rgba(75, 192, 192, 1)',
                color: '#fff',
                data: score_data_table,
                parsing: {
                    yAxisKey: 'score_collection.expance',
                }
            }, {
                label: 'আয় ৳',
                backgroundColor: [
                    'rgba(255, 159, 64, 1)'
                ],
                borderColor: 'rgba(255, 159, 64, 1)',
                color: '#fff',
                data: score_data_table,
                parsing: {
                    yAxisKey: 'score_collection.income',
                }
            }, {
                label: 'লাভ ৳',
                backgroundColor: [
                    'rgba(155, 169, 64, 1)'
                ],
                borderColor: 'rgba(155, 169, 64, 1)',
                color: '#fff',
                data: score_data_table,
                parsing: {
                    yAxisKey: 'score_collection.profit',
                }
            }, {
                label: 'ফলাফল ৳',
                backgroundColor: [
                    'rgba(205, 199, 604, 1)'
                ],
                borderColor: 'rgba(205, 199, 604, 1)',
                color: '#fff',
                data: score_data_table,
                parsing: {
                    yAxisKey: 'score_collection.result',
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