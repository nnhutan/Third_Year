function ScrollUpSuKien(){
    setInterval(ScrollUpSection,3000);
  }
  function ScrollUpSection(){
    var section=document.getElementsByClassName('rowSuKien');
    section[0].className += " showSectionSK";
  }