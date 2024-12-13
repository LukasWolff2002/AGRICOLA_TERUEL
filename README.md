# Tareas por hacer

[ ] Diferencia de color logo arriba, ademas de arriba
[ ] El video que esta al inicio, que corra al inicio
[ ] Vista de donde encontrarnos
[ ] Logo agricola en pestaña
[ ] Linkear linkedin


<div class="jumbotron text-white" style="position: relative; height: 500px; overflow: hidden;">
  <!-- Imagen de fondo -->
  <div class="image-layer" style="
    background: url('<%= asset_path('home/MANOS_TOMATES_LARGAS.jpg') %>');
    background-size: cover;
    background-position: center 90%; 
    background-repeat: no-repeat;
    position: absolute;
    top: 0;
    left: 0rem;
    width: 110%;
    height: 100%;
    z-index: 0;
  "></div>

  <!-- Gradiente encima de la imagen -->
  <div class="gradient-layer" style="
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 1;
  "></div>

  <!-- Logo superpuesto -->
  <div class="logo-container">
    <img src="<%= asset_path('LOGO_BLANCO.png') %>" alt="Logo" class="logo">
  </div>

  <!-- Contenido del jumbotron -->
  <div class="content-container" style="
    position: relative; 
    z-index: 2; /* Asegura que el contenido esté por encima */
    width: 200%; /* Ancho fijo */
  ">
    <div class="col-md-6 px-0 text-start">
      <h1 class="font-georgia-condensed title" style="color: var(--white-color);">
        "Sabores que no dañan tu cuerpo"
      </h1>
    </div>
  </div>
</div>




<nav class="navbar navbar-expand-lg" style="background-color: var(--tertiary-color); box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);">
  <div class="container-fluid">
    

    <!-- Botón de hamburguesa para pantallas pequeñas -->
    <button
      class="navbar-toggler d-lg-none"
      type="button"
      data-bs-toggle="collapse"
      data-bs-target="#navbarNavDropdown"
      aria-controls="navbarNavDropdown"
      aria-expanded="false"
      aria-label="Toggle navigation"
      style="border: none;"
    >
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Menú -->
    <div class="collapse navbar-collapse justify-content-center" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a
            class="nav-link font-weight-bold px-3 font-georgia-normal"
            href="/home"
            style="color: var(--fifth-color); font-size: clamp(1rem, 2vw, 1.5rem);"
          >
            Agricola Teruel
          </a>
        </li>
        <li class="nav-item">
          <a
            class="nav-link font-weight-bold px-3 font-georgia-normal"
            href="/us"
            style="color: var(--fifth-color); font-size: clamp(1rem, 2vw, 1.5rem);"
          >
            Nosotros
          </a>
        </li>
        <li class="nav-item">
          <a
            class="nav-link font-weight-bold px-3 font-georgia-normal"
            href="/catalogo"
            style="color: var(--fifth-color); font-size: clamp(1rem, 2vw, 1.5rem);"
          >
            Catálogo
          </a>
        </li>
      </ul>
    </div>
  </div>
</nav>


<div class="portada-container" id='us'>
  <%= image_tag 'us/PORTADA_US.jpg', class: "portada-position", style: "position: relative; top: -20px; left: 0px; transform: translate(0%, 20%);" %>
  <div class="image-text" id='image-text-us'>
    Nosotros
  </div>
</div>