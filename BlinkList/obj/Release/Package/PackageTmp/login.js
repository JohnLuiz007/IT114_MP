var isLoggedIn = localStorage.getItem("isLoggedIn");
if (isLoggedIn) {
    $("#signin-nav").hide(); // Hide sign in link
    $("#profile-nav").show(); // Show profile link
} else {
    $("#signin-nav").show(); // Show sign in link
    $("#profile-nav").hide(); // Hide profile link
}

// Show signup form and hide login form when "Sign Up" link is clicked
$("#signup-link").click(function(e) {
    e.preventDefault();
    $("#login-form").hide(); // Hide login form
    $("#signup-form").show(); // Show signup form
    $(".card-header").text("Sign Up"); // Change card header text
});

// Show login form and hide signup form when "Login" link is clicked
$("#login-link").click(function(e) {
    e.preventDefault();
    $("#signup-form").hide(); // Hide signup form
    $("#login-form").show(); // Show login form
    $(".card-header").text("Login"); // Change card header text
});
