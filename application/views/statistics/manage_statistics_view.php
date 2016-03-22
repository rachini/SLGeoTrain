<script>
    function showDetails(id) {
        name = '#postdata' + id;

        $(name).dialog({
            autoOpen: true,
            title: "Action Details",
            modal: true,
            width: "auto",
        });
    }

    $(document).ready(function() {


        $("#from").datepicker({
        });

        $("#to").datepicker({
        });
    });


</script>

<?php date_default_timezone_set('Asia/Colombo'); ?>


<div class="page-title">	
    <h3><?php echo $heading; ?></h3>		
</div>

<div class="row-fluid">
    <div class="span12">
        <div class="grid simple ">
            <div class="grid-title">
                <h4>Advance <span class="semi-bold">Options</span></h4>
                <div class="tools"> <a href="javascript:;" class="collapse"></a> <a href="#grid-config" data-toggle="modal" class="config"></a> <a href="javascript:;" class="reload"></a> <a href="javascript:;" class="remove"></a> </div>
            </div>
            <div class="grid-body ">
                <table class="table" id="statistics_table" >
                    <thead>
                        <tr>
                            <th>User</th>
                            <th>System</th>
                            <th>Action</th>
                            <th>Action Performed On</th>
                            <th>Controller</th>
                            <th>Details</th>
                            <th>Options</th>

                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($results as $result) { ?>

                            <tr id = 'site_row<?php echo $result->user_id; ?>'>
                                <td><?php echo $result->user_name; ?></td>
                                <td><?php echo $result->action; ?></td>
                                <td><?php
                                    if ($result->date == 0) {
                                        echo '-';
                                    } else {
                                        echo date("Y-m-d H:i:s", $result->date);
                                    }
                                    ?></td>   
                                <td>
                                    <?php echo $result->uri; ?>  


                                </td>  

                                <td>


                                    <a onclick="showDetails(<?php echo $result->id; ?>);"><img alt="" src="http://localhost/lcs_ims_new//application_resources/images/icons/color/mag_glass.png" width="20px;" style="cursor: pointer;"></a>

                                </td>  
                            </tr>

                        <?php } ?> 
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
                                        $('#settings_parent_menu').addClass('active open');
</script>

