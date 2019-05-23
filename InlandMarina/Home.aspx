<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="InlandMarina.WebForm1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Masthead" runat="server">
    <header>
        <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
            <source src="Assets/boats.mp4" type="video/mp4"/>
        </video>
      <div class="container h-100">
        <div class="row h-100 align-items-center justify-content-center text-center">
          <div class="col-lg-10 align-self-end">
              <h2 class="text-white font-weight-bold">WELCOME TO INLAND MARINA</h2>
              <h3 class="text-white font-weight-bold">YOUR PARADISE AWAITS</h3>
          </div>
          <div class="col-lg-8 align-self-baseline">
              <a class="btn btn-outline-primary btn-xl js-scroll-trigger" href="Availability.aspx">AVAILABILITY</a>
         </div>
        </div>
      </div>
    </header>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="HomeContent" runat="server">
    <section class="top50" id="about">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">ABOUT US</h2>
          <%--<h3 class="section-subheading text-muted"></h3>--%>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <ul class="timeline">
            <li>
              <div class="timeline-image">
                <img class="rounded-circle img-fluid" src="Assets/ocean.jpg" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4 class="subheading">Inland Lake</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Welcome to Inland Marina located on the south shore Inland Lake, just a small commute from major centers in the south west.</p>
                </div>
              </div>
            </li>
            <li class="timeline-inverted">
              <div class="timeline-image">
                <img class="rounded-circle img-fluid" src="Assets/marinaold.jpg" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4 class="subheading">Established 1967</h4>
                </div>
                <div class="timeline-body">
                    <p class="text-muted">Inland Marina was established in 1967 shortly after Inland Lake was created as a result of the South West damn.  From its humble beginnings, it has grown to be the largest marina on Inland Lake.  Due to the warm climate that extends year-round, Inland Lake has become a popular tourist destination in the south west.  Boat owners from California, Arizona, Nevada, and Utah are attracted to the area.</p>
                </div>
              </div>
            </li>
            <li>
              <div class="timeline-image">
                <img class="rounded-circle img-fluid" src="Assets/marina1.jpg" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4 class="subheading">Marina Popularity</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Due to the warm climate that extends year-round, Inland Lake has become a popular tourist destination in the south west.  Boat owners from California, Arizona, Nevada, and Utah are attracted to the area.</p>
                </div>
              </div>
            </li>
            <li class="timeline-inverted">
              <div class="timeline-image">
                <img class="rounded-circle img-fluid" src="Assets/marina2.jpg" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4 class="subheading">Marina Services</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Inland Marina has 90 slips ranging in size from 16 to 32 feet in length.  Dock services include electrical and fresh water.</p>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>
</asp:Content>