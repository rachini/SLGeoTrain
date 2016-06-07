<div class="page-title">	
    <h3><?php echo $heading; ?></h3>		
</div>
<div class="col-md-6">
    <div class="grid simple">
        <div class="grid-title no-border">
            <h4>Traditional <span class="semi-bold">Validation</span></h4>
            <div class="tools"> <a href="javascript:;" class="collapse"></a> <a href="#grid-config" data-toggle="modal" class="config"></a> <a href="javascript:;" class="reload"></a> <a href="javascript:;" class="remove"></a> </div>
        </div>
        <div class="grid-body no-border">
            <form id="form_traditional_validation" action="#" novalidate="novalidate">
                <div class="form-group">
                    <label class="form-label">Amount</label>
                    <span class="help">e.g. "5000"</span>
                    <div class="input-with-icon  right">
                        <i class=""></i>
                        <input type="text" name="form1Amount" id="form1Amount" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="form-label">Card Holder's Name</label>
                    <span class="help">e.g. "Jane Smith"</span>
                    <div class="input-with-icon  right">
                        <i class=""></i>
                        <input type="text" name="form1CardHolderName" id="form1CardHolderName" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="form-label">Card Number</label>z
                    <span class="help">e.g. "5689569985"</span>
                    <div class="input-with-icon  right">
                        <i class=""></i>
                        <input type="text" name="form1CardNumber" id="form1CardNumber" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="form-label">Card Type</label>
                    <span class="help">e.g. "Visa"</span>
                    <div class="  right">
                        <i class=""></i>
                        <div class="select2-container select2 form-control" id="s2id_cardType"><a href="javascript:void(0)" onclick="return false;" class="select2-choice" tabindex="-1">   <span class="select2-chosen">Select Type</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow"><b></b></span></a><input class="select2-focusser select2-offscreen" type="text" id="s2id_autogen1"><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input">   </div>   <ul class="select2-results">   </ul></div></div><select name="cardType" id="cardType" class="select2 form-control select2-offscreen" tabindex="-1">
                            <option value="">Select Type</option>
                            <option value="1">Visa</option>
                            <option value="2">Master</option>
                        </select>
                    </div>
                </div>
                <div class="form-actions">
                    <div class="pull-right">
                        <button type="submit" class="btn btn-success btn-cons"><i class="icon-ok"></i> Save</button>
                        <button type="button" class="btn btn-white btn-cons">Cancel</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">
                                        $('#trains_parent_menu').addClass('active open');
</script>
