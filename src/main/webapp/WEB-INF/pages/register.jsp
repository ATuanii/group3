<html>
<head>
    <title>User Registration</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <form action="/register" method="POST" id="register-form">
        <fieldset class="scheduler-border">
            <legend class="scheduler-border"><h2>Please fill in the following information to register.</h2></legend>
            <div class="form-group">
                <label for="name">Full Name (*)</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Full Name" required>
            </div>
            <div class="form-group">
                <label for="email">Email (*)</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
            </div>
            <div class="form-group">
                <label for="password">Password (*)</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone number (*)</label>
                <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone number" required>
            </div>
            <div class="form-group">
                <label for="address">Address (*)</label>
                <input type="text" class="form-control" id="address" name="address" placeholder="Address" required>
            </div>
             <div class="form-group">
                            <label for="status">Status (*)</label>
                            <input type="text" class="form-control" id="status" name="status" placeholder="Status" required>
                        </div>
            <button type="submit" class="btn btn-info">Save</button>
        </fieldset>
    </form>
	<style>
	body {
		background-color: #f2f2f2;
		padding: 20px;
	}

	form {
		background-color: #fff;
		padding: 20px;
		border-radius: 5px;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	}

	label {
		font-weight: bold;
	}

	input[type="text"], input[type="email"], input[type="password"], input[type="tel"], textarea {
		width: 100%;
		padding: 10px;
		border: none;
		border-radius: 5px;
		background-color: #f2f2f2;
	}

	input[type="submit"], button[type="submit"] {
		background-color: #4CAF50; /* Green */
		color: white;
		padding: 10px 20px;
		border: none;
		border-radius: 5px;
		cursor: pointer;
	}</style>
</body>
</html>
