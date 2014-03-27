function takeScreenshot() {
  function makeScreenshot() {
    console.log("Rendering screenshot...");
    html2canvas(document.documentElement, {
      onrendered: function(canvas) {
        console.log("Screenshot:");
        console.log(canvas.toDataURL('image/png'));
      }
    });
  }

  if(window.html2canvas !== undefined && html2canvas instanceof Function) {
    return makeScreenshot();
  }

  var jse = document.createElement("script");
  jse.type = "text/javascript";
  jse.src = "https://github.com/niklasvh/html2canvas/releases/download/0.4.1/html2canvas.js";
  document.documentElement.appendChild(jse);

  console.log("Loading html2canvas...");
  jse.addEventListener('load', makeScreenshot);
}

