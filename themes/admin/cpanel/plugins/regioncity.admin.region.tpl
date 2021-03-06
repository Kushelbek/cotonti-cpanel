<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}
<div class="row">
    <div class="col-xs-12 col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">{PHP.L.rec_regions} ({COUNTRY_NAME})</h4>
            </div>
            <div class="panel-body">
                <form action="{EDIT_FORM_ACTION_URL}" method="post" name="newcountry" enctype="multipart/form-data">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th class="width60">{PHP.L.Title}</th>
                                <th class="width40">{PHP.L.Action}</th>
                            </tr>
                        </thead>
                        <!-- BEGIN: ROWS -->
                        <tr>
                            <td>{REGION_ROW_NAME}</td>
                            <td>
                                <a href="{REGION_ROW_URL}" class="btn btn-success"><span class="fa fa-folder-open"></span> {PHP.L.Open}</a>
                                <a href="{REGION_ROW_DEL_URL}" class="confirmLink btn btn-danger"><span class="fa fa-trash"></span>
                                    {PHP.L.Delete}</a>
                            </td>
                        </tr>
                        <!-- END: ROWS -->
                        <!-- BEGIN: NOROWS -->
                        <tr>
                            <td class="text-muted text-center" colspan="3">{PHP.L.ls_noregions}</td>
                        </tr>
                        <!-- END: NOROWS -->
                    </table>

                    <button type="submit" class="btn btn-primary"><span class="fa fa-floppy-o"></span> {PHP.L.Update}</button>

                    <!-- IF {PAGENAV_PAGES} -->
                    <div class="text-right">
                        <nav>
                            <ul class="pagination" style="margin: 0">
                                {PAGENAV_PREV}{PAGENAV_PAGES}{PAGENAV_NEXT}
                            </ul>
                        </nav>
                        <span class="help-block">{PHP.L.Total}: {TOTALITEMS}, {PHP.L.Onpage}: {ON_PAGE}</span>
                    </div>
                    <!-- ENDIF -->
                </form>
            </div>
        </div>
    </div>

    <!-- BEGIN: ADDFORM -->
    <div class="col-xs-12 col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h4 class="panel-title"><span class="fa fa-plus"></span> {PHP.L.Add}</h4>
            </div>
            <div class="panel-body">
                <form action="{ADD_FORM_ACTION_URL}" method="post" name="newregion" enctype="multipart/form-data" class="form-inline">
                    <div class="form-group">
                        <label>{PHP.L.Title}</label> {ADD_FORM_NAME}
                    </div>

                    <button type="submit" class="btn btn-primary"><span class="fa fa-plus"></span> {PHP.L.Add}</button>
                </form>
            </div>
        </div>
    </div>
    <!-- END: ADDFORM -->
</div>
<!-- END: MAIN -->