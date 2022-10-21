<?php

use controller\FieldDataController\FieldDataController\FieldDataController;

include_once "../controller/FieldDataController.php";
$fields = new FieldDataController();

if (isset($_POST['savings']) && $_POST['savings'] == 1) {
    $result = $fields->savingsAuditLoad();

    if ($result != false) {
        $output = '<thead>
                        <th>#</th>
                        <th>ক্ষেত্র</th>
                        <th>টাকা</th>
                    </thead>
                    <tbody>';
        $total = array();
        foreach ($result as $keys => $row) {
            $output .= '<tr>
                            <td>' . ++$keys . '</td>
                            <td>' . $row['period_name'] . '</td>
                            <td>৳' . $row['total'] . '/-</td>
                        </tr>';
            $total[] = $row['total'];
        }
        $output .= '</tbody>
                    <tfoot>
                        <tr  style="font-weight: bolder;">
                            <td></td>
                            <td style="font-size: 22px;">সর্বমোট</td>
                            <td style="font-size: 22px;">৳' . array_sum($total) . '/-</td>
                        </tr>
                    </tfoot>';
        echo $output;
    } else {
        echo false;
    }
}

if (isset($_POST['loanSavings']) && $_POST['loanSavings'] == 1) {
    $result = $fields->loanSavingsAuditLoad();

    if ($result != false) {
        $output = '<thead>
                        <th>#</th>
                        <th>ক্ষেত্র</th>
                        <th>টাকা</th>
                    </thead>
                    <tbody>';
        $total = array();
        foreach ($result as $keys => $row) {
            $output .= '<tr>
                            <td>' . ++$keys . '</td>
                            <td>' . $row['period_name'] . '</td>
                            <td>৳' . $row['total'] . '/-</td>
                        </tr>';
            $total[] = $row['total'];
        }
        $output .= '</tbody>
                    <tfoot>
                        <tr  style="font-weight: bolder;">
                            <td></td>
                            <td style="font-size: 22px;">সর্বমোট</td>
                            <td style="font-size: 22px;">৳' . array_sum($total) . '/-</td>
                        </tr>
                    </tfoot>';
        echo $output;
    } else {
        echo false;
    }
}

if (isset($_POST['loans']) && $_POST['loans'] == 1) {
    $result = $fields->loansAuditLoad();

    if ($result != false) {
        $output = '<thead>
                        <th>#</th>
                        <th>ক্ষেত্র</th>
                        <th>টাকা</th>
                    </thead>
                    <tbody>';
        $total = array();
        foreach ($result as $keys => $row) {
            $output .= '<tr>
                            <td>' . ++$keys . '</td>
                            <td>' . $row['period_name'] . '</td>
                            <td>৳' . $row['total'] . '/-</td>
                        </tr>';
            $total[] = $row['total'];
        }
        $output .= '</tbody>
                    <tfoot>
                        <tr  style="font-weight: bolder;">
                            <td></td>
                            <td style="font-size: 22px;">সর্বমোট</td>
                            <td style="font-size: 22px;">৳' . array_sum($total) . '/-</td>
                        </tr>
                    </tfoot>';
        echo $output;
    } else {
        echo false;
    }
}
