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
                <li class="breadcrumb-item active" aria-current="page">বই চেকিং</li>
            </ol>
        </nav>
    </div>
</div>

<!-- Client Filter Form -->
<div class="book_checking_table">
    <div class="container-fluid">

        <!-- Book Checking tabs -->
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
                <a class="nav-link active" id="savings-tab" data-bs-toggle="tab" href="#savings" role="tab" aria-controls="savings" aria-selected="true">সঞ্চয় বই</a>
            </li>
            <li class="nav-item" role="presentation">
                <a class="nav-link" id="loan-tab" data-bs-toggle="tab" href="#loan" role="tab" aria-controls="loan" aria-selected="false">ঋণ বই</a>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="savings" role="tabpanel" aria-labelledby="savings-tab">
                <!-- table Data -->
                <div class="table m-0">
                    <div id="savings_table" class="recent_collection">
                        <table id="account_list" class="table table-responsive table-bordered table-hover table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>নাম</th>
                                    <th>বই নং</th>
                                    <th>ফিল্ড</th>
                                    <th>কেন্দ্র</th>
                                    <th>ক্ষেত্র</th>
                                    <th>ব্যালেন্স</th>
                                    <th>সর্বশেষ সঞ্চয়</th>
                                    <th>চেকিং তারিখ</th>
                                    <th>একাউন্ট দেখুন</th>
                                    <th>একশন</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>মরিয়ম আক্তার</td>
                                    <td>৩০২০</td>
                                    <td>কালামিয়া ব্যাজার</td>
                                    <td>বক্সিরহাট</td>
                                    <td>ডিপিএস</td>
                                    <td>২৫০০</td>
                                    <td>১০/১২/২২</td>
                                    <td>১৫/১২/২২</td>
                                    <td><a href="./loan-profile.php" class="text-warning" style="cursor: pointer; font-size: 36px;"><span><i class='bx bxs-folder-open'></i></span></a></td>
                                    <td>
                                        <div class="form-check form-switch text-center">
                                            <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
                                            <label class="form-check-label" for="flexSwitchCheckDefault"></label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>মরিয়ম আক্তার</td>
                                    <td>৩০২০</td>
                                    <td>কালামিয়া ব্যাজার</td>
                                    <td>বক্সিরহাট</td>
                                    <td>ডিপিএস</td>
                                    <td>২৫০০</td>
                                    <td>১০/১২/২২</td>
                                    <td>১৫/১২/২২</td>
                                    <td><a href="./loan-profile.php" class="text-warning" style="cursor: pointer; font-size: 36px;"><span><i class='bx bxs-folder-open'></i></span></a></td>
                                    <td>
                                        <div class="form-check form-switch text-center">
                                            <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
                                            <label class="form-check-label" for="flexSwitchCheckDefault"></label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>মরিয়ম আক্তার</td>
                                    <td>৩০২০</td>
                                    <td>কালামিয়া ব্যাজার</td>
                                    <td>বক্সিরহাট</td>
                                    <td>ডিপিএস</td>
                                    <td>২৫০০</td>
                                    <td>১০/১২/২২</td>
                                    <td>১৫/১২/২২</td>
                                    <td><a href="./loan-profile.php" class="text-warning" style="cursor: pointer; font-size: 36px;"><span><i class='bx bxs-folder-open'></i></span></a></td>
                                    <td>
                                        <div class="form-check form-switch text-center">
                                            <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
                                            <label class="form-check-label" for="flexSwitchCheckDefault"></label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>মরিয়ম আক্তার</td>
                                    <td>৩০২০</td>
                                    <td>কালামিয়া ব্যাজার</td>
                                    <td>বক্সিরহাট</td>
                                    <td>ডিপিএস</td>
                                    <td>২৫০০</td>
                                    <td>১০/১২/২২</td>
                                    <td>১৫/১২/২২</td>
                                    <td><a href="./loan-profile.php" class="text-warning" style="cursor: pointer; font-size: 36px;"><span><i class='bx bxs-folder-open'></i></span></a></td>
                                    <td>
                                        <div class="form-check form-switch text-center">
                                            <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
                                            <label class="form-check-label" for="flexSwitchCheckDefault"></label>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="loan" role="tabpanel" aria-labelledby="loan-tab">
                <!-- table Data -->
                <div class="table m-0">
                    <div id="loan_table" class="recent_collection">
                        <table id="loan_checking_account_list" class="table table-responsive table-bordered table-hover table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>নাম</th>
                                    <th>বই নং</th>
                                    <th>ফিল্ড</th>
                                    <th>কেন্দ্র</th>
                                    <th>ক্ষেত্র</th>
                                    <th>সঞ্চয় আদায়</th>
                                    <th>ঋণ আদায়</th>
                                    <th>ঋণ বাকি</th>
                                    <th>সর্বশেষ লেনদেন</th>
                                    <th>চেকিং তারিখ</th>
                                    <th>একাউন্ট দেখুন</th>
                                    <th>একশন</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>মরিয়ম আক্তার</td>
                                    <td>৩০২০</td>
                                    <td>কালামিয়া ব্যাজার</td>
                                    <td>বক্সিরহাট</td>
                                    <td>ডিপিএস</td>
                                    <td>২৫০০</td>
                                    <td>২৫০০</td>
                                    <td>২৫০০</td>
                                    <td>১০/১২/২২</td>
                                    <td>১৫/১২/২২</td>
                                    <td><a href="./loan-profile.php" class="text-warning" style="cursor: pointer; font-size: 36px;"><span><i class='bx bxs-folder-open'></i></span></a></td>
                                    <td>
                                        <div class="form-check form-switch text-center">
                                            <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
                                            <label class="form-check-label" for="flexSwitchCheckDefault"></label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>মরিয়ম আক্তার</td>
                                    <td>৩০২০</td>
                                    <td>কালামিয়া ব্যাজার</td>
                                    <td>বক্সিরহাট</td>
                                    <td>ডিপিএস</td>
                                    <td>২৫০০</td>
                                    <td>২৫০০</td>
                                    <td>২৫০০</td>
                                    <td>১০/১২/২২</td>
                                    <td>১৫/১২/২২</td>
                                    <td><a href="./loan-profile.php" class="text-warning" style="cursor: pointer; font-size: 36px;"><span><i class='bx bxs-folder-open'></i></span></a></td>
                                    <td>
                                        <div class="form-check form-switch text-center">
                                            <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
                                            <label class="form-check-label" for="flexSwitchCheckDefault"></label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>মরিয়ম আক্তার</td>
                                    <td>৩০২০</td>
                                    <td>কালামিয়া ব্যাজার</td>
                                    <td>বক্সিরহাট</td>
                                    <td>ডিপিএস</td>
                                    <td>২৫০০</td>
                                    <td>২৫০০</td>
                                    <td>২৫০০</td>
                                    <td>১০/১২/২২</td>
                                    <td>১৫/১২/২২</td>
                                    <td><a href="./loan-profile.php" class="text-warning" style="cursor: pointer; font-size: 36px;"><span><i class='bx bxs-folder-open'></i></span></a></td>
                                    <td>
                                        <div class="form-check form-switch text-center">
                                            <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
                                            <label class="form-check-label" for="flexSwitchCheckDefault"></label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>মরিয়ম আক্তার</td>
                                    <td>৩০২০</td>
                                    <td>কালামিয়া ব্যাজার</td>
                                    <td>বক্সিরহাট</td>
                                    <td>ডিপিএস</td>
                                    <td>২৫০০</td>
                                    <td>২৫০০</td>
                                    <td>২৫০০</td>
                                    <td>১০/১২/২২</td>
                                    <td>১৫/১২/২২</td>
                                    <td><a href="./loan-profile.php" class="text-warning" style="cursor: pointer; font-size: 36px;"><span><i class='bx bxs-folder-open'></i></span></a></td>
                                    <td>
                                        <div class="form-check form-switch text-center">
                                            <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
                                            <label class="form-check-label" for="flexSwitchCheckDefault"></label>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
include "include/footer.php";
?>
</body>

</html>