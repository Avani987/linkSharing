$().ready(function () {
    $("#login").validate({
        rules:{

            uname:{
                required:true,
                minlength:5
            },
            password:{
                required:true,
                minlength:5
            }

        },
        messages:{
            uname:{
                required:"Please enter correct username",
                minlength:"Must consist of atleast 5 characters"
            },
            password:{
                required:"Please enter a password",
                minlength:"Must consist of atleast 5 characters"
            }
        }

    })
});