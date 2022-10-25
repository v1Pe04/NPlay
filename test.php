<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Swiper TEst</title>
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    <script src="https://unpkg.com/swiper@7/swiper-bundle.js"></script>
    <!-- <link rel="stylesheet" href="style/style.css"> -->
    <link rel="stylesheet" href="style/test.css">
    <style>
        .swiper {
            height:350px;
        }

        body {
            padding: 0;
            margin: 0;
            background:#111;
            font-family:arial;
        }

        h1 {
          color: #33cc66;
        }

        section {
          background:#1b1b1b;
          width:1200px;
          margin:0 auto;
          margin-top:50px;
          padding:20px;
          border-radius:25px;
          min-height:100vh;
        }


        .swiper-slide {
          font-size:20px;
          font-weight: 600;
          display:flex;
          justify-content:center;
          align-items:center;
          transition: all 0.3s ease;
        }


        .swiper-button-prev,
        .swiper-button-next {
          color:#33cc66;
          font-weight:900;
          transition:all .3s ease;
          padding: 153px 20px;
        }

        .swiper-button-next {
          transform:translateY(-153px)translateX(10px);
          border-top-right-radius: 25px;
          border-bottom-right-radius: 25px;
        }

        .swiper-button-prev {
          transform:translateY(-153px)translateX(-10px);
          border-top-left-radius: 25px;
          border-bottom-left-radius: 25px;
        }

        .swiper-button-prev:hover,
        .swiper-button-next:hover {
          background:rgba(0,0,0,0.2);
        }

        .swiper-wrapper {
          height:350px;
          position:relative;
        }

        
    </style>
</head>
<body>
<script type="module">

  const swiper = new Swiper('.swiper', {
  slidesPerView: 5,
  spaceBetween: 10,
  slidesPerGroup: 5,
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
});
</script>

<section>

<h1>Filmer</h1>

<div class="swiper">
  <!-- Additional required wrapper -->
  <div class="swiper-wrapper">
    <!-- Slides -->
    <div class="swiper-slide"><a href="film.php?id=237" class="small-img">
    <img src="https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_.jpg">
    <h2>Venom</h2>
    <h3>Watch Now</h3>
    <span class="imdbRatingPlugin" data-user="ur134500880" data-title="tt1270797" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
    </a></div>
    <div class="swiper-slide"><a href="film.php?id=237" class="small-img">
    <img src="https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_.jpg">
    <h2>Venom</h2>
    <h3>Watch Now</h3>
    <span class="imdbRatingPlugin" data-user="ur134500880" data-title="tt1270797" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
    </a></div>
    <div class="swiper-slide"><a href="film.php?id=237" class="small-img">
    <img src="https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_.jpg">
    <h2>Venom</h2>
    <h3>Watch Now</h3>
    <span class="imdbRatingPlugin" data-user="ur134500880" data-title="tt1270797" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
    </a></div>
    <div class="swiper-slide"><a href="film.php?id=237" class="small-img">
    <img src="https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_.jpg">
    <h2>Venom</h2>
    <h3>Watch Now</h3>
    <span class="imdbRatingPlugin" data-user="ur134500880" data-title="tt1270797" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
    </a></div>
    <div class="swiper-slide"><a href="film.php?id=237" class="small-img">
    <img src="https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_.jpg">
    <h2>Venom</h2>
    <h3>Watch Now</h3>
    <span class="imdbRatingPlugin" data-user="ur134500880" data-title="tt1270797" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
    </a></div>
    <div class="swiper-slide"><a href="film.php?id=237" class="small-img">
    <img src="https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_.jpg">
    <h2>Venom</h2>
    <h3>Watch Now</h3>
    <span class="imdbRatingPlugin" data-user="ur134500880" data-title="tt1270797" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
    </a></div>
    <div class="swiper-slide"><a href="film.php?id=237" class="small-img">
    <img src="https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_.jpg">
    <h2>Venom</h2>
    <h3>Watch Now</h3>
    <span class="imdbRatingPlugin" data-user="ur134500880" data-title="tt1270797" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
    </a></div>
    <div class="swiper-slide"><a href="film.php?id=237" class="small-img">
    <img src="https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_.jpg">
    <h2>Venom</h2>
    <h3>Watch Now</h3>
    <span class="imdbRatingPlugin" data-user="ur134500880" data-title="tt1270797" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
    </a></div>
    <div class="swiper-slide"><a href="film.php?id=237" class="small-img">
    <img src="https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_.jpg">
    <h2>Venom</h2>
    <h3>Watch Now</h3>
    <span class="imdbRatingPlugin" data-user="ur134500880" data-title="tt1270797" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
    </a></div>
    <div class="swiper-slide"><a href="film.php?id=237" class="small-img">
    <img src="https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_.jpg">
    <h2>Venom</h2>
    <h3>Watch Now</h3>
    <span class="imdbRatingPlugin" data-user="ur134500880" data-title="tt1270797" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
    </a></div>
    <div class="swiper-slide"><a href="film.php?id=237" class="small-img">
    <img src="https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_.jpg">
    <h2>Venom</h2>
    <h3>Watch Now</h3>
    <span class="imdbRatingPlugin" data-user="ur134500880" data-title="tt1270797" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
    </a></div>
    <div class="swiper-slide"><a href="film.php?id=237" class="small-img">
    <img src="https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_.jpg">
    <h2>Venom</h2>
    <h3>Watch Now</h3>
    <span class="imdbRatingPlugin" data-user="ur134500880" data-title="tt1270797" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
    </a></div>
    <div class="swiper-slide"><a href="film.php?id=237" class="small-img">
    <img src="https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_.jpg">
    <h2>Venom</h2>
    <h3>Watch Now</h3>
    <span class="imdbRatingPlugin" data-user="ur134500880" data-title="tt1270797" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
    </a></div>
    <div class="swiper-slide"><a href="film.php?id=237" class="small-img">
    <img src="https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_.jpg">
    <h2>Venom</h2>
    <h3>Watch Now</h3>
    <span class="imdbRatingPlugin" data-user="ur134500880" data-title="tt1270797" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
    </a></div>
    <div class="swiper-slide"><a href="film.php?id=237" class="small-img">
    <img src="https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_.jpg">
    <h2>Venom</h2>
    <h3>Watch Now</h3>
    <span class="imdbRatingPlugin" data-user="ur134500880" data-title="tt1270797" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
    </a></div>
    
    ...
  </div>

  
  <!-- If we need pagination -->
  <div class="swiper-pagination"></div>

  <!-- If we need navigation buttons -->
  <div class="swiper-button-prev"></div>
  <div class="swiper-button-next"></div>

  <!-- If we need scrollbar -->
</div>

</section>
</body>
</html>