<%@ Page Title="" Language="C#" MasterPageFile="~/View/M_home.master" AutoEventWireup="true" CodeFile="~/Controller/Home_Thinkject.aspx.cs" Inherits="View_Home_Thinkject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%--librerias--%>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script>window.jQuery || document.write('<script src="/docs/4.4/assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="/docs/4.4/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <%--hoja de estilos--%>
<link href="../resources/css/estilo_home.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        
    <%-- Tabla de mostrar proyectos --%>
<%--    <table class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>Apoya Estos Proyectos</strong></td>
            </tr>
            <tr>
                <td>
<%--                    <asp:ObjectDataSource ID="OBS_home_proyectos" runat="server" SelectMethod="obtener_proyectos_publicados_home_page" TypeName="DAO">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="No Hay proyectos Actualmente" Name="fecha" SessionField="fecha_actual" Type="DateTime" />
                        </SelectParameters>
                    </asp:ObjectDataSource>--%>
                <%--<asp:DataList ID="DL_proyectos" runat="server" DataSourceID="OBS_home_proyectos" RepeatColumns="5" RepeatDirection="Horizontal" OnItemCommand="DL_proyectos_ItemCommand" >
                    <footertemplate>
                         <asp:label visible="<%#bool.Parse((DL_proyectos.Items.Count == 0).ToString())%>" xmlns:asp="#unknown"
                            runat="server" ID="lblNoRecord" Text="No hay proyectos Publicados."></asp:label>
                    </footertemplate>--%>
                   <%-- <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2" colspan="2">
                                    <strong>Proyecto:</strong>
                                    <asp:Label ID="Lb_nombre" runat="server" Text='<%# Eval("nombre_proyecto") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2" rowspan="2">
                                    <asp:Image ID="I_foto" runat="server" ImageUrl='<%# Eval("foto") %>' Width="40%" />
                                </td>
                                <td class="auto-style2">
                                    <strong>Descripcion:</strong>--%>
                                    <%--<asp:Label ID="Lb_descripcion" runat="server" Text='<%# Eval("descrpcion") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Fecha de Inico:</strong>
                                    <asp:Label ID="Lb_correo" runat="server" Text='<%# Eval("fecha_inicio") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2" colspan="2">
                                    <asp:LinkButton ID="LkB_detalles" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="detalles">Ver proyecto</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                </td>
            </tr>
        </table>--%>
<%--  cuerpo alv--%>

