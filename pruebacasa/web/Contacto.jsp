<%-- 
    Document   : Contacto
    Created on : 01-may-2017, 21:51:38
    Author     : seperdom
--%>

<%@page import="Dominio.MensajeChat"%>
<%@page import="Dominio.Chat"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="description" content="Consultas a trav&eacute;s de nuestro chat o enviar mensaje por correo">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		<link rel="stylesheet" href="style.css">
       
        <link rel="stylesheet" href="css/prettyPhoto.css">
        <link rel="stylesheet" href="css/modal.css" />
        <link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
       
		
		
		 <script src="/Scripts/jquery-1.8.2.min.js" ></script>
    <script src="/Scripts/jquery.signalR-1.0.0.js"></script>
    </head>
    <body>
        <div id="site-content">
			
			<header class="site-header">
				<div class="container" >
					<a id="branding" href="Default.aspx">
						
						<h1 class="site-title">Casa<span style=" color:#fff">Rest<img src="./images/onlinelogomaker-030716-1312.png" alt="Company Logo" class="logo"/></span></h1>
					</a>

					<nav class="main-navigation">
						<button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
						<ul class="menu">
							<li class="menu-item "><a href="index.jsp">Home</a></li>
							<li class="menu-item "><a href="./menuController">Men&uacute; a la Carta</a></li>
							<li class="menu-item"><a href="./Catalogo">Cat&aacute;logo</a></li>
							<li class="menu-item"><a href="Envios.jsp">Env&iacute;os</a></li>
							<li class="menu-item current-menu-item"><a href="./Contacto">Contacto</a></li>
                            <li class="menu-item"><a href="Nosotros.jsp">Nosotros</a></li>
                             <li class="menu-item "><a href="javascript:modal('modal1');" title="Ingresar/Registrate">
                                        <img src="images/log.png" alt="Ingresar/Registrate" class="logo" style="height: 22px; width: 22px;"/>
                                        </a></li>
						</ul>
					</nav>
                    
					<nav class="mobile-navigation"></nav>
                    
				</div>
                
			</header> <!-- .site-header -->

                        <form >
            <main class="main-content">
				
                <!-- Modal-->
                 <div class="modal" id="modal1" >

	<div class="flotante" id="modal1">
		<div class="flotante-encabezado">
		<a href='javascript:void(0);' onclick='document.getElementById(&apos;modal1&apos;).style.display="none";'><span class="flotante-cerrar"  id="modal1" >&times;</span></a>
		<h4>Ingresar</h4>
		</div>
				<div class="flotante-contenido">
				<div  style="  background-color:#4267B2;border-radius: 5px; margin-left: auto; margin-right:auto; text-align:center"   >
          <image ID="Image3" runat="server"  ImageUrl="./images/FB-f-Logo__blue_29-min.png" ImageAlign="Middle"  />
           <button  ID="Button1"  class="button-face"  runat="server" 
               BorderStyle="None"  BackColor="#4267B2"  Text="Ingresar con Facebook"   
               ForeColor="White" onclick="btnIngresarFace_Click" />
        </div><br /> 
        <div  style=" text-align:center; font-size:small; margin-bottom:4px">
          O ingresar con tu cuenta
           </div>
           <div class="formulario-grupo">
       <input id="txtEmailLog" type="text"  placeholder="Email" runat="server"  /><label id="lblErrorEmailLog" runat="server" visible="true" style=" color:Red; font-size:small" ></label>

       </div>

       <div class="formulario-grupo">
       <input type="password" runat="server" id="txtPassLog" placeholder="Contraseña" value=""  onclick="return txtPassLog_onclick()" /><label id="lblerrorPassLog" runat="server" visible="true" style=" color:Red; font-size:small" ></label>
         </div> 
				</div>  <br />
               <div  style=" text-align:center">        
        <link ID="lbntCambioPass"  ForeColor="#018B41" Font-Bold="true"  runat="server" onclick="lbntCambioPass_Click"  Text="¿Olvidaste tu Contraseña?" /><label id="lblPass" runat="server" visible="true" style=" color:Black; font-size:small;"  ></label>
   </div>
		<div class="flotante-pie">
         
   <div class="row">
   <div style="font-size:small; text-align:center; font-weight:bold; color:#000">No ten&eacute;s cuenta? <a id="A1" href='javascript:void(0);' onclick='document.getElementById(&apos;modal1&apos;).style.display="none";document.getElementById(&apos;divRegistro&apos;).style.display="block";'   style="color:#c42e02;font-size:larger">Registrate</a></div><br />
   </div>
		<button runat="server" ID="btnIngresar"  class="boton boton-verde" onclick="btnIngresar_Click" Text="Ingresar" />
		</div>
	</div>
    
<div class="flotante-fondo" id="modal1"></div>
</div>

<div class="modal" id="divRegistro" >

	        <div class="flotante" id="divRegistro">
		    <div class="flotante-encabezado">
		    <a href='javascript:void(0);' onclick='document.getElementById(&apos;divRegistro&apos;).style.display="none";'><span class="flotante-cerrar"  id="divRegistro" >&times;</span></a>
		    <h4>Registrarme</h4>
		    </div>
		    <div class="flotante-contenido">		
            <div class="formulario-grupo">
            <input type="text" runat="server"  placeholder="Nombre" value="" field-error="El campo Nombre no puede estar vacio" id="txtNombreReg"/><label id="lblErrorNomReg" runat="server" visible="true" style=" color:Red; font-size:small" ></label>
            </div>
       
            <div class="formulario-grupo">
            <input type="text" runat="server" placeholder="Email" value="" field-error="Debes ingresar un email válido" id="txtEmailReg"/><label id="lblErrorMailReg" runat="server" visible="true" style=" color:Red; font-size:small" ></label>
            </div>

            <div class="formulario-grupo">
            <input type="text" runat="server" placeholder="Tel&eacute;fono" value="" field-error="El campo Nombre no puede estar vacio" id="txtTelReg"/><label id="lblErrorTelReg" runat="server" visible="true" style=" color:Red; font-size:small" ></label> 
 
            </div>

            <div class="formulario-grupo">
            <input type="password" runat="server" placeholder="Contraseña" value="" field-error="La contraseña debe tener más de 5 caracteres" id="txtPassReg"/><label id="lblErrorPassReg" runat="server" visible="true" style=" color:Red; font-size:small" ></label>
                </div>
                <div class="formulario-grupo">
            <input type="text" runat="server" placeholder="Direcci&oacute;n" value="" field-error="El campo Nombre no puede estar vacio" id="txtDireccion"/><label id="lblErrorDirReg" runat="server" visible="true" style=" color:Red; font-size:small" ></label> 
 
            </div>
            </div>

            <div class="flotante-pie">
            <button Text="Registrarme" class="button-2" runat="server" ID="btnRegistro" BackColor="#779f02" 
                    BorderStyle="None" ForeColor="White" onclick="btnRegistro_Click" />
            </div>
            </div>

            <div class="flotante-fondo" id="divRegistro"></div>
         
    </div>
                <!-- finModal-->

				<div class="fullwidth-block content">
					<div class="container" >
						
						<div class="row">

							<div class="col-md-5" style=" background:#404040">
								<h2 class="seccion-title" style=" color:#fff">Consultas online a trav&eacute;s de nuestro Chat</h2>
                                

                                          
       
                                                                <% 
                                                                Chat chat=(Chat)request.getSession().getAttribute("chat");
                                                                String idS=session.getId();
                                                                %>          
                                <div class="subscribe-form">
						            
                                    
                                    <div id="divChat"    style=" border:2px; width:100%; height:400px; border-color:#fff; overflow:auto; border-style:solid">
                                        <% if(chat!=null&&chat.getListaChats().size()>0) for(MensajeChat msj:chat.getListaChats()){%>
                                        
                                            <%if(msj.getEmisor().equals(idS)){%>
                                            <div class="triangle-border left"><%= msj.getMensaje()%></div>
                                            <%}%>
                                            <% if(msj.getDestinatario().equals(idS)){%>
                                            <div class="triangle-border right"><%= msj.getMensaje()%></div>
                                            <%}%>
                                            <%}%>
                                       
                                        
                                    </div>
                                        &nbsp;<input id='txtUsuario' name="txtUsuario"  type="text"  placeholder="Ingres&aacute; tu consulta..." /><input type="submit"  id="btnChat"  name="btnChat" value="Enviar chat" BorderStyle="None"   
                                            />
						            
					            </div>
                                
                                <address>
										<strong>Casa Rest&oacute;.</strong>
										
										<span>El Pinar, Uruguay<a href="tel:930098891">099 000 000</a></span>
										
									</address>
							</div>
							<div class="col-md-6 col-md-offset-1">
								<div class="map-container" >
									<div class="map">
                                    <h2 class="seccion-title" >Env&iacute;anos tu consulta o sugerencia v&iacute;a Email</h2>
                                    <form action="#" class="contact-form">
									<input type="text" id="txtNombre" runat="server" placeholder="Nombre...">
									<input type="text" id="txtMail" runat="server" placeholder="Email...">
									<input type="text" id="txtAsunto" runat="server" placeholder="Asunto...">
									<textarea name="" id="message" runat="server" placeholder="Mensaje..."></textarea>
									<div class="text-right">
										<input ID="btnEnviarMail"  type="submit"  value="Enviar Mensaje" 
                                            onclick="btnEnviarMail_Click" />
									</div>
								</form>
                                
                                    </div>
									
								</div>
                                
							</div>
						</div>
					</div>
				</div>

			</main> <!-- .main-content -->
</form>
			<footer class="site-footer">
				<div class="container">
					
					<div class="social-links">
						<a href="#"><i ></i></a>
						<a href="javascript:postear('fondoLogo','Casa Rest&oacute;','Comida a domicilio. Cocina tradicional y moderna, cocina vegetariana.')"><i class="fa fa-facebook"></i></a>
						<a href="javascript:shareTwitter('fondoLogo','Casa Rest&oacute;','Comida a domicilio. Cocina tradicional y moderna, cocina vegetariana.')"><i class="fa fa-twitter"></i></a>
						<a href="#"><i ></i></a>
					</div>
					<div class="copy">
						<p>Copyright 2014 Company name. Designed by Themeezy. All rights reserved.</p>
					</div>
				</div>
			</footer> <!-- .site-->
           
            </div>
        
    </body>
</html>
