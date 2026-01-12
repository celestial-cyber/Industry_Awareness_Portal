<?php
// register.php
$servername = "localhost";
$username = "root"; // adjust as needed
$password = "";
$dbname = "iap_portal"; // assume database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $roll_number = $_POST['roll_number'];
    $year = $_POST['year'];
    $department = $_POST['department'];
    $email = $_POST['email'];
    $session_desired = $_POST['session_desired'];
    $other_query = $_POST['other_query'];

    $sql = "INSERT INTO session_registrations (name, roll_number, year, department, email, session_desired, other_query) VALUES (?, ?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sssssss", $name, $roll_number, $year, $department, $email, $session_desired, $other_query);

    if ($stmt->execute()) {
        header("Location: index.php?success=1");
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $stmt->close();
}

$conn->close();
?>