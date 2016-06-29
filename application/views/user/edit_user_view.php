<div class="page-title">	
    <h3><?php echo $heading; ?></h3>		
</div>

<div class="row-fluid">
    <div class="span12">
        <div class="grid simple ">
            <div class="grid-title">
                <h4>Advance <span class="semi-bold">Options</span></h4>
                <div class="tools"> <a href="javascript:;" class="collapse"></a>  <a href="javascript:;" class="reload"></a>  </div>
            </div>
            <div class="grid-body ">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <form id="edit_user_form" name="edit_user_form">




                            <div class="form-group">
                                <label class="form-label">Previous id ?</label>

                                <div class="input-with-icon  right">                                       
                                    <i class=""></i>
                                    <input id="user_no" class="form-control" type="text" name="user_no" value="<?php echo $user->user_id; ?>" style="width: 50%">                              
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="form-label">First Name</label>
                                <span style="color: red">*</span>

                                <div class="input-with-icon  right">                                       
                                    <i class=""></i>
                                    <input id="user_fname" class="form-control" type="text" name="user_fname" value="<?php echo $user->user_fname; ?>" style="width: 50%">                              
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="form-label">Last Name</label>
                                <span style="color: red">*</span>

                                <div class="input-with-icon  right">                                       
                                    <i class=""></i>
                                    <input id="user_lname" class="form-control" type="text" name="user_lname" value="<?php echo $user->user_lname; ?>" style="width: 50%">                              
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="form-label">Password</label>
                                <span style="color: red">*</span>


                                <div class="input-with-icon  right">                                       
                                    <i class=""></i>
                                    <input id="user_password" class="text" type="text" name="user_password" value="" style="width: 50%"> 
                                    <button type="button" class="btn btn-primary btn-sm btn-small"onclick="generatePassword()">Password</button>
                                </div>




                            </div>

                            <div class="form-group">
                                <label class="form-label">Email</label>
                                <span style="color: red">*</span>

                                <div class="input-with-icon  right">                                       
                                    <i class=""></i>
                                    <input id="user_email" class="form-control" type="text" name="user_email" value="<?php echo $user->user_email; ?>" style="width: 50%">                              
                                </div>
                            </div>

                            

                            <div class="form-group">
                                <label class="form-label">Birth Day</label>
                                <span style="color: red">*</span><br>

                                <div class="input-with-icon  right input-append primary date  no-padding" id="user_bday_edit_dpicker">                                       
                                    <i class=""></i>

                                    <input class="form-control" type="text" input-append id="user_bday" name="user_bday" readonly="true"  value="<?php echo $user->user_bday; ?>">
                                    <span class="add-on">
                                        <span class="arrow"></span>
                                        <i class="fa fa-th"></i>
                                    </span>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="form-label">Contact No</label>
                                <span style="color: red">*</span>

                                <div class="input-with-icon  right">                                       
                                    <i class=""></i>
                                    <input id="user_contact" class="form-control" type="text" name="user_contact" value="<?php echo $user->user_contact; ?>" style="width: 50%">                              
                                </div>
                            </div>

        
                            <div class="form-group">
                                <label class="form-label">Avatar</label>
                                <span style="color: red">*</span>



                                <script src="<?php echo base_url(); ?>application_resources/plugins/jquery-1.8.3.min.js" type="text/javascript"></script>
                                <script src="<?php echo base_url(); ?>application_resources/file_upload_plugin/ajaxupload.3.5.js" type="text/javascript"></script>
                                <script type="text/javascript">

                                        $(function() {
                                            var btnUpload = $('#upload');
                                            var status = $('#status');
                                            new AjaxUpload(btnUpload, {
                                                action: '<?PHP echo site_url(); ?>/user/user_controller/upload_image',
                                                name: 'uploadfile',
                                                onSubmit: function(file, ext) {
                                                    if (!(ext && /^(jpg|png|jpeg|gif)$/.test(ext))) {
                                                        // extension is not allowed 
                                                        status.text('Only JPG, PNG or GIF files are allowed');
                                                        return false;
                                                    }
                                                    //status.text('Uploading...Please wait');
                                                    $("#files").html("<i id='animate-icon' class='fa fa-spinner fa fa-2x fa-spin'></i>");

                                                },
                                                onComplete: function(file, response) {
                                                    //On completion clear the status
                                                    //status.text('');
                                                    $("#files").html("");
                                                    $("#sta").html("");
                                                    //Add uploaded file to list
                                                    if (response != "error") {
                                                        $('#files').html("");

                                                        $('<div></div>').appendTo('#files').html('<img src="<?PHP echo base_url(); ?>uploads/user_avatar/' + response + '" width="100px" height="100px"  /><br />');
                                                        picFileName = response;
                                                        document.getElementById('image').value = file;
                                                        document.getElementById('user_avatar').value = response;
                                                    } else {
                                                        $('<div></div>').appendTo('#files').text(file).addClass('error');
                                                    }
                                                }
                                            });

                                        });




                                </script>

                                <div class="row form-row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <div id="files" class="project-logo">
                                                <img src="<?PHP echo base_url(); ?>uploads/user_avatar/<?php
                                                if ($user->user_avatar != '') {
                                                    echo $user->user_avatar;
                                                } else {
                                                    echo 'avatar.jpg';
                                                }
                                                ?>" alt="" width="100px" height="100px"  />
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class=" right">                                       
                                            <i class=""></i>

                                            <div id="upload">

                                                <input type="text" style="visibility: hidden" id="image" name="image"/>
                                                <button class="btn btn-default btn-sm btn-small" type="button" id="browse">
                                                    <i class="fa fa-camera"></i>
                                                </button>
                                                <label class="form-label">upload Image Here</label>
                                                <input type="hidden" id="user_avatar" name="user_avatar"  value="<?php
                                                if ($user->user_avatar != '') {
                                                    echo $user->user_avatar;
                                                } else {
                                                    echo 'avatar.jpg';
                                                }
                                                ?>"/>
                                            </div>
                                            <div id="sta"><span id="status" ></span></div>



                                        </div>
                                    </div>
                                </div>

                            </div> 

                            <div id="edit_user_msg" class="form-row"> </div>

                            <input type="hidden" id="user_code" name="user_id" value="<?php echo $user->user_id; ?>"/>
                            <div class="modal-footer">

                                <button class="btn btn-primary btn-cons" type="submit">
                                    <i class="icon-ok"></i>
                                    Save
                                </button>

                                <a href="<?php echo site_url(); ?>/user/user_controller/manage_users" class="btn btn-white btn-cons" type="button">Cancel</a>

                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $('#user_parent_menu').addClass('active open');
</script>