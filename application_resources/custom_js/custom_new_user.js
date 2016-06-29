var base_url = js_base_url;
var site_url = js_site_url;
//this function use to generrte random password
   function generatePassword() {
        var length = 8,
                charset = "abcdefghijklnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789",
                retVal = "";
        for (var i = 0, n = charset.length; i < length; ++i) {
            retVal += charset.charAt(Math.floor(Math.random() * n));
        }
        $('#user_password').val(retVal);
    }
    //this function use validate contact no filed,wages category field
    function numbersonly(myfield, e, dec) {
    var key;
    var keychar;

    if (window.event)
        key = window.event.keyCode;
    else if (e)
        key = e.which;
    else
        return true;
    keychar = String.fromCharCode(key);

// control keys
    if ((key == null) || (key == 0) || (key == 8) ||
        (key == 9) || (key == 13) || (key == 27))
        return true;

// numbers
    else if ((("0123456789").indexOf(keychar) > -1))
        return true;

// decimal point jump
    else if (dec && (keychar == ".")) {
        myfield.form.elements[dec].focus();
        return false;
    }
    else
        return false;
}

//////////////////user//////////////////////////////////////////////////////////////
$(document).ready(function() {
    //user table
    var user_table = $('#user_table').dataTable({
        "sDom": "<'row'<'col-md-6'l <'toolbar user_table_tbar'>><'col-md-6'f>r>t<'row'<'col-md-12'p i>>",
        "oTableTools": {
            "aButtons": [
                {
                    "sExtends": "collection",
                    "sButtonText": "<i class='fa fa-cloud-download'></i>",
                    "aButtons": ["csv", "xls", "pdf", "copy"]
                }
            ]
        },
        "aoColumnDefs": [
            {"bSortable": false, "aTargets": [0]}
        ],
        "oLanguage": {
            "sLengthMenu": "_MENU_ ",
            "sInfo": "Showing <b>_START_ to _END_</b> of _TOTAL_ entries"
        }
    });

//

    $(".user_table_tbar").html('<div class="table-tools-actions"><button class="btn btn-primary" style="margin-left:12px" id="add_user_btn" data-toggle="modal" data-target="#add_user_modal">Add New Employee</button></div>');

    $('#user_table_wrapper .dataTables_filter input').addClass("input-medium ");
    $('#user_table_wrapper .dataTables_length select').addClass("select2-wrapper span12");
    $(".select2-wrapper").select2({minimumResultsForSearch: -1});

    
 
//add user bday datepicker
    $('#user_bday_dpicker').datepicker({
        format: "yyyy-mm-dd",
        autoclose: true,
        todayHighlight: true
    });


    //add user Form
    $('#add_user_form').validate({
        focusInvalid: false,
        ignore: "",
        rules: {
            user_fname: {
                required: true
            },
            user_lname: {
                required: true
            },
            user_password:{
                required: true,
                password: true
            },
            user_email: {
                required: true,
                email: true
            },
            user_type: {
                required: true
            },
            user_job: {
                required: true
            },
            user_bday: {
                required: true
            },
            user_contact: {
                required: true
            },
            
            user_avatar:{
                required: true
            }


        },
        invalidHandler: function(event, validator) {
            //display error alert on form submit    
        },
        errorPlacement: function(label, element) { // render error placement for each input type   
            $('<span class="error"></span>').insertAfter($(element).parent()).append(label)
            var parent = $(element).parent('.input-with-icon');
            parent.removeClass('success-control').addClass('error-control');
        },
        highlight: function(element) { // hightlight error inputs
            var parent = $(element).parent();
            parent.removeClass('success-control').addClass('error-control');

        },
        unhighlight: function(element) { // revert the change done by hightlight

        },
        success: function(label, element) {
            var parent = $(element).parent('.input-with-icon');
            parent.removeClass('error-control').addClass('success-control');
        }, submitHandler: function(form)
        {
            $.post(site_url + '/user/user_controller/add_new_user', $('#add_user_form').serialize(), function(msg)
            {
                if (msg == 1) {
                    $("#add_user_msg").html('<div class="alert alert-success"><button class="close" data-dismiss="alert"></button>Success: The <a class="link" >user </a>has been added.</div>');
                    add_user_form.reset();
                    location.reload();
                } else {
                    $("#add_user_msg").html('<div class="alert alert-error"><button class="close" data-dismiss="alert"></button>Error: The <a class="link" href="#">user </a>has failed.</div>');
                }
            });


        }
    });
});

//edit user bday datepicker
$('#user_bday_edit_dpicker').datepicker({
    format: "yyyy-mm-dd",
    autoclose: true,
    todayHighlight: true
});

//edit user Form
$('#edit_user_form').validate({
    focusInvalid: false,
    ignore: "",
    rules: {
        user_fname: {
            required: true
        },
        user_lname: {
            required: true
        },
        user_password: {
            required: true,
            password: true
            
        },
        user_email: {
            required: true
            
        },
        user_type: {
            required: true
        },
        user_bday: {
            required: true
        },
        user_contact: {
            required: true,
            number:true
        },
        user_avatar: {
            required: true
        }


    },
    invalidHandler: function(event, validator) {
        //display error alert on form submit    
    },
    errorPlacement: function(label, element) { // render error placement for each input type   
        $('<span class="error"></span>').insertAfter($(element).parent()).append(label)
        var parent = $(element).parent('.input-with-icon');
        parent.removeClass('success-control').addClass('error-control');
    },
    highlight: function(element) { // hightlight error inputs
        var parent = $(element).parent();
        parent.removeClass('success-control').addClass('error-control');

    },
    unhighlight: function(element) { // revert the change done by hightlight

    },
    success: function(label, element) {
        var parent = $(element).parent('.input-with-icon');
        parent.removeClass('error-control').addClass('success-control');
    }, submitHandler: function(form)
    {
        $.post(site_url + '/user/user_controller/edit_user', $('#edit_user_form').serialize(), function(msg)
        {
            if (msg == 1) {
                $("#edit_user_msg").html('<div class="alert alert-success"><button class="close" data-dismiss="alert"></button>Success: The <a class="link" >user </a>has been updated.</div>');
                edit_user_form.reset();
                 window.location = site_url +'/user/user_controller/manage_users';
            } else {
                $("#edit_user_msg").html('<div class="alert alert-error"><button class="close" data-dismiss="alert"></button>Error: The <a class="link" href="#">user </a>has failed.</div>');
            }
        });


    }
});



//delete user
function delete_user(id) {

    if (confirm('Are you sure want to deactivate this Employee ?')) {

        $.ajax({
            type: "POST",
            url: site_url + '/user/user_controller/delete_user',
            data: "code=" + code,
            success: function(msg) {
                
            }
        });
    }

}

