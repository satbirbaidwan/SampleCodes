<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProgressBar.aspx.cs" Inherits="SampleCodes.ProgressBar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!--modal popup-->
    <link href="../Scripts/Modal.css" rel="stylesheet" type="text/css" />


    <asp:UpdatePanel ID="updpnlMain" runat="server">
        <ContentTemplate>
            <div class="container">
                <div class="row">
                    <div class="col-sm-10">
                        <div class="form-horizontal">

                            <div id="Div1" runat="server">
                                <div class="form-horizontal">

                                    Content Here


                                    <!--button-->
                                    <div class="form-group form-group-sm">
                                        <div class="col-sm-3">
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success btn-sm" Text="Save" OnClick="btnSave_Click" />
                                        </div>                                        
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

    <!--update progress-->
    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="updpnlMain">
        <ProgressTemplate>
            <div class="modalOld">
                <div class="centerOld">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Please wait</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-sm-9">
                                            Please wait...                                            
                                        </div>
                                        <div class="col-sm-2">
                                            <asp:Image ID="aspImg1" runat="server" ImageUrl="~/Images/ajax-loader.gif" Height="32px" Width="32px" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>

</asp:Content>
