    <%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="myweb.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Geeta Hospital</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->
    <link href="../Images/ico/logo.jpg" rel="icon" />
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet" />

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" />
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet" />
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet" />
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet" />
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />


    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet" />
</head>
<body>
    <form runat="server" id="form1">

        <!-- ======= Top Bar ======= -->
        <div id="topbar" class="d-flex align-items-center fixed-top">
            <div class="container d-flex justify-content-between">
                <div class="contact-info d-flex align-items-center">
                    <i class="bi bi-envelope"></i><a href="mailto:geetahospitalmundra@gmail.com" target="_blank">geetahospitalmundra@gmail.com</a>
                    <i class="bi bi-phone"></i><a href="tel:+917874381551">+917874381551</a>
                </div>
                <div class="d-none d-lg-flex social-links align-items-center">
                    <a class="twitter"><i class="bi bi-twitter"></i></a>
                    <a href="https://www.facebook.com/geeta.hospital.37" target="_blank" class="facebook"><i class="bi bi-facebook"></i></a>
                    <a href="https://www.instagram.com/geetahospitalmundra" target="_blank" class="instagram"><i class="bi bi-instagram"></i></a>
                    <a class="linkedin"><i class="bi bi-linkedin"></i></a>
                </div>
            </div>
        </div>

        <!-- ======= Header ======= -->
        <header id="header" class="fixed-top">
            <div class="container d-flex align-items-center">

                <h1 class="logo me-auto"><a href="Default.asp">Geeta Hospital</a></h1>

                <nav id="navbar" class="navbar order-last order-lg-0">
                    <ul>
                        <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
                        <li><a class="nav-link scrollto" href="#about">About</a></li>
                        <li><a class="nav-link scrollto" href="#services">Services</a></li>
                        <li><a class="nav-link scrollto" href="#departments">Departments</a></li>
                        <li><a class="nav-link scrollto" href="#doctors">Doctors</a></li>
                        <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav>
                <!-- .navbar -->

                <a href="#appointment" class="appointment-btn scrollto"><span class="d-none d-md-inline">Make an</span> Appointment</a>

            </div>
        </header>
        <!-- End Header -->

        <!-- ======= Hero Section ======= -->
        <section id="hero" class="d-flex align-items-center">
            <div class="container">
                <h1>Welcome to Geeta Hospital</h1>
                <h2>We are team of Best Doctors with best equptment</h2>
                <a href="#about" class="btn-get-started scrollto">Get Started</a>
            </div>
        </section>
        <!-- End Hero -->

        <main id="main">

            <!-- ======= Why Us Section ======= -->
            <section id="why-us" class="why-us">
                <div class="container">

                    <div class="row">
                        <div class="col-lg-4 d-flex align-items-stretch">
                            <div class="content">
                                <h3>Why Choose Geeta Hospital?</h3>
                                <p>
                                    Choose Geeta Hospital For best Gynecologist , Pediatrician , Orthopedic , Ophthal , ICU , Dermatologist , Medicine Department
                                </p>
                                <div class="text-center">
                                    <a href="#about" class="more-btn">Learn More <i class="bx bx-chevron-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8 d-flex align-items-stretch">
                            <div class="icon-boxes d-flex flex-column justify-content-center">
                                <div class="row">
                                    <div class="col-xl-4 d-flex align-items-stretch">
                                        <div class="icon-box mt-4 mt-xl-0">
                                            <i class="bx bx-receipt"></i>
                                            <h4>Working Hours</h4>
                                            <p>
                                                Monday - Sunday
                                            <br />
                                                24 X 7 Emergency Service
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 d-flex align-items-stretch">
                                        <div class="icon-box mt-4 mt-xl-0">
                                            <i class="bx bx-cube-alt"></i>
                                            <h4>Chemist</h4>
                                            <p>
                                                We have Own Chemist Shop
                                            Chemist allso available 24 X 7
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 d-flex align-items-stretch">
                                        <div class="icon-box mt-4 mt-xl-0">
                                            <i class="bx bx-images"></i>
                                            <h4>Book Appointment</h4>
                                            <p>
                                                You can book an appointment here
                                            
                                            </p>
                                            <a href="#appointment" class="more-btn">
                                                <h5>Book Appointment</h5>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End .content-->
                        </div>
                    </div>

                </div>
            </section>
            <!-- End Why Us Section -->

            <!-- ======= About Section ======= -->
            <section id="about" class="about">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-xl-5 col-lg-6 video-box d-flex justify-content-center align-items-stretch position-relative" style="background-image: url('../Images/1.jpg'); border-radius: 2%;">
                            <a href="https://youtu.be/PozqMHMSgDI" class="glightbox play-btn mb-4"></a>
                        </div>

                        <div class="col-xl-7 col-lg-6 icon-boxes d-flex flex-column align-items-stretch justify-content-center py-5 px-lg-5">
                            <h3>Geeta Hospitals for Gynecologist ,  Pediatrician , Orthopedic , Ophthal</h3>
                            <p>Among the finest Hospitals in the city, Geeta Hospital in Mundra Kutch, Bhuj known for offering excellent patient care. The clinic is located centrally in Mundra Kutch, a prominent locality in the city. There is no dearth of public modes of transport to reach the clinic from all major areas of the city.</p>
                            <p>Geeta Hospital in Mundra Kutch, Bhuj has a well-equipped clinic with all the modern equipment. The clinic has separate waiting and consultation areas which allow enough space for patients to wait conveniently at the clinic. Being a specialized Hospitals, the doctor offers a number of medical services. The clinic is operational between 00:00 - 23:59. Payments can be made via various modes like Cash, Master Card, Visa Card, Debit Cards, Cheques, American Express Card, Credit Card, Card On Delivery.</p>
                            <p>Please scroll down for the address and contact details of Geeta Hospital at Mundra Kutch.</p>
                            <div class="icon-box">
                                <div class="icon"><i class="bx bx-fingerprint"></i></div>
                                <h4 class="title"><a href="#">Case Less</a></h4>
                                <p class="description">All company case less Health card, Medicalim, Balsakha yojana -3 (for New born), Ayushman Bharat Yojana. Cashless treatment under Aayushman Bharat Yojna and Chiranjivi.Yojana and Balsakha-3 Yojana. </p>
                            </div>

                            <div class="icon-box">
                                <div class="icon"><i class="bx bx-gift"></i></div>
                                <h4 class="title"><a href="#">Laboratory</a></h4>
                                <p class="description">A laboratory is a facility that provides controlled conditions in which scientific or technological research, experiments, and measurement may be performed.</p>
                            </div>

                            <div class="icon-box">
                                <div class="icon"><i class="bx bx-atom"></i></div>
                                <h4 class="title"><a href="#">Facilities</a></h4>
                                <p class="description">Delivery and Cesarean facility , 3D, 4D USG facility , High level NICU and PICU, ICU, Operation theater , Vaccination facility </p>
                            </div>

                        </div>
                    </div>

                </div>
            </section>
            <!-- End About Section -->

            <!-- ======= Counts Section ======= -->
            <section id="counts" class="counts">
                <div class="container">

                    <div class="row">

                        <div class="col-lg-3 col-md-6">
                            <div class="count-box">
                                <i class="fas fa-user-md"></i>
                                <%--<span data-purecounter-start="0" data-purecounter-end="85" data-purecounter-duration="1" class="purecounter"></span>--%>
                                <h3>
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h3>
                                <h4>Doctors</h4>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 mt-5 mt-md-0">
                            <div class="count-box">
                                <i class="far fa-hospital"></i>
                                <%--<span data-purecounter-start="0" data-purecounter-end="18" data-purecounter-duration="1" class="purecounter"></span>--%>
                                <h3>
                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></h3>
                                <h4>Departments</h4>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
                            <div class="count-box">
                                <i class="fas fa-flask"></i>
                                <%--<span data-purecounter-start="0" data-purecounter-end="12" data-purecounter-duration="1" class="purecounter"></span>--%>
                                <h3>
                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h3>
                                <h4>Appoinments</h4>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
                            <div class="count-box">
                                <i class="fas fa-award"></i>
                                <%--<span data-purecounter-start="0" data-purecounter-end="150" data-purecounter-duration="1" class="purecounter"></span>--%>
                                <h3>
                                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></h3>
                                <h4>Servises</h4>
                            </div>
                        </div>

                    </div>

                </div>
            </section>
            <!-- End Counts Section -->

            <!-- ======= Services Section ======= -->
            <section id="services" class="services">
                <div class="container">
                    <div class="section-title">
                        <h2>Services</h2>
                        <p>A hospital is a healthcare facility that provides specialized medical and nursing care as well as medical supplies to patients. The most well-known form of the hospital is the general hospital, which usually carries an emergency department to handle urgent health issues such as fire and accident victims, as well as medical emergencies.</p>
                    </div>
                    <div class="row">
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="servises" ViewStateMode="Inherit">
                            <ItemTemplate>
                                <div class="col-lg-4 col-md-6">
                                    <div class="icon-box">
                                        <div class="icon"><i class="fas fa-heartbeat"></i></div>
                                        <h4><a href="#"><%# Eval("b_name") %> </a></h4>
                                        <p><%# Eval("b_desc") %></p>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <asp:SqlDataSource runat="server" ID="servises" ConnectionString='<%$ ConnectionStrings:HospitalConnectionString %>' SelectCommand="SELECT * FROM [sev_master]"></asp:SqlDataSource>
                </div>
            </section>
            <!-- End Services Section -->

            <!-- ======= Appointment Section ======= -->
            <section id="appointment" class="appointment section-bg">

                <div class="container">

                    <div class="section-title">
                        <h2>Make an Appointment</h2>
                        <p>A doctor's visit, also known as a physician office visit or a consultation, or a ward round in an inpatient care context, is a meeting between a patient with a physician to get health advice or treatment plan for a symptom or condition, most often at a professional health facility such as a doctor's office, clinic or hospital.</p>
                    </div>
                    <div class="php-email-form">
                        <div class="row">
                            <div class="col-md-4 form-group">
                                <label>Name <span class="text-danger">*</span></label>
                                <input class="form-control" type="text" id="fn" runat="server" validationgroup="doc" autopostback="true" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter First Name" BackColor="Red" ControlToValidate="fn" Display="Dynamic" Font-Size="Medium" ForeColor="White" SetFocusOnError="True" ValidationGroup="doc"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter only Alphabets" ValidationExpression="[a-zA-Z ]*$" BackColor="Red" ControlToValidate="fn" Display="Dynamic" Font-Size="Medium" ForeColor="White" SetFocusOnError="True" ValidationGroup="doc"></asp:RegularExpressionValidator>

                            </div>
                            <div class="col-md-4 form-group mt-3 mt-md-0">
                                <label>Email <span class="text-danger">*</span></label>
                                <input class="form-control" type="email" id="em" runat="server" validationgroup="doc" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Email Name" BackColor="Red" ControlToValidate="em" Display="Dynamic" Font-Size="Medium" ForeColor="White" SetFocusOnError="True" ValidationGroup="doc"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter valid Email ID " ValidationExpression="[a-z0-9]+@[a-z]+\.[a-z]{2,3}" BackColor="Red" ControlToValidate="em" Display="Dynamic" Font-Size="Medium" ForeColor="White" SetFocusOnError="True" ValidationGroup="doc"></asp:RegularExpressionValidator>

                            </div>
                            <div class="col-md-4 form-group mt-3 mt-md-0">
                                <label>Phone </label>
                                <input class="form-control" type="tel" id="ph" runat="server" validationgroup="doc" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Phone Number" BackColor="Red" ControlToValidate="ph" Display="Dynamic" Font-Size="Medium" ForeColor="White" SetFocusOnError="True" ValidationGroup="doc"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Enter Number olny" ValidationExpression="^\d{10}$" BackColor="Red" ControlToValidate="ph" Display="Dynamic" Font-Size="Medium" ForeColor="White" SetFocusOnError="True" ValidationGroup="doc"></asp:RegularExpressionValidator>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 form-group mt-3">
                                <label>Date of Birth</label>
                                <input type="date" class="form-control" id="apodob" runat="server" validationgroup="doc" aria-hidden="False" pattern="yyyy-mm-dd" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Date of Birth" BackColor="Red" ControlToValidate="apodob" Display="Dynamic" Font-Size="Medium" ForeColor="White" SetFocusOnError="True" ValidationGroup="doc"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-4 form-group mt-3">
                                <label>Department </label>
                                <asp:DropDownList ID="DropDownList1" runat="server" class="form-select" DataSourceID="dep" DataTextField="b_name" DataValueField="b_name"></asp:DropDownList>

                                <asp:SqlDataSource runat="server" ID="dep" ConnectionString='<%$ ConnectionStrings:HospitalConnectionString %>' SelectCommand="SELECT [b_name] FROM [dep_master]"></asp:SqlDataSource>
                            </div>
                            <div class="col-md-4 form-group mt-3">
                                <label>Doctor </label>
                                <asp:DropDownList ID="DropDownList2" runat="server" class="form-select" DataSourceID="doc" DataTextField="d_name" DataValueField="d_name"></asp:DropDownList>

                                <asp:SqlDataSource runat="server" ID="doc" ConnectionString='<%$ ConnectionStrings:HospitalConnectionString %>' SelectCommand="SELECT [d_name] FROM [doctor_master]"></asp:SqlDataSource>
                            </div>
                        </div>

                        <div class="form-group mt-3">
                            <label>Message</label>
                            <textarea class="form-control" rows="5" id="bio" runat="server" validationgroup="doc" placeholder="Message (Optional)"></textarea>
                        </div>
                        <div class="text-center">
                            <asp:Button ID="apo" runat="server" ValidationGroup="doc" autopostback="true" Text="Make an Appointment" />
                            <%--<button id="btn1" type="submit" runat="server" validationgroup="doc">Make an Appoinment</button>--%>
                        </div>
                    </div>

                </div>
            </section>
            <asp:SqlDataSource runat="server" ID="appoinment" ConnectionString='<%$ ConnectionStrings:HospitalConnectionString %>' DeleteCommand="DELETE FROM [apo_master] WHERE [id] = @id" InsertCommand="INSERT INTO [apo_master] ([name], [email], [phone], [dob], [department], [doctor], [messege]) VALUES (@name, @email, @phone, @dob, @department, @doctor, @messege)" SelectCommand="SELECT * FROM [apo_master]" UpdateCommand="UPDATE [apo_master] SET [name] = @name, [email] = @email, [phone] = @phone, [dob] = @dob, [department] = @department, [doctor] = @doctor, [messege] = @messege WHERE [id] = @id">
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
            <!-- End Appointment Section -->

            <!-- ======= Departments Section ======= -->
            <section id="departments" class="departments">
                <div class="container">

                    <div class="section-title">
                        <h2>Departments</h2>
                        <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
                    </div>

                    <div class="row">
                        <div class="col-lg-3">
                            <ul class="nav nav-tabs flex-column">

                                <asp:Repeater ID="Repeater4" runat="server" DataSourceID="depart">
                                    <ItemTemplate>
                                        <li class="nav-item">
                                            <%--<a class="nav-link" data-bs-toggle="tab" href="#tab-1"><%# Eval("b_name") %></a>--%>
                                            <asp:LinkButton ID="dbtn" runat="server" class="nav-link" data-bs-toggle="tab" href='<%# "#tab-" & Eval("id") %>'><%# Eval("b_name") %></asp:LinkButton>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <div class="col-lg-9 mt-4 mt-lg-0">
                            <div class="tab-content">
                                <asp:Repeater ID="Repeater5" runat="server" DataSourceID="depart">
                                    <ItemTemplate>


                                        <div class="tab-pane" id='<%# "tab-" & Eval("id") %>'>
                                            <div class="row">
                                                <div class="col-lg-8 details order-2 order-lg-1">
                                                    <h3><%# Eval("b_name") %></h3>
                                                    <p class="fst-italic">We are provading the best services in this department</p>
                                                    <p><%# Eval("b_desc") %></p>
                                                </div>
                                                <div class="col-lg-4 text-center order-1 order-lg-2">
                                                    <img src='<%#  "../" + Eval("b_image") %>' alt="" class="img-fluid">
                                                </div>
                                            </div>
                                        </div>

                                    </ItemTemplate>
                                </asp:Repeater>

                            </div>
                        </div>
                        <asp:SqlDataSource runat="server" ID="depart" ConnectionString='<%$ ConnectionStrings:HospitalConnectionString %>' SelectCommand="SELECT * FROM [dep_master]"></asp:SqlDataSource>
                        <%--<div class="col-lg-3">
                            <ul class="nav nav-tabs flex-column">
                                <li class="nav-item">
                                    <a class="nav-link active show" data-bs-toggle="tab" href="#tab-1">Cardiology</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-bs-toggle="tab" href="#tab-2">Neurology</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-bs-toggle="tab" href="#tab-3">Hepatology</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-bs-toggle="tab" href="#tab-4">Pediatrics</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-bs-toggle="tab" href="#tab-5">Eye Care</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-9 mt-4 mt-lg-0">
                            <div class="tab-content">
                                <div class="tab-pane active show" id="tab-1">
                                    <div class="row">
                                        <div class="col-lg-8 details order-2 order-lg-1">
                                            <h3>Cardiology</h3>
                                            <p class="fst-italic">Qui laudantium consequatur laborum sit qui ad sapiente dila parde sonata raqer a videna mareta paulona marka</p>
                                            <p>Et nobis maiores eius. Voluptatibus ut enim blanditiis atque harum sint. Laborum eos ipsum ipsa odit magni. Incidunt hic ut molestiae aut qui. Est repellat minima eveniet eius et quis magni nihil. Consequatur dolorem quaerat quos qui similique accusamus nostrum rem vero</p>
                                        </div>
                                        <div class="col-lg-4 text-center order-1 order-lg-2">
                                            <img src="assets/img/departments-1.jpg" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-2">
                                    <div class="row">
                                        <div class="col-lg-8 details order-2 order-lg-1">
                                            <h3>Et blanditiis nemo veritatis excepturi</h3>
                                            <p class="fst-italic">Qui laudantium consequatur laborum sit qui ad sapiente dila parde sonata raqer a videna mareta paulona marka</p>
                                            <p>Ea ipsum voluptatem consequatur quis est. Illum error ullam omnis quia et reiciendis sunt sunt est. Non aliquid repellendus itaque accusamus eius et velit ipsa voluptates. Optio nesciunt eaque beatae accusamus lerode pakto madirna desera vafle de nideran pal</p>
                                        </div>
                                        <div class="col-lg-4 text-center order-1 order-lg-2">
                                            <img src="assets/img/departments-2.jpg" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-3">
                                    <div class="row">
                                        <div class="col-lg-8 details order-2 order-lg-1">
                                            <h3>Impedit facilis occaecati odio neque aperiam sit</h3>
                                            <p class="fst-italic">Eos voluptatibus quo. Odio similique illum id quidem non enim fuga. Qui natus non sunt dicta dolor et. In asperiores velit quaerat perferendis aut</p>
                                            <p>Iure officiis odit rerum. Harum sequi eum illum corrupti culpa veritatis quisquam. Neque necessitatibus illo rerum eum ut. Commodi ipsam minima molestiae sed laboriosam a iste odio. Earum odit nesciunt fugiat sit ullam. Soluta et harum voluptatem optio quae</p>
                                        </div>
                                        <div class="col-lg-4 text-center order-1 order-lg-2">
                                            <img src="assets/img/departments-3.jpg" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-4">
                                    <div class="row">
                                        <div class="col-lg-8 details order-2 order-lg-1">
                                            <h3>Fuga dolores inventore laboriosam ut est accusamus laboriosam dolore</h3>
                                            <p class="fst-italic">Totam aperiam accusamus. Repellat consequuntur iure voluptas iure porro quis delectus</p>
                                            <p>Eaque consequuntur consequuntur libero expedita in voluptas. Nostrum ipsam necessitatibus aliquam fugiat debitis quis velit. Eum ex maxime error in consequatur corporis atque. Eligendi asperiores sed qui veritatis aperiam quia a laborum inventore</p>
                                        </div>
                                        <div class="col-lg-4 text-center order-1 order-lg-2">
                                            <img src="assets/img/departments-4.jpg" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-5">
                                    <div class="row">
                                        <div class="col-lg-8 details order-2 order-lg-1">
                                            <h3>Est eveniet ipsam sindera pad rone matrelat sando reda</h3>
                                            <p class="fst-italic">Omnis blanditiis saepe eos autem qui sunt debitis porro quia.</p>
                                            <p>Exercitationem nostrum omnis. Ut reiciendis repudiandae minus. Omnis recusandae ut non quam ut quod eius qui. Ipsum quia odit vero atque qui quibusdam amet. Occaecati sed est sint aut vitae molestiae voluptate vel</p>
                                        </div>
                                        <div class="col-lg-4 text-center order-1 order-lg-2">
                                            <img src="assets/img/departments-5.jpg" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                    </div>

                </div>
            </section>
            <!-- End Departments Section -->

            <!-- ======= Doctors Section ======= -->
            <section id="doctors" class="doctors">
                <div class="container">

                    <div class="section-title">
                        <h2>Doctors</h2>
                        <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
                    </div>

                    <div class="row">
                        <asp:Repeater ID="Repeater3" runat="server" DataSourceID="doc2">
                            <ItemTemplate>
                                <div class="col-lg-6">
                                    <div class="member d-flex align-items-start">
                                        <div class="pic">
                                            <img src='<%# "../" + Eval("d_image") %>' class="img-fluid" alt="" width="100" height="100" />
                                        </div>
                                        <div class="member-info">
                                            <h4><%# Eval("d_name") %></h4>
                                            <span><%# Eval("d_department") %></span>
                                            <p><%# Eval("d_desc") %></p>
                                            <div class="social">
                                                <a href=""><i class="ri-twitter-fill"></i></a>
                                                <a href=""><i class="ri-facebook-fill"></i></a>
                                                <a href=""><i class="ri-instagram-fill"></i></a>
                                                <a href=""><i class="ri-linkedin-box-fill"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource runat="server" ID="doc2" ConnectionString='<%$ ConnectionStrings:HospitalConnectionString %>' SelectCommand="SELECT * FROM [doctor_master]"></asp:SqlDataSource>

                    </div>

                </div>
            </section>
            <!-- End Doctors Section -->

            <!-- ======= Testimonials Section ======= -->
            <section id="testimonials" class="testimonials">
                <div class="container">
                    <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
                        <div class="swiper-wrapper">
                            <asp:Repeater ID="Repeater6" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    <div class="swiper-slide">
                                        <div class="testimonial-wrap">
                                            <div class="testimonial-item">
                                                <img src="../Images/user.jpg" class="testimonial-img" alt="" />
                                                <h3><%# Eval("uname") %></h3>
                                                <h4><%# Eval("sub") %></h4>
                                                <p>
                                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i><%# Eval("mes") %><i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                            <!-- End testimonial item -->
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:HospitalConnectionString %>' SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>

                </div>
            </section>
            <!-- End Testimonials Section -->

            <!-- ======= Gallery Section ======= -->
            <section id="gallery" class="gallery">
                <div class="container">

                    <div class="section-title">
                        <h2>Gallery</h2>
                        <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
                    </div>
                </div>

                <div class="container-fluid">
                    <div class="row no-gutters">
                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="img">
                            <ItemTemplate>
                                <div class="col-lg-3 col-md-4">
                                    <div class="gallery-item">
                                        <a href='<%# "../" + Eval("b_image") %>' class="galelry-lightbox">
                                            <img src='<%# "../" + Eval("b_image") %>' runat="server" alt="" class="img-fluid" />
                                        </a>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource runat="server" ID="img" ConnectionString='<%$ ConnectionStrings:HospitalConnectionString %>' SelectCommand="SELECT * FROM [banner_master]"></asp:SqlDataSource>
                    </div>
                </div>
            </section>
            <!-- End Gallery Section -->

            <!-- ======= Contact Section ======= -->
            <section id="contact" class="contact">
                <div class="container">

                    <div class="section-title">
                        <h2>Contact</h2>
                        <p>If you have any questions about the services we provide simply use the form below. We try and respond to all queries and comments within 24 hours.</p>
                    </div>
                </div>

                <div>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29414.18400874307!2d69.71296191215517!3d22.847886371115038!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3950d4f712eb8757%3A0x9aa841dbb6e66369!2sGeeta%20Hospital%20Mundra!5e0!3m2!1sen!2sin!4v1646460625295!5m2!1sen!2sin" style="border: 0; width: 100%; height: 350px;"></iframe>
                </div>

                <div class="container">
                    <div class="row mt-5">

                        <div class="col-lg-4">
                            <div class="info">
                                <div class="address">
                                    <i class="bi bi-geo-alt"></i>
                                    <h4>Location:</h4>
                                    <p>3,Ambe Nagar, Nr. Ganjanad Complex, Gundala Road, Baroi-Mundra (Kutch)</p>
                                </div>

                                <div class="email">
                                    <a href="mailto:geetahospitalmundra@gmail.com" target="_blank">
                                        <i class="bi bi-envelope"></i>
                                        <h4>Email:</h4>
                                        <p>geetahospitalmundra@gmail.com</p>
                                    </a>
                                </div>

                                <div class="phone">
                                    <a href="tel:+917874381551">
                                        <i class="bi bi-phone"></i>
                                        <h4>Call:</h4>
                                        <p>+917874381551</p>
                                    </a>
                                </div>

                            </div>

                        </div>

                        <div class="col-lg-8 mt-5 mt-lg-0">

                            <div class="php-email-form">
                                <div class="row">
                                    <div class="col-md-6 form-group">
                                        <input type="text" name="name" class="form-control" id="feedname" placeholder="Your Name" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Name" BackColor="Red" ControlToValidate="feedname" Display="Dynamic" Font-Size="Medium" ForeColor="White" SetFocusOnError="True" ValidationGroup="feed"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-md-6 form-group mt-3 mt-md-0">
                                        <input type="email" class="form-control" name="email" id="feedemail" placeholder="Your Email" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Email I'D" BackColor="Red" ControlToValidate="feedemail" Display="Dynamic" Font-Size="Medium" ForeColor="White" SetFocusOnError="True" ValidationGroup="feed"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group mt-3">
                                    <input type="text" class="form-control" name="subject" id="feedsubject" placeholder="Subject" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Subject" BackColor="Red" ControlToValidate="feedsubject" Display="Dynamic" Font-Size="Medium" ForeColor="White" SetFocusOnError="True" ValidationGroup="feed"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group mt-3">
                                    <textarea id="feedmessage" runat="server" class="form-control" cols="20" placeholder="Message"></textarea>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Messege" BackColor="Red" ControlToValidate="feedmessage" Display="Dynamic" Font-Size="Medium" ForeColor="White" SetFocusOnError="True" ValidationGroup="feed"></asp:RequiredFieldValidator>
                                </div>
                                <div class="text-center">
                                    <asp:Button ID="feedbtn" runat="server" Text="Send Message" ValidationGroup="feed" CssClass="btn1" />
                                </div>
                            </div>

                            <asp:SqlDataSource runat="server" ID="feed" ConnectionString='<%$ ConnectionStrings:HospitalConnectionString %>' SelectCommand="SELECT * FROM [feedback]" DeleteCommand="DELETE FROM [feedback] WHERE [id] = @id" InsertCommand="INSERT INTO [feedback] ([uname], [uemail], [sub], [mes]) VALUES (@uname, @uemail, @sub, @mes)" UpdateCommand="UPDATE [feedback] SET [uname] = @uname, [uemail] = @uemail, [sub] = @sub, [mes] = @mes WHERE [id] = @id">
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
            </section>
            <!-- End Contact Section -->
        </main>
        <!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer">

            <div class="footer-top">
                <div class="container">

                    <div class="row">

                        <div class="col-lg-3 col-md-6 footer-contact">
                            <h3>Geeta Hospital</h3>
                            <p>
                                3,Ambe Nagar, Nr. Ganjanad Complex,
                            <br />
                                Gundala Road, Baroi-Mundra (Kutch)<br />
                                Gujarat<br />
                                pincode: 370421
                            <br />
                                <br />
                                <strong>Phone:</strong> <a href="tel:+917874381551">+917874381551</a>
                                <br />
                                <strong>Email:</strong> <a href="mailto:geetahospitalmundra@gmail.com" target="_blank">geetahospitalmundra@gmail.com</a>
                                <br />
                            </p>
                        </div>

                        <div class="col-lg-2 col-md-6 footer-links">
                            <h4>Useful Links</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i><a href="#hero">Home</a></li>
                                <li><i class="bx bx-chevron-right"></i><a href="#about">About us</a></li>
                                <li><i class="bx bx-chevron-right"></i><a href="#services">Services</a></li>
                                <li><i class="bx bx-chevron-right"></i><a href="#departments">Departments</a></li>
                                <li><i class="bx bx-chevron-right"></i><a href="#doctors">Doctors</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <img src="../Images/intro.jpg" height="300" width="500" />
                        </div>
                    </div>
                    <div class="row">
                        <h2 style="margin-right: auto; margin-left: auto; text-align: center">
                            <font color="#0e4b9c" class="wnd-font-size-90">WE CARE ABOUT HEALTH OF MOTHER, BABY, PEOPLE.&nbsp;</font>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="container d-md-flex py-4">
                <div class="me-md-auto text-center text-md-start">
                    <div class="copyright">
                        &copy; Copyright <strong><span>Geeta Hospital</span></strong>. All Rights Reserved
                    </div>
                    <div class="credits">
                        Designed by <a href="@jaymodi">Jay Modi</a>
                    </div>
                </div>
                <div class="social-links text-center text-md-right pt-3 pt-md-0">
                    <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                    <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                    <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                    <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                </div>
            </div>
        </footer>
        <!-- End Footer -->
    </form>
    <div id="preloader"></div>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
    <!-- Vendor JS Files -->
    <script src="assets/vendor/purecounter/purecounter.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
</body>
</html>
