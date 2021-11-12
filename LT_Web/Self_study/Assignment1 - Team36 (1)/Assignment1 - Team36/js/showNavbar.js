function showNavbar(){
    var hamburger=document.getElementById('hamburger');
    var x=document.getElementById('x');
    var nav=document.getElementById('nav');
    var container=document.getElementsByClassName('container-fluid');
    if(hamburger.style.display == "block"){
      hamburger.style.display = "none";
      x.style.display="block";
      nav.style.display="block";
      container[0].style.display="none";
    } else{
      x.style.display = "none";
      hamburger.style.display="block";
      nav.style.display="none";
      container[0].style.display="block";
    }
  }