<%-- 
    Document   : Menu
    Created on : 10-abr-2017, 20:41:38
    Author     : seperdom
--%>
<%@page import="Dominio.Item"%>
<%@page import="Dominio.Producto"%>
<%@page import="java.util.ArrayList"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/layout.css">
        <link rel="stylesheet" href="css/prettyPhoto.css">
        <link rel="stylesheet" href="css/modal.css" />
        <link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <body >
        <% 
String msg = (String)session.getAttribute("opcion"); 

%> 
        <div id="site-content">
			
			<header class="site-header">
				<div class="container" ">
					<a id="branding" href="index.jsp">
						
						<h1 class="site-title">Casa<span>Rest<img src="./images/onlinelogomaker-030716-1312.png" alt="Company Logo" class="logo"/></span></h1>
					</a>

					<nav class="main-navigation">
						<button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
						<ul class="menu">
							<li class="menu-item "><a href="index.jsp">Home</a></li>
							<li class="menu-item "><a href="./menuController">Men&uacute;</a></li>
							<li class="menu-item"><a href="./Catalogo">Cat&aacute;logo</a></li>
							<li class="menu-item"><a href="gallery.html">Env&iacute;os</a></li>
							<li class="menu-item"><a href="./Contacto">Contacto</a></li>
                            <li class="menu-item"><a href="contact.html">Nosotros</a></li>
						</ul>
					</nav>
                    
					<nav class="mobile-navigation"></nav>
                    
				</div>
			</header> <!-- .site-header -->
<form name="formulario"  action="menuController" id="formulario" method="POST" class="contact-form">
			<main class="main-content">
            <!-- -->
           

    <!-- Modal-->
                 <div class="modal" id="modal1">

	<div class="flotante" id="modal1">
		<div class="flotante-encabezado">
		<a href="javascript:void(0);" onclick="document.getElementById('modal1').style.display=&quot;none&quot;;"><span class="flotante-cerrar" id="modal1">×</span></a>
		<h4>Ingresar</h4>
		</div>
         <div id="MainContent_UpdatePanel3">
	
				<div class="flotante-contenido">
				<div style="  background-color:#3b5999;border-radius: 5px; margin-left: auto; margin-right:auto; text-align:center">
          <img id="MainContent_Image3" src="./images/FB-f-Logo__blue_29-min.png" align="absmiddle">
           <input type="submit" name="ctl00$MainContent$Button1" value="Ingresar con Facebook" id="MainContent_Button1" class="button-face" style="color:White;background-color:#3B5999;border-style:None;">
        </div><br> 
        <div style=" text-align:center; font-size:small; margin-bottom:4px">
          O ingresar con tu cuenta
           </div>
           <div class="formulario-grupo">
       <input name="ctl00$MainContent$txtEmailLog" type="text" id="MainContent_txtEmailLog" placeholder="Email"><label id="MainContent_lblErrorEmailLog" style=" color:Red; font-size:small"></label>

       </div>

       <div class="formulario-grupo">
       <input name="ctl00$MainContent$txtPassLog" type="password" id="MainContent_txtPassLog" placeholder="Contraseña" onclick="return txtPassLog_onclick()"><label id="MainContent_lblerrorPassLog" style=" color:Red; font-size:small"></label>
         </div> 
				</div>  <br>
               <div style=" text-align:center">        
        <a id="MainContent_lbntCambioPass" href="javascript:__doPostBack('ctl00$MainContent$lbntCambioPass','')" style="color:#018B41;">¿Olvidaste tu Contraseña?</a><label id="MainContent_lblPass" style=" color:Black; font-size:small;"></label>
   </div>
   
</div>
		<div class="flotante-pie">
         
   <div class="row">
   <div style="font-size:small; text-align:center; font-weight:bold; color:#000">No tenés cuenta? <a id="A1" href="javascript:void(0);" onclick="document.getElementById('modal1').style.display=&quot;none&quot;;document.getElementById('divRegistro').style.display=&quot;block&quot;;" style="color:#c42e02;font-size:larger">Registrate</a></div><br>
   </div>
		<input type="submit" name="ctl00$MainContent$btnIngresar" value="Ingresar" id="MainContent_btnIngresar" class="boton boton-verde">
		</div>
	</div>
    
<div class="flotante-fondo" id="modal1"></div>
</div>

