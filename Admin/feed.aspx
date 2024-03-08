<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin/Site1.Master" CodeBehind="feed.aspx.vb" Inherits="myweb.feed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-wrapper">
            <div class="content">
                 <div class="row">
                <div class="col-sm-12">
                    <h4 class="page-title">Feedback</h4>
                </div>
            </div>
				<div class="row">
					<div class="col-md-12">
						<div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" class="table table-striped custom-table" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                                    <asp:BoundField DataField="uname" HeaderText="Name" SortExpression="uname"></asp:BoundField>
                                    <asp:BoundField DataField="uemail" HeaderText="Email" SortExpression="uemail"></asp:BoundField>
                                    <asp:BoundField DataField="sub" HeaderText="Subject" SortExpression="sub"></asp:BoundField>
                                    <asp:BoundField DataField="mes" HeaderText="Message" SortExpression="mes"></asp:BoundField>
                                    <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="btndelete" runat="server" Width="32px" ToolTip="Delete" OnClientClick="javascript:var agree=confirm('Do you Want to Delete ?.');if (agree)return true ;else return false ;" CommandName="Delete" ImageUrl="~/Images/ico/delete2.jpg" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:HospitalConnectionString %>' DeleteCommand="DELETE FROM [feedback] WHERE [id] = @id" InsertCommand="INSERT INTO [feedback] ([uname], [uemail], [sub], [mes]) VALUES (@uname, @uemail, @sub, @mes)" SelectCommand="SELECT * FROM [feedback]" UpdateCommand="UPDATE [feedback] SET [uname] = @uname, [uemail] = @uemail, [sub] = @sub, [mes] = @mes WHERE [id] = @id">
                                <DeleteParameters>
                                    <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="uname" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="uemail" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="sub" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="mes" Type="String"></asp:Parameter>
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="uname" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="uemail" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="sub" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="mes" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
					</div>
                </div>
            </div>
		</div>
</asp:Content>
