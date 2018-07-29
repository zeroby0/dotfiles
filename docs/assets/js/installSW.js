if ('serviceWorker' in navigator) {
  window.addEventListener('load', function() {
     navigator.serviceWorker.register('/serviceworker.js').then(function(registration) {
      console.log('ServiceWorker registration successful with scope: ', registration.scope);
    }, function(err) {
      // registration failed :(
      console.log('ServiceWorker registration failed: ', err);
    });
  });
} else {
  console.log('Service workers not supported in this browser.');
}