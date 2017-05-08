<%-- 
    Document   : index
    Created on : 10-abr-2017, 16:12:06
    Author     : seperdom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		<link rel="stylesheet" href="modal.css">
		<title>Home</title>
		
		<!-- Loading third party fonts -->
		<link href="http://fonts.googleapis.com/css?family=Titillium+Web:300,400,700|" rel="stylesheet" type="text/css">
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700" rel="stylesheet" type="text/css">
		<!-- Loading main css file -->
		<link rel="stylesheet" href="style.css">
		
		<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->

	</head>


	<body class="header-collapse">
		
		
			
			<header class="site-header">
				<div class="container" ">
					<a id="branding" href="index.html">
						
						<h1 class="site-title">Casa<span>Rest<img src="./images/onlinelogomaker-030716-1312.png" alt="Company Logo" class="logo"/></span></h1>
					</a>

					<nav class="main-navigation">
						<button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
						<ul class="menu">
							<li class="menu-item current-menu-item"><a href="index.jsp">Home</a></li>
							<li class="menu-item"><a href="./menuController">Men&uacute;</a></li>
							<li class="menu-item"><a href="./Catalogo">Cat&aacute;logo</a></li>
							<li class="menu-item"><a href="gallery.html">Env&iacute;os</a></li>
							<li class="menu-item"><a href="./Contacto">Contacto</a></li>
                            <li class="menu-item"><a href="contact.html">Nosotros</a></li>
						</ul>
					</nav>
                    
					<nav class="mobile-navigation"></nav>
                    
				</div>
                
			</header> <!-- .site-header -->
            
			<main class="main-content">
				<div class="hero hero-slider">
					<ul class="slides">
						<li style="background-size:100% 100%;" data-bg-image="./images/slider-img1.jpg">
							
						</li>
						<li style="background-size:100% 100%;" data-bg-image="./images/slider-img2.jpg">
							
						</li>
						<li style="background-size:100% 100%;" data-bg-image="./images/slider-img3.jpg">
							
						</li>
                        <li style="background-size:100% 100%;" data-bg-image="./images/slider-img4.jpg">
							
						</li>
                        	<li style="background-size:100% 100%;" data-bg-image="./images/slider-img5.jpg">
							
						</li>
                        	<li style="background-size:100% 100%;" data-bg-image="./images/slider-img6.jpg">
							
						</li>
                        	<li style="background-size:100% 100%;" data-bg-image="./images/slider-img7.jpg">
							
						</li>
                        	<li style="background-size:100% 100%;" data-bg-image="./images/slider-img8.jpg">
							
						</li>
					</ul>
				</div> <!-- .hero-slider -->
<div class="modal" id="Div1" style="overflow: scroll; display: 'none';">
	<div class="flotante" id="Div1" style="display: 'none';">
	
	<a href="javascript:void(0);" onclick="document.getElementById('Div1').style.display='none';"><span class="flotante-cerrar" id="Div1">×</span></a>
	
			<div class="flotante-contenido">
				 
        
          
			
               
    <div>
	<table cellpadding="4" rules="rows" id="gvSemana" style="color:Black;background-color:White;border-color:#CCCCCC;border-width:1px;border-style:None;height:245px;width:100%;border-collapse:collapse;">
		<tbody><tr align="left" style="color:White;background-color:#333333;font-weight:bold;">
			<th scope="col">&nbsp;</th><th scope="col">Menú</th><th scope="col">Descripción</th>
		</tr><tr>
			<td style="color:White;font-weight:bold;">&nbsp;</td><td>Peceto Relleno</td><td>Peceto relleno con panceta, zanahoria y morrón, acompañado de boniatos al horno.</td>
		</tr><tr>
			<td style="color:White;font-weight:bold;">&nbsp;</td><td>Pollo al Horno.</td><td>Pollo al horno con timbal de fideos verdes.</td>
		</tr><tr>
			<td style="color:White;font-weight:bold;">&nbsp;</td><td>Matambre Arrollado.</td><td>Matambre arrollado con zanahoria, morrón, huevo, queso y espinaca.</td>
		</tr><tr>
			<td style="color:White;font-weight:bold;">&nbsp;</td><td>Tallarines Vegetarianos.</td><td>Tallarines con salsa de hongos.</td>
		</tr><tr>
			<td style="color:White;font-weight:bold;">&nbsp;</td><td>Milanesas con guarnición.</td><td>Milanesas con guarnición de papas fritas.</td>
		</tr>
	</tbody></table>
