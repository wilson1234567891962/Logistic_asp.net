<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <meta http-equiv="cache-control" content="no-cache" />
    <link href="styles.css" rel="stylesheet" type="text/css" />
    <script src="scripts/principal.js" type="text/javascript"></script>
</head>

<body>
    <form id="form1" runat="server">
        <div class="header">
            <img  class="image" src="../images/logo.jpg"/>
            <div class="header-right">
                <a class="active" id="home"
                    onclick="applyStyle('home', 'about', 'client'); hideOrShowContainer('container_home', 'container_about', 'container_client'); ">Inicio</a>
                <a id="about"
                    onclick="applyStyle('about', 'home', 'client'); hideOrShowContainer('container_about', 'container_home', 'container_client');">Nosotros</a>
                <a id="client"
                    onclick="applyStyle('client', 'home', 'about'); hideOrShowContainer('container_client', 'container_home', 'container_about');">Clientes</a>
            </div>
        </div>

        <div id="container_home" style='text-align: center;  padding-top: 32px;' >
            <iframe style="width: calc(100% - 80px); height: 500px;" src="https://www.youtube.com/embed/tgbNymZ7vqY">
            </iframe>
        </div>

        <div id="container_about">
           <div class="title-about" id="title-about">
               <span>ACERCA DE NOSOTROS</span>
           </div>
           <div  class="subtitle-about" id="subtitle-about">
               <span>Nos enorgullece seguir moviendo el mundo por 37 años, por eso compartimos contigo la evolución de nuestra marca a través de los diferentes quinquenios. Servientrega Una Causa País.</span>
           </div>
            <div>
               <img class="logo-about" id="logo-about" src="../images/logo_imagen.jpg" alt =""/>
           </div>
        </div>

        <div id="container_client"  class="container_table">
            <div class="table">
                <asp:GridView ID="data" runat="server" AutoGenerateColumns="false" CssClass="table">
                    <Columns>
                        <asp:BoundField DataField="indicate" HeaderText="ID" />
                        <asp:BoundField DataField="name" HeaderText="Nombre" />
                        <asp:BoundField DataField="surname" HeaderText="Apellido" />
                        <asp:BoundField DataField="age" HeaderText="Edad" />
                        <asp:BoundField DataField="occupation" HeaderText="Ocupacion" />
                    </Columns>
                </asp:GridView>
            </div>

            <div class="container-options">
                <button type="button" class="btn btn-primary"
                    onclick="showPopUp(); disabledOption('DELETE_REGISTER', 'INSERTE_REGISTER'); enabledItem('UPDATE_REGISTER'); resetFields(); disabledButton('btnUpdate');">
                    Actualizar</button>
                <button type="button" class="btn btn-primary"
                    onclick="showPopUp(); disabledOption('UPDATE_REGISTER', 'INSERTE_REGISTER'); enabledItem('DELETE_REGISTER'); hideRegister(); resetFields(); disabledButton('btnDelete');">
                    Eliminar</button>
                <button type="button" class="btn btn-primary"
                    onclick="showPopUp(); disabledOption('UPDATE_REGISTER', 'DELETE_REGISTER'); enabledItem('INSERTE_REGISTER'); hideIdRegister(); resetFields(); disabledButton('btnInsert');">
                    Insertar</button>
            </div>
        </div>

        <div id="myModal" class="modal">

            <!-- Modal content -->
            <div class="modal-content">
                <div class="title">
                    <span>Datos del cliente</span>
                </div>
                <hr />
                <div class="bd-example">
                    <div class="form-group" id="ID_CLIENT">
                        <label for="exampleInputEmail1">ID</label>
                        <input type="number" class="form-control" onkeyup="checkItem()"  onselectstart="return false" onpaste="return false;"  ondrag="return false" ondrop="return false" autocomplete="off" id="ID_EMPLOYMENT" aria-describedby="emailHelp" runat="server" placeholder="Por favor digite el id" />
                    </div>
                    <div class="form-group" id="NAME_CLIENT">
                        <label for="exampleInputEmail1">Nombre</label>
                        <input type="text" class="form-control" id="NAME_EMPLOYMENT" onkeyup="checkItem()"  aria-describedby="emailHelp" onselectstart="return false" onpaste="return false;"  ondrag="return false" ondrop="return false" autocomplete="off" 
                            placeholder="Por favor digite el nombre del empleado" runat="server" maxlength="30" />
                    </div>
                    <div class="form-group" id="SURNAME_CLIENT">
                        <label for="exampleInputEmail1">Apellido</label>
                        <input type="text" class="form-control" onkeyup="checkItem()" id="SURNAME_EMPLOYMENT" aria-describedby="emailHelp" onselectstart="return false" onpaste="return false;"  ondrag="return false" ondrop="return false" autocomplete="off" 
                            placeholder="Por favor digite el apellido" runat="server" maxlength="30" />
                    </div>
                </div>
                <div class="form-group" id="AGE_CLIENT">
                    <label for="exampleInputEmail1">Edad</label>
                    <input type="text" class="form-control" onkeyup="checkItem()" id="AGE_EMPLOYMENT" aria-describedby="emailHelp" onselectstart="return false" onpaste="return false;"  ondrag="return false" ondrop="return false" autocomplete="off" 
                        placeholder="Por favor digite la edad" runat="server" maxlength="2" />
                </div>

                <div class="form-group" id="OCCUPATION_CLIENT">
                    <label for="exampleInputEmail1">Cargo</label>
                    <input type="text" class="form-control" onkeyup="checkItem()" id="OCCUPATION_EMPLOYMENT" aria-describedby="emailHelp" onselectstart="return false" onpaste="return false;"  ondrag="return false" ondrop="return false" autocomplete="off" 
                        placeholder="Por favor digite el cargo" runat="server" maxlength="30" />
                </div>

                <div class="container-options" id="UPDATE_REGISTER">
                    <asp:Button runat="server" ID="btnUpdate" Text="Actualizar" class="btn btn-primary btn-disabled" OnClick="updateRegister"  />
                    <button type="button" class="btn btn-primary" onclick="hidePopUP(); resetPopUpStates(); resetFields();">Cancelar</button>
                </div>

                <div class="container-options" id="DELETE_REGISTER">
                    <asp:Button runat="server" ID="btnDelete" Text="Eliminar" class="btn btn-primary btn-disabled" OnClick="deleteRegister"  />
                    <button type="button" class="btn btn-primary" onclick="hidePopUP(); resetPopUpStates(); resetFields();">Cancelar</button>
                </div>

                <div class="container-options" id="INSERTE_REGISTER">
                    <asp:Button runat="server" ID="btnInsert" Text="Insertar" class="btn btn-primary btn-disabled" OnClick="insertRegister"  />
                    <button type="button" class="btn btn-primary" onclick="hidePopUP(); resetPopUpStates(); resetFields();">Cancelar</button>
                </div>

            </div>

        </div>

        <div>
            <footer class="page-footer">


                <div class="footer-copyright text-center py-3">
                    <span>© 2020 Copyright:</span>
                    <a href="https://umb.edu.co/" class="text-link">Universidad Manuela Beltran</a>
                </div>


            </footer>
        </div>
    </form>
    <script>
        applyStyle('home', 'about', 'client');
        hideOrShowContainer('container_home', 'container_about', 'container_client');
    </script>

</body>

</html>
