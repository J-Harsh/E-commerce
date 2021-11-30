<html>
    <head>
        <%@include file="header.jsp" %>
        <meta charset="UTF-8" >
        <title>E-commerce</title>
    </head>
    
    <body>
        <style>
            .img-format > img
            {
                height:40em;
                width:40em;
            }
            .carousel-item
            {
              padding-left: 80px;
              padding-right: 80px;
            }
        </style>
        <div  id="carouselExampleCaptions" class="carousel slide carousel-fade" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5"></button>
  </div>
  <div class="carousel-inner">
    <div class="img-format carousel-item active">
      <img src="https://images.unsplash.com/photo-1620130674275-d709994ed7c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1775&q=80" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Quote 1:</h5>
        <p>A room without books is like a body without a soul- Marcus Tullius Cicero</p>
      </div>
    </div>
    <div class="img-format carousel-item">
      <img src="https://images.unsplash.com/photo-1568655029112-51b28807e2bd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1770&q=80" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Quote 2</h5>
        <p>Good friends, good books, and a sleepy conscience is the ideal life -Mark Twain</p>
      </div>
    </div>
    <div class="img-format carousel-item">
      <img src="https://images.unsplash.com/photo-1608726025971-d7e9df684498?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1770&q=80" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Quote 3:</h5>
        <p>I have always imagined that Paradise will be a kind of library -Jorge Luis Borges</p>
      </div>
    </div>
      
      <div class="img-format carousel-item">
      <img src="https://images.unsplash.com/photo-1595123550441-d377e017de6a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1906&q=80" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Quote 4:</h5>
        <p>There is no friend as loyal as a book -Ernest Hemingway</p>
      </div>
    </div>
      
      <div class="img-format carousel-item">
      <img src="https://images.unsplash.com/photo-1578658544861-37dbf6d82ea3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1770&q=80" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Quote 5:</h5>
        <p>Books are a uniquely portable magic</p>
      </div>
    </div>
      
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
    </body>
</html>