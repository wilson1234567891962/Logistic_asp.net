<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title></title>
  <link href="styles.css" rel="stylesheet" type="text/css" />
  <script src="scripts/principal.js" type="text/javascript"></script>
</head>

<body>
  <form id="form1" runat="server">
    <div class="header">
      <a href="#default" class="logo">Transporting S.A</a>
      <div class="header-right">
        <a class="active" id="consult"
          onclick="applyStyle('consult', 'about', 'mission', 'client', 'container_table'); hideOrShowContainer('container_table', 'container_about', 'container_mission', 'container_client'); ">Consultar</a>
        <a id="about"
          onclick="applyStyle('about', 'consult', 'mission', 'client'); hideOrShowContainer('container_about', 'container_table', 'container_mission', 'container_client');">Nosotros</a>
        <a id="mission"
          onclick="applyStyle('mission', 'consult', 'about', 'client'); hideOrShowContainer('container_mission', 'container_table', 'container_about', 'container_client');">Mision</a>
        <a id="client"
          onclick="applyStyle('client', 'consult', 'about', 'mission'); hideOrShowContainer('container_client', 'container_table', 'container_about', 'container_mission');">Clientes</a>
      </div>
    </div>

    <div id="container_table" class="container_table">

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
          onclick="showPopUp(); disabledOption('DELETE_REGISTER', 'INSERTE_REGISTER'); enabledItem('UPDATE_REGISTER'); resetFields();">Actualizar</button>
        <button type="button" class="btn btn-primary" 
          onclick="showPopUp(); disabledOption('UPDATE_REGISTER', 'INSERTE_REGISTER'); enabledItem('DELETE_REGISTER'); hideRegister(); resetFields();">Eliminar</button>
        <button type="button" class="btn btn-primary"
             onclick="showPopUp(); disabledOption('UPDATE_REGISTER', 'DELETE_REGISTER'); enabledItem('INSERTE_REGISTER'); hideIdRegister(); resetFields();">Insertar</button>
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
            <input type="number" class="form-control" id="ID_EMPLOYMENT" aria-describedby="emailHelp"  runat="server" placeholder="Por favor digite el id" />
          </div>
          <div class="form-group" id="NAME_CLIENT">
            <label for="exampleInputEmail1">Nombre</label>
            <input type="text" class="form-control" id="NAME_EMPLOYMENT" aria-describedby="emailHelp"
              placeholder="Por favor digite el nombre del empleado"  runat="server" maxlength="30" />
          </div>
          <div class="form-group"  id="SURNAME_CLIENT">
            <label for="exampleInputEmail1">Apellido</label>
            <input type="text" class="form-control" id="SURNAME_EMPLOYMENT" aria-describedby="emailHelp"
              placeholder="Por favor digite el apellido" runat="server" maxlength="30"/>
          </div>
        </div>
        <div class="form-group"  id="AGE_CLIENT">
          <label for="exampleInputEmail1">Edad</label>
          <input type="text" class="form-control" id="AGE_EMPLOYMENT" aria-describedby="emailHelp"
            placeholder="Por favor digite la edad"  runat="server" maxlength="2" />
        </div>

        <div class="form-group" id="OCCUPATION_CLIENT">
          <label for="exampleInputEmail1">Cargo</label>
          <input type="text" class="form-control" id="OCCUPATION_EMPLOYMENT" aria-describedby="emailHelp"
            placeholder="Por favor digite el cargo"  runat="server" maxlength="30" />
        </div>

        <div class="container-options" id="UPDATE_REGISTER">
            <asp:Button runat="server" id="btnLogin" Text="Actualizar" class="btn btn-primary"  OnClick="updateRegister"  />
            <button type="button" class="btn btn-primary" onclick="hidePopUP(); resetPopUpStates(); resetFields();">Cancelar</button>
        </div>

        <div class="container-options" id="DELETE_REGISTER">
          <asp:Button runat="server" id="Button2" Text="Eliminar" class="btn btn-primary"  OnClick="deleteRegister"  />
          <button type="button" class="btn btn-primary" onclick="hidePopUP(); resetPopUpStates(); resetFields();">Cancelar</button>
        </div>

        <div class="container-options" id="INSERTE_REGISTER">
          <asp:Button runat="server" id="Button1" Text="Insertar" class="btn btn-primary"  OnClick="insertRegister"  />
          <button type="button" class="btn btn-primary" onclick="hidePopUP(); resetPopUpStates(); resetFields();">Cancelar</button>
        </div>

      </div>

    </div>

    <div id="container_about">
      <p>A2</p>
    </div>

    <div id="container_mission">
      <p>A3</p>
    </div>


    <div id="container_client">
      <p>A4</p>
    </div>

    <div>
      <footer class="page-footer">


        <div class="footer-copyright text-center py-3">
          <span>© 2020 Copyright:</span>
          <a href="https://umb.edu.co/" class="text-link"> Universidad Manuela Beltran</a>
        </div>


      </footer>
    </div>
  </form>
  <script>
    applyStyle('consult', 'about', 'mission', 'client', 'container_table');
    hideOrShowContainer('container_table', 'container_about', 'container_mission', 'container_client');
  </script>

</body>

</html>