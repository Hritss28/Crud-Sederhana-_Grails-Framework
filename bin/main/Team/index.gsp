<!DOCTYPE html>
<html>
<head>
    <title>Teams</title>
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
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            background-color: #fff;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #007bff;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .actions {
            display: flex;
            justify-content: center;
            gap: 10px;
        }
        .actions a {
            text-decoration: none;
            color: #fff;
            padding: 5px 10px;
            border-radius: 3px;
            display: inline-block;
            width: 60px;
            text-align: center;
        }
        .actions a.edit {
            background-color: #007bff;
        }
        .actions a.delete {
            background-color: #dc3545;
        }
        .actions a:hover {
            opacity: 0.8;
        }
        .create-link {
            display: inline-block;
            margin-top: 10px;
            margin-bottom: 10px;
            padding: 10px 15px;
            background-color: #28a745;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
        }
        .create-link:hover {
            background-color: #218838;
        }
        .alert {
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid transparent;
            border-radius: 4px;
        }
        .alert-info {
            color: #31708f;
            background-color: #d9edf7;
            border-color: #bce8f1;
        }
    </style>
</head>
<body>
    <nav>
        <h2>CRUD Sederhana</h2>
    </nav>
    <div class="container">
        <h1>Teams</h1>
        <g:if test="${flash.message}">
            <div class="alert alert-info">${flash.message}</div>
        </g:if>
        <g:link action="create" class="create-link">Create New Team</g:link>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Negara</th>
                    <th>Liga</th>
                    <th>Logo</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <g:each in="${teams}" var="team">
                    <tr>
                        <td>${team.name}</td>
                        <td>${team.negara}</td>
                        <td>${team.liga}</td>
                        <td><img src="${team.logo}" alt="${team.name} logo" width="100" height="100"/></td>
                        <td class="actions">
                            <g:link action="edit" id="${team.id}" class="edit">Edit</g:link>
                            <g:link action="delete" id="${team.id}" class="delete" onclick="return confirm('Are you sure?')">Delete</g:link>
                        </td>
                    </tr>
                </g:each>
            </tbody>
        </table>
    </div>
    <footer>
        &copy; 2025 Harits Putra Junaidi. All rights reserved.
    </footer>
</body>
</html>