<script>
  if('serviceWorker' in navigator) {
    const offlineButton = document.createElement('a');
    offlineButton.className = 'sol-button';

    caches.open('offlinedPages')
      .then(function (cache) {
        cache.match(window.location.href)
          .then(function (result) {
            if(result) {
              document.querySelector('.article_sol p').appendChild(offlineButton);
              offlineButton.innerText = 'Page saved for offline!';
              offlineButton.setAttribute('disabled', 'disabled');
            } else {
              document.querySelector('.article_sol p').appendChild(offlineButton);
              offlineButton.innerText = 'Save this page for offline reading.';
            }
          })
      });

      offlineButton.addEventListener('click', function(ev) {
        ev.preventDefault();

        var btn = this;
        btn.innerText = 'Saving..';

        caches.open('offlinedPages')
          .then(function (cache) {

            // Cache the webpage
            cache.add(window.location.href)
              .then( function () {
                const data = {
                  'title': document.querySelector('title').innerText
                }

                localStorage.setItem(window.location.href, JSON.stringify(data));

                btn.innerText = 'Page saved for offline!';
                btn.setAttribute('disabled', 'disabled');
              })


            // Cache the resources requested by the webpage
            const urls = Array.prototype.map.call(
                document.querySelectorAll("link, img, script, iframe"), // Elements which request external resources
                function(e) { // Loop over and return their href/src
                    return e.href || e.src; 
                }
            );

            const resourceUrls = urls.filter( e => {
              const isNotLivereload = (!e.includes('livereload'));
              const isNotEmpty = (e !== "");
              const isNotReqFile = (e.includes('assets/') || e === 'installServiceWorker.js');
              return isNotLivereload && isNotEmpty && isNotReqFile;
            })

            cache.addAll(resourceUrls);
          })

      });
  } else {
    document.querySelector('#soldiv').style.display = 'none';
  }
</script>