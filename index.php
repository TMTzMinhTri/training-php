<!DOCTYPE html>
<html>
    <head>
        <title>PHP MySQL Query Data Demo</title>
        <link href="style.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <table class="table">
                <tr class="title">
                    <th class="col">name</th>
                    <th class="col">phone number</th>
                    <th class="col">ip</th>
                    <th class="col">Home page</th>
                    <th class="col">devide</th>
                    <th class="col">browser</th>
                    <th class="col">update-time</th>
                </tr>
                <?php 
                    $username ='root';
                    $password = '';
                    $database = 'customer_activities';
                    $host = 'localhost';
                    $connection = mysqli_connect($host,$username,$password,$database);
                    $sql = 'SELECT customer_user_agent, customer_phonenumber, customer_ip, page_root, Device_Brand,Device_browser,update_time FROM customer_activities';
                    $result = mysqli_query($connection, $sql);
                
                    while ($row=mysqli_fetch_assoc($result)) {
                        echo "<tr>";
                        echo "<td>".$row["customer_user_agent"]."</td>";
                        echo "<td>".$row["customer_phonenumber"]."</td>";
                        echo "<td>".$row["customer_ip"]."</td>";
                        echo "<td>".$row["page_root"]."</td>";
                        echo "<td>".$row["Device_Brand"]."</td>";
                        echo "<td>".$row["Device_browser"]."</td>";
                        echo "<td>".$row["update_time"]."</td>";
                        echo "</tr>";
                    }
                ?>
                    
            </table>
            
        </div>
    </body>
</div>
</html>