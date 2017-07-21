<!-- Modal -->
<div class="modal fade" id="create-topic-box" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Create new topic</h4>
            </div>
            <div class="modal-body">

                <div class="popup">
                    <div class="row">
                        <form class="form-horizontal" action="createTopic" method="post">
                            <div class="form-group">
                                <label class="control-label col-sm-5" for="name">Name*</label>
                                <div class="col-sm-7">
                                    <input type="text" class="form-control" id="name" name="topicname" required/>
                                </div>
                            </div>
                            <div class="clearfix">

                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-5" for="visibility">Visibility*</label>
                                <div class="col-sm-7">
                                    <div class="dropdown">

                                        <select name="visibility" id="visibility" class="form-control">
                                            <option value="PUBLIC">Public</option>
                                            <option value="PRIVATE">Private</option>
                                        </select>

                                    </div>
                                   <%-- <form:select path="visibility" id="visi">
                                        <form:options/>
                                    </form:select>--%>
                                </div>
                            </div>
                           <%-- <div class="clearfix">
                            </div>--%>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-default">Save</button>

                        </form>
                    </div>
                </div><!--create-topic-box-end-->
            </div>
        </div>
    </div>
</div>