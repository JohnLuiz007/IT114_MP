﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Entry.aspx.cs" Inherits="BlinkList.Entry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blink List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet"/>
    <link rel="icon" type="image/x-icon" href="logoblink1.png"/>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #191414;
            /* Spotify black */
            color: #fff;
            /* Text color */
        }

        .card {
            background-color: #1F1F1F;
            /* Darker card background color */
            border: none;
            color: #fff;
            /* Text color */
            border-radius: 12px;
            /* Rounded corners */
            margin-top: 20px;
        }

        .card-header {
            background-color: #1DB954;
            /* Spotify green */
            border-bottom: none;
            color: #fff;
            /* Text color */
            font-weight: 600;
            /* Bold font */
            text-transform: uppercase;
            /* Uppercase text */
            border-top-left-radius: 12px;
            /* Rounded corners */
            border-top-right-radius: 12px;
            /* Rounded corners */
        }

        .form-control {
            background-color: #282828;
            /* Form input background color */
            color: #fff;
            /* Form input text color */
            border-color: #282828;
            /* Form input border color */
            border-radius: 8px;
            /* Rounded corners */
        }

        .btn-primary {
            background-color: #1DB954;
            /* Spotify green */
            border-color: #1DB954;
            /* Button border color */
            font-weight: 600;
            /* Bold font */
            text-transform: uppercase;
            /* Uppercase text */
            border-radius: 8px;
            /* Rounded corners */
        }

            .btn-primary:hover {
                background-color: #25cf67;
                /* Lighter green on hover */
                border-color: #25cf67;
                /* Button border color on hover */
            }

        a {
            color: #1DB954;
            /* Link color */
        }

            a:hover {
                color: #25cf67;
                /* Link color on hover */
            }

        .navbar {
            background-color: #000000;
            /* Black navbar background */
            padding-bottom: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg">
            <a class="navbar-brand" href="index.html">
                <img src="blinklogo2.png" alt="Logo" style="max-height: 40px;" /></a>
        </nav>

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">Login to Blink List</div>
                        <div class="card-body">
                            <!-- Login Form -->
                            <div id="login-form">
                                <div class="form-group">
                                    <label for="username">Username or Email</label>
                                    <input type="text" class="form-control" id="login-username"
                                        placeholder="Enter username or email">
                                    <div id="login-username-error" class="text-danger"></div>
                                    <!-- Container for username validation message -->
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" id="login-password" placeholder="Password">
                                    <div id="login-password-error" class="text-danger"></div>
                                    <!-- Container for password validation message -->
                                </div>
                                <button type="submit" class="btn btn-primary btn-block">Login</button>
                                <p class="mt-3 text-center">
                                    Don't have an account yet? <a href="#" id="signup-link">Sign
                                    Up</a>
                                </p>
                            </div>

                            <!-- Signup Form -->
                            <div id="signup-form" style="display: none;">
                                <div class="form-group">
                                    <label for="username">Username</label>
                                    <input type="text" class="form-control" id="signup-username"
                                        placeholder="Enter username">
                                    <div id="signup-username-error" class="text-danger"></div>
                                    <!-- Container for username validation message -->
                                </div>
                                <div class="form-group">
                                    <label for="email">Email address</label>
                                    <input type="email" class="form-control" id="signup-email" aria-describedby="emailHelp"
                                        placeholder="Enter email">
                                    <div id="signup-email-error" class="text-danger"></div>
                                    <!-- Container for email validation message -->
                                </div>
                                <div class="form-group">
                                    <label for="signup-password">* Create a password</label>
                                    <input type="password" class="form-control" id="signup-password" placeholder="Password"
                                        required>
                                    <div id="signup-password-error" class="text-danger"></div>
                                    <!-- Container for password validation message -->
                                    <small id="passwordHelp" class="form-text text-muted">8 to 25 characters long that
                                    includes at least 1 uppercase and 1 lowercase letter, 1 number, and 1 special
                                    character like an exclamation point or asterisk.</small>
                                </div>
                                <div class="form-group">
                                    <label for="confirm-password">* Confirm Password</label>
                                    <input type="password" class="form-control" id="confirm-password"
                                        placeholder="Retype password" required>
                                    <div id="signup-confirm-password-error" class="text-danger"></div>
                                    <!-- Container for confirm password validation message -->
                                </div>
                                <button type="submit" class="btn btn-primary btn-block">Create account</button>
                                <p class="mt-3 text-center">
                                    Already have an account? <a href="#" id="login-link">Login</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <!-- Add jQuery -->
        <script src="login.js"></script>
        <!-- Bootstrap and other scripts -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
