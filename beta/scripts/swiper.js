/*
NibbaPlay by Bitchboy IT
+-----------------------------------------------------+
|   _   _ _ _     _           _____  _                |
|  | \ | (_) |   | |         |  __ \| |               |
|  |  \| |_| |__ | |__   __ _| |__) | | __ _ _   _    |
|  | . ` | | '_ \| '_ \ / _` |  ___/| |/ _` | | | |   |
|  | |\  | | |_) | |_) | (_| | |    | | (_| | |_| |   |
|  |_| \_|_|_.__/|_.__/ \__,_|_|    |_|\__,_|\__, |   |
|                                             __/ |   |
|                                            |___/    |
+-------------===[ File Specifications ]===-----------+
|                                                     |
| Build Number:           1.0.0                       |
| Build on Website        1.0.0                       |
| File Name:              swiper.js                   |
| Created By:             NuutXD                      |
| Last Edited By:         NuutXD                      |
| Languages:                                          |
|  - JavaScript                                       |
|                                                     |
+-----------------------------------------------------+
*/
const featmovies = new Swiper('.featmovies', {
  direction: 'horizontal',
  slidesPerView: 1,
  spaceBetween: 70,
  loop: true,
  slidesPerGroup:1,


  pagination: {
    el: '.swiper-pagination',
    clickable: true,
  },

  // Navigation arrows
  navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
  },
  autoplay: {
    delay: 5000,
  },
  
});

const mcuswiper = new Swiper('.mcuswiper', {
    // Optional parameters
    direction: 'horizontal',
    slidesPerView: 5,
    spaceBetween: 11,
    loop: true,
    slidesPerGroup:5,
  
    // Navigation arrows
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  });

const swswiper = new Swiper('.swswiper', {
    // Optional parameters
    direction: 'horizontal',
    slidesPerView: 5,
    spaceBetween: 11,
    loop: true,
    slidesPerGroup:5,

    // Navigation arrows
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },
});
