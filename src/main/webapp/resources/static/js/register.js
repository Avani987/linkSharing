$().ready(function () {

    var v=document.getElementById('username').value;
    $("#registerform").validate({
        rules:{
            fname:{
                required:true,
                minlength:3
            },
            lname:{
                required:true,
                minlength:3
            },

            email:{
                required:true,
                email:true
            },

            uname:{
                required:true,
                minlength:5
                /*remote:  {
                        url: "<spring:url value='/reg/available' />",
                        type: "post",
                        /!*contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data: '{"uname": "' + $("#uname").val() + '"}'*!/
                        data: $("#uname").val()
                }*/
            },
            password:{
                required:true,
                minlength:5
            },

            confirmpwd:{
                required:true,
                minlength:5,
                equalTo:"#pwd"
            }

        },
        messages:{
            fname:{
                required:"Please enter your First Name",
                minlength:"Must consist of 3 characters",
            },
            lname:{
                required:"Please enter your Last Name",
                minlength:"Must consist of atleast 3 characters"
            },
            email:{
                required:"Please enter an email",
                email:"Must be a valid email"
            },
            uname:{
                required:"Please enter a username or an email",
                minlength:"Must consist of atleast 5 characters"
                /*remote: "This username has already been taken,Try another"*/
            },
            password:{
                required:"Please enter a password",
                minlength:"Must consist of atleast 5 characters"
            },
            confirmpwd:{

            }
        }

    })
});

$("#uname").focus(function () {
        var firstName=$("#fname").val();
        var lastName=$("#lname").val();

        if(firstName && lastName && !this.value){
            this.value=firstName+"."+lastName;
        }
    }

);