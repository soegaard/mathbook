if(window.attachEvent) {
    window.attachEvent('onload', renderKatexElements);
} else {
    if(window.onload) {
        var curronload = window.onload;
        var newonload = function() {
            curronload();
            renderKatexElements();
        };
        window.onload = newonload;
    } else {
        window.onload = renderKatexElements;
    }
}

var renderKatexElements = function () {
  var xs = document.getElementsByClassName("katex"); 
  var n=xs.length; for (var i =0 ; i<n; i++) { katex.render(xs[2*i].innerHTML,xs[2*i])}
}
