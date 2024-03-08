<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="Site1.Master" CodeBehind="departmentmaster.aspx.vb" Inherits="myweb.departmentmaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-sm-12">
                    <h4 class="page-title">Department Master</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="card-box">
                        <h4 class="card-title">Add Department</h4>
                        <div class="#">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-md-3 col-form-label">Department Name</label>
                                        <div class="col-md-9">
                                            <asp:TextBox ID="text1" runat="server" class="form-control" ValidationGroup="banner"></asp:TextBox>
                                        </div>
                                        <div class="col-md-9">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Department name" BackColor="Red" Display="Dynamic" ForeColor="White" SetFocusOnError="True" ToolTip="Enter Department name" ControlToValidate="text1" ValidationGroup="banner"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter only Alphabets" ValidationExpression="[a-zA-Z ]*$" BackColor="Red" ControlToValidate="text1" Display="Dynamic" Font-Size="Medium" ForeColor="White" SetFocusOnError="True" ValidationGroup="banner"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-3 col-form-label">Image</label>
                                        <div class="col-md-9">
                                            <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" accept="image/*" ValidationGroup="banner" />
                                        </div>
                                        <div class="col-md-9">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="uplode Department img" BackColor="Red" Display="Dynamic" ForeColor="White" SetFocusOnError="True" ToolTip="uplode pic" ControlToValidate="FileUpload1" ValidationGroup="banner"></asp:RequiredFieldValidator>
                                                                                       
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-3 col-form-label">Description</label>
                                        <div class="col-md-9">
                                            <asp:TextBox ID="TextArea1" TextMode="MultiLine" runat="server" class="form-control" ValidationGroup="banner"></asp:TextBox>
                                        </div>
                                        <div class="col-md-9">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="add Department Discrepcon" BackColor="Red" Display="Dynamic" ForeColor="White" SetFocusOnError="True" ToolTip="add Discrepcon" ControlToValidate="TextArea1" ValidationGroup="banner"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="text-right">

                            <asp:Button ID="upload" runat="server" Text="Submit" class="btn btn-primary" ValidationGroup="banner" />
                            <asp:Label ID="lblimage" Visible="false" runat="server" Text="Label"></asp:Label>
                            <asp:Label ID="lblid" Visible="false" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content">
                <div class="row">

                    <div class="col-sm-12">
                        <%--table table-inbox table-hover--%>
                        <asp:GridView ID="GridView1" CssClass="table table-border table-striped custom-table datatable mb-0 dataTable no-footer" Style="text-align: center; background-color: white" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%--<asp:Image runat="server" ID="img1" ImageUrl='<%# Eval("b_image") %>' Width="50px" Height="50px" />--%>
                                        <img runat="server" id="img1" src='<%# "../" + Eval("b_image") %>' style="border-radius: 50%; height: 75px; width: 75px;" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                                <asp:BoundField DataField="b_name" HeaderText="Banner Name" SortExpression="b_name"></asp:BoundField>
                                <asp:BoundField DataField="b_desc" HeaderText="Description" SortExpression="b_desc"></asp:BoundField>
                                <asp:BoundField DataField="b_image" HeaderText="Image URL" SortExpression="b_image"></asp:BoundField>
                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        
                                        <asp:ImageButton ID="btndelete" runat="server" Width="32px" OnClientClick="javascript:var agree=confirm('Do you Want to Delete ?.');if (agree)return true ;else return false ;" ToolTip="Delete" CommandName="Delete" ImageUrl="~/Images/ico/delete2.jpg" CausesValidation="False" />
                                        &nbsp &nbsp &nbsp &nbsp
                                        <asp:ImageButton ID="btnedit" runat="server" Width="32px" OnClick="btndelete_Click" ToolTip="Edit" ImageUrl="~/Images/ico/edit.jpg" CausesValidation="False" />
                                        &nbsp
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:HospitalConnectionString %>' DeleteCommand="DELETE FROM [dep_master] WHERE [id] = @id" InsertCommand="INSERT INTO [dep_master] ([b_name], [b_desc], [b_image]) VALUES (@b_name, @b_desc, @b_image)" SelectCommand="SELECT * FROM [dep_master]" UpdateCommand="UPDATE [dep_master] SET [b_name] = @b_name, [b_desc] = @b_desc, [b_image] = @b_image WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="b_name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="b_desc" Type="String"></asp:Parameter>
                                <asp:Parameter Name="b_image" Type="String"></asp:Parameter>
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="b_name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="b_desc" Type="String"></asp:Parameter>
                                <asp:Parameter Name="b_image" Type="String"></asp:Parameter>
                                <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