<main role="main">
     <!-- carrusel con las imagenes iniciales del proyecto
        ================================================== -->
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class=""></li>
      <li data-target="#myCarousel" data-slide-to="1" class=""></li>
      <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item">
        <img class="featurette-image img-fluid mx-auto" src="../Imagenes/home/slider-2.jpg" alt="Generic placeholder image" <%--width="100%" height="100%"--%>>
        
        <div class="container">
          <div class="carousel-caption text-left">
            <h1>Da vida a las buenas ideas</h1>
            <p>ThinkJect te da la oportunidad de descubrir y dar vida a proyectos únicos.</p>
            
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <img class="featurette-image img-fluid mx-auto" src="../Imagenes/home/slider-3.jpg" alt="Generic placeholder image" <%--width="100%" height="100%"--%>>
        <div class="container">
          <div class="carousel-caption">
            <h1>Nuestra ambición</h1>
            <p>En ThinkJect nuestra meta es empoderar creadores y emprendedores. </p>
            
          </div>
        </div>
      </div>
      <div class="carousel-item  active">
        <img class="featurette-image img-fluid mx-auto" src="../Imagenes/home/slider-1.jpg" alt="Generic placeholder image" <%--width="100%" height="100%"--%>>
        <div class="container">
          <div class="carousel-caption text-right">
            <h1>Empoderar a las personas.</h1>
            <p>Pasaran a la accion para un mundo más diverso, más sostenible y para todos.</p>
            
          </div>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">anterior</span>
    </a>
    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">siguiente</span>
    </a>
  </div>


   <!-- Publicacion de los proyectos 
  ================================================== -->
  

  <div class="container marketing">

    <div class="row">
      <%--<div class="col-lg-4">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
        <h2>Heading</h2>
          
        <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
        <p><a class="btn btn-secondary" href="#" role="button">View details »</a></p>
      </div><!-- /.col-lg-4 -->--%>
         <!-- PRUEBAAAA --> 
      <div class="col-lg-4">
          <asp:ObjectDataSource ID="OBS_home_proyectos" runat="server" SelectMethod="obtener_proyectos_publicados_home_page" TypeName="DAO">
              <SelectParameters>
                  <asp:SessionParameter DefaultValue="No Hay proyectos Actualmente" Name="fecha" SessionField="fecha_actual" Type="DateTime" />
              </SelectParameters>
          </asp:ObjectDataSource>
          <asp:DataList ID="DL_proyectos" runat="server" DataSourceID="OBS_home_proyectos" RepeatColumns="5" RepeatDirection="Horizontal" OnItemCommand="DL_proyectos_ItemCommand">
              <FooterTemplate>
                  <asp:label visible="<%#bool.Parse((DL_proyectos.Items.Count == 0).ToString())%>" xmlns:asp="#unknown"
                      runat="server" id="lblNoRecord" text="No hay proyectos Publicados."></asp:label>
              </FooterTemplate>
              <ItemTemplate>
                  <asp:Image  ID="I_foto" runat="server" ImageUrl='<%# Eval("foto") %>' width="140" height="140" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"/>
                    
                <h2><asp:Label ID="Lb_nombre" runat="server" Text='<%# Eval("nombre_proyecto") %>'></asp:Label></h2>
                  
                  <asp:Label ID="Lb_descripcion" runat="server" Text='<%# Eval("descrpcion") %>'></asp:Label>
                      <p><asp:Button ID="LkB_detalles" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="detalles" Text="Detalles>>" class="btn btn-secondary"></asp:Button></p>
                  
                    
               </ItemTemplate>
            </asp:DataList>
     </div><!-- /.col-lg-4 -->
    <!-- PRUEBAAAA FIN-->


      <!-- divs para colocar el texto y al lado el cuadro con la imagen
        ================================================== -->

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">Aqui algun  titulo perchito. <span class="text-muted">segunda idea principal :v.</span></h2>
        <p class="lead">aalv muchos texto aqui de alguna pendejada sdfghjkldfaskdkjashdkjahsdkjhakjdhjjsjsjsjasd asdhashdh asjdjasd asdjjasdjasjdajsjddsajdjasdjs,as dasdjasd.</p>
      </div>
      <div class="col-md-5">
        <img class="featurette-image img-fluid mx-auto" src="../Imagenes/home/4.jpg" alt="Generic placeholder image"> 
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading">Aqui algun  titulo perchito.<span class="text-muted">segunda idea principal :v</span></h2>
        <p class="lead">aalv muchos texto aqui de alguna pendejada sdfghjkldfaskdkjashdkjahsdkjhakjdhjjsjsjsjasd asdhashdh asjdjasd asdjjasdjasjdajsjddsajdjasdjs,as dasdjasd.</p>
      </div>
      <div class="col-md-5 order-md-1">
        <img class="featurette-image img-fluid mx-auto" src="../Imagenes/home/2.jpg" alt="Generic placeholder image"> 
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
          <br /><br />
        <h2 class="featurette-heading">Aqui algun  titulo perchito.<span class="text-muted">segunda idea principal :v</span></h2>
        <p class="lead">aalv muchos texto aqui de alguna pendejada sdfghjkldfaskdkjashdkjahsdkjhakjdhjjsjsjsjasd asdhashdh asjdjasd asdjjasdjasjdajsjddsajdjasdjs,as dasdjasd.</p>
        <p class="lead">aalv muchos texto aqui de alguna pendejada sdfghjkldfaskdkjashdkjahsdkjhakjdhjjsjsjsjasd asdhashdh asjdjasd asdjjasdjasjdajsjddsajdjasdjs,as dasdjasd.</p>
      </div>
      <div class="col-md-5">
        <img class="featurette-image img-fluid mx-auto" src="../Imagenes/home/3.jpg" alt="Generic placeholder image"> 
      </div>
    </div>

    <hr class="featurette-divider">

    <!-- FIN DE CADA DIVISION -->

  </div><!-- /.container -->

</main>



<%--  cuerpo alv--%>
</asp:Content>