</div>
       
    <div style=" float:right; margin-right:20px; color:Black; font-weight:bold"><span id="lblPrecioSemana">Total con descuento: $ 846.00</span></div>
    <div style="margin-top:25px; margin-left:5px"><dt style="color:#0092FA; font-weight:bold; ">Seleccionar horario de entrega <select name="sltHorario" id="MainContent_sltHorario" style="border-radius: 4px;border: 1px solid #808080; padding: 0px; margin: 0px;">
	<option value="Entre 8:00 y 11:00 hs">Entre 8:00 y 11:00 hs</option>
	<option value="Entre 18:00 y 20:00 hs">Entre 18:00 y 20:00 hs</option>
</select></dt>
     <dd>
    <textarea name="txtAreaDetalles" id="txtAreaDetalles" placeholder="Agregar detalles al envío" style="border-style: groove;margin-top:15px; margin-bottom:5px; border-width: 0.1em; font-family: Impact;"></textarea></dd>
        <dd><span id="lblFecha" style="color:#AB0241;font-family:Shadows Into Light Two,Tahoma,Geneva,sans-serif;font-size:Small;font-weight:bold;">Fecha de entrega: 12/04/2017</span></dd> 

        <div style="float:right; margin-right:20px;margin-top:0px"> <div id="MainContent_UpdateProgress2" style="display:none;" role="status" aria-hidden="true">
	
            <label style="font-size:x-large; color:#B45F04;  font-family:Shadows Into Light Two;">Estamos procesando tu solicitud...</label> <br>
            <img id="Image2" src="images/ajax-loader2.gif" align="middle" style="height:10px;width:320px;">
        
</div>                
    </div> 
    </div>
    <div class="flotante-pie">     
   <input type="submit" name="btnSemana" value="Realizar Pedido" id="btnSemana" class="button-2" style="color:White;background-color:#779F02;border-style:None;">
    </div>
	</div>
    </div>
<div class="flotante-fondo" id="Div1"></div>
</div>
				<div class="fullwidth-block">
					<div class="container">
						
						<h2 class="section-title-negro">Comida Gourmet <span class="section-title-blanco">en tu Hogar</span></h2>

						<div class="row">
							
							<div class="col-md-4">
                            <div class="feature">
								<div><img src="images/page2-img8.jpg" class="feature-icon"></div>
								  <h3 class="feature-title"><a href="Menu.aspx" class="feature-title">Delivery de Viandas caseras</a></h3>  
                                  <p>Nuestras viandas se basan en productos de alta calidad y son elaboradas por nuestro Chef.</p> 
								</div>
							</div>
							
							
							<div class="col-md-4">
                            <div class="feature">
								<div><img src="images/topsemana2.png" class="feature-icon" style=" background-color:#fff; color:#c42e02; border:2px solid"></div>
								  <h3 class="feature-title"><a href="#" onclick="return modal('Div1');" class="feature-title">Semana Sugerida</a></h3> 
                                  <p>Te facilitamos la eleccioón diaria de tus comidas. 5 menús que cuentan con un importante descuento.</p>  
								</div>
							</div>
							
							 <div class="col-md-4">
                            <div class="feature">
								<div><img src="images/Martes-min.jpg" class="feature-icon"></div>
								                                 <h3 class="feature-title"><a href="Menu.aspx" class="feature-title">Cocina Vegetariana</a></h3>
                                                                 <p>Amplio Menú Vegetariano para que disfrutes tus comidas de forma saludable. </p>
								</div>
							</div>
							
							
							
						</div>
					</div> <!-- .container -->
				</div> <!-- .fullwidth-block -->

			

				
				

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
						<p>Copyright 2014 Company name. Designed by Themeezy. All rights reserved.</p>
					</div>
				</div>
			</footer> <!-- .site-footer -->
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
                                appId: '2042334875992676',
                                xfbml: true,

                                status: true
                            });
                       



                                
                            FB.ui({
                                method: 'share',picture: 'http://casaresto.com/images/'+oid+'.jpg',
                                title:nombre,
                                description:descripcion,
                                href: 'http://casaresto.com/Catalogo.aspx',
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
