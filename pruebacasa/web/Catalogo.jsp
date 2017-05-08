<%-- 
    Document   : Catalogo
    Created on : 27-abr-2017, 9:00:22
    Author     : seperdom
--%>

<%@page import="Dominio.Producto"%>
<%@page import="Dominio.Item"%>
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
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1"><link rel="stylesheet" href="themes/alertify.default.css"><link rel="stylesheet" href="themes/alertify.core.css"><link href="/images/iconCR.png" rel="shortcut icon" type="image/x-icon">
		<!-- Loading third party fonts -->
		
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
       
		<!-- Loading main css file -->
         <link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen"><link rel="stylesheet" href="style.css"><link rel="stylesheet" href="modal.css">
    <title>Catálogo de Productos - Imagenes, Descripción | CasaRestó </title>
   
<meta name="description" content="Detalle de las comidas que elaboramos">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:image" content="http://casaresto.com/images/fondoLogo.jpg">
		<meta name="twitter:card" content="summary">
		<!-- Loading third party fonts -->
		
		
                <meta name="twitter:image:src" content="http://casaresto.com/images/fondoLogoTwitter.png">
		<!-- Loading main css file -->
		
		<meta property="og:url" content="http://casaresto.com">
<meta property="og:image" content="http://casaresto.com/images/fondoLogo.jpg">
<meta property="fb:app_id" content="2042334875992676">
<meta property="og:description" content="Delivery de Comida - Pedidos Online. Cocina tradicional y moderna, cocina vegetariana.">
<meta property="og:title" content="CasaRestó.">
 
  
<script id="facebook-jssdk" src="//connect.facebook.net/es_ES/all.js"></script><script>
    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) { return; }
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/es_ES/all.js";
        fjs.parentNode.insertBefore(js, fjs);
    } (document, 'script', 'facebook-jssdk'));
    FB.init({
        appId: '2042334875992676',
        xfbml: true,

        status: true
    });
                       
</script>
<title>

</title>

    </head>
    <body >
       <form >
        <div id="site-content">
			
			





         
        <div id="site-content">
			<header class="site-header">
				<div class="container">
					<a id="branding" href="Default.aspx">
						
						<h1 class="site-title">Casa<span style=" color:#fff">Rest<img src="./images/onlinelogomaker-030716-1312.png" alt="Company Logo" class="logo"></span></h1>
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
                             <li class="menu-item "><a href="javascript:modal('modal1');" title="Ingresar/Registrate">
                                        <img src="images/log.png" alt="Ingresar/Registrate" class="logo" style="height: 22px; width: 22px;">
                                        </a></li>
						</ul>
					</nav>
                    
					<nav class="mobile-navigation"><ul class="menu"></nav>
                    
				</div>
                
			</header> <!-- .site-header -->


			<main class="main-content">
				

                <!-- Modal-->
                 <div class="modal" id="modal1">

	<div class="flotante" id="modal1">
		<div class="flotante-encabezado">
		<a href="javascript:void(0);" onclick="document.getElementById('modal1').style.display=none;"><span class="flotante-cerrar" id="modal1">×</span></a>
		<h4>Ingresar</h4>
		</div>
				<div class="flotante-contenido">
				<div style="  background-color:#3b5999;border-radius: 5px; margin-left: auto; margin-right:auto; text-align:center">
          <img id="MainContent_Image3" src="./images/FB-f-Logo__blue_29-min.png" align="absmiddle">
           <input type="submit" name="ctl00$MainContent$Button1" value="Ingresar con Facebook" id="MainContent_Button1" class="button-face" style="color:White;background-color:#4267B2;border-style:None;">
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
		<div class="flotante-pie">
         
   <div class="row">
   <div style="font-size:small; text-align:center; font-weight:bold; color:#000">No tenés cuenta? <a id="A1" href="javascript:void(0);" onclick="document.getElementById('modal1').style.display=&quot;none&quot;;document.getElementById('divRegistro').style.display=&quot;block&quot;;" style="color:#c42e02; font-size:larger">Registrate</a></div><br>
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
		    <div class="flotante-contenido">		
            <div class="formulario-grupo">
            <input name="ctl00$MainContent$txtNombreReg" type="text" id="MainContent_txtNombreReg" placeholder="Nombre" field-error="El campo Nombre no puede estar vacio"><label id="MainContent_lblErrorNomReg" style=" color:Red; font-size:small"></label>
            </div>
       
            <div class="formulario-grupo">
            <input name="ctl00$MainContent$txtEmailReg" type="text" id="MainContent_txtEmailReg" placeholder="Email" field-error="Debes ingresar un email válido"><label id="MainContent_lblErrorMailReg" style=" color:Red; font-size:small"></label>
            </div>

            <div class="formulario-grupo">
            <input name="ctl00$MainContent$txtTelReg" type="text" id="MainContent_txtTelReg" placeholder="Teléfono" field-error="El campo Nombre no puede estar vacio"><label id="MainContent_lblErrorTelReg" style=" color:Red; font-size:small"></label> 
 
            </div>

            <div class="formulario-grupo">
            <input name="ctl00$MainContent$txtPassReg" type="password" id="MainContent_txtPassReg" placeholder="Contraseña" field-error="La contraseña debe tener más de 5 caracteres"><label id="MainContent_lblErrorPassReg" style=" color:Red; font-size:small"></label>
                </div>
                <div class="formulario-grupo">
            <input name="ctl00$MainContent$txtDireccion" type="text" id="MainContent_txtDireccion" placeholder="Dirección" field-error="El campo Nombre no puede estar vacio"><label id="MainContent_lblErrorDirReg" style=" color:Red; font-size:small"></label> 
 
            </div>
            </div>

            <div class="flotante-pie">
            <input type="submit" name="ctl00$MainContent$btnRegistro" value="Registrarme" id="MainContent_btnRegistro" class="button-2" style="color:White;background-color:#779F02;border-style:None;">
            </div>
            </div>

            <div class="flotante-fondo" id="divRegistro"></div>
         
    </div>
                <!-- finModal-->
                
                <% 
    
    ArrayList<Producto> productos=(ArrayList<Producto>)request.getAttribute("arrayP");
     String total=(String)request.getAttribute("total");
                    
                    %>
<div id="MainContent">
	
				<div class="fullwidth-block content" style="background-image:url(images/slider-img6-min.jpg); background-size:100% 100%">
					<div class="container" style="background:url(images/fondoTextN.jpg) repeat; height:772px; overflow:auto">
						
                        
						<%for(Producto p:productos){%> 
						<div class="team image-left">
                                                    
                                                    <figure class="featured-image"><span id="lblFoto" class="gallery-item filterable-item interior"><a href="images/<%= p.getOid()%>.jpg" alt="<%=p.getNombre()%>" runat="server"><img class="team-image" src="images/<%= p.getOid()%>.jpg" alt="<%= p.getNombre()%>" runat="server"></a></span></figure>
                                                    <h3 class="team-name"><span id="lblNombreCatalogo"><%=p.getNombre()%></span></h3>
                                                    <small class="team-desc"><span id="lblPrecioCatalogo">Calorias: <%= p.getCalorias()%></span></small>
                                                    <span id="lblDescCatalogo" class="texto-catalogo"><%=p.getNombre()%>desc</span>
							<div class="team-social">Compartir en:
                                                            <a id="likeFace" class="fa fa-facebook" href="javascript:postear('1','p','pp');"></a>
								<a id="shareTwitter" class="fa fa-twitter" href="javascript:shareTwitter('<%=p.getOid()%>','<%=p.getNombre()%>','descripcion de <%=p.getNombre()%>');"></a>
							</div>
                                                       
						</div>
                        <%}%>
					
						
						
					</div>
				</div>
               
</div>
     
              
                  
			</main> <!-- .main-content -->

			<footer class="site-footer">
				<div class="container">
					
					<div class="social-links">
						<a href="#"><i></i></a>
						<a href="javascript:postear('fondoLogo','CasaRestó','Delivery de Comida - Pedidos Online. Cocina tradicional y moderna, cocina vegetariana.')"><i class="fa fa-facebook"></i></a>
						<a href="javascript:shareTwitter('fondoLogo','CasaRestó','Delivery de Comida - Pedidos Online. Cocina tradicional y moderna, cocina vegetariana.')"><i class="fa fa-twitter"></i></a>
						<a href="#"><i></i></a>
					</div>
					<div class="copy">
						<p>Copyright 2016 CasaRestó. By Sebastian Pérez. Designed by Themeezy. All rights reserved.</p>
					</div>
				</div>
			</footer> <!-- .site-footer -->




		</div> <!-- #site-content -->

		

		
    
     	

    

 



                        </div>
                        
       </form>
     <script src="js/modal.js"></script>
		<script src="js/jquery-1.11.1.min.js"></script>
		
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
                                xfbml: false,

                                status: true
                            });
                       

FB.ui({
  method: 'feed',
  name:'ejemplo',
  link: 'http://casaresto.com',
  picture:'http://casaresto.com/images/3.jpg',
  caption: 'An example caption',
  description:'descripcion',
}, function(response){});

                                
                            
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
        image = 'http://casaresto.com/images/' + oid + '.jpg',url = 'http://twitter.com/share?text=CASAREST\u00D3 : ' + descripcion + '&hashtags=comidaonline&url=http://casaresto.com',



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
