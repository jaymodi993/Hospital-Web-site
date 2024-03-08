<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="Site1.Master" CodeBehind="doctormaster.aspx.vb" Inherits="myweb.doctormaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-sm-12">
                    <h4 class="page-title">Doctor Master</h4>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-12">
                    <div class="card-box">
                        <h4 class="card-title">Add Doctor</h4>
                        <div class="#">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-md-3 col-form-label">Doctor Name</label>
                                        <div class="col-md-9">
                                            <asp:TextBox ID="text1" runat="server" class="form-control" ValidationGroup="banner"></asp:TextBox>
                                        </div>
                                        <div class="col-md-9">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Doctor name" BackColor="Red" Display="Dynamic" ForeColor="White" SetFocusOnError="True" ToolTip="Enter Doctor name" ControlToValidate="text1" ValidationGroup="banner"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter only Alphabets" ValidationExpression="[a-zA-Z. ]*$" BackColor="Red" ControlToValidate="text1" Display="Dynamic" Font-Size="Medium" ForeColor="White" SetFocusOnError="True" ValidationGroup="banner"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-3 col-form-label">Image</label>
                                        <div class="col-md-9">
                                            <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" accept="image/*" ValidationGroup="banner" />
                                        </div>
                                        <div class="col-md-9">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="uplode doctor photo" BackColor="Red" Display="Dynamic" ForeColor="White" SetFocusOnError="True" ToolTip="uplode pic" ControlToValidate="FileUpload1" ValidationGroup="banner"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-3 col-form-label">Department Name</label>
                                        <div class="col-md-9">
                                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="dep" DataTextField="b_name" DataValueField="b_name" class="form-control" ValidationGroup="banner"></asp:DropDownList>
                                            <%--<asp:TextBox ID="text2" runat="server" class="form-control" ValidationGroup="banner"></asp:TextBox>--%>

                                            <asp:SqlDataSource runat="server" ID="dep" ConnectionString='<%$ ConnectionStrings:HospitalConnectionString %>' SelectCommand="SELECT [b_name] FROM [dep_master]"></asp:SqlDataSource>
                                        </div>
                                        <div class="col-md-9">
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter department" BackColor="Red" Display="Dynamic" ForeColor="White" SetFocusOnError="True" ToolTip="Enter Doctor name" ControlToValidate="text2" ValidationGroup="banner"></asp:RequiredFieldValidator>--%>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-3 col-form-label">About Doctor</label>
                                        <div class="col-md-9">
                                            <asp:TextBox ID="TextArea1" TextMode="MultiLine" runat="server" class="form-control" ValidationGroup="banner"></asp:TextBox>
                                        </div>
                                        <div class="col-md-9">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="add Banner Discrepcon" BackColor="Red" Display="Dynamic" ForeColor="White" SetFocusOnError="True" ToolTip="add Discrepcon" ControlToValidate="TextArea1" ValidationGroup="banner"></asp:RequiredFieldValidator>
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
                        
                                <asp:GridView ID="GridView1" CssClass="table table-border table-striped custom-table datatable mb-0 dataTable no-footer" Style="text-align: center; background-color: white" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%--<asp:Image runat="server" ID="img1" ImageUrl='<%# Eval("b_image") %>' Width="50px" Height="50px" />--%>
                                        <img runat="server" id="img1" src='<%# "../" + Eval("d_image") %>' style="border-radius: 50%; height: 100px; width: 100px;" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>

                                <asp:BoundField DataField="d_name" HeaderText="Name" SortExpression="d_name"></asp:BoundField>
                                <asp:BoundField DataField="d_desc" HeaderText="Decription" SortExpression="d_desc"></asp:BoundField>
                                <asp:BoundField DataField="d_image" HeaderText="Image" SortExpression="d_image"></asp:BoundField>
                                <asp:BoundField DataField="d_department" HeaderText="Department" SortExpression="d_department"></asp:BoundField>
                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        &nbsp &nbsp
                                        <%--<asp:Button ID="btnSweetAlert" runat="server" Text="Delete" CssClass="btn btn-primary" data-target="#delete1" autopostback="false" />--%>
                                        <asp:ImageButton ID="btndelete" runat="server" Width="32px" ToolTip="Delete" OnClientClick="javascript:var agree=confirm('Do you Want to Delete ?.');if (agree)return true ;else return false ;" CommandName="Delete" ImageUrl="~/Images/ico/delete2.jpg" />
                                        &nbsp &nbsp &nbsp &nbsp
                                        <asp:ImageButton ID="btnedit" runat="server" Width="32px" OnClick="btndelete_Click" ToolTip="Edit" ImageUrl="~/Images/ico/edit.jpg" CausesValidation="False" />
                                        &nbsp &nbsp
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        
                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:HospitalConnectionString %>' DeleteCommand="DELETE FROM [doctor_master] WHERE [id] = @id" InsertCommand="INSERT INTO [doctor_master] ([d_name], [d_desc], [d_image], [d_department]) VALUES (@d_name, @d_desc, @d_image, @d_department)" SelectCommand="SELECT * FROM [doctor_master]" UpdateCommand="UPDATE [doctor_master] SET [d_name] = @d_name, [d_desc] = @d_desc, [d_image] = @d_image, [d_department] = @d_department WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="d_name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="d_desc" Type="String"></asp:Parameter>
                                <asp:Parameter Name="d_image" Type="String"></asp:Parameter>
                                <asp:Parameter Name="d_department" Type="String"></asp:Parameter>
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="d_name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="d_desc" Type="String"></asp:Parameter>
                                <asp:Parameter Name="d_image" Type="String"></asp:Parameter>
                                <asp:Parameter Name="d_department" Type="String"></asp:Parameter>
                                <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
