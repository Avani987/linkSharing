
    $("#pwdChange").submit(function(e) {
        $.ajax({
            type: "POST",
            url: "passwordChange",
            data: {email:email,password:password}, // serializes the form's elements.
            success: function(data)
            {
                $("#pwdChange").html("<p>Password Reset Successfully</p>");
            }
        });
        e.preventDefault(); // avoid to execute the actual submit of the form.
    });