<div class="modal" id="divRegistro">
             
	        <div class="flotante" id="divRegistro">
		    <div class="flotante-encabezado">
		    <a href="javascript:void(0);" onclick="document.getElementById('divRegistro').style.display=&quot;none&quot;;"><span class="flotante-cerrar" id="divRegistro">×</span></a>
		    <h4>Registrarme</h4>
		    </div>
               		<div style="  background-color:#3b5999;border-radius: 5px; margin-left: auto; margin-right:auto; text-align:center">
          <img id="MainContent_Image1" src="./images/FB-f-Logo__blue_29-min.png" align="absmiddle">
           <input type="submit" name="ctl00$MainContent$Button2" value="Registrate con Facebook" id="MainContent_Button2" class="button-face" style="color:White;background-color:#3B5999;border-style:None;">
        </div><br> 
        <div style=" text-align:center; font-size:small; margin-bottom:4px">
          O registrate ingresando los siguientes datos
           </div>

            <div id="MainContent_UpdatePanel2">
	
		    <div class="flotante-contenido">	
            	
            <div class="formulario-grupo">
            <input name="ctl00$MainContent$txtNombreReg" type="text" id="MainContent_txtNombreReg" placeholder="Nombre" field-error="El campo Nombre no puede estar vacio"><label id="MainContent_lblErrorNombreReg" style=" color:Red; font-size:small"></label>
            </div>
       
            <div class="formulario-grupo">
            <input name="ctl00$MainContent$txtEmailReg" type="text" id="MainContent_txtEmailReg" placeholder="Email" field-error="Debes ingresar un email válido"><label id="MainContent_lblErrorEmailReg" style=" color:Red; font-size:small"></label>
            </div>

            <div class="formulario-grupo">
            <input name="ctl00$MainContent$txtTelReg" type="text" id="MainContent_txtTelReg" placeholder="Teléfono" field-error="El campo Nombre no puede estar vacio"><label id="MainContent_lblErrorTelReg" style=" color:Red; font-size:small"></label> 
            </div>

            <div class="formulario-grupo">
            <input name="ctl00$MainContent$txtPassReg" type="password" id="MainContent_txtPassReg" placeholder="Contraseña" field-error="La contraseña debe tener más de 5 caracteres"><label id="MainContent_lblErrorPassReg" style=" color:Red; font-size:small"></label>
                </div>
                <div class="formulario-grupo">
            <input name="ctl00$MainContent$txtDireccion" type="text" id="MainContent_txtDireccion" placeholder="Dirección" field-error="El campo Nombre no puede estar vacio"><label id="MainContent_lblErrorDireReg" style=" color:Red; font-size:small"></label> 
            </div>
            </div>
              
</div>
            <div class="flotante-pie">
            <input type="submit" name="ctl00$MainContent$btnRegistro" value="Registrarme" id="MainContent_btnRegistro" class="button-2" style="color:White;background-color:#779F02;border-style:None;">
            </div>
            </div>
             
            <div class="flotante-fondo" id="divRegistro"></div>
           
    </div>
                <!-- finModal-->
  
            

   <div class="modal" id="ventanaflotante3">

	<div class="flotante" id="ventanaflotante3">
		<div class="flotante-encabezado">
		<a href="javascript:void(0);" onclick="document.getElementById('ventanaflotante3').style.display=&quot;none&quot;;"><span class="flotante-cerrar" id="ventanaflotante3">×</span></a>
		<h4>Pedido Generado</h4>
		</div>
				<div class="flotante-contenido">
        <label id="MainContent_Label1" style="color:#A88338;font-size:x-large; font-weight:bold; font-family:'Dancing Script', cursive; ">Tu pedido ha sido realizado correctamente.</label>
          
        <div style=" background-color:#ffffff">
        <label id="MainContent_txtPanelPedido" style=" color:#7D1515; font-size:x-large; font-family:'Dancing Script', cursive;">Hemos enviado a tu dirección de correo electrónico el detalle de tu pedido, gracias por tu preferencia!</label>
          </div>
   
          </div>
   
  
   
   </div>
   <div class="flotante-fondo" id="ventanaflotante3"></div>
     </div>


<div id="MainContent_UpdatePanel1">
	
				<!--   flotantes    -->
                                
				<div class="fullwidth-block content" style="background-image:url(images/slider-img6-min.jpg); background-size:100% 100%">
 
					<div class="container" style=" background:#404040">                                                                   
						   
                        <div class="feature-grid" style="background:#404040">
						
                                 
                                 
							<div class="col-md-6 col-md-offset-1" style=" height:772px">
                                  <header class="toolBar">
                       
							
                                                 <h3 class="logoPedido2"><img src="images/logoMenuFinal.png" style="height: 50px;width:40%; margin-left:30%; margin-right:30%;" alt=""></h3>
                                             <div id="sltCategorias">
                                                  
<%
String vs = (String)session.getAttribute("servletMsg"); 
String btn = (String)session.getAttribute("btn");
%>    
      <select  onchange="this.form.submit();" name="ddl"  id="ddl" style="background-color:White; width: 333%">
                                                     
    <%if(vs!=null && vs.equals("1")){%><option value="1"  selected="selected">Cocina Vegetariana</option> 
    <%}else{%> <option value="1" >Cocina Vegetariana</option> <%}%>
    
    <%if(vs!=null && vs.equals("2")){%> <option selected="selected" value="2" >Carnes</option>
    <%}else{%><option value="2" >Carnes</option><%}%>
    
		<%if(vs!=null && vs.equals("3")){%> <option selected="selected" value="3" >Tartas y Empanadas</option>
    <%}else{%><option value="3" >Tartas y Empanadas</option><%}%>
    
		<%if(vs!=null && vs.equals("4")){%> <option selected="selected" value="4" >Pastas</option>
    <%}else{%><option value="4" >Pastas</option><%}%>
    
		<%if(vs!=null && vs.equals("5")){%> <option selected="selected" value="5" >Minutas</option>
    <%}else{%><option value="5" >Minutas</option><%}%>
		
    <%if(vs!=null && vs.equals("6")){%> <option selected="selected" value="6" >Otros</option>
    <%}else{%><option value="6" >Carnes</option><%}%>

	</select>
                                                                          
                           
                            
                                 
                                        
                                    </div>
                              
                              
                            </header>
						
								
                                <div id="MainContent_slider" style="width:100%;height:600px;
	overflow:auto;background-image:url('./images/fondoMenu.jpg'); background-repeat:repeat; background-color:White;
	  border: 1px solid #7F8289
   border-radius: 8px 0px 0px 8px;
	margin-bottom:0.6em;padding-top:8px " >
   
            
		<% String id=btn;
    
    ArrayList<Item> productos=(ArrayList<Item>)request.getAttribute("arrayP");
    ArrayList<Producto> prodCat=(ArrayList<Producto>)request.getAttribute("prodCat");
     String total=(String)request.getAttribute("total");
                    
                    %>							 
                                
                    <%if(prodCat.size()>0) for(Producto p:prodCat){%>
                    <% String a="btn"+String.valueOf(p.getOid());%>
                                        <div class="team"> 
                                              
                                            <figure class="team-image" style=" border-radius: 50%; border:4px solid; border-color:#fff"><a href="#"><img id="MainContent_Repeater1_imgMenu_0" class="team-image" alt="" src='images/<%=p.getOid()%>.jpg'></a></figure>
                                            
                                            
                                                <h3 class="team-name"><span id="MainContent_Repeater1_lblNombre_0"><%=p.getNombre()%></span> </h3>
                                                <h3 class="team-name"><span id="MainContent_Repeater1_lblPrecio_0"><%=p.getPrecio()%></span></h3>
                                                <input type="submit"  name="<%=a%>"   value="Agregar a mi Pedido" id="btnAgregarProd" class="button-menu" style="border-style:Solid;"/>
                                            
                                            </div>
                                             <hr style=" background-color:#000; height:1px; noshade:noshade;border-width:0; width:80%">
                                             
                                             <%}%>
                                             
                                
                                        
                              </div>
                               
								
								</div>

                                	<div class="col-md-5" id="inferior" style=" height:772px"> 
                                             
                                          
                                           <h3 id="logo-pedido" class="logoPedido"><img alt="Logo de Pedido" style="   margin-top:-20px" src="images/logoP_1.png"></h3>
								<div class="map-container" style="background-color:whitesmoke;">
									
                                   <figure style=" margin:0px"><img alt="" src="images/sep2.png"></figure>
                    
                 
                
                	 
                     
                                   
                    <div id="divContenedorPedido" class="divContenedorPedido">
                    
    
                    <ul>
                        
                     <% if(productos.size()>0) for(Item i:productos){ %>
                     <% String q="quitar"+String.valueOf(i.getOid());%>
                         <li class="primero">
                             <div  class="separador">
                                 <button class="quitar" type="submit" value="x"  id="quitarProd" title="Quitar" name="<%= q%>" ></button><span  ><label id='lblNombreMenu' class="nombreProdMenu" style="color:#c42e02" ><%= i.getNombre()%></label></span><span style=" margin-top: 5%"  class="precioMenu"><label  style="color:#c42e02">$ <%= i.getTotal()%></label></span>
                                 <select  name="<%= i.getOid()%>"  onchange="this.form.submit();"  id='<%= i.getOid()%>' style="width:50px;left:0;" class="sltCategorias" >
                                     
                                     <%if(i.getCantidad()==1){%><option value="1"  selected="selected">1</option> 
    <%}else{%> <option value="1" >1</option> <%}%>
                                     <%if(i.getCantidad()==2){%><option value="2"  selected="selected">2</option> 
    <%}else{%> <option value="2" >2</option> <%}%>
                                     <%if(i.getCantidad()==3){%><option value="3"  selected="selected">3</option> 
    <%}else{%> <option value="3" >3</option> <%}%>
                                     <%if(i.getCantidad()==4){%><option value="4"  selected="selected">4</option> 
    <%}else{%> <option value="4" >4</option> <%}%>
                                     <%if(i.getCantidad()==5){%><option value="5"  selected="selected">5</option> 
    <%}else{%> <option value="5" >5</option> <%}%>
                                     <%if(i.getCantidad()==6){%><option value="6"  selected="selected">6</option> 
    <%}else{%> <option value="6" >6</option> <%}%>
    <%if(i.getCantidad()==7){%><option value="7"  selected="selected">7</option> 
    <%}else{%> <option value="7" >7</option> <%}%>
                                 </select>
                                
                             </div><hr /></li>   
                         <%
                     }
                     %>
                   
                 </ul>
                         
                    </div>
                    
                                                                                 <dl class="list-2WPie" id="fin">                                            
                    
                    <dd><div id="UpdateProgress2" style="display:none;">
		
                        <label style="font-size:x-large; color:#B45F04;  font-family:Shadows Into Light Two;">Estamos procesando tu solicitud...</label> <br>
                        <img id="Image2" src="images/ajax-loader2.gif" align="middle" style="height:10px;width:320px;">
                    
	</div></dd>
                    
                                  
                    
                         <br>
                        <dt style=" margin-left:4px;color:#fff">Horario de entrega<select name="ctl00$MainContent$sltHorario" id="MainContent_sltHorario" style="border-radius: 4px;border: 1px solid #808080;  margin-left:4px;margin-right:4px; width:95% ">
		<option value="0">Seleccionar horario</option>
		<option value="Entre 8:00 y 11:00 hs">Entre 8:00 y 11:00 hs</option>
		<option value="Entre 18:00 y 20:00 hs">Entre 18:00 y 20:00 hs</option>
	</select></dt><label id="MainContent_lblErrorHorario" style=" color:Red; font-size:small"></label><br>    
                        <dt style="color:#FD0051;  margin-right:4px;margin-left:55%; ">Subtotal:<span id="MainContent_subtotal" style=" margin-left:30%">0</span></dt>
                        <dt><label id="MainContent_descuentoTexto" style=" margin:20px; float:right; color:#fff; font-family:&quot;Shadows Into Light Two&quot;, &quot;Tahoma&quot;, &quot;Geneva&quot;, sans-serif;  font-size:medium; color:#79B84D; font-weight:bold"></label></dt>
                        <dt style="color:#FFf; margin-left:59%; font-size:medium;margin-right:4px;font-weight:bold; ">Total:<span id="MainContent_txtPrecio" style=" margin-left:35%; color:#FFf;  font-size:medium;font-weight:bold;"><%=total%></span></dt>

                     <div id="fadeDer">
                                <div style="margin-left:5px; margin-top:5px;margin-right:5px">  
                                    <a href="javascript:void(0);" onclick="document.getElementById('fadeDer').style.display=&quot;none&quot;;"><span class="flotante-cerrar">×</span></a>
                                    <h4 style="color:#B52424; font-weight:bold">Menú Sugerido</h4>
                                    <img id="MainContent_imgMenuSlide" alt="" style="width:50%; height:140px;float:left">

                                            
                                            
                                            <h5 class="team-name" style="float:left;margin-top:15px;margin-right:5px"><span name="lblNombreSlide"></span> </h5>
                                            <h5 class="team-name" style="float:left;margin-top:15px;"><span name="lblPrecioSlide"></span></h5>
                                            <input type="submit" name="ctl00$MainContent$btnAgregarProdSlide" value="Agregar" id="MainContent_btnAgregarProdSlide" style="border-style:Solid;float:left; margin-bottom:2px ">
                                         
                                            </div>
							</div>
                    <dt><textarea name="ctl00$MainContent$txtAreaDetalles" id="MainContent_txtAreaDetalles" style="border-style: groove; margin-left:4px;width:95%; margin-right:4px; margin-top:2px; margin-bottom:0; height:40%; font-family: Impact;" placeholder="Agregar detalles al envío"></textarea></dt>
                           


                     <dt style=" margin:4px"> <input type="submit" name="ctl00$MainContent$btnPedido" value="Realizar Pedido" id="MainContent_btnPedido" style="border-style:None;"> </dt>

                                                                                      
                    </dl>
                  
 
                   
                        
                   
             
                </div>                    
                        
							</div>
                            
						</div>
        
                           
					</div>
				
                
