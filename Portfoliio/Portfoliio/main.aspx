<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="Portfoliio.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Portfoilo</title>
    <link href="style/stylesheet.css" rel="stylesheet" type="text/css" />

    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="stylesheet.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet' />


</head>
<body>

    <header class="header">
        <li>
            <img src="photos/textfx-4.png" class="logo"></img></li>

        <nav class="navbar">
            <ul class="sidebar">
                <i class='bx bx-list-minus' style='color: #ffffff' onclick="closebar()"></i>
                <li><a href="#home">Home</a></li>
                <li><a href="#About">About</a></li>
                <li><a href="#projects">Projects</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="#FAQ">FAQ<i class='bx bx-message-square-dots bx-tada'></i></a></li>

                <li><a href="#FAQ">Contact</a></li>

            </ul>
            <i class='bx bx-menu' style='color: #ffffff' onclick="openbar()"></i>
        </nav>



        <!--  
            <div class="admin_login">
                <a href="#">Admin Login</a>
            </div>

          -->
    </header>

    <div class="black-background"></div>
    <section class="Home">


        <div class="home-content" id="home">

            <div class="headline">
                <h3>Hi,there!!</h3>
                <h2>I'm <span>Swagoto Das</span></h2>
                <h4>A
                            <span1>CS undergrad student</span1>
                </h4>
                <p>
                    As a passionate and dedicated computer science undergraduate,
                    I embark on a journey to explore the dynamic world of technology.<br>
                    I seek opportunities to apply my skills in real-world scenarios.
                    Whether it's collaborating on exciting projects or delving into the latest advancements in the tech
                    landscape,
                    I am on a mission to contribute meaningfully to the ever-evolving realm of computer science."
                </p>

            </div>
            <!--  <div class="img"><img src="person.jpg" alt ="This is my picture" style="width:320px;height:390px;"></div>-->

        </div>
    </section>

    <!------aboout starts here------>

    <div id="About">
        <div class="container">
            <div class="row">
                <div class="about-col-1">
                    <img src="photos/person.jpg" alt="This is my picture" style="width: 320px; height: 390px;">
                </div>
                <div class="about-col-2">
                    <h2 class="subtitle">About Me</h2>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Molestiae, nobis laborum doloribus sunt,
                        nam corrupti animi cumque, accusamus vel esse ipsam.
                    </p>

                    <div class="tabtile">
                        <p class="tab active-link" onclick="opentab('skills')">Skills</p>
                        <p class="tab" onclick="opentab('experience')">Experience</p>
                        <p class="tab" onclick="opentab('education')">Education</p>
                    </div>
                    <div class="tab-contents active-tab" id="skills">
                        <ul>
                            <li>
                                <h2>UI/UX </h2>
                                <br>
                                <h4>Web and App interfaces</h4>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam iste corporis quos
                                    necessitatibus consectetur par
                                </p>
                            </li>
                            <li>
                                <h2>Web Devlopment</h2>
                                <br>
                                <p>
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore, eius aliquid sint
                                    suscipit natus quisquam inventore ipsam c
                                </p>
                            </li>
                            <li>
                                <h2>App development</h2>
                                <br>
                                <h4>Android and Desktop framework Applications</h4>
                                <p>
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus suscipit fugiat
                                    totam
                                </p>
                            </li>
                        </ul>
                    </div>
                    <div class="tab-contents" id="experience">
                        <ul>
                            <li>Newbie,seeking for experience</li>

                        </ul>
                    </div>
                    <div class="tab-contents" id="education">
                        <ul>
                            <li>Khulna University of Engineering and Technology
                                        <br>
                                march 2022-current</li>
                            <li>Bogure Government College,Bogura
                                        <br>
                                2018-2021,Passed HSC</li>
                            <li>BIAM Model School And College,Bogura
                                        <br>
                                Passed SSC</li>

                        </ul>
                    </div>
                    <div>
                        <a href="pdfs/my_cv.pdf" download class="down_btn"><i class='bx bx-download bx-flashing'></i>
                            Download CV</a>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <!----------services------------->

    <div id="services">
        <div class="container">

            <div class="subtitle">
                <div>Services I provide</div>
            </div>

            <div class="servicelist" id="servicelist" runat="server">
                <div class="service">
                    <i class="fa-solid fa-headset"></i>
                    <h4>Web
                                    <br>
                        Design</h2>
                            <p>
                                Lorem ipsum dolor sit amet consectetur,
                                ratione architecto impedit tempore corrupti et
                                praesentium iure, quod eum odio est voluptate incidunt
                            </p>
                        <a href="https://www.w3schools.com/whatis/" class="btn">Learn more</a>
                </div>
                <div class="service">
                    <i class="fa-solid fa-laptop-code"></i>
                    <h4>Devloping<br>
                        a Application</h2>
                            <p>
                                Lorem ipsum dolor sit amet consectetur,
                                ratione architecto impedit tempore corrupti et
                                praesentium iure, quod eum odio est voluptate incidunt
                            </p>
                        <a href="https://www.w3schools.com/appml/" class="btn">Learn more</a>
                </div>
                <div class="service">
                    <i class="fa-solid fa-cubes"></i>
                    <h4>UI/UX
                                    <br>
                        Design</h2>
                            <p>
                                Lorem ipsum dolor sit amet consectetur,
                                ratione architecto impedit tempore corrupti et
                                praesentium iure, quod eum odio est voluptate incidunt
                            </p>
                        <a href="https://www.w3schools.com/css/css3_user_interface.asp" class="btn">Learn more</a>
                </div>

            </div>
        </div>

    </div>

    <!---projects---->
    <div id="projects" >
        <div class="container">
            <h3 class="projects-heading">My Projects</h3>
            <div class="worklist" id="worklist" runat="server">
                <div class="work">
                    <img src="photos/portfolio1.jpg" style="height: 270px; width: 360px;">
                    <div class="work-layer">
                        <h4>My own Portfolio</h4>
                        <p>
                            I have made my own portfolio using html,css and javascript.
                            <br>
                            It was one of my lab projects.
                        </p>
                        <div>
                            <a href="https://github.com/swag-0t0/portfolio_usingasp.git"><i class='bx bx-link-external'></i></a>

                        </div>
                        <!--icons from boxicons-->
                    </div>

                </div>
                <div class="work">
                    <img src="photos/Education_Background_Vector_8.jpg" style="height: 270px; width: 360px;">
                    <div class="work-layer">
                        <h4>Find My Tutor</h4>
                        <p>
                            This is a management type application.
                            This app is made in DESKTOP framewrok.
                            It was the project of my advanced programming lab
                        </p>
                        <div><a href="https://github.com/swag-0t0/Find_My_Tutor.git"><i class='bx bx-link-external'></i></a></div>
                    </div>

                </div>
                <div class="work">
                    <img src="photos/hospital-management-system.jpg" style="height: 270px; width: 360px;">

                    <div class="work-layer">
                        <h4>Hospital Managment System</h4>
                        <p>
                            This project was made of cpp.I have used the concepts og OOP(object oriented programming) in
                            this
                            case.
                            this project was for my OOP lab
                        </p>
                        <div>
                            <a href="https://github.com/swag-0t0/OOP_Project.git"><i class='bx bx-link-external'></i></a>
                        </div>
                    </div>

                </div>

                <div class="work">
                    <img src="photos/online-food-order-vector.jpg" style="height: 270px; width: 360px;">

                    <div class="work-layer">
                        <h4>Khabaar.com</h4>
                        <p>
                            This is my project of web programming lab.blah balh Lorem ipsum dolorm, perferendis odio
                            sint!
                        </p>
                        <div>
                            <a href="#"><i class='bx bx-link-external'></i></a>
                        </div>
                    </div>

                </div>

                <div class="work">
                    <img src="photos/courier_service.jpg" style="height: 270px; width: 360px;">

                    <div class="work-layer">
                        <h4>Courier Service Management</h4>
                        <p>
                            This project was made of sql  .I have used the concepts of oracle database sql language in
                            this
                            case.
                            this project was for my database lab
                        </p>
                        <div>
                            <a href="#"><i class='bx bx-link-external'></i></a>
                        </div>
                    </div>

                </div>

            </div>

            <!-- <div class="text"><p>See more</p></div>-->

        </div>
    </div>

    <!---FAQ section-->

    <div id="FAQ">
        <div class="container">
            <h1 class="faq-subtitle">Any Queries?</h1>
            <div class="contact">

                <h2 class="contact-subtitle">Contact Me</h2>
                <p><i class='bx bxl-gmail bx-tada'></i>Email:Swagotodas3@gmail.com</p>
                <p><i class='bx bxs-phone bx-tada bx-rotate-90'></i>Phone:01310187222</p>
                <div class="contact-icons">
                    <a href="https://www.facebook.com/swagotodas.brinto"><i class='bx bxl-facebook'></i></a>
                    <!--icons from boxicons-->
                    <a href="#"><i class='bx bxl-instagram'></i></a>
                    <a href="#"><i class='bx bxl-linkedin'></i></a>
                    <a href="https://github.com/swag-0t0"><i class='bx bxl-github'></i></a>
                </div>

            </div>
            <div class="FAQ">

                <form runat="server">
                    <p>Feel free to ask :)</p>
                    <input type="text" id="full_name" placeholder="Full Name" runat="server">
                    <input type="email" id="email" placeholder="Email" runat="server">
                    <input type="number" id="number" placeholder="Phone Number" runat="server">
                    <input type="subject" id="subject" placeholder="Subject" runat="server">
                    <textarea name="Message" id="message" cols="100" rows="10" placeholder="Type message" runat="server"></textarea>
                    <div>
                        <input type="submit" value="Send" class="btn" id="sendbtn" runat="server" onserverclick="sendbtn_Click">
                    </div>
                </form>
            </div>
        </div>
    </div>


    <div class="footer">
        <p><i class='bx bx-copyright'></i>swagoto_das_brinto</p>
    </div>
    <!--
    <div id="contact">
        <div class="container">
           
        </div>
    </div>

   -->


    <!----hehe Javascript-->

    <script>
        var tablinks = document.getElementsByClassName("tab");
        var tabcontents = document.getElementsByClassName("tab-contents");
        function opentab(tabname) {
            for (tablink of tablinks) {
                tablink.classList.remove("active-link");
            }
            for (tabcontent of tabcontents) {
                tabcontent.classList.remove("active-tab");
            }
            event.currentTarget.classList.add("active-link");
            document.getElementById(tabname).classList.add("active-tab");
        }

    </script>

    <script>
        const leftArrow = document.getElementById('left-arrow');
        const rightArrow = document.getElementById('right-arrow');
        const worklist = document.querySelector('.worklist');

        let scrollPosition = 0;
        const scrollAmount = 40;

        leftArrow.addEventListener('click', (event) => {
            event.preventDefault();
            scrollPosition += 40; // Adjust this value based on the width of your work items
            worklist.style.transform = `translateX(${scrollPosition}px)`;
        });

        rightArrow.addEventListener('click', (event) => {
            event.preventDefault();
            scrollPosition -= 40; // Adjust this value based on the width of your work items
            worklist.style.transform = `translateX(${scrollPosition}px)`;
        });

    </script>
    <script type="text/javascript" src="style/aboutTab.js"></script>


</body>
</html>
