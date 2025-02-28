<!DOCTYPE html>
<html>
<head>
    <title>Edit Team</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0px;
            background-color: #f8f9fa;
        }
        nav {
            background-color: #007bff;
            padding: 10px;
            color: #fff;
            text-align: center;
        }
        nav h2 {
            color: #fff;
            text-decoration: none;
            margin: 0 15px;
        }
        .container {
            margin: 15px;
        }
        footer {
            background-color: #007bff;
            color: #fff;
            text-align: center;
            padding: 10px;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
        h1 {
            color: #333;
        }
        form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 3px;
        }
        .button-group {
            display: flex;
            justify-content: space-between;
        }
        .submit-button, .cancel-button {
            display: inline-block;
            padding: 10px 15px;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
            cursor: pointer;
            width: 48%;
        }
        .submit-button {
            background-color: #007bff;
        }
        .submit-button:hover {
            background-color: #0056b3;
        }
        .cancel-button {
            background-color: #dc3545;
        }
        .cancel-button:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <nav>
        <h2>CRUD Sederhana</h2>
    </nav>
    <div class="container">
        <h1>Edit Team</h1>
        <g:form action="update" id="${team.id}" method="POST">
            <label for="name">Name:</label>
            <g:textField name="name" value="${team.name}"/><br/>
            
            <label for="negara">Negara:</label>
            <g:textField name="negara" value="${team.negara}"/><br/>
            
            <label for="liga">Liga:</label>
            <g:textField name="liga" value="${team.liga}"/><br/>
            
            <label for="logo">Logo URL:</label>
            <g:textField name="logo" value="${team.logo}"/><br/>
            
            <div class="button-group">
                <g:submitButton name="update" value="Update" class="submit-button"/>
                <g:link action="index" class="cancel-button">Cancel</g:link>
            </div>
        </g:form>
    </div>
    <footer>
        &copy; 2025 Harits Putra Junaidi. All rights reserved.
    </footer>
</body>
</html>