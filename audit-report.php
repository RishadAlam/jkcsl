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
                <li class="breadcrumb-item active" aria-current="page">অডিট রিপোর্ট</li>
            </ol>
        </nav>
    </div>
</div>

<!-- audit -->
<div class="audit">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="audit_table p-3">
                    <div class="audit_heading text-center my-3">
                        <h3 class="fw-bolder">সাধারণ সঞ্চয়</h3>
                    </div>
                    <div class="audit_savings_table">
                        <table class="table table-responsive table-striped" id="savingsBody">
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="audit_table p-3">
                    <div class="audit_heading  text-center my-3">
                        <h3 class="fw-bolder">ঋণ সঞ্চয়</h3>
                    </div>
                    <div class="audit_savings_table">
                        <table class="table table-responsive table-striped" id="loanSavingsBody">
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-12 my-3">
                <div class="audit_table p-3">
                    <div class="audit_heading  text-center my-3">
                        <h3 class="fw-bolder">ঋণ</h3>
                    </div>
                    <div class="audit_savings_table">
                        <table class="table table-responsive table-striped" id="loansBody">
                            <thead>
                                <th>#</th>
                                <th>ক্ষেত্র</th>
                                <th>ঋণ প্রদান</th>
                                <th>ঋণ আদায়</th>
                                <th>ঋণ বাকি</th>
                                <th>সর্বমোট ঋণ</th>
                                <th>লাভ আদায়</th>
                                <th>লাভ বাকি</th>
                                <th>সর্বমোট লাভ</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>১</td>
                                    <td>ঋণ</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                </tr>
                                <tr>
                                    <td>১</td>
                                    <td>ঋণ</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                </tr>
                                <tr>
                                    <td>১</td>
                                    <td>ঋণ</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                </tr>
                                <tr>
                                    <td>১</td>
                                    <td>ঋণ</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                    <td>250130৳</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="2">সর্বমোট</td>
                                    <td>৫২১৪৫২০৳</td>
                                    <td>৫২১৪৫২০৳</td>
                                    <td>৫২১৪৫২০৳</td>
                                    <td>৫২১৪৫২০৳</td>
                                    <td>৫২১৪৫২০৳</td>
                                    <td>৫২১৪৫২০৳</td>
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
                        <h3 class="fw-bolder">সর্বমোট সঞ্চয়</h3>
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
                                    <td>সাধারণ সঞ্চয়</td>
                                    <td>250130৳</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>ঋণ সঞ্চয়</td>
                                    <td>250130৳</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>এফ.ডি.আর</td>
                                    <td>250130৳</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td></td>
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
                                    <td>সর্বমোট ঋণ বাকি</td>
                                    <td>250130৳</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>সর্বমোট সঞ্চয়</td>
                                    <td>250130৳</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr class="bg-success">
                                    <td></td>
                                    <td class="d-flex justify-content-between">লাভ <span><i class='bx bx-plus'></i></span></td>
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

<?php
include "include/footer.php";
?>
<script>
    $(document).ready(function() {

        function SavingsLoad() {
            $.ajax({
                url: "codes/auditAuthenticate.php",
                type: "POST",
                data: {
                    savings: 1
                },
                success: function(data) {
                    // console.log(data);
                    if (data != false) {
                        $("#savingsBody").html(data);
                    }
                }
            })
        }
        SavingsLoad();

        function loanSavingsLoad() {
            $.ajax({
                url: "codes/auditAuthenticate.php",
                type: "POST",
                data: {
                    loanSavings: 1
                },
                success: function(data) {
                    // console.log(data);
                    if (data != false) {
                        $("#loanSavingsBody").html(data);
                    }
                }
            })
        }
        loanSavingsLoad();

        function loansLoad() {
            $.ajax({
                url: "codes/auditAuthenticate.php",
                type: "POST",
                data: {
                    loans: 1
                },
                success: function(data) {
                    // console.log(data);
                    if (data != false) {
                        $("#loansBody").html(data);
                    }
                }
            })
        }
        loansLoad();

    })
</script>
</body>

</html>