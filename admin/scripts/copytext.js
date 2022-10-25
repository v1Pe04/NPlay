function kopierTekst() {
    var copyText = document.getElementById("myInput");
    copyText.select();
    copyText.setSelectionRange(0, 99999)
    document.execCommand("copy");

    var button = document.getElementById("copy");
    button.innerHTML = "Copied";
    button.style.animation = "onClick .2s ease";
  }

  function movieCheck() {
    
    var frame = document.getElementById("check");
    var field = document.getElementById("checkfield").value;

    

    frame.src="https://www.2embed.ru/embed/imdb/movie?id=" + field;
    
  }

  //animation: onClick .3s ease;