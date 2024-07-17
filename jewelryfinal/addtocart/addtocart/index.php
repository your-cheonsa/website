<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "productdb";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    echo "Failed to Connect";
}

if (isset($_POST["add"])) {
    $productId = $_GET["id"];
    $productName = $_POST["hidden_name"];
    $productImage = $_POST["hidden_image"];
    $productPrice = $_POST["hidden_price"];
    $productQuantity = $_POST["quantity"];
    $selectedSize = $_POST["size"];

    $sql = "INSERT INTO `product_second` (`description`, `image`, `price`, `quantity`, `size`) VALUES ('$productName', '$productImage', '$productPrice', '$productQuantity', '$selectedSize')";
    mysqli_query($conn, $sql);

    header("Location: cart.php");
    exit();
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CART</title>
    <link rel="stylesheet" href="style.css">
    <style>
        .product-image {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border: 1px solid #ddd;
        }


        #size {
            width: 70px;
        }
    </style>
</head>

<body>
    <nav>
        <span>Shop Here</span>
        <div>
            <a href="">LogIn</a>
            <a href="cart.php">Cart</a>
        </div>
    </nav>

    <main>
        <h2>Product</h2>
        <div class="container">
            <?php
            $query = "SELECT * FROM `product_first` ORDER BY id ASC";
            $result = mysqli_query($conn, $query);

            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_array($result)) {
            ?>
                    <div class="product">
                        <form action="index.php?action=add&id=<?php echo $row["id"]; ?>" method="post">
                            <img src="img/<?php echo $row["image"]; ?>" alt="" class="product-image">
                            <h3><?php echo $row["description"] ?></h3>
                            <p>Rs<?php echo $row["price"]; ?></p>
                            <label for="quantity">Quantity:</label>
                            <input type="number" id="quantity" name="quantity" value="1">
                            
                            <label for="size">Size:</label>
                            <input type="number" id="size" name="size" value="17">
                            
                            <input type="hidden" name="hidden_image" value="<?php echo $row["image"]; ?>">
                            <input type="hidden" name="hidden_name" value="<?php echo $row["description"]; ?>">
                            <input type="hidden" name="hidden_price" value="<?php echo $row["price"]; ?>">
                            <input type="submit" name="add" value="Add to Cart">
                        </form>
                    </div>
            <?php
                }
            }
            ?>
        </div>
    </main>

    <footer></footer>
</body>

</html>