</div>
                                
                        
			</div>
                        
                        </main>
		<footer class="site-footer">
				<div class="container">
					
					<div class="social-links">
						<a href="#"><i></i></a>
						<a href="javascript:postear('fondoLogo','CasaRestó','Delivery de Comida - Pedidos Online. Cocina tradicional y moderna, cocina vegetariana.')"><i class="fa fa-facebook"></i></a>
						<a href="javascript:shareTwitter('fondoLogo','CasaRestó','Delivery de Comida - Pedidos Online. Cocina tradicional y moderna, cocina vegetariana.')"><i class="fa fa-twitter"></i></a>
						<a href="#"><i></i></a>
					</div>
					<div class="copy">
						<p>Copyright 2014 Company name. Designed by Themeezy. All rights reserved.</p>
					</div>
				</div>
			</footer> 
</form> 
		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
                
                
<script type="text/javascript">
                    function postear(oid,nombre,descripcion) {
                   
                            (function (d, s, id) {
		          var js, fjs = d.getElementsByTagName(s)[0];
		          if (d.getElementById(id)) { return; }
		          js = d.createElement(s); js.id = id;
		          js.src = "//connect.facebook.net/en_US/all.js";
		          fjs.parentNode.insertBefore(js, fjs);
		      } (document, 'script', 'facebook-jssdk')); 
                            FB.init({
                                appId: '226795204472446',
                                xfbml: true,

                                status: true
                            });
                       



                                
                            FB.ui({
                                method: 'share',picture: 'http://localhost:8080/webPrueba/images/'+oid+'.jpg',
                                title:nombre,
                                description:descripcion,
                                href: 'http://casaresto.com',
                            }, function (response) {
                                if (response && !response.error_message) {
                                    $('#lb_msj').text('link posteado' + response.post_id);
                                }
                                else {
                                    $('#lb_msj').text('error ...');
                                }
                            });  
                            
                    } 
         
</script>
                <script type="text/javascript">
    function shareTwitter(oid, texto, descripcion) {
        src = "https://platform.twitter.com/widgets.js";
        var width = 550,

        height = 400,

        left = ($(window).width() - width) / 2,

        top = ($(window).height() - height) / 2,
        hash = '#comidaonline #eCommerce ',
        image = 'images/' + oid + '.jpg',url = 'http://twitter.com/share?text=CASAREST\u00D3 : ' + descripcion + '&hashtags=comidaonline&url=http://casaresto.com',



        opts = 'status=1' +

                 ',width=' + width +

                 ',height=' + height +

                 ',top=' + top +

                 ',left=' + left;



        window.open(url, 'twitter', opts);
    }
    </script>
    </body>
</html>
