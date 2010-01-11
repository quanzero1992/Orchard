﻿<%@ Control Language="C#" Inherits="Orchard.Mvc.ViewUserControl<BlogPost>" %>
<%@ Import Namespace="Orchard.Blogs.Models"%>
<fieldset>
    <legend><%=_Encoded("Publish Settings")%></legend>
    <label for="Command_SaveDraft"><%=Html.RadioButton("Command", "SaveDraft", Model.ContentItem.VersionRecord == null || !Model.ContentItem.VersionRecord.Published, new { id = "Command_SaveDraft" }) %> <%=_Encoded("Save Draft")%></label><br />
</fieldset>
<fieldset>
    <label for="Command_PublishNow"><%=Html.RadioButton("Command", "PublishNow", Model.ContentItem.VersionRecord != null && Model.ContentItem.VersionRecord.Published, new { id = "Command_PublishNow" })%> <%=_Encoded("Publish Now")%></label>
</fieldset>
<%--<fieldset>
    <label for="Command_PublishLater"><%=Html.RadioButton("Command", "PublishLater", new { id = "Command_PublishLater" }) %> <%=_Encoded("Publish Later")%></label>
    <%=Html.EditorFor(m => m.Published) %>
</fieldset>--%>