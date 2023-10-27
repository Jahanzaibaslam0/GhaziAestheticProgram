<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateUserDetail.aspx.cs" Inherits="WebFormsEmailSMS2FA.UpdateUserDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link href="Select/select2.css" rel="stylesheet" />
    <script src="Select/select2.js"></script>
    <style>
        .borders {
            border: 1px solid #337ab7;
            border-radius: 40px;
            padding: 20px;
        }


        .text-Design {
            font-size: 16px !important;
        }
    </style>
    <br />
    <%--<h2><%: Title %>.</h2>--%>
    <div class="col-md-1"></div>
    <p class="text-danger">
        
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <br />

    <div class="container">
    <div id="carousel-id" class="carousel slide slider" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carousel-id" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-id" data-slide-to="1" class=""></li>
            <li data-target="#carousel-id" data-slide-to="2" class=""></li>
            <li data-target="#carousel-id" data-slide-to="3" class=""></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active">
                <img src="Images/GAP.png" />
            </div>
            <div class="item">
                <img src="Images/Yvoire.png" />
            </div>
            <div class="item">
                <img src="Images/03 Health Care.png" />
            </div>
            <div class="item">
                <img src="Images/Faculty.png" />
            </div>
            
        </div>
        <a class="left carousel-control slideArrow" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
        <a class="right carousel-control slideArrow" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div>
    </div>
    <br />

    <div class="container">
        <div class="borders">
            <div class="row">
                <div class="col-md-12">
                    <%--<h1 class="login"><%: Title %></h1>--%>
                    <h1 class="login hr">Update Account Information</h1>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">

                    <%--<div class="form-group">
                        <div class="text-Design">
                            <asp:Label runat="server" ID="lblRegID" CssClass="txtBold">REGISTRATION ID</asp:Label>
                        </div>
                        <asp:TextBox runat="server" ID="txtRegistrationID" CssClass="form-control" />
                        
                    </div>--%>

                    <div class="form-group">
                        <div class="text-Design">
                            <asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="txtBold">Email</asp:Label>
                        </div>
                        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" TextMode="Email" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail" CssClass="text-danger" ErrorMessage="The email field is required." />
                    </div>

                    <div class="form-group">
                        <div class="text-Design">
                            <asp:Label runat="server" AssociatedControlID="txtFirsName" CssClass="txtBold">First Name</asp:Label>
                        </div>
                        <asp:TextBox runat="server" ID="txtFirsName" CssClass="form-control" />
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUserName" Display="Dynamic" CssClass="field-validation-error alert alert-danger" ErrorMessage="name required" Text="*" SetFocusOnError="true" />--%>
                    </div>

                    <div class="form-group">
                        <div class="text-Design">
                            <asp:Label runat="server"  CssClass="txtBold">Last Name</asp:Label>
                        </div>
                        <asp:TextBox runat="server" ID="txtLastName" CssClass="form-control" />
                       <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" Display="Dynamic" CssClass="field-validation-error alert alert-danger" ErrorMessage="name required" Text="*" SetFocusOnError="true" />--%>
                    </div>
                    
                    <div class="form-group">
                        <asp:Label ID="lblPmdcNo" runat="server" Text="PMDC #:"></asp:Label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" CssClass="txtBold" ErrorMessage="PMDC is not valid" ValidationGroup="quizvalidation" ControlToValidate="txtPmdcNo" max="7" ForeColor="Red" ValidationExpression="^\w{1}-[0-9+]{5}$">
                        </asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtPmdcNo" CssClass="form-control" runat="server" placeholder="S-XXXXX" MaxLength="7"></asp:TextBox>
                    </div>
                

                    <%--<div class="form-group">
                        <div class="text-Design">
                            <asp:Label runat="server"  CssClass="txtBold">City</asp:Label>
                        </div>
                        <asp:TextBox runat="server" ID="txtCity" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCity" Display="Dynamic" CssClass="field-validation-error alert alert-danger" ErrorMessage="name required" Text="*" SetFocusOnError="true" />
                    </div>--%>

                    <div class="form-group">
                        <asp:Label ID="lblCity" runat="server" CssClass="txtBold" Text="City:"></asp:Label>
                        <asp:DropDownList ID="DropDownCity" CssClass="form-control" runat="server">
                                <asp:ListItem Text=""  Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Karachi" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Lahore" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Abbaspur" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Abbottabad" Value="3"></asp:ListItem>
                                <asp:ListItem Text="Abdul Hakim" Value="4"></asp:ListItem>
                                <asp:ListItem Text="Adda Jahan Khan" Value="5"></asp:ListItem>
                                <asp:ListItem Text="Adda Shaiwala" Value="6"></asp:ListItem>
                                <asp:ListItem Text="Ahmadpur East" Value="7"></asp:ListItem>
                                <asp:ListItem Text="Ahmed pur Sial" Value="8"></asp:ListItem>
                                <asp:ListItem Text="Akhora Khattak" Value="9"></asp:ListItem>
                                <asp:ListItem Text="Ali Chak" Value="10"></asp:ListItem>
                                <asp:ListItem Text="Alipur" Value="11"></asp:ListItem>
                                <asp:ListItem Text="Allahabad" Value="12"></asp:ListItem>
                                <asp:ListItem Text="Amangarh" Value="13"></asp:ListItem>
                                <asp:ListItem Text="Ambela" Value="14"></asp:ListItem>
                                <asp:ListItem Text="Arifwala" Value="15"></asp:ListItem>
                                <asp:ListItem Text="Astore" Value="16"></asp:ListItem>
                                <asp:ListItem Text="Attock" Value="17"></asp:ListItem>
                                <asp:ListItem Text="Babri Banda" Value="18"></asp:ListItem>
                                <asp:ListItem Text="Badin" Value="19"></asp:ListItem>
                                <asp:ListItem Text="Bagh" Value="20"></asp:ListItem>
                                <asp:ListItem Text="Bahawalnagar" Value="21"></asp:ListItem>
                                <asp:ListItem Text="Bahawalpur" Value="22"></asp:ListItem>
                                <asp:ListItem Text="Bajaur" Value="23"></asp:ListItem>
                                <asp:ListItem Text="Balakot" Value="24"></asp:ListItem>
                                <asp:ListItem Text="Bannu" Value="25"></asp:ListItem>
                                <asp:ListItem Text="Barbar Loi" Value="26"></asp:ListItem>
                                <asp:ListItem Text="Barkhan" Value="27"></asp:ListItem>
                                <asp:ListItem Text="Baroute" Value="28"></asp:ListItem>
                                <asp:ListItem Text="Bat Khela" Value="29"></asp:ListItem>
                                <asp:ListItem Text="Battagram" Value="30"></asp:ListItem>
                                <asp:ListItem Text="Besham" Value="31"></asp:ListItem>
                                <asp:ListItem Text="Bewal" Value="32"></asp:ListItem>
                                <asp:ListItem Text="Bhakkar" Value="33"></asp:ListItem>
                                <asp:ListItem Text="Bhalwal" Value="34"></asp:ListItem>
                                <asp:ListItem Text="Bhan Saeedabad" Value="35"></asp:ListItem>
                                <asp:ListItem Text="Bhara Kahu" Value="36"></asp:ListItem>
                                <asp:ListItem Text="Bhera" Value="37"></asp:ListItem>
                                <asp:ListItem Text="Bhimbar" Value="38"></asp:ListItem>
                                <asp:ListItem Text="Bhirya Road" Value="39"></asp:ListItem>
                                <asp:ListItem Text="Bhuawana" Value="40"></asp:ListItem>
                                <asp:ListItem Text="Bisham" Value="41"></asp:ListItem>
                                <asp:ListItem Text="Blitang" Value="42"></asp:ListItem>
                                <asp:ListItem Text="Bolan" Value="43"></asp:ListItem>
                                <asp:ListItem Text="Buchay Key" Value="44"></asp:ListItem>
                                <asp:ListItem Text="Bunner" Value="45"></asp:ListItem>
                                <asp:ListItem Text="Burewala" Value="46"></asp:ListItem>
                                <asp:ListItem Text="Chacklala" Value="47"></asp:ListItem>
                                <asp:ListItem Text="Chaghi" Value="48"></asp:ListItem>
                                <asp:ListItem Text="Chaininda" Value="49"></asp:ListItem>
                                <asp:ListItem Text="Chak 4" Value="50"></asp:ListItem>
                                <asp:ListItem Text="Chak 46" Value="51"></asp:ListItem>
                                <asp:ListItem Text="Chak Jamal" Value="52"></asp:ListItem>
                                <asp:ListItem Text="Chak Jhumra" Value="53"></asp:ListItem>
                                <asp:ListItem Text="Chak Sawara" Value="54"></asp:ListItem>
                                <asp:ListItem Text="Chak Sheza" Value="55"></asp:ListItem>
                                <asp:ListItem Text="Chakwal" Value="56"></asp:ListItem>
                                <asp:ListItem Text="Chaman" Value="57"></asp:ListItem>
                                <asp:ListItem Text="Charsada" Value="58"></asp:ListItem>
                                <asp:ListItem Text="Chashma" Value="59"></asp:ListItem>
                                <asp:ListItem Text="Chawinda" Value="60"></asp:ListItem>
                                <asp:ListItem Text="Cherat" Value="61"></asp:ListItem>
                                <asp:ListItem Text="Chicha watni" Value="62"></asp:ListItem>
                                <asp:ListItem Text="Chilas" Value="63"></asp:ListItem>
                                <asp:ListItem Text="Chiniot" Value="64"></asp:ListItem>
                                <asp:ListItem Text="Chishtian" Value="65"></asp:ListItem>
                                <asp:ListItem Text="Chitral" Value="66"></asp:ListItem>
                                <asp:ListItem Text="Choa Saiden Shah" Value="67"></asp:ListItem>
                                <asp:ListItem Text="Chohar Jamali" Value="68"></asp:ListItem>
                                <asp:ListItem Text="Choppar Hatta" Value="69"></asp:ListItem>
                                <asp:ListItem Text="Chowk Azam" Value="70"></asp:ListItem>
                                <asp:ListItem Text="Chowk Maitla" Value="71"></asp:ListItem>
                                <asp:ListItem Text="Chowk Munda" Value="72"></asp:ListItem>
                                <asp:ListItem Text="Chunian" Value="73"></asp:ListItem>
                                <asp:ListItem Text="Dadakhel" Value="74"></asp:ListItem>
                                <asp:ListItem Text="Dadu" Value="75"></asp:ListItem>
                                <asp:ListItem Text="Daharki" Value="76"></asp:ListItem>
                                <asp:ListItem Text="Dandot" Value="77"></asp:ListItem>
                                <asp:ListItem Text="Dargai" Value="78"></asp:ListItem>
                                <asp:ListItem Text="Darya Khan" Value="79"></asp:ListItem>
                                <asp:ListItem Text="Daska" Value="80"></asp:ListItem>
                                <asp:ListItem Text="Dassu" Value="81"></asp:ListItem>
                                <asp:ListItem Text="Daud Khel" Value="82"></asp:ListItem>
                                <asp:ListItem Text="Daulat Pur" Value="83"></asp:ListItem>
                                <asp:ListItem Text="Daur" Value="84"></asp:ListItem>
                                <asp:ListItem Text="Deh Pathaan" Value="85"></asp:ListItem>
                                <asp:ListItem Text="Depal Pur" Value="86"></asp:ListItem>
                                <asp:ListItem Text="Dera Bugti" Value="87"></asp:ListItem>
                                <asp:ListItem Text="Dera Ghazi Khan" Value="88"></asp:ListItem>
                                <asp:ListItem Text="Dera Ismail Khan" Value="89"></asp:ListItem>
                                <asp:ListItem Text="Dera Murad Jamali" Value="90"></asp:ListItem>
                                <asp:ListItem Text="Dera Nawab Sahib" Value="91"></asp:ListItem>
                                <asp:ListItem Text="Dhatmal" Value="92"></asp:ListItem>
                                <asp:ListItem Text="Dhirkot" Value="93"></asp:ListItem>
                                <asp:ListItem Text="Dhoun Kal" Value="94"></asp:ListItem>
                                <asp:ListItem Text="Diamer" Value="95"></asp:ListItem>
                                <asp:ListItem Text="Digri" Value="96"></asp:ListItem>
                                <asp:ListItem Text="Dijkot" Value="97"></asp:ListItem>
                                <asp:ListItem Text="Dina" Value="98"></asp:ListItem>
                                <asp:ListItem Text="Dinga" Value="99"></asp:ListItem>
                                <asp:ListItem Text="Dir" Value="100"></asp:ListItem>
                                <asp:ListItem Text="Doaaba" Value="101"></asp:ListItem>
                                <asp:ListItem Text="Doltala" Value="102"></asp:ListItem>
                                <asp:ListItem Text="Domeli" Value="103"></asp:ListItem>
                                <asp:ListItem Text="Dudial" Value="104"></asp:ListItem>
                                <asp:ListItem Text="Dunyapur" Value="105"></asp:ListItem>
                                <asp:ListItem Text="Eminabad" Value="106"></asp:ListItem>
                                <asp:ListItem Text="Faisalabad" Value="107"></asp:ListItem>
                                <asp:ListItem Text="Farooqabad" Value="108"></asp:ListItem>
                                <asp:ListItem Text="Fateh Jang" Value="109"></asp:ListItem>
                                <asp:ListItem Text="Fateh Pur" Value="110"></asp:ListItem>
                                <asp:ListItem Text="Feroz Walla" Value="111"></asp:ListItem>
                                <asp:ListItem Text="Feroz Watan" Value="112"></asp:ListItem>
                                <asp:ListItem Text="Fizagat" Value="113"></asp:ListItem>
                                <asp:ListItem Text="Fort Abbas" Value="114"></asp:ListItem>
                                <asp:ListItem Text="FR Bannu" Value="115"></asp:ListItem>
                                <asp:ListItem Text="FR Bannu / Lakki" Value="116"></asp:ListItem>
                                <asp:ListItem Text="FR DI Khan" Value="117"></asp:ListItem>
                                <asp:ListItem Text="FR Kohat" Value="118"></asp:ListItem>
                                <asp:ListItem Text="FR Peshawar" Value="119"></asp:ListItem>
                                <asp:ListItem Text="FR Peshawar / Kohat" Value="120"></asp:ListItem>
                                <asp:ListItem Text="FR Tank / DI Khan" Value="121"></asp:ListItem>
                                <asp:ListItem Text="Gadoon Amazai" Value="122"></asp:ListItem>
                                <asp:ListItem Text="Gaggo Mandi" Value="123"></asp:ListItem>
                                <asp:ListItem Text="Gakhar Mandi" Value="124"></asp:ListItem>
                                <asp:ListItem Text="Gambet" Value="125"></asp:ListItem>
                                <asp:ListItem Text="Garh Maharaja" Value="126"></asp:ListItem>
                                <asp:ListItem Text="Garh More" Value="127"></asp:ListItem>
                                <asp:ListItem Text="Gari Habibullah" Value="128"></asp:ListItem>
                                <asp:ListItem Text="Gari Mori" Value="129"></asp:ListItem>
                                <asp:ListItem Text="Ghari Dupatta" Value="130"></asp:ListItem>
                                <asp:ListItem Text="Gharo" Value="131"></asp:ListItem>
                                <asp:ListItem Text="Ghazi" Value="132"></asp:ListItem>
                                <asp:ListItem Text="Ghizer" Value="133"></asp:ListItem>
                                <asp:ListItem Text="Ghotki" Value="134"></asp:ListItem>
                                <asp:ListItem Text="Ghuzdar" Value="135"></asp:ListItem>
                                <asp:ListItem Text="Gilgit" Value="136"></asp:ListItem>
                                <asp:ListItem Text="Gohar Ghoushti" Value="137"></asp:ListItem>
                                <asp:ListItem Text="Gojra" Value="138"></asp:ListItem>
                                <asp:ListItem Text="Goular Khel" Value="139"></asp:ListItem>
                                <asp:ListItem Text="Guddu" Value="140"></asp:ListItem>
                                <asp:ListItem Text="Gujar Khan" Value="141"></asp:ListItem>
                                <asp:ListItem Text="Gujranwala" Value="142"></asp:ListItem>
                                <asp:ListItem Text="Gujrat" Value="143"></asp:ListItem>
                                <asp:ListItem Text="Gwadar" Value="144"></asp:ListItem>
                                <asp:ListItem Text="Hafizabad" Value="145"></asp:ListItem>
                                <asp:ListItem Text="Hala" Value="146"></asp:ListItem>
                                <asp:ListItem Text="Hangu" Value="147"></asp:ListItem>
                                <asp:ListItem Text="Hari Pur" Value="148"></asp:ListItem>
                                <asp:ListItem Text="Hariwala" Value="149"></asp:ListItem>
                                <asp:ListItem Text="Harnai" Value="150"></asp:ListItem>
                                <asp:ListItem Text="Haroonabad" Value="151"></asp:ListItem>
                                <asp:ListItem Text="Hasilpur" Value="152"></asp:ListItem>
                                <asp:ListItem Text="Hassan Abdal" Value="153"></asp:ListItem>
                                <asp:ListItem Text="Hattar" Value="154"></asp:ListItem>
                                <asp:ListItem Text="Hattian" Value="155"></asp:ListItem>
                                <asp:ListItem Text="Haveli Kahuta" Value="156"></asp:ListItem>
                                <asp:ListItem Text="Haveli Lakha" Value="157"></asp:ListItem>
                                <asp:ListItem Text="Havelian" Value="158"></asp:ListItem>
                                <asp:ListItem Text="Hayatabad" Value="159"></asp:ListItem>
                                <asp:ListItem Text="Hazro" Value="160"></asp:ListItem>
                                <asp:ListItem Text="Head Marala" Value="161"></asp:ListItem>
                                <asp:ListItem Text="Hub Chowki" Value="162"></asp:ListItem>
                                <asp:ListItem Text="Hub Inds Estate" Value="163"></asp:ListItem>
                                <asp:ListItem Text="Hujra Shah Muqeem" Value="164"></asp:ListItem>
                                <asp:ListItem Text="Hunza Nagar" Value="165"></asp:ListItem>
                                <asp:ListItem Text="Hyderabad" Value="166"></asp:ListItem>
                                <asp:ListItem Text="Issa Khel" Value="167"></asp:ListItem>
                                <asp:ListItem Text="Jacobabad" Value="168"></asp:ListItem>
                                <asp:ListItem Text="Jaffarabad" Value="169"></asp:ListItem>
                                <asp:ListItem Text="Jaja Abasian" Value="170"></asp:ListItem>
                                <asp:ListItem Text="Jalal Pur Jatan" Value="171"></asp:ListItem>
                                <asp:ListItem Text="Jalal Pur Priwala" Value="172"></asp:ListItem>
                                <asp:ListItem Text="Jalozai" Value="173"></asp:ListItem>
                                <asp:ListItem Text="Jampur" Value="174"></asp:ListItem>
                                <asp:ListItem Text="Jamrud Road" Value="175"></asp:ListItem>
                                <asp:ListItem Text="Jamshoro" Value="176"></asp:ListItem>
                                <asp:ListItem Text="Jandanwala" Value="177"></asp:ListItem>
                                <asp:ListItem Text="Jaranwala" Value="178"></asp:ListItem>
                                <asp:ListItem Text="Jatoi" Value="179"></asp:ListItem>
                                <asp:ListItem Text="Jauharabad" Value="180"></asp:ListItem>
                                <asp:ListItem Text="Jehangira" Value="181"></asp:ListItem>
                                <asp:ListItem Text="Jehanian" Value="182"></asp:ListItem>
                                <asp:ListItem Text="Jhal Magsi" Value="183"></asp:ListItem>
                                <asp:ListItem Text="Jhand" Value="184"></asp:ListItem>
                                <asp:ListItem Text="Jhang" Value="185"></asp:ListItem>
                                <asp:ListItem Text="Jhatta Bhutta" Value="186"></asp:ListItem>
                                <asp:ListItem Text="Jhelum" Value="187"></asp:ListItem>
                                <asp:ListItem Text="Jhudo" Value="188"></asp:ListItem>
                                <asp:ListItem Text="Kabir Wala" Value="189"></asp:ListItem>
                                <asp:ListItem Text="Kacha Khooh" Value="190"></asp:ListItem>
                                <asp:ListItem Text="Kachhi/Bolan" Value="191"></asp:ListItem>
                                <asp:ListItem Text="Kahror Pacca" Value="192"></asp:ListItem>
                                <asp:ListItem Text="Kahuta" Value="193"></asp:ListItem>
                                <asp:ListItem Text="Kakul" Value="194"></asp:ListItem>
                                <asp:ListItem Text="Kakur Town" Value="195"></asp:ListItem>
                                <asp:ListItem Text="Kala Bagh" Value="196"></asp:ListItem>
                                <asp:ListItem Text="Kala Shah Kaku" Value="197"></asp:ListItem>
                                <asp:ListItem Text="Kalam" Value="198"></asp:ListItem>
                                <asp:ListItem Text="Kalar Syedian" Value="199"></asp:ListItem>
                                <asp:ListItem Text="Kalaswala" Value="200"></asp:ListItem>
                                <asp:ListItem Text="Kallat" Value="201"></asp:ListItem>
                                <asp:ListItem Text="Kallur Kot" Value="202"></asp:ListItem>
                                <asp:ListItem Text="Kamalia" Value="203"></asp:ListItem>
                                <asp:ListItem Text="Kamalia Musa" Value="204"></asp:ListItem>
                                <asp:ListItem Text="Kamber Ali Khan" Value="205"></asp:ListItem>
                                <asp:ListItem Text="Kamokey" Value="206"></asp:ListItem>
                                <asp:ListItem Text="Kamra" Value="207"></asp:ListItem>
                                <asp:ListItem Text="Kandhkot" Value="208"></asp:ListItem>
                                <asp:ListItem Text="Kandiaro" Value="209"></asp:ListItem>
                                <asp:ListItem Text="Karak" Value="210"></asp:ListItem>
                                <asp:ListItem Text="Karore Lalisan" Value="211"></asp:ListItem>
                                <asp:ListItem Text="Kashmir" Value="212"></asp:ListItem>
                                <asp:ListItem Text="Kashmore" Value="213"></asp:ListItem>
                                <asp:ListItem Text="Kasur" Value="214"></asp:ListItem>
                                <asp:ListItem Text="Kazi Ahmed" Value="215"></asp:ListItem>
                                <asp:ListItem Text="Kech" Value="216"></asp:ListItem>
                                <asp:ListItem Text="Khair Pur" Value="217"></asp:ListItem>
                                <asp:ListItem Text="Khair Pur Mir" Value="218"></asp:ListItem>
                                <asp:ListItem Text="Khairpur Nathan Shah" Value="219"></asp:ListItem>
                                <asp:ListItem Text="Khanbela" Value="220"></asp:ListItem>
                                <asp:ListItem Text="Khandabad" Value="221"></asp:ListItem>
                                <asp:ListItem Text="Khanewal" Value="222"></asp:ListItem>
                                <asp:ListItem Text="Khangarh" Value="223"></asp:ListItem>
                                <asp:ListItem Text="Khanpur" Value="224"></asp:ListItem>
                                <asp:ListItem Text="Khanqah Dogran" Value="225"></asp:ListItem>
                                <asp:ListItem Text="Khanqah Sharif" Value="226"></asp:ListItem>
                                <asp:ListItem Text="Kharan" Value="227"></asp:ListItem>
                                <asp:ListItem Text="Kharian" Value="228"></asp:ListItem>
                                <asp:ListItem Text="Khewra" Value="229"></asp:ListItem>
                                <asp:ListItem Text="Khoski" Value="230"></asp:ListItem>
                                <asp:ListItem Text="Khuiratta" Value="231"></asp:ListItem>
                                <asp:ListItem Text="Khurian wala" Value="232"></asp:ListItem>
                                <asp:ListItem Text="Khushab" Value="233"></asp:ListItem>
                                <asp:ListItem Text="Khushal Kot" Value="234"></asp:ListItem>
                                <asp:ListItem Text="Khuzdar" Value="235"></asp:ListItem>
                                <asp:ListItem Text="Khyber Agency" Value="236"></asp:ListItem>
                                <asp:ListItem Text="Killa Abdullah" Value="237"></asp:ListItem>
                                <asp:ListItem Text="Killa Saifullah" Value="238"></asp:ListItem>
                                <asp:ListItem Text="Kohat" Value="239"></asp:ListItem>
                                <asp:ListItem Text="Kohistan" Value="240"></asp:ListItem>
                                <asp:ListItem Text="Kohlu" Value="241"></asp:ListItem>
                                <asp:ListItem Text="Kot Addu" Value="242"></asp:ListItem>
                                <asp:ListItem Text="Kot Bunglow" Value="243"></asp:ListItem>
                                <asp:ListItem Text="Kot Ghulam Mohd" Value="244"></asp:ListItem>
                                <asp:ListItem Text="Kot Mithan" Value="245"></asp:ListItem>
                                <asp:ListItem Text="Kot Radha Kishan" Value="246"></asp:ListItem>
                                <asp:ListItem Text="Kotla" Value="247"></asp:ListItem>
                                <asp:ListItem Text="Kotla Arab Ali Khan" Value="248"></asp:ListItem>
                                <asp:ListItem Text="Kotla Jam" Value="249"></asp:ListItem>
                                <asp:ListItem Text="Kotla Pathan" Value="250"></asp:ListItem>
                                <asp:ListItem Text="Kotli" Value="251"></asp:ListItem>
                                <asp:ListItem Text="Kotli Loharan" Value="252"></asp:ListItem>
                                <asp:ListItem Text="Kotmomin" Value="253"></asp:ListItem>
                                <asp:ListItem Text="Kotri" Value="254"></asp:ListItem>
                                <asp:ListItem Text="Kumbh" Value="255"></asp:ListItem>
                                <asp:ListItem Text="Kundina" Value="256"></asp:ListItem>
                                <asp:ListItem Text="Kunjah" Value="257"></asp:ListItem>
                                <asp:ListItem Text="Kunri" Value="258"></asp:ListItem>
                                <asp:ListItem Text="Kurram" Value="259"></asp:ListItem>
                                <asp:ListItem Text="Kurram Agency" Value="260"></asp:ListItem>
                                <asp:ListItem Text="Lakimarwat" Value="261"></asp:ListItem>
                                <asp:ListItem Text="Lakki Marwat" Value="262"></asp:ListItem>
                                <asp:ListItem Text="Lala rukh" Value="263"></asp:ListItem>
                                <asp:ListItem Text="Lalamusa" Value="264"></asp:ListItem>
                                <asp:ListItem Text="Laliah" Value="265"></asp:ListItem>
                                <asp:ListItem Text="Lalshanra" Value="266"></asp:ListItem>
                                <asp:ListItem Text="Landi Kotal" Value="267"></asp:ListItem>
                                <asp:ListItem Text="Larkana" Value="268"></asp:ListItem>
                                <asp:ListItem Text="Lasbela" Value="269"></asp:ListItem>
                                <asp:ListItem Text="Lawrence pur" Value="270"></asp:ListItem>
                                <asp:ListItem Text="Layyah" Value="271"></asp:ListItem>
                                <asp:ListItem Text="Leepa" Value="272"></asp:ListItem>
                                <asp:ListItem Text="Liaquat Pur" Value="273"></asp:ListItem>
                                <asp:ListItem Text="Lodhran" Value="274"></asp:ListItem>
                                <asp:ListItem Text="Loralai" Value="275"></asp:ListItem>
                                <asp:ListItem Text="Lower Dir" Value="276"></asp:ListItem>
                                <asp:ListItem Text="Ludhan" Value="277"></asp:ListItem>
                                <asp:ListItem Text="Machh" Value="278"></asp:ListItem>
                                <asp:ListItem Text="Machi Goth" Value="279"></asp:ListItem>
                                <asp:ListItem Text="Madinah" Value="280"></asp:ListItem>
                                <asp:ListItem Text="Mailsi" Value="281"></asp:ListItem>
                                <asp:ListItem Text="Makli" Value="282"></asp:ListItem>
                                <asp:ListItem Text="Makran" Value="283"></asp:ListItem>
                                <asp:ListItem Text="Malakand" Value="284"></asp:ListItem>
                                <asp:ListItem Text="Malakwal" Value="285"></asp:ListItem>
                                <asp:ListItem Text="Mamu kunjan" Value="286"></asp:ListItem>
                                <asp:ListItem Text="Mandi Bahauddin" Value="287"></asp:ListItem>
                                <asp:ListItem Text="Mandi Faizabad" Value="288"></asp:ListItem>
                                <asp:ListItem Text="Mandra" Value="289"></asp:ListItem>
                                <asp:ListItem Text="Manga Mandi" Value="290"></asp:ListItem>
                                <asp:ListItem Text="Mangal Sada" Value="291"></asp:ListItem>
                                <asp:ListItem Text="Mangi" Value="292"></asp:ListItem>
                                <asp:ListItem Text="Mangla" Value="293"></asp:ListItem>
                                <asp:ListItem Text="Mangowal" Value="294"></asp:ListItem>
                                <asp:ListItem Text="Manoabad" Value="295"></asp:ListItem>
                                <asp:ListItem Text="Mansehra" Value="296"></asp:ListItem>
                                <asp:ListItem Text="Mardan" Value="297"></asp:ListItem>
                                <asp:ListItem Text="Mari Indus" Value="298"></asp:ListItem>
                                <asp:ListItem Text="Mastoi" Value="299"></asp:ListItem>
                                <asp:ListItem Text="Matiari" Value="300"></asp:ListItem>
                                <asp:ListItem Text="Matli" Value="301"></asp:ListItem>
                                <asp:ListItem Text="Mehar" Value="302"></asp:ListItem>
                                <asp:ListItem Text="Mehmood Kot" Value="303"></asp:ListItem>
                                <asp:ListItem Text="Mehrab Pur" Value="304"></asp:ListItem>
                                <asp:ListItem Text="Mian Chunnu" Value="305"></asp:ListItem>
                                <asp:ListItem Text="Mian Walli" Value="306"></asp:ListItem>
                                <asp:ListItem Text="Minchanabad" Value="307"></asp:ListItem>
                                <asp:ListItem Text="Mingora" Value="308"></asp:ListItem>
                                <asp:ListItem Text="Mir Ali" Value="309"></asp:ListItem>
                                <asp:ListItem Text="Miran Shah" Value="310"></asp:ListItem>
                                <asp:ListItem Text="Mirpur  (AJK)" Value="311"></asp:ListItem>
                                <asp:ListItem Text="Mirpur Khas" Value="312"></asp:ListItem>
                                <asp:ListItem Text="Mirpur Mathelo" Value="313"></asp:ListItem>
                                <asp:ListItem Text="Mithi" Value="314"></asp:ListItem>
                                <asp:ListItem Text="Mohen Jo Daro" Value="315"></asp:ListItem>
                                <asp:ListItem Text="Mohmand" Value="316"></asp:ListItem>
                                <asp:ListItem Text="More kunda" Value="317"></asp:ListItem>
                                <asp:ListItem Text="Morgah" Value="318"></asp:ListItem>
                                <asp:ListItem Text="Moro" Value="319"></asp:ListItem>
                                <asp:ListItem Text="Mubarik Pur" Value="320"></asp:ListItem>
                                <asp:ListItem Text="Multan" Value="321"></asp:ListItem>
                                <asp:ListItem Text="Muridkay" Value="322"></asp:ListItem>
                                <asp:ListItem Text="Murree" Value="323"></asp:ListItem>
                                <asp:ListItem Text="Musafir Khana" Value="324"></asp:ListItem>
                                <asp:ListItem Text="Musakhel" Value="325"></asp:ListItem>
                                <asp:ListItem Text="Mustang" Value="326"></asp:ListItem>
                                <asp:ListItem Text="Muzaffarabad" Value="327"></asp:ListItem>
                                <asp:ListItem Text="Muzaffargarh" Value="328"></asp:ListItem>
                                <asp:ListItem Text="Nankana Sahib" Value="329"></asp:ListItem>
                                <asp:ListItem Text="Narang Mandi" Value="330"></asp:ListItem>
                                <asp:ListItem Text="Narowal" Value="331"></asp:ListItem>
                                <asp:ListItem Text="Naseerabad" Value="332"></asp:ListItem>
                                <asp:ListItem Text="Naudero" Value="333"></asp:ListItem>
                                <asp:ListItem Text="Naukot" Value="334"></asp:ListItem>
                                <asp:ListItem Text="Naukundi" Value="335"></asp:ListItem>
                                <asp:ListItem Text="Nawab Shah" Value="336"></asp:ListItem>
                                <asp:ListItem Text="Neelam" Value="337"></asp:ListItem>
                                <asp:ListItem Text="New Saeedabad" Value="338"></asp:ListItem>
                                <asp:ListItem Text="Nilam" Value="339"></asp:ListItem>
                                <asp:ListItem Text="Nilore" Value="340"></asp:ListItem>
                                <asp:ListItem Text="Noor kot" Value="341"></asp:ListItem>
                                <asp:ListItem Text="Nooriabad" Value="342"></asp:ListItem>
                                <asp:ListItem Text="Noorpur nooranga" Value="343"></asp:ListItem>
                                <asp:ListItem Text="North Wazirstan" Value="344"></asp:ListItem>
                                <asp:ListItem Text="Noshki" Value="345"></asp:ListItem>
                                <asp:ListItem Text="Nowshera" Value="346"></asp:ListItem>
                                <asp:ListItem Text="Nowshera Cantt" Value="347"></asp:ListItem>
                                <asp:ListItem Text="Nowshero Feroz" Value="348"></asp:ListItem>
                                <asp:ListItem Text="Okara" Value="349"></asp:ListItem>
                                <asp:ListItem Text="Orakzai" Value="350"></asp:ListItem>
                                <asp:ListItem Text="Padidan" Value="351"></asp:ListItem>
                                <asp:ListItem Text="Pak Pattan Sharif" Value="352"></asp:ListItem>
                                <asp:ListItem Text="Panjan Kisan" Value="353"></asp:ListItem>
                                <asp:ListItem Text="Panjgur" Value="354"></asp:ListItem>
                                <asp:ListItem Text="Pannu aqil" Value="355"></asp:ListItem>
                                <asp:ListItem Text="Parachinar" Value="356"></asp:ListItem>
                                <asp:ListItem Text="Pasni" Value="357"></asp:ListItem>
                                <asp:ListItem Text="Pasroor" Value="358"></asp:ListItem>
                                <asp:ListItem Text="Patika" Value="359"></asp:ListItem>
                                <asp:ListItem Text="Patoki" Value="360"></asp:ListItem>
                                <asp:ListItem Text="Peshawar" Value="361"></asp:ListItem>
                                <asp:ListItem Text="Phagwar" Value="362"></asp:ListItem>
                                <asp:ListItem Text="Phalia" Value="363"></asp:ListItem>
                                <asp:ListItem Text="Phool nagar" Value="364"></asp:ListItem>
                                <asp:ListItem Text="Phoolnagar (Bhai Pheru)" Value="365"></asp:ListItem>
                                <asp:ListItem Text="Piaro goth" Value="366"></asp:ListItem>
                                <asp:ListItem Text="Pind Dadan Khan" Value="367"></asp:ListItem>
                                <asp:ListItem Text="Pindi Bhattian" Value="368"></asp:ListItem>
                                <asp:ListItem Text="Pindi bhohri" Value="369"></asp:ListItem>
                                <asp:ListItem Text="Pindi gheb" Value="370"></asp:ListItem>
                                <asp:ListItem Text="Piplan" Value="371"></asp:ListItem>
                                <asp:ListItem Text="Pir Mahal" Value="372"></asp:ListItem>
                                <asp:ListItem Text="Pirpai" Value="373"></asp:ListItem>
                                <asp:ListItem Text="Pishin" Value="374"></asp:ListItem>
                                <asp:ListItem Text="Poonch" Value="375"></asp:ListItem>
                                <asp:ListItem Text="Punch" Value="376"></asp:ListItem>
                                <asp:ListItem Text="Qalandarabad" Value="377"></asp:ListItem>
                                <asp:ListItem Text="Qambar" Value="378"></asp:ListItem>
                                <asp:ListItem Text="Qambar Shahdatkot" Value="379"></asp:ListItem>
                                <asp:ListItem Text="Qasba Gujrat" Value="380"></asp:ListItem>
                                <asp:ListItem Text="Qazi Ahmed" Value="381"></asp:ListItem>
                                <asp:ListItem Text="Quaidabad" Value="382"></asp:ListItem>
                                <asp:ListItem Text="Quetta" Value="383"></asp:ListItem>
                                <asp:ListItem Text="Rabwah" Value="384"></asp:ListItem>
                                <asp:ListItem Text="Rahimyar Khan" Value="385"></asp:ListItem>
                                <asp:ListItem Text="Rahwali" Value="386"></asp:ListItem>
                                <asp:ListItem Text="Raiwind" Value="387"></asp:ListItem>
                                <asp:ListItem Text="Rajana" Value="388"></asp:ListItem>
                                <asp:ListItem Text="Rajanpur" Value="389"></asp:ListItem>
                                <asp:ListItem Text="Rangoo" Value="390"></asp:ListItem>
                                <asp:ListItem Text="Ranipur" Value="391"></asp:ListItem>
                                <asp:ListItem Text="Rashidabad" Value="392"></asp:ListItem>
                                <asp:ListItem Text="Ratto Dero" Value="393"></asp:ListItem>
                                <asp:ListItem Text="Rawala Kot" Value="394"></asp:ListItem>
                                <asp:ListItem Text="Rawalpindi" Value="395"></asp:ListItem>
                                <asp:ListItem Text="Rawat" Value="396"></asp:ListItem>
                                <asp:ListItem Text="Renala Khurd" Value="397"></asp:ListItem>
                                <asp:ListItem Text="Risalpur" Value="398"></asp:ListItem>
                                <asp:ListItem Text="Rohri" Value="399"></asp:ListItem>
                                <asp:ListItem Text="Sadiqabad" Value="400"></asp:ListItem>
                                <asp:ListItem Text="Sagri" Value="401"></asp:ListItem>
                                <asp:ListItem Text="Sahiwal" Value="402"></asp:ListItem>
                                <asp:ListItem Text="Saidu Sharif" Value="403"></asp:ListItem>
                                <asp:ListItem Text="Sajawal" Value="404"></asp:ListItem>
                                <asp:ListItem Text="Sakardu" Value="405"></asp:ListItem>
                                <asp:ListItem Text="Sakrand" Value="406"></asp:ListItem>
                                <asp:ListItem Text="Sambrial" Value="407"></asp:ListItem>
                                <asp:ListItem Text="Samma Satta" Value="408"></asp:ListItem>
                                <asp:ListItem Text="Samundri" Value="409"></asp:ListItem>
                                <asp:ListItem Text="Sanghar" Value="410"></asp:ListItem>
                                <asp:ListItem Text="Sanghi" Value="411"></asp:ListItem>
                                <asp:ListItem Text="Sangla Hill" Value="412"></asp:ListItem>
                                <asp:ListItem Text="Sangote" Value="413"></asp:ListItem>
                                <asp:ListItem Text="Sanjwal" Value="414"></asp:ListItem>
                                <asp:ListItem Text="Sara e Naurang" Value="415"></asp:ListItem>
                                <asp:ListItem Text="Sarai Alamgir" Value="416"></asp:ListItem>
                                <asp:ListItem Text="Sargodha" Value="417"></asp:ListItem>
                                <asp:ListItem Text="Satyana Bangla" Value="418"></asp:ListItem>
                                <asp:ListItem Text="Sehar Baqlas" Value="419"></asp:ListItem>
                                <asp:ListItem Text="Sehwan" Value="420"></asp:ListItem>
                                <asp:ListItem Text="Shadiwal" Value="421"></asp:ListItem>
                                <asp:ListItem Text="Shahdad Kot" Value="422"></asp:ListItem>
                                <asp:ListItem Text="Shahdad Pur" Value="423"></asp:ListItem>
                                <asp:ListItem Text="Shaheed Benazirabad" Value="424"></asp:ListItem>
                                <asp:ListItem Text="Shahkot" Value="425"></asp:ListItem>
                                <asp:ListItem Text="Shahpur Chakar" Value="426"></asp:ListItem>
                                <asp:ListItem Text="Shakargarh" Value="427"></asp:ListItem>
                                <asp:ListItem Text="Shamsabad" Value="428"></asp:ListItem>
                                <asp:ListItem Text="Shangla" Value="429"></asp:ListItem>
                                <asp:ListItem Text="Shankiari" Value="430"></asp:ListItem>
                                <asp:ListItem Text="Shedani sharif" Value="431"></asp:ListItem>
                                <asp:ListItem Text="Sheikhupura" Value="432"></asp:ListItem>
                                <asp:ListItem Text="Shemier" Value="433"></asp:ListItem>
                                <asp:ListItem Text="Sherani" Value="434"></asp:ListItem>
                                <asp:ListItem Text="Shikarpur" Value="435"></asp:ListItem>
                                <asp:ListItem Text="Shogram" Value="436"></asp:ListItem>
                                <asp:ListItem Text="Shorkot" Value="437"></asp:ListItem>
                                <asp:ListItem Text="Shujabad" Value="438"></asp:ListItem>
                                <asp:ListItem Text="Sialkot" Value="439"></asp:ListItem>
                                <asp:ListItem Text="Sibi" Value="440"></asp:ListItem>
                                <asp:ListItem Text="Sidhnoti" Value="441"></asp:ListItem>
                                <asp:ListItem Text="Sihala" Value="442"></asp:ListItem>
                                <asp:ListItem Text="Sikandarabad" Value="443"></asp:ListItem>
                                <asp:ListItem Text="Silanwala" Value="444"></asp:ListItem>
                                <asp:ListItem Text="Sita Road" Value="445"></asp:ListItem>
                                <asp:ListItem Text="Skardu" Value="446"></asp:ListItem>
                                <asp:ListItem Text="Sohawa District Daska" Value="447"></asp:ListItem>
                                <asp:ListItem Text="Sohawa District Jelum" Value="448"></asp:ListItem>
                                <asp:ListItem Text="South Wazirstan" Value="449"></asp:ListItem>
                                <asp:ListItem Text="Sudhnoti" Value="450"></asp:ListItem>
                                <asp:ListItem Text="Sukkur" Value="451"></asp:ListItem>
                                <asp:ListItem Text="Swabi" Value="452"></asp:ListItem>
                                <asp:ListItem Text="Swat" Value="453"></asp:ListItem>
                                <asp:ListItem Text="Swatmingora" Value="454"></asp:ListItem>
                                <asp:ListItem Text="Takhtbai" Value="455"></asp:ListItem>
                                <asp:ListItem Text="Talagang" Value="456"></asp:ListItem>
                                <asp:ListItem Text="Talamba" Value="457"></asp:ListItem>
                                <asp:ListItem Text="Talhur" Value="458"></asp:ListItem>
                                <asp:ListItem Text="Tall" Value="459"></asp:ListItem>
                                <asp:ListItem Text="Tando Adam" Value="460"></asp:ListItem>
                                <asp:ListItem Text="Tando Allahyar" Value="461"></asp:ListItem>
                                <asp:ListItem Text="Tando Jam" Value="462"></asp:ListItem>
                                <asp:ListItem Text="Tando Mohd Khan" Value="463"></asp:ListItem>
                                <asp:ListItem Text="Tank" Value="464"></asp:ListItem>
                                <asp:ListItem Text="Tarbela" Value="465"></asp:ListItem>
                                <asp:ListItem Text="Tarmatan" Value="466"></asp:ListItem>
                                <asp:ListItem Text="Tarnol" Value="467"></asp:ListItem>
                                <asp:ListItem Text="Taunsa sharif" Value="468"></asp:ListItem>
                                <asp:ListItem Text="Taxila" Value="469"></asp:ListItem>
                                <asp:ListItem Text="Thana Bula Khan" Value="470"></asp:ListItem>
                                <asp:ListItem Text="Thari Mirwah" Value="471"></asp:ListItem>
                                <asp:ListItem Text="Tharo Shah" Value="472"></asp:ListItem>
                                <asp:ListItem Text="Tharparkar" Value="473"></asp:ListItem>
                                <asp:ListItem Text="Thatta" Value="474"></asp:ListItem>
                                <asp:ListItem Text="Theing Jattan More" Value="475"></asp:ListItem>
                                <asp:ListItem Text="Thul" Value="476"></asp:ListItem>
                                <asp:ListItem Text="Tibba Sultanpur" Value="477"></asp:ListItem>
                                <asp:ListItem Text="Timergara" Value="478"></asp:ListItem>
                                <asp:ListItem Text="Tobatek Singh" Value="479"></asp:ListItem>
                                <asp:ListItem Text="Topi" Value="480"></asp:ListItem>
                                <asp:ListItem Text="Toru" Value="481"></asp:ListItem>
                                <asp:ListItem Text="Trinda Mohd Pannah" Value="482"></asp:ListItem>
                                <asp:ListItem Text="Turbat" Value="483"></asp:ListItem>
                                <asp:ListItem Text="Ubaro" Value="484"></asp:ListItem>
                                <asp:ListItem Text="Ugoki" Value="485"></asp:ListItem>
                                <asp:ListItem Text="Ukba" Value="486"></asp:ListItem>
                                <asp:ListItem Text="Umer Kot" Value="487"></asp:ListItem>
                                <asp:ListItem Text="Upper Deval" Value="488"></asp:ListItem>
                                <asp:ListItem Text="Upper Dir" Value="489"></asp:ListItem>
                                <asp:ListItem Text="Usta Mohammad" Value="490"></asp:ListItem>
                                <asp:ListItem Text="Utror" Value="491"></asp:ListItem>
                                <asp:ListItem Text="Vehari" Value="492"></asp:ListItem>
                                <asp:ListItem Text="Village Sunder" Value="493"></asp:ListItem>
                                <asp:ListItem Text="Wah Cantt" Value="494"></asp:ListItem>
                                <asp:ListItem Text="Wahi hassain" Value="495"></asp:ListItem>
                                <asp:ListItem Text="Wan Radha Ram" Value="496"></asp:ListItem>
                                <asp:ListItem Text="Wana" Value="497"></asp:ListItem>
                                <asp:ListItem Text="Warah" Value="498"></asp:ListItem>
                                <asp:ListItem Text="Warburton" Value="499"></asp:ListItem>
                                <asp:ListItem Text="Washuk" Value="500"></asp:ListItem>
                                <asp:ListItem Text="Wazirabad" Value="501"></asp:ListItem>
                                <asp:ListItem Text="Yazman Mandi" Value="502"></asp:ListItem>
                                <asp:ListItem Text="Zahir Pir" Value="503"></asp:ListItem>
                                <asp:ListItem Text="Zhob" Value="504"></asp:ListItem>
                                <asp:ListItem Text="Ziarat" Value="505"></asp:ListItem>
                                <asp:ListItem Text="Islamabad" Value="506"></asp:ListItem>
                            </asp:DropDownList>
                        </div>


                        <div class="form-group">
                        <asp:Label ID="lblCountry" runat="server" CssClass="txtBold" Text="Country:"></asp:Label>
                        <asp:DropDownList ID="DropDownCountry" CssClass="form-control" runat="server">
                            <asp:ListItem Text=""  Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Afghanistan"  Value="0"></asp:ListItem>
                            <asp:ListItem Text="Albania"  Value="1"></asp:ListItem>
                            <asp:ListItem Text="Algeria"  Value="2"></asp:ListItem>
                            <asp:ListItem Text="American Samoa"  Value="3"></asp:ListItem>
                            <asp:ListItem Text="Andorra"  Value="4"></asp:ListItem>
                            <asp:ListItem Text="Angola"  Value="5"></asp:ListItem>
                            <asp:ListItem Text="Anguilla"  Value="6"></asp:ListItem>
                            <asp:ListItem Text="Antigua & Barbuda"  Value="7"></asp:ListItem>
                            <asp:ListItem Text="Argentina"  Value="8"></asp:ListItem>
                            <asp:ListItem Text="Armenia"  Value="9"></asp:ListItem>
                            <asp:ListItem Text="Aruba"  Value="10"></asp:ListItem>
                            <asp:ListItem Text="Australia"  Value="11"></asp:ListItem>
                            <asp:ListItem Text="Austria"  Value="12"></asp:ListItem>
                            <asp:ListItem Text="Azerbaijan"  Value="13"></asp:ListItem>
                            <asp:ListItem Text="Bahamas, The"  Value="14"></asp:ListItem>
                            <asp:ListItem Text="Bahrain"  Value="15"></asp:ListItem>
                            <asp:ListItem Text="Bangladesh"  Value="16"></asp:ListItem>
                            <asp:ListItem Text="Barbados"  Value="17"></asp:ListItem>
                            <asp:ListItem Text="Belarus"  Value="18"></asp:ListItem>
                            <asp:ListItem Text="Belgium"  Value="19"></asp:ListItem>
                            <asp:ListItem Text="Belize"  Value="20"></asp:ListItem>
                            <asp:ListItem Text="Benin"  Value="21"></asp:ListItem>
                            <asp:ListItem Text="Bermuda"  Value="22"></asp:ListItem>
                            <asp:ListItem Text="Bhutan"  Value="23"></asp:ListItem>
                            <asp:ListItem Text="Bolivia"  Value="24"></asp:ListItem>
                            <asp:ListItem Text="Bosnia & Herzegovina"  Value="25"></asp:ListItem>
                            <asp:ListItem Text="Botswana"  Value="26"></asp:ListItem>
                            <asp:ListItem Text="Brazil"  Value="27"></asp:ListItem>
                            <asp:ListItem Text="British Virgin Is."  Value="28"></asp:ListItem>
                            <asp:ListItem Text="Brunei"  Value="29"></asp:ListItem>
                            <asp:ListItem Text="Bulgaria"  Value="30"></asp:ListItem>
                            <asp:ListItem Text="Burkina Faso"  Value="31"></asp:ListItem>
                            <asp:ListItem Text="Burma"  Value="32"></asp:ListItem>
                            <asp:ListItem Text="Burundi"  Value="33"></asp:ListItem>
                            <asp:ListItem Text="Cambodia"  Value="34"></asp:ListItem>
                            <asp:ListItem Text="Cameroon"  Value="35"></asp:ListItem>
                            <asp:ListItem Text="Canada"  Value="36"></asp:ListItem>
                            <asp:ListItem Text="Cape Verde"  Value="37"></asp:ListItem>
                            <asp:ListItem Text="Cayman Islands"  Value="38"></asp:ListItem>
                            <asp:ListItem Text="Central African Rep."  Value="39"></asp:ListItem>
                            <asp:ListItem Text="Chad"  Value="40"></asp:ListItem>
                            <asp:ListItem Text="Chile"  Value="41"></asp:ListItem>
                            <asp:ListItem Text="China"  Value="42"></asp:ListItem>
                            <asp:ListItem Text="Colombia"  Value="43"></asp:ListItem>
                            <asp:ListItem Text="Comoros"  Value="44"></asp:ListItem>
                            <asp:ListItem Text="Congo, Dem. Rep."  Value="45"></asp:ListItem>
                            <asp:ListItem Text="Congo, Repub. of the"  Value="46"></asp:ListItem>
                            <asp:ListItem Text="Cook Islands"  Value="47"></asp:ListItem>
                            <asp:ListItem Text="Costa Rica"  Value="48"></asp:ListItem>
                            <asp:ListItem Text="Cote d'Ivoire"  Value="49"></asp:ListItem>
                            <asp:ListItem Text="Croatia"  Value="50"></asp:ListItem>
                            <asp:ListItem Text="Cuba"  Value="51"></asp:ListItem>
                            <asp:ListItem Text="Cyprus"  Value="52"></asp:ListItem>
                            <asp:ListItem Text="Czech Republic"  Value="53"></asp:ListItem>
                            <asp:ListItem Text="Denmark"  Value="54"></asp:ListItem>
                            <asp:ListItem Text="Djibouti"  Value="55"></asp:ListItem>
                            <asp:ListItem Text="Dominica"  Value="56"></asp:ListItem>
                            <asp:ListItem Text="Dominican Republic"  Value="57"></asp:ListItem>
                            <asp:ListItem Text="East Timor"  Value="58"></asp:ListItem>
                            <asp:ListItem Text="Ecuador"  Value="59"></asp:ListItem>
                            <asp:ListItem Text="Egypt"  Value="60"></asp:ListItem>
                            <asp:ListItem Text="El Salvador"  Value="61"></asp:ListItem>
                            <asp:ListItem Text="Equatorial Guinea"  Value="62"></asp:ListItem>
                            <asp:ListItem Text="Eritrea"  Value="63"></asp:ListItem>
                            <asp:ListItem Text="Estonia"  Value="64"></asp:ListItem>
                            <asp:ListItem Text="Ethiopia"  Value="65"></asp:ListItem>
                            <asp:ListItem Text="Faroe Islands"  Value="66"></asp:ListItem>
                            <asp:ListItem Text="Fiji"  Value="67"></asp:ListItem>
                            <asp:ListItem Text="Finland"  Value="68"></asp:ListItem>
                            <asp:ListItem Text="France"  Value="69"></asp:ListItem>
                            <asp:ListItem Text="French Guiana"  Value="70"></asp:ListItem>
                            <asp:ListItem Text="French Polynesia"  Value="71"></asp:ListItem>
                            <asp:ListItem Text="Gabon"  Value="72"></asp:ListItem>
                            <asp:ListItem Text="Gambia, The"  Value="73"></asp:ListItem>
                            <asp:ListItem Text="Gaza Strip"  Value="74"></asp:ListItem>
                            <asp:ListItem Text="Georgia"  Value="75"></asp:ListItem>
                            <asp:ListItem Text="Germany"  Value="76"></asp:ListItem>
                            <asp:ListItem Text="Ghana"  Value="77"></asp:ListItem>
                            <asp:ListItem Text="Gibraltar"  Value="78"></asp:ListItem>
                            <asp:ListItem Text="Greece"  Value="79"></asp:ListItem>
                            <asp:ListItem Text="Greenland"  Value="80"></asp:ListItem>
                            <asp:ListItem Text="Grenada"  Value="81"></asp:ListItem>
                            <asp:ListItem Text="Guadeloupe"  Value="82"></asp:ListItem>
                            <asp:ListItem Text="Guam"  Value="83"></asp:ListItem>
                            <asp:ListItem Text="Guatemala"  Value="84"></asp:ListItem>
                            <asp:ListItem Text="Guernsey"  Value="85"></asp:ListItem>
                            <asp:ListItem Text="Guinea"  Value="86"></asp:ListItem>
                            <asp:ListItem Text="Guinea-Bissau"  Value="87"></asp:ListItem>
                            <asp:ListItem Text="Guyana"  Value="88"></asp:ListItem>
                            <asp:ListItem Text="Haiti"  Value="89"></asp:ListItem>
                            <asp:ListItem Text="Honduras"  Value="90"></asp:ListItem>
                            <asp:ListItem Text="Hong Kong"  Value="91"></asp:ListItem>
                            <asp:ListItem Text="Hungary"  Value="92"></asp:ListItem>
                            <asp:ListItem Text="Iceland"  Value="93"></asp:ListItem>
                            <asp:ListItem Text="India"  Value="94"></asp:ListItem>
                            <asp:ListItem Text="Indonesia"  Value="95"></asp:ListItem>
                            <asp:ListItem Text="Iran"  Value="96"></asp:ListItem>
                            <asp:ListItem Text="Iraq"  Value="97"></asp:ListItem>
                            <asp:ListItem Text="Ireland"  Value="98"></asp:ListItem>
                            <asp:ListItem Text="Isle of Man"  Value="99"></asp:ListItem>
                            <asp:ListItem Text="Israel"  Value="100"></asp:ListItem>
                            <asp:ListItem Text="Italy"  Value="101"></asp:ListItem>
                            <asp:ListItem Text="Jamaica"  Value="102"></asp:ListItem>
                            <asp:ListItem Text="Japan"  Value="103"></asp:ListItem>
                            <asp:ListItem Text="Jersey"  Value="104"></asp:ListItem>
                            <asp:ListItem Text="Jordan"  Value="105"></asp:ListItem>
                            <asp:ListItem Text="Kazakhstan"  Value="106"></asp:ListItem>
                            <asp:ListItem Text="Kenya"  Value="107"></asp:ListItem>
                            <asp:ListItem Text="Kiribati"  Value="108"></asp:ListItem>
                            <asp:ListItem Text="Korea, North"  Value="109"></asp:ListItem>
                            <asp:ListItem Text="Korea, South"  Value="110"></asp:ListItem>
                            <asp:ListItem Text="Kuwait"  Value="111"></asp:ListItem>
                            <asp:ListItem Text="Kyrgyzstan"  Value="112"></asp:ListItem>
                            <asp:ListItem Text="Laos"  Value="113"></asp:ListItem>
                            <asp:ListItem Text="Latvia"  Value="114"></asp:ListItem>
                            <asp:ListItem Text="Lebanon"  Value="115"></asp:ListItem>
                            <asp:ListItem Text="Lesotho"  Value="116"></asp:ListItem>
                            <asp:ListItem Text="Liberia"  Value="117"></asp:ListItem>
                            <asp:ListItem Text="Libya"  Value="118"></asp:ListItem>
                            <asp:ListItem Text="Liechtenstein"  Value="119"></asp:ListItem>
                            <asp:ListItem Text="Lithuania"  Value="120"></asp:ListItem>
                            <asp:ListItem Text="Luxembourg"  Value="121"></asp:ListItem>
                            <asp:ListItem Text="Macau"  Value="122"></asp:ListItem>
                            <asp:ListItem Text="Macedonia"  Value="123"></asp:ListItem>
                            <asp:ListItem Text="Madagascar"  Value="124"></asp:ListItem>
                            <asp:ListItem Text="Malawi"  Value="125"></asp:ListItem>
                            <asp:ListItem Text="Malaysia"  Value="126"></asp:ListItem>
                            <asp:ListItem Text="Maldives"  Value="127"></asp:ListItem>
                            <asp:ListItem Text="Mali"  Value="128"></asp:ListItem>
                            <asp:ListItem Text="Malta"  Value="129"></asp:ListItem>
                            <asp:ListItem Text="Marshall Islands"  Value="130"></asp:ListItem>
                            <asp:ListItem Text="Martinique"  Value="131"></asp:ListItem>
                            <asp:ListItem Text="Mauritania"  Value="132"></asp:ListItem>
                            <asp:ListItem Text="Mauritius"  Value="133"></asp:ListItem>
                            <asp:ListItem Text="Mayotte"  Value="134"></asp:ListItem>
                            <asp:ListItem Text="Mexico"  Value="135"></asp:ListItem>
                            <asp:ListItem Text="Micronesia, Fed. St."  Value="136"></asp:ListItem>
                            <asp:ListItem Text="Moldova"  Value="137"></asp:ListItem>
                            <asp:ListItem Text="Monaco"  Value="138"></asp:ListItem>
                            <asp:ListItem Text="Mongolia"  Value="139"></asp:ListItem>
                            <asp:ListItem Text="Montserrat"  Value="140"></asp:ListItem>
                            <asp:ListItem Text="Morocco"  Value="141"></asp:ListItem>
                            <asp:ListItem Text="Mozambique"  Value="142"></asp:ListItem>
                            <asp:ListItem Text="Namibia"  Value="143"></asp:ListItem>
                            <asp:ListItem Text="Nauru"  Value="144"></asp:ListItem>
                            <asp:ListItem Text="Nepal"  Value="145"></asp:ListItem>
                            <asp:ListItem Text="Netherlands"  Value="146"></asp:ListItem>
                            <asp:ListItem Text="Netherlands Antilles"  Value="147"></asp:ListItem>
                            <asp:ListItem Text="New Caledonia"  Value="148"></asp:ListItem>
                            <asp:ListItem Text="New Zealand"  Value="149"></asp:ListItem>
                            <asp:ListItem Text="Nicaragua"  Value="150"></asp:ListItem>
                            <asp:ListItem Text="Niger"  Value="151"></asp:ListItem>
                            <asp:ListItem Text="Nigeria"  Value="152"></asp:ListItem>
                            <asp:ListItem Text="N. Mariana Islands"  Value="153"></asp:ListItem>
                            <asp:ListItem Text="Norway"  Value="154"></asp:ListItem>
                            <asp:ListItem Text="Oman"  Value="155"></asp:ListItem>
                            <asp:ListItem Text="Pakistan"  Value="156"></asp:ListItem>
                            <asp:ListItem Text="Palau"  Value="157"></asp:ListItem>
                            <asp:ListItem Text="Panama"  Value="158"></asp:ListItem>
                            <asp:ListItem Text="Papua New Guinea"  Value="159"></asp:ListItem>
                            <asp:ListItem Text="Paraguay"  Value="160"></asp:ListItem>
                            <asp:ListItem Text="Peru"  Value="161"></asp:ListItem>
                            <asp:ListItem Text="Philippines"  Value="162"></asp:ListItem>
                            <asp:ListItem Text="Poland"  Value="163"></asp:ListItem>
                            <asp:ListItem Text="Portugal"  Value="164"></asp:ListItem>
                            <asp:ListItem Text="Puerto Rico"  Value="165"></asp:ListItem>
                            <asp:ListItem Text="Qatar"  Value="166"></asp:ListItem>
                            <asp:ListItem Text="Reunion"  Value="167"></asp:ListItem>
                            <asp:ListItem Text="Romania"  Value="168"></asp:ListItem>
                            <asp:ListItem Text="Russia"  Value="169"></asp:ListItem>
                            <asp:ListItem Text="Rwanda"  Value="170"></asp:ListItem>
                            <asp:ListItem Text="Saint Helena"  Value="171"></asp:ListItem>
                            <asp:ListItem Text="Saint Kitts & Nevis"  Value="172"></asp:ListItem>
                            <asp:ListItem Text="Saint Lucia"  Value="173"></asp:ListItem>
                            <asp:ListItem Text="St Pierre & Miquelon"  Value="174"></asp:ListItem>
                            <asp:ListItem Text="Saint Vincent and the Grenadines"  Value="175"></asp:ListItem>
                            <asp:ListItem Text="Samoa"  Value="176"></asp:ListItem>
                            <asp:ListItem Text="San Marino"  Value="177"></asp:ListItem>
                            <asp:ListItem Text="Sao Tome & Principe"  Value="178"></asp:ListItem>
                            <asp:ListItem Text="Saudi Arabia"  Value="179"></asp:ListItem>
                            <asp:ListItem Text="Senegal"  Value="180"></asp:ListItem>
                            <asp:ListItem Text="Serbia"  Value="181"></asp:ListItem>
                            <asp:ListItem Text="Seychelles"  Value="182"></asp:ListItem>
                            <asp:ListItem Text="Sierra Leone"  Value="183"></asp:ListItem>
                            <asp:ListItem Text="Singapore"  Value="184"></asp:ListItem>
                            <asp:ListItem Text="Slovakia"  Value="185"></asp:ListItem>
                            <asp:ListItem Text="Slovenia"  Value="186"></asp:ListItem>
                            <asp:ListItem Text="Solomon Islands"  Value="187"></asp:ListItem>
                            <asp:ListItem Text="Somalia"  Value="188"></asp:ListItem>
                            <asp:ListItem Text="South Africa"  Value="189"></asp:ListItem>
                            <asp:ListItem Text="Spain"  Value="190"></asp:ListItem>
                            <asp:ListItem Text="Sri Lanka"  Value="191"></asp:ListItem>
                            <asp:ListItem Text="Sudan"  Value="192"></asp:ListItem>
                            <asp:ListItem Text="Suriname"  Value="193"></asp:ListItem>
                            <asp:ListItem Text="Swaziland"  Value="194"></asp:ListItem>
                            <asp:ListItem Text="Sweden"  Value="195"></asp:ListItem>
                            <asp:ListItem Text="Switzerland"  Value="196"></asp:ListItem>
                            <asp:ListItem Text="Syria"  Value="197"></asp:ListItem>
                            <asp:ListItem Text="Taiwan"  Value="198"></asp:ListItem>
                            <asp:ListItem Text="Tajikistan"  Value="199"></asp:ListItem>
                            <asp:ListItem Text="Tanzania"  Value="200"></asp:ListItem>
                            <asp:ListItem Text="Thailand"  Value="201"></asp:ListItem>
                            <asp:ListItem Text="Togo"  Value="202"></asp:ListItem>
                            <asp:ListItem Text="Tonga"  Value="203"></asp:ListItem>
                            <asp:ListItem Text="Trinidad & Tobago"  Value="204"></asp:ListItem>
                            <asp:ListItem Text="Tunisia"  Value="205"></asp:ListItem>
                            <asp:ListItem Text="Turkey"  Value="206"></asp:ListItem>
                            <asp:ListItem Text="Turkmenistan"  Value="207"></asp:ListItem>
                            <asp:ListItem Text="Turks & Caicos Is"  Value="208"></asp:ListItem>
                            <asp:ListItem Text="Tuvalu"  Value="209"></asp:ListItem>
                            <asp:ListItem Text="Uganda"  Value="210"></asp:ListItem>
                            <asp:ListItem Text="Ukraine"  Value="211"></asp:ListItem>
                            <asp:ListItem Text="United Arab Emirates"  Value="212"></asp:ListItem>
                            <asp:ListItem Text="United Kingdom"  Value="213"></asp:ListItem>
                            <asp:ListItem Text="United States"  Value="214"></asp:ListItem>
                            <asp:ListItem Text="Uruguay"  Value="215"></asp:ListItem>
                            <asp:ListItem Text="Uzbekistan"  Value="216"></asp:ListItem>
                            <asp:ListItem Text="Vanuatu"  Value="217"></asp:ListItem>
                            <asp:ListItem Text="Venezuela"  Value="218"></asp:ListItem>
                            <asp:ListItem Text="Vietnam"  Value="219"></asp:ListItem>
                            <asp:ListItem Text="Virgin Islands"  Value="220"></asp:ListItem>
                            <asp:ListItem Text="Wallis and Futuna"  Value="221"></asp:ListItem>
                            <asp:ListItem Text="West Bank"  Value="222"></asp:ListItem>
                            <asp:ListItem Text="Western Sahara"  Value="223"></asp:ListItem>
                            <asp:ListItem Text="Yemen"  Value="224"></asp:ListItem>
                            <asp:ListItem Text="Zambia"  Value="225"></asp:ListItem>
                            <asp:ListItem Text="Zimbabwe"  Value="226"></asp:ListItem>
                            </asp:DropDownList>
                            </div>

                    <%--<div class="form-group">
                        <div class="text-Design">
                            <asp:Label runat="server"  CssClass="txtBold">Country</asp:Label>
                        </div>
                        <asp:TextBox runat="server" ID="txtCountry" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCountry" Display="Dynamic" CssClass="field-validation-error alert alert-danger" ErrorMessage="name required" Text="*" SetFocusOnError="true" />
                    </div>--%>

                    <div class="form-group">
                        <asp:Label ID="lblSpeciality" runat="server" CssClass="txtBold" Text="Speciality:"></asp:Label>
                        <asp:DropDownList ID="DropDownSpeciality" CssClass="form-control" runat="server">
                                                        <asp:ListItem Text="Dermatologist" Value="0"></asp:ListItem>
                                                        <asp:ListItem Text="Cosmetologist" Value="1"></asp:ListItem>
                                                        <asp:ListItem Text="Aesthetic Physician" Value="2"></asp:ListItem>
                                                        <asp:ListItem Text="Aesthetic Surgeon" Value="3"></asp:ListItem>
                                                        <asp:ListItem Text="Cosmetic Surgeon" Value="4"></asp:ListItem>
                                                        <asp:ListItem Text="Cosmetic Physician" Value="5"></asp:ListItem>
                                                        <asp:ListItem Text="Plastic Surgeon" Value="6"></asp:ListItem>
                                                        <asp:ListItem Text="Gynaecologist" Value="7"></asp:ListItem>
                                                        <asp:ListItem Text="Trichologist" Value="8"></asp:ListItem>
                                                        <asp:ListItem Text="General Surgeon" Value="9"></asp:ListItem>
                                                        <asp:ListItem Text="Paediatric Surgeon" Value="10"></asp:ListItem>
                                                        <asp:ListItem Text="Head and Neck Surgeon" Value="11"></asp:ListItem>
                                                        <asp:ListItem Text="Maxillofacial Surgeon" Value="12"></asp:ListItem>
                                                        <asp:ListItem Text="Cardiac Surgeon" Value="13"></asp:ListItem>
                                                        <asp:ListItem Text="Dental Surgeon" Value="14"></asp:ListItem>
                                                        <asp:ListItem Text="Hair Restoration Surgeon" Value="15"></asp:ListItem>
                                                        <asp:ListItem Text="Cardiologist" Value="16"></asp:ListItem>
                                                        <asp:ListItem Text="Facial Plastic Surgeon" Value="17"></asp:ListItem>
                                                        <asp:ListItem Text="Radiologist" Value="17"></asp:ListItem>
                                                        <asp:ListItem Text="Dentist" Value="18"></asp:ListItem>
                                                        <asp:ListItem Text="Anatomist" Value="19"></asp:ListItem>
                                                        <asp:ListItem Text="Anatomistpathologist" Value="20"></asp:ListItem>
                                                        <asp:ListItem Text="Anesthesiologist" Value="21"></asp:ListItem>
                                                        <asp:ListItem Text="Endocrinologist" Value="22"></asp:ListItem>
                                                        <asp:ListItem Text="Facial plastic Surgeon" Value="23"></asp:ListItem>
                                                        <asp:ListItem Text="Neurologist" Value="24"></asp:ListItem>
                                                        <asp:ListItem Text="Nutritionist" Value="25"></asp:ListItem>
                                                        <asp:ListItem Text="Oculoplastic Sugeon" Value="26"></asp:ListItem>
                                                        <asp:ListItem Text="Oncologist" Value="27"></asp:ListItem>
                                                        <asp:ListItem Text="Ophthalmologist" Value="28"></asp:ListItem>
                                                        <asp:ListItem Text="Orthopedist" Value="29"></asp:ListItem>
                                                        <asp:ListItem Text="Psychiatrist" Value="30"></asp:ListItem>
                                                        <asp:ListItem Text="Stomatologist" Value="31"></asp:ListItem>
                                                        <asp:ListItem Text="Rheumatogist" Value="32"></asp:ListItem>
                                                        <asp:ListItem Text="Others" Value="33"></asp:ListItem>
                        </asp:DropDownList>
                    </div>



                    <div class="form-group">
                        <div class="text-Design">
                            <asp:Label runat="server" AssociatedControlID="txtPhoneNumber" CssClass="txtBold">Contact Number</asp:Label>
                        </div>
                        <asp:TextBox runat="server" ID="txtPhoneNumber" CssClass="form-control" TextMode="Number" placeholder="923001234567" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="p-l-20" ErrorMessage="Mobile Number is not valid" ControlToValidate="txtPhoneNumber" max="12" ForeColor="Red" ValidationExpression="((\(\w{2}\) ?)|(\w{2}))?\d{3}\d{7}">
                        </asp:RegularExpressionValidator>

                    </div>
                
                <%--<div class="form-group">
                    <div class="text-Design">
<%--                        <asp:Label runat="server" AssociatedControlID="Password" Font-Size="Small" >At least One Special Charactar, One Digit and On Upper Case:example(Ali@123)</asp:Label>
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="txtBold">Password (example: Ali@123)</asp:Label>
                    </div>
                    <asp:TextBox runat="server" ID="Password" TextMode="Password"  CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                        CssClass="text-danger" ErrorMessage="The password field is required." />

                </div>
                <div class="form-group">
                    <div class="text-Design">
                       <%--<asp:Label runat="server" AssociatedControlID="Password" CssClass="txtBold">One Special Charactar, One Digit and On Upper Case:example(Ali@123)</asp:Label>
                        <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="txtBold">Confirm password</asp:Label>
                    </div>
                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />

                </div>--%>
                <br />
                <div class="form-group">
                    
                <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" Text="Validate" ImageUrl="~/Images/Sign-Up-Blue.png" Width="120px" />

                    <%--<asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />--%>
            
                </div>

            </div>
            <div class="col-md-3"></div>
            </div>
        </div>
        </div>
        <script>
            $(document).ready(function () { $("#DropDownCity").select2(); });
        </script>
</asp:Content>
