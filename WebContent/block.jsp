<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Block | E - voting</title>
    <link rel="stylesheet" href="block.css" type="text/css">
    <%@ include file="sidebar.jsp" %>
</head>

<body>
    <div class="block_container">
        <div class="block block_main">
            <!-- Block container starts -->
            <form action="#" method="post">
                <label for="Id">Block ID</label>
                <input type="text" name="B_id" disabled> <br>
                <label for="Timestamp">Time stamp</label>
                <input type="text" name="Timestamp" disabled> <br>
                <label for="Block hash">Block hash</label>
                <input type="text" name="B_hash" disabled> <br>
                <label for="Vote">Vote for</label>
                <input type="text" name="vote" disabled> <br>
                <label for="Previous">Previous hash</label>
                <input type="text" name="P_hash" disabled> <br>
            </form>
        </div>
        <!-- Block container ends -->
        <div class="block2 block_main">
            <form action="#" method="post">
                <label for="Id">Block ID</label>
                <input type="text" name="B_id" disabled> <br>
                <label for="Timestamp">Time stamp</label>
                <input type="text" name="Timestamp" disabled> <br>
                <label for="Block hash">Block hash</label>
                <input type="text" name="B_hash" disabled> <br>
                <label for="Vote">Vote for</label>
                <input type="text" name="vote" disabled> <br>
                <label for="Previous">Previous hash</label>
                <input type="text" name="P_hash" disabled> <br>
            </form>
        </div>
        <div class="footer-container">
            <button class="btn-left btn">
                <a href="#">Previous</a>
            </button>
            <button class="btn-right btn">
                <a href="#">Next</a>
            </button>
            <div class="clear">
                <!-- Elements inside the label and input are floated so this used to prevent the box container not float -->
            </div>
        </div>
    </div>
</body>

</html>