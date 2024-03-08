<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin/Site1.Master" CodeBehind="apomaster.aspx.vb" Inherits="myweb.apomaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <div class="page-wrapper">
            <div class="content">
                 <div class="row">
                <div class="col-sm-12">
                    <h4 class="page-title">Appointments</h4>
                </div>
            </div>
				<div class="row">
					<div class="col-md-12">
						<div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" class="table table-striped custom-table" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone"></asp:BoundField>
                                    <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob"></asp:BoundField>
                                    <asp:BoundField DataField="department" HeaderText="department" SortExpression="department"></asp:BoundField>
                                    <asp:BoundField DataField="doctor" HeaderText="doctor" SortExpression="doctor"></asp:BoundField>
                                    <asp:BoundField DataField="messege" HeaderText="messege" SortExpression="messege"></asp:BoundField>
                                    <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        
                                        <asp:ImageButton ID="btndelete" runat="server" Width="32px" ToolTip="Delete" OnClientClick="javascript:var agree=confirm('Do you Want to Delete ?.');if (agree)return true ;else return false ;" CommandName="Delete" ImageUrl="~/Images/ico/delete2.jpg" />
                                        
                                    </ItemTemplate>
                                </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:HospitalConnectionString %>' DeleteCommand="DELETE FROM [apo_master] WHERE [id] = @id" InsertCommand="INSERT INTO [apo_master] ([name], [email], [phone], [dob], [department], [doctor], [messege]) VALUES (@name, @email, @phone, @dob, @department, @doctor, @messege)" SelectCommand="SELECT * FROM [apo_master]" UpdateCommand="UPDATE [apo_master] SET [name] = @name, [email] = @email, [phone] = @phone, [dob] = @dob, [department] = @department, [doctor] = @doctor, [messege] = @messege WHERE [id] = @id">
                                <DeleteParameters>
                                    <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="name" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="email" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="phone" Type="String"></asp:Parameter>
                                    <asp:Parameter DbType="Date" Name="dob"></asp:Parameter>
                                    <asp:Parameter Name="department" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="doctor" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="messege" Type="String"></asp:Parameter>
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="name" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="email" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="phone" Type="String"></asp:Parameter>
                                    <asp:Parameter DbType="Date" Name="dob"></asp:Parameter>
                                    <asp:Parameter Name="department" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="doctor" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="messege" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
					</div>
                </div>
            </div>
		</div>

</asp:Content>
