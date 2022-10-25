-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 23. Jul, 2021 07:45 AM
-- Tjener-versjon: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id17230195_pirat`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `bruker`
--

CREATE TABLE `bruker` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_level` int(1) DEFAULT 0,
  `fornavn` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `etternavn` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dataark for tabell `bruker`
--



-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `comments`
--

CREATE TABLE `comments` (
  `id` int(20) NOT NULL,
  `user` bigint(20) NOT NULL,
  `film` int(20) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dataark for tabell `comments`
--

INSERT INTO `comments` (`id`, `user`, `film`, `comment`) VALUES
(5, 82962432, 78, 'Lessgo\r\n'),
(9, 8380739811, 19, 'wow'),
(10, 15613106786063, 27, 'first'),
(11, 82962432, 27, 'bruh'),
(12, 82962432, 295, 'Damn'),
(13, 82962432, 255, 'so fuckin stronk'),
(14, 82962432, 310, 'Denna va vældi bra Håvard'),
(15, 8380739811, 30, 'wow'),
(16, 82962432, 152, 'Once in a lifetime you\'ll come across a film that truly captures the history and cultural distinctions of the modern world the way a person can subjectively perceive it through our guided field of perspective. I have to admit, I had my doubts when I first learned of the movie. After all, Peppa Pig? Will this movie even be good? How ignorant was I to even have these thoughts. Little did I know I was about to indulge in what may have been the best 6 minutes and 7 seconds of my life. The movie started out strong. The opening scenes enticed the audience with a captivating enigma. I was so taken aback from the next-generation animation that I almost didn\'t even realize the underlying symbolism in the ongoing scenes. It wasn\'t until my twenty sixth viewing of the movie where I finally got my bearings together and was able to focus on the gripping and labyrinthine stratagem. The underlying analogy for 19th century distopianism and the evangelical deviation of typical orthodoxy was enlightening to say the least. Just when I thought the movie could not get any better, the increasing conflict before the climax began. I could not believe the complexity of the story as the main bee protagonist, Bellza, struggled with the everyday endeavors for a quintessential bee such as the consistent up- hill altercation of the fight against misogyny and the fiscal synergy of opposing interplanetary dynamisms. There I was, gripping to my chair as the conflict of the movie began. I was so enticed by the movie that I felt as if I was both practically and relatively apart of the movie. This is a special kind of high that not even the strongest of drugs can give you. Was I part of the movie? Am I inside the movie right now? This movie will leave you questioning existential nihilism and the objective skepticism of our perceived valuation of anthropological existence. At this point in the film, I was fully intoxicated by the avant-garde animated art style. That\'s when the plot finally aggrandized and I was completely stupefied. You could have lived a thousand years of isolation trying to predict the plot twist and you would never even scratch the surface of what actually transpires in the movie. I was so bewildered that I actually had to pause the movie so that my existential crisis didn\'t dive too deep inside of myself. Even pausing the movie was surreal. It\'s almost as if life paused with the movie. I felt as though I had actually become a cinematic tangent quantum. The effects are still wearing off and I haven\'t been able to watch the movie in several years. I spent the following seven years afraid of what outside of my house actually looks like. Every single day and night I live in misery because I became fully aware that happiness is never achievable. I realized that human life has absolutely no meaning and that no matter what I ever do, it is of complete unimportance and in years from now, no recollection of my existence will prevail, meaning that if I died years ago, died now, or die sometime in the future it will not matter whatsoever to anyone. But, then again, the fact that I\'m living doesn\'t matter either so I might as well stick around for awhile, living in complete isolation, condemned to a life of traumatic memories and a completely corrupted sub-conscience. Peppa Pig Endgame The Movie! literally ruined my life. 10/10'),
(17, 8380739811, 152, 'bruh'),
(18, 8380739811, 78, 'OI OI OI'),
(19, 82962432, 148, 'Go dayum'),
(20, 9223372036854775807, 48, 'this is poggers'),
(21, 82962432, 250, ':O very scery'),
(22, 8380739811, 250, 'Gru Epic Gamer'),
(23, 15613106786063, 78, 'first'),
(24, 7567328494524, 250, '...'),
(25, 5485973988218682689, 79, 'Cinema har bære blitt værre etter denna\r\n'),
(26, 3726593428655365415, 266, 'Yo. Det e jo han Starlord');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `episoder`
--

CREATE TABLE `episoder` (
  `episode_id` int(11) NOT NULL,
  `sesong_nummer` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `episode_nummer` int(11) NOT NULL,
  `episode_navn` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `episode_bilde` text COLLATE utf8_unicode_ci NOT NULL,
  `episode_film` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dataark for tabell `episoder`
--

INSERT INTO `episoder` (`episode_id`, `sesong_nummer`, `episode_nummer`, `episode_navn`, `episode_bilde`, `episode_film`) VALUES
(1, 'rickandmorty1', 1, 'Pilot', 'https://m.media-amazon.com/images/M/MV5BNzlhNGI0MTUtOWZlNS00ZmQ2LTk2NTYtMGMwMzRmOGViZWIyXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg', 'https://www.2embed.ru/embed/tmdb/tv?id=60625&s=1&e=1'),
(2, 'rickandmorty1', 2, 'Lawnmower Dog', 'https://m.media-amazon.com/images/M/MV5BNzUyNmIxYzYtMTM2My00ZTZjLWFmODYtNmFmMDgyZDY4OWU4XkEyXkFqcGdeQXVyNjg0Nzk2Nzc@._V1_.jpg', 'https://www.2embed.ru/embed/tmdb/tv?id=60625&s=1&e=2'),
(3, 'rickandmorty1', 3, 'Anatomy Park', 'https://m.media-amazon.com/images/M/MV5BM2I0Nzg0YTktYTc2Zi00NTk4LWI5ZDQtMmVhYjBjZmRmNGM0XkEyXkFqcGdeQXVyNjg4ODczODM@._V1_.jpg', 'https://www.2embed.ru/embed/tmdb/tv?id=60625&s=1&e=3'),
(4, 'rickandmorty1', 4, 'M. Night Shaym-Aliens!', 'https://m.media-amazon.com/images/M/MV5BZWZmZDBjYTEtZTQyNy00NDc5LTgxMjEtZmQyNmU1N2Y1NThkXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg', 'https://www.2embed.ru/embed/tmdb/tv?id=60625&s=1&e=4'),
(5, 'rickandmorty1', 5, 'Meeseeks and Destroy', 'https://m.media-amazon.com/images/M/MV5BNGQyOWNhYzQtNTJhNy00NzFhLTkyYTgtYTM4MGI0NmYxMWJiXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg', 'https://www.2embed.ru/embed/tmdb/tv?id=60625&s=1&e=5'),
(6, 'rickandmorty1', 6, 'Rick Potion #9\r\n', 'https://m.media-amazon.com/images/M/MV5BYjg2NjhlMWQtMjgxOS00YTVlLWJjN2UtZjhmMjA2ZjMzYmMzXkEyXkFqcGdeQXVyMTMxMDE2OTU2._V1_.jpg', 'https://www.2embed.ru/embed/tmdb/tv?id=60625&s=1&e=6'),
(7, 'rickandmorty1', 7, 'Raising Gazorpazorp', 'https://m.media-amazon.com/images/M/MV5BYmRlZTdmNTEtNmY5Ny00MTlmLTk5M2UtNGQwYzFkYzU2YWRlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg', 'https://www.2embed.ru/embed/tmdb/tv?id=60625&s=1&e=7'),
(8, 'rickandmorty1', 8, 'Rixty Minutes', 'https://m.media-amazon.com/images/M/MV5BNzM4MmM3MjctYjE0Yy00NzVhLThkNmQtNjBhNWU2MDc1ZjNhXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg', 'https://www.2embed.ru/embed/tmdb/tv?id=60625&s=1&e=8'),
(9, 'rickandmorty1', 9, 'Something Ricked This Way Comes', 'https://m.media-amazon.com/images/M/MV5BNDIzNDEwOGQtNTE5Mi00ZWM0LWJmYTQtZTk0ZTAzM2Q2ZWZkXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg', 'https://www.2embed.ru/embed/tmdb/tv?id=60625&s=1&e=9'),
(10, 'rickandmorty1', 10, 'Close Rick-counters of the Rick Kind', 'https://m.media-amazon.com/images/M/MV5BZWRhYzZhZjMtMjQxMi00OWVkLWEzNjItMjE3ZmZjM2QwZWU2L2ltYWdlXkEyXkFqcGdeQXVyNDk3OTIwNTU@._V1_.jpg', 'https://www.2embed.ru/embed/tmdb/tv?id=60625&s=1&e=10'),
(11, 'rickandmorty1', 11, 'Ricksy Business', 'https://m.media-amazon.com/images/M/MV5BOGU0ODA0ZDYtNWJiYy00MGM0LThhZDAtMDkxNjZhMGRhZWEyXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg', 'https://www.2embed.ru/embed/tmdb/tv?id=60625&s=1&e=11'),
(12, 'invincible1', 1, 'It\'s About Time', 'https://m.media-amazon.com/images/M/MV5BZTBkZDcwYjQtOWJmMy00MDgxLTllOGUtN2JmMTc5YzBiNzQ0XkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt6741278&s=1&e=1'),
(13, 'invincible1', 2, 'Here Goes Nothing', 'https://m.media-amazon.com/images/M/MV5BZjU5M2RiMGMtZDg1OS00MDdkLTlhNTYtZDE4YzRkZGI5YjU1XkEyXkFqcGdeQXVyMzE5MDUxODM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt6741278&s=1&e=2'),
(14, 'invincible1', 3, 'Who You Calling Ugly?', 'https://m.media-amazon.com/images/M/MV5BYmM0MDI5YzctMWExMi00MmI5LTkwOGItMjNhMTgzY2ZlZjg2XkEyXkFqcGdeQXVyNzg5MzIyOA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt6741278&s=1&e=3'),
(15, 'invincible1', 4, 'Neil Armstrong, Eat Your Heart Out', 'https://m.media-amazon.com/images/M/MV5BZGI3MDM3ODktMDZjNy00ODI5LThiMzAtOTZiZWUxMzg2NzExXkEyXkFqcGdeQXVyNzg5MzIyOA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt6741278&s=1&e=4'),
(16, 'invincible1', 5, 'That Actually Hurt', 'https://m.media-amazon.com/images/M/MV5BMWIxM2RlOTItZjQ4Ny00NjMyLWIwNDAtNzMzNmUzMjZlOTAwXkEyXkFqcGdeQXVyNTQ0NjQzNTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt6741278&s=1&e=5'),
(17, 'invincible1', 6, 'You Look Kinda Dead', 'https://m.media-amazon.com/images/M/MV5BZmZlYjkwZmUtYjM2Mi00NTAwLWFhODItY2U3MzljMWU5NzkzXkEyXkFqcGdeQXVyNzg5MzIyOA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt6741278&s=1&e=6'),
(18, 'invincible1', 7, 'We Need to Talk', 'https://m.media-amazon.com/images/M/MV5BYWVlODg3ZDAtNWM0Ni00ZmI5LTg1NzQtNDFmNDExNzY5YzJmXkEyXkFqcGdeQXVyNzg5MzIyOA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt6741278&s=1&e=7'),
(19, 'invincible1', 8, 'Where I Really Come From', 'https://m.media-amazon.com/images/M/MV5BOTFjZGZmMzUtYjIzOC00MWFhLWJlMzctNmIyNDVhMTZkNGQxXkEyXkFqcGdeQXVyNzg5MzIyOA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt6741278&s=1&e=8'),
(20, 'theboys1', 1, 'The Name of the Game', 'https://m.media-amazon.com/images/M/MV5BZDg2YjZmODItOGQ4OS00NzIxLWI5MGEtMGM0ZGNiMmEzMWFjXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt1190634&s=1&e=1'),
(21, 'theboys1', 2, 'Cherry', 'https://m.media-amazon.com/images/M/MV5BYzU1ZWNjZjktOGFlNy00ZmVkLWFkYjQtYjVhZWMxZDUxZmRkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt1190634&s=1&e=2'),
(22, 'theboys1', 3, 'Get Some', 'https://m.media-amazon.com/images/M/MV5BNWZlNjAwYjYtYzk0Ny00ZjkzLTk0ZGItMzY1ZmJjMTlhYTM4XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt1190634&s=1&e=3'),
(23, 'theboys1', 4, 'The Female of the Species', 'https://m.media-amazon.com/images/M/MV5BOTJjODUwNWQtMDg0Mi00NGY5LWEyNzktNDFiYjNlNmE1MWZhXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt1190634&s=1&e=4'),
(24, 'theboys1', 5, 'Good for the Soul', 'https://m.media-amazon.com/images/M/MV5BYjA3MGU5ZTMtYmM0ZS00OTI1LWJjZTAtYzY5NTk3YTg5OTIzXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt1190634&s=1&e=5'),
(25, 'theboys1', 6, 'The Innocents', 'https://m.media-amazon.com/images/M/MV5BNjg2MDg0NjctNmNmZS00NjY3LTk0OWYtMTc2MGIxYWFiNmQ5XkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt1190634&s=1&e=6'),
(26, 'theboys1', 7, 'The Self-Preservation Society', 'https://m.media-amazon.com/images/M/MV5BYzQzMmMwMGUtNjUzZi00MDc2LTk2OTItMDg1MTVjOWMzYTQxXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt1190634&s=1&e=7'),
(27, 'theboys1', 8, 'You Found Me', 'https://m.media-amazon.com/images/M/MV5BZDkwOWMxZjMtNmEwOS00ODc1LWJhZGYtYmI5Njc3NzBiZTVjXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt1190634&s=1&e=8'),
(28, 'loki1', 1, 'Glorious Purpose', 'https://m.media-amazon.com/images/M/MV5BOTk0ZGFjYmItNjQzNC00OTBiLWI4ZDktY2I4YzQ2NDRhZmZlXkEyXkFqcGdeQXVyODIyOTEyMzY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9140554&s=1&e=1'),
(29, 'loki1', 2, 'The Variant', 'https://m.media-amazon.com/images/M/MV5BYjkyZDEyMjktZTRmZC00MzY0LTk1NmUtMThiYzEyYTNlNDAwXkEyXkFqcGdeQXVyNjczOTE0MzM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9140554&s=1&e=2'),
(30, 'loki1', 3, 'Lamentis', 'https://m.media-amazon.com/images/M/MV5BYzhjNmVhMTctYjc1OC00ZDYxLTgwZDEtYmEyNjJhOTdhZDNjXkEyXkFqcGdeQXVyNjczOTE0MzM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9140554&s=1&e=3'),
(31, 'loki1', 4, 'The Nexus Event', 'https://m.media-amazon.com/images/M/MV5BNjU2NmQ4ZDgtMmQxYi00YjFmLWE0N2MtODZhYzc3NGNlNzdjXkEyXkFqcGdeQXVyNjczOTE0MzM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9140554&s=1&e=4'),
(32, 'loki1', 5, 'Journey Into Mystery', 'https://m.media-amazon.com/images/M/MV5BNGNhNzA3OTEtNDVkYi00NWQ4LWE5YTEtMjA5MzJmODI2YjBmXkEyXkFqcGdeQXVyNTQ0NjQzNTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9140554&s=1&e=5'),
(33, 'loki1', 6, 'For All Time. Always.', 'https://m.media-amazon.com/images/M/MV5BOTQyNTA4MTEtMzI2Yy00ZWQ0LTljZDgtNWFhNWU1YjQ1YTY4XkEyXkFqcGdeQXVyMTI4NDk3OTA4._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9140554&s=1&e=6'),
(34, 'wandavision1', 1, 'Filmed Before a Live Studio Audience', 'https://m.media-amazon.com/images/M/MV5BZjRmYmJiNTUtNTQ4ZS00ODdiLWIwNGEtNjhmZWIwZDhjZjA1XkEyXkFqcGdeQXVyNjczOTE0MzM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9140560&s=1&e=1'),
(35, 'wandavision1', 2, 'Don\'t Touch That Dial', 'https://m.media-amazon.com/images/M/MV5BMjJmY2M3ZjUtMDVkOC00NjY4LTkyMGItYTEyNTU5ZDRkMDZhXkEyXkFqcGdeQXVyNjczOTE0MzM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9140560&s=1&e=2'),
(36, 'wandavision1', 3, 'Now in Color', 'https://m.media-amazon.com/images/M/MV5BMDk0NmIxMzEtOTEwYi00MWRlLWIzNmEtMWY4M2ZmZjA3ZGFjXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9140560&s=1&e=3'),
(37, 'wandavision1', 4, 'We Interrupt This Program', 'https://m.media-amazon.com/images/M/MV5BOTkwOWEzZDEtNzE2MC00MjBhLWE3M2QtNjUyZDY2MGIwZTRiXkEyXkFqcGdeQXVyNTA4NzExMDg@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9140560&s=1&e=4'),
(38, 'wandavision1', 5, 'On a Very Special Episode...', 'https://m.media-amazon.com/images/M/MV5BYmI2MWNiZTItNDRkNi00YzdjLWFmNTUtNDY0YTY5YTE1NjJiXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9140560&s=1&e=5'),
(39, 'wandavision1', 6, 'All-New Halloween Spooktacular!', 'https://m.media-amazon.com/images/M/MV5BYjkxMzdlYzYtYWM3MS00NGM2LTk5MTctOTUzMjM2NDI5ZjUzXkEyXkFqcGdeQXVyMTAxNDE3MTE5._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9140560&s=1&e=6'),
(40, 'wandavision1', 7, 'Breaking the Fourth Wall', 'https://m.media-amazon.com/images/M/MV5BYzFiYjI5YmMtZmUxMS00MmRkLTkwNDMtZTQyMTM2MTRiMmE1XkEyXkFqcGdeQXVyODc0NjQ1MTY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9140560&s=1&e=7'),
(41, 'wandavision1', 8, 'Previously On', 'https://m.media-amazon.com/images/M/MV5BYjlkYjU1NTYtNTA0OC00Yzk4LWI1M2YtYzcyOTY4NGI5N2Y3XkEyXkFqcGdeQXVyNjczOTE0MzM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9140560&s=1&e=8'),
(42, 'wandavision1', 9, 'The Series Finale', 'https://m.media-amazon.com/images/M/MV5BY2QwOTI4OTktZjY0Ny00Y2YxLWEyNmMtYjIxZmI2NzAyYjI0XkEyXkFqcGdeQXVyODc0NjQ1MTY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9140560&s=1&e=9'),
(43, 'falconwinter1', 1, 'New World Order', 'https://m.media-amazon.com/images/M/MV5BNDdiMjg5Y2EtMDVlYi00MmVmLTk5NzUtNjY3NmQ3ODk4OWQ2XkEyXkFqcGdeQXVyODkzNTgxMDg@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9208876&s=1&e=1'),
(44, 'falconwinter1', 2, 'The Star-Spangled Man', 'https://m.media-amazon.com/images/M/MV5BNDdiZDRiYjgtMTQwNy00NTk2LTlhYjktMjU5OThmMGQzNDg5XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9208876&s=1&e=2'),
(45, 'falconwinter1', 3, 'Power Broker', 'https://m.media-amazon.com/images/M/MV5BZTE3OGQyMDEtNjNiNy00M2I4LWFiNGYtZWM2NjFiYjExZWUwXkEyXkFqcGdeQXVyOTE5MzkwMjU@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9208876&s=1&e=3'),
(46, 'falconwinter1', 4, 'The Whole World Is Watching', 'https://m.media-amazon.com/images/M/MV5BNmM2ODA0YWMtMGY1Yi00YmIyLWJlMDgtMTU4ZGU4OTc3YjgzXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9208876&s=1&e=4'),
(47, 'falconwinter1', 5, 'Truth', 'https://m.media-amazon.com/images/M/MV5BYzc1MjcxOTQtYzliNi00ZDc4LTkwY2UtZjg1NWZkODc0NWJiXkEyXkFqcGdeQXVyODIyOTEyMzY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9208876&s=1&e=5'),
(48, 'falconwinter1', 6, 'One World, One People', 'https://m.media-amazon.com/images/M/MV5BZjgxOGNhMDItODE2NS00NzJiLWJkOTUtOTczN2VmMTViMWYwXkEyXkFqcGdeQXVyODc0OTEyNDU@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt9208876&s=1&e=6'),
(49, 'strangerthings1', 1, 'The Vanishing of Will Byers', 'https://m.media-amazon.com/images/M/MV5BMTUwNTE0ODYzOF5BMl5BanBnXkFtZTgwOTc0ODE0OTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt4574334&s=1&e=1'),
(50, 'strangerthings1', 2, 'The Weirdo on Maple Street', 'https://m.media-amazon.com/images/M/MV5BYzk2YzFhM2MtNjM4Ny00NTBhLTljZTUtNzcwM2ZiMWQ3MjYwXkEyXkFqcGdeQXVyNjUxMjc1OTM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt4574334&s=1&e=2'),
(51, 'strangerthings1', 3, 'Holly, Jolly', 'https://m.media-amazon.com/images/M/MV5BOTcyNjU2MTM3MV5BMl5BanBnXkFtZTgwMjc0ODE0OTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt4574334&s=1&e=3'),
(52, 'strangerthings1', 4, 'The Body', 'https://m.media-amazon.com/images/M/MV5BMTkwMjU2MjgzOV5BMl5BanBnXkFtZTgwMzAzOTQ5ODE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt4574334&s=1&e=4'),
(53, 'strangerthings1', 5, 'The Flea and the Acrobat', 'https://m.media-amazon.com/images/M/MV5BMjM0NjQxNTkwOF5BMl5BanBnXkFtZTgwMzY0ODE0OTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt4574334&s=1&e=5'),
(54, 'strangerthings1', 6, 'The Monster', 'https://m.media-amazon.com/images/M/MV5BNDE1MjQ1MDE3NF5BMl5BanBnXkFtZTgwOTY0ODE0OTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt4574334&s=1&e=6'),
(55, 'strangerthings1', 7, 'The Bathtub', 'https://m.media-amazon.com/images/M/MV5BMjMyNTkyMTg1Ml5BMl5BanBnXkFtZTgwMjAzOTQ5ODE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt4574334&s=1&e=7'),
(56, 'strangerthings1', 8, 'The Upside Down', 'https://m.media-amazon.com/images/M/MV5BMTEzNzk3MDY5MDdeQTJeQWpwZ15BbWU4MDg4NDgxNDkx._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt4574334&s=1&e=8'),
(57, 'strangerthings2', 1, 'MADMAX', 'https://m.media-amazon.com/images/M/MV5BNjkwNzI1MDU5OV5BMl5BanBnXkFtZTgwNTk4MzcyNDM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt4574334&s=2&e=1'),
(58, 'strangerthings2', 2, 'Trick or Treat, Freak', 'https://m.media-amazon.com/images/M/MV5BOTY2MDE3ODU2OV5BMl5BanBnXkFtZTgwMjE4MzcyNDM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt4574334&s=2&e=2'),
(59, 'strangerthings2', 3, 'The Pollywog', 'https://m.media-amazon.com/images/M/MV5BMTY1NDMxMDI0M15BMl5BanBnXkFtZTgwNDc4MzcyNDM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt4574334&s=2&e=3'),
(60, 'strangerthings2', 4, 'Will the Wise', 'https://m.media-amazon.com/images/M/MV5BMjczNzczOTIxNl5BMl5BanBnXkFtZTgwNTA5MzcyNDM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt4574334&s=2&e=4'),
(61, 'strangerthings2', 5, 'Dig Dug', 'https://m.media-amazon.com/images/M/MV5BMzhkNzlkMDgtM2QwMy00NzVlLTk2NDEtODRiNzRkNzdlYzMzXkEyXkFqcGdeQXVyNzQ0MDUyMzg@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt4574334&s=2&e=5'),
(62, 'strangerthings2', 6, 'The Spy', 'https://m.media-amazon.com/images/M/MV5BZmYwMmM1NGMtM2I4ZC00MTcxLTgxNDgtN2Y1OTM3YjMxZGViXkEyXkFqcGdeQXVyNzQ0MDUyMzg@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt4574334&s=2&e=6'),
(63, 'strangerthings2', 7, 'The Lost Sister', 'https://m.media-amazon.com/images/M/MV5BMDY0OTkzY2MtZGVjOS00NTVlLWExNDAtM2M1ZjczNDVhZWI0XkEyXkFqcGdeQXVyNzQ0MDUyMzg@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt4574334&s=2&e=7'),
(64, 'strangerthings2', 8, 'The Mind Flayer', 'https://m.media-amazon.com/images/M/MV5BODkzMjEzODUxM15BMl5BanBnXkFtZTgwMDU4MzcyNDM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt4574334&s=2&e=8'),
(65, 'strangerthings2', 9, 'The Gate', 'https://m.media-amazon.com/images/M/MV5BNTYzNjAyMDMwMV5BMl5BanBnXkFtZTgwNDk3MzcyNDM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt4574334&s=2&e=9'),
(66, 'theboys2', 1, 'The Big Ride', 'https://m.media-amazon.com/images/M/MV5BZDIzNDE3MDEtMDllZS00MjFmLWIwZjUtYWY2ZDA3ODQ0Mzc5XkEyXkFqcGdeQXVyMTA3MzQ4MTcw._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt1190634&s=2&e=1'),
(67, 'theboys2', 2, 'Proper Preparation and Planning', 'https://m.media-amazon.com/images/M/MV5BZDIzNDE3MDEtMDllZS00MjFmLWIwZjUtYWY2ZDA3ODQ0Mzc5XkEyXkFqcGdeQXVyMTA3MzQ4MTcw._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt1190634&s=2&e=2'),
(68, 'theboys2', 3, 'Over the Hill with the Swords of a Thousand Men', 'https://m.media-amazon.com/images/M/MV5BZDIzNDE3MDEtMDllZS00MjFmLWIwZjUtYWY2ZDA3ODQ0Mzc5XkEyXkFqcGdeQXVyMTA3MzQ4MTcw._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt1190634&s=2&e=3'),
(69, 'theboys2', 4, 'Nothing Like It in the World', 'https://m.media-amazon.com/images/M/MV5BZDIzNDE3MDEtMDllZS00MjFmLWIwZjUtYWY2ZDA3ODQ0Mzc5XkEyXkFqcGdeQXVyMTA3MzQ4MTcw._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt1190634&s=2&e=4'),
(70, 'theboys2', 5, 'We Gotta Go Now', 'https://m.media-amazon.com/images/M/MV5BZDIzNDE3MDEtMDllZS00MjFmLWIwZjUtYWY2ZDA3ODQ0Mzc5XkEyXkFqcGdeQXVyMTA3MzQ4MTcw._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt1190634&s=2&e=5'),
(71, 'theboys2', 6, 'The Bloody Doors Off', 'https://m.media-amazon.com/images/M/MV5BZDIzNDE3MDEtMDllZS00MjFmLWIwZjUtYWY2ZDA3ODQ0Mzc5XkEyXkFqcGdeQXVyMTA3MzQ4MTcw._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt1190634&s=2&e=6'),
(72, 'theboys2', 7, 'Butcher, Baker, Candlestick Maker', 'https://m.media-amazon.com/images/M/MV5BZDIzNDE3MDEtMDllZS00MjFmLWIwZjUtYWY2ZDA3ODQ0Mzc5XkEyXkFqcGdeQXVyMTA3MzQ4MTcw._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt1190634&s=2&e=7'),
(73, 'theboys2', 8, 'What I Know', 'https://m.media-amazon.com/images/M/MV5BZDIzNDE3MDEtMDllZS00MjFmLWIwZjUtYWY2ZDA3ODQ0Mzc5XkEyXkFqcGdeQXVyMTA3MzQ4MTcw._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt1190634&s=2&e=8'),
(74, 'theflash7', 1, 'All\'s Wells That Ends Wells', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt3107288&s=7&e=1'),
(75, 'theflash7', 2, 'The Speed of Thought', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt3107288&s=7&e=2'),
(76, 'theflash7', 3, 'Mother', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt3107288&s=7&e=3'),
(77, 'theflash7', 4, 'Central City Strong', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt3107288&s=7&e=4'),
(78, 'theflash7', 5, 'Fear Me', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt3107288&s=7&e=5'),
(79, 'theflash7', 6, 'The One with the Nineties', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt3107288&s=7&e=6'),
(80, 'theflash7', 7, 'Growing Pains', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt3107288&s=7&e=7'),
(81, 'theflash7', 8, 'The People V. Killer Frost', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt3107288&s=7&e=8'),
(82, 'theflash7', 9, 'Timeless', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt3107288&s=7&e=9'),
(83, 'theflash7', 10, 'Family Matters, Part 1', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt3107288&s=7&e=10'),
(84, 'theflash7', 11, 'Family Matters, Part 2', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt3107288&s=7&e=11'),
(85, 'theflash7', 12, 'Good-Bye Vibrations', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt3107288&s=7&e=12'),
(86, 'theflash7', 13, 'Masquerade', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt3107288&s=7&e=13'),
(87, 'theflash7', 14, 'Rayo de Luz', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt3107288&s=7&e=14'),
(88, 'theflash7', 15, 'Enemy at the Gates', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt3107288&s=7&e=15'),
(89, 'theflash7', 16, 'P.O.W.', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt3107288&s=7&e=16'),
(90, 'theflash7', 17, 'Heart of the Matter, Part 1', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt3107288&s=7&e=17'),
(91, 'theflash7', 18, 'Heart of the Matter, Part 2', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/tv?id=tt3107288&s=7&e=18');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `filmer`
--

CREATE TABLE `filmer` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `bilde` text NOT NULL,
  `film` text NOT NULL,
  `beskrivelse` text NOT NULL,
  `rating` text NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dataark for tabell `filmer`
--

INSERT INTO `filmer` (`id`, `title`, `bilde`, `film`, `beskrivelse`, `rating`, `kategori`) VALUES
(1, 'The Lego Movie', 'https://m.media-amazon.com/images/M/MV5BMTg4MDk1ODExN15BMl5BanBnXkFtZTgwNzIyNjg3MDE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1490017', 'An ordinary LEGO construction worker, thought to be the prophesied as \"special\", is recruited to join a quest to stop an evil tyrant from gluing the LEGO universe into eternal stasis.', 'tt1490017', 'Lego'),
(2, 'The Lego Movie 2: The Second Part', 'https://m.media-amazon.com/images/M/MV5BMTkyOTkwNDc1N15BMl5BanBnXkFtZTgwNzkyMzk3NjM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3513498', 'It\'s been five years since everything was awesome and the citizens are facing a huge new threat: Lego Duplo invaders from outer space, wrecking everything faster than they can rebuild.', 'tt3513498', 'Lego'),
(3, 'The Jungle Book', 'https://m.media-amazon.com/images/M/MV5BMjAwMTExODExNl5BMl5BanBnXkFtZTgwMjM2MDgyMTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0061852', 'Bagheera the Panther and Baloo the Bear have a difficult time trying to convince a boy to leave the jungle for human civilization.', 'tt0061852', 'Family'),
(4, 'The Jungle Book 2', 'https://m.media-amazon.com/images/M/MV5BNDk2NTk1NzQxN15BMl5BanBnXkFtZTYwMDMyMTg5._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0283426', 'Mowgli, missing the jungle and his old friends, runs away from the man village unaware of the danger he\'s in by going back to the wild.', 'tt0283426', 'Family'),
(5, 'You Got Served', 'https://m.media-amazon.com/images/M/MV5BZjkzZWZjZmMtMjliYi00Zjg5LTkzZGYtYzZkOGNhNzc5MzQxXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0365957', 'In order to achieve their dream of opening a recording studio, two friends (Omarion, Houston) must first win their city\'s dance contest -- a fierce competition that pits them against a group of tough street dancers.', 'tt0365957', 'Drama'),
(6, 'Teen Titans Go! See Space Jam', 'https://m.media-amazon.com/images/M/MV5BYTIxYmNhOTYtMmE5MC00MTRiLTgwMTEtMWM5N2ZlNzRlOWE4XkEyXkFqcGdeQXVyNTc3NjU4NDE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt14851194', 'The Teen Titans are visited by the Nerdlucks, the Space Jam villains who tried to capture Michael Jordan and the Looney Tunes. Astonished to discover his fellow Titans have never seen Space Jam, Cyborg organizes an exclusive watch party. Of course, if the Titans are watching a movie, don\'t expect silence to be golden. Raven and Starfire provide the commentary, Cyborg presents the fun facts, Beast Boy points out the butt shots, and Robin, but Robin doesn\'t trust their new alien friends. Are the Nerdlucks here to attend an innocent watch party, or do they have more sinister motives up their sleeves?', 'tt14851194', 'Family'),
(7, 'The Boss Baby: Family Business', 'https://m.media-amazon.com/images/M/MV5BYWY1N2I5MGUtZTBmNS00MWZmLWEyNzAtZjliNzk0ZDVkYzI1XkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt6932874', 'The Templeton brothers have become adults and drifted away from each other, but a new boss baby with a cutting-edge approach is about to bring them together again - and inspire a new family business.', 'tt6932874', 'Family'),
(8, 'Tag', 'https://m.media-amazon.com/images/M/MV5BNzk4NDM3NjkwNF5BMl5BanBnXkFtZTgwNTk5MzkzNTM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2854926', 'A small group of former classmates organize an elaborate, annual game of tag that requires some to travel all over the country.', 'tt2854926', 'Action'),
(9, 'Iron Man', 'https://quotesaga-img.s3.amazonaws.com/movie/QS_iron-man.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0371746', 'After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.', 'tt0371746', 'MCU'),
(10, 'The Incredible Hulk', 'https://m.media-amazon.com/images/M/MV5BMTUyNzk3MjA1OF5BMl5BanBnXkFtZTcwMTE1Njg2MQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0800080', 'Bruce Banner, a scientist on the run from the U.S. Government, must find a cure for the monster he turns into whenever he loses his temper.', 'tt0800080', 'MCU'),
(11, 'Iron Man 2', 'https://m.media-amazon.com/images/M/MV5BMTM0MDgwNjMyMl5BMl5BanBnXkFtZTcwNTg3NzAzMw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1228705', 'With the world now aware of his identity as Iron Man, Tony Stark must contend with both his declining health and a vengeful mad man with ties to his father\'s legacy.', 'tt1228705', 'MCU'),
(12, 'Thor', 'https://m.media-amazon.com/images/M/MV5BOGE4NzU1YTAtNzA3Mi00ZTA2LTg2YmYtMDJmMThiMjlkYjg2XkEyXkFqcGdeQXVyNTgzMDMzMTg@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0800369', 'The powerful but arrogant god Thor is cast out of Asgard to live amongst humans in Midgard (Earth), where he soon becomes one of their finest defenders.', 'tt0800369', 'MCU'),
(13, 'Captain America: The First Avenger', 'https://m.media-amazon.com/images/M/MV5BMTYzOTc2NzU3N15BMl5BanBnXkFtZTcwNjY3MDE3NQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0458339', 'Steve Rogers, a rejected military soldier, transforms into Captain America after taking a dose of a \"Super-Soldier serum\". But being Captain America comes at a price as he attempts to take down a war monger and a terrorist organization.', 'tt0458339', 'MCU'),
(14, 'Avengers', 'https://m.media-amazon.com/images/M/MV5BNDYxNjQyMjAtNTdiOS00NGYwLWFmNTAtNThmYjU5ZGI2YTI1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0848228', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', 'tt0848228', 'MCU'),
(15, 'Iron Man 3', 'https://m.media-amazon.com/images/M/MV5BMjE5MzcyNjk1M15BMl5BanBnXkFtZTcwMjQ4MjcxOQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1300854', 'When Tony Stark\'s world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.', 'tt1300854', 'MCU'),
(16, 'Thor: The Dark World', 'https://m.media-amazon.com/images/M/MV5BMTQyNzAwOTUxOF5BMl5BanBnXkFtZTcwMTE0OTc5OQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1981115', 'When the Dark Elves attempt to plunge the universe into darkness, Thor must embark on a perilous and personal journey that will reunite him with doctor Jane Foster.', 'tt1981115', 'MCU'),
(17, 'Captain America: The Winter Soldier', 'https://m.media-amazon.com/images/M/MV5BMzA2NDkwODAwM15BMl5BanBnXkFtZTgwODk5MTgzMTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1843866', 'As Steve Rogers struggles to embrace his role in the modern world, he teams up with a fellow Avenger and S.H.I.E.L.D agent, Black Widow, to battle a new threat from history: an assassin known as the Winter Soldier.', 'tt1843866', 'MCU'),
(18, 'Guardians of the Galaxy', 'https://m.media-amazon.com/images/M/MV5BMTAwMjU5OTgxNjZeQTJeQWpwZ15BbWU4MDUxNDYxODEx._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2015381', 'A group of intergalactic criminals must pull together to stop a fanatical warrior with plans to purge the universe.', 'tt2015381', 'MCU'),
(19, 'Avengers: Age of Ultron', 'https://m.media-amazon.com/images/M/MV5BMTM4OGJmNWMtOTM4Ni00NTE3LTg3MDItZmQxYjc4N2JhNmUxXkEyXkFqcGdeQXVyNTgzMDMzMTg@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2395427', 'When Tony Stark and Bruce Banner try to jump-start a dormant peacekeeping program called Ultron, things go horribly wrong and it\'s up to Earth\'s mightiest heroes to stop the villainous Ultron from enacting his terrible plan.', 'tt2395427', 'MCU'),
(20, 'Ant-Man', 'https://m.media-amazon.com/images/M/MV5BMjM2NTQ5Mzc2M15BMl5BanBnXkFtZTgwNTcxMDI2NTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0478970', 'Armed with a super-suit with the astonishing ability to shrink in scale but increase in strength, cat burglar Scott Lang must embrace his inner hero and help his mentor, Dr. Hank Pym, plan and pull off a heist that will save the world.', 'tt0478970', 'MCU'),
(21, 'Captain America: Civil War', 'https://m.media-amazon.com/images/M/MV5BMjQ0MTgyNjAxMV5BMl5BanBnXkFtZTgwNjUzMDkyODE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3498820', 'Political involvement in the Avengers\' affairs causes a rift between Captain America and Iron Man.', 'tt3498820', 'MCU'),
(22, 'Doctor Strange', 'https://m.media-amazon.com/images/M/MV5BNjgwNzAzNjk1Nl5BMl5BanBnXkFtZTgwMzQ2NjI1OTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1211837', 'While on a journey of physical and spiritual healing, a brilliant neurosurgeon is drawn into the world of the mystic arts.', 'tt1211837', 'MCU'),
(23, 'Guardians of the Galaxy Vol. 2', 'https://m.media-amazon.com/images/M/MV5BNjM0NTc0NzItM2FlYS00YzEwLWE0YmUtNTA2ZWIzODc2OTgxXkEyXkFqcGdeQXVyNTgwNzIyNzg@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3896198', 'The Guardians struggle to keep together as a team while dealing with their personal family issues, notably Star-Lord\'s encounter with his father the ambitious celestial being Ego.', 'tt3896198', 'MCU'),
(24, 'Spider-Man: Homecoming', 'https://m.media-amazon.com/images/M/MV5BNTk4ODQ1MzgzNl5BMl5BanBnXkFtZTgwMTMyMzM4MTI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2250912', 'Peter Parker balances his life as an ordinary high school student in Queens with his superhero alter-ego Spider-Man, and finds himself on the trail of a new menace prowling the skies of New York City.', 'tt2250912', 'MCU'),
(25, 'Thor: Ragnarok', 'https://m.media-amazon.com/images/M/MV5BMjMyNDkzMzI1OF5BMl5BanBnXkFtZTgwODcxODg5MjI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3501632', 'Imprisoned on the planet Sakaar, Thor must race against time to return to Asgard and stop Ragnarök, the destruction of his world, at the hands of the powerful and ruthless villain Hela.', 'tt3501632', 'MCU'),
(26, 'Black Panther', 'https://m.media-amazon.com/images/M/MV5BMTg1MTY2MjYzNV5BMl5BanBnXkFtZTgwMTc4NTMwNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1825683', 'T\'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country\'s past.', 'tt1825683', 'MCU'),
(27, 'Avengers: Infinity War', 'https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt4154756', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.', 'tt4154756', 'MCU'),
(28, 'Ant-Man and the Wasp', 'https://m.media-amazon.com/images/M/MV5BYjcyYTk0N2YtMzc4ZC00Y2E0LWFkNDgtNjE1MzZmMGE1YjY1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt5095030', 'As Scott Lang balances being both a superhero and a father, Hope van Dyne and Dr. Hank Pym present an urgent new mission that finds the Ant-Man fighting alongside The Wasp to uncover secrets from their past.', 'tt5095030', 'MCU'),
(29, 'Captain Marvel', 'https://m.media-amazon.com/images/M/MV5BMTE0YWFmOTMtYTU2ZS00ZTIxLWE3OTEtYTNiYzBkZjViZThiXkEyXkFqcGdeQXVyODMzMzQ4OTI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt4154664', 'Carol Danvers becomes one of the universe\'s most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.', 'tt4154664', 'MCU'),
(30, 'Avengers: Endgame', 'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt4154796', 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe.', 'tt4154796', 'MCU'),
(31, 'Spider-Man: Far from Home', 'https://m.media-amazon.com/images/M/MV5BMGZlNTY1ZWUtYTMzNC00ZjUyLWE0MjQtMTMxN2E3ODYxMWVmXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt6320628', 'Following the events of Avengers: Endgame (2019), Spider-Man must step up to take on new threats in a world that has changed forever.', 'tt6320628', 'MCU'),
(32, 'Black Widow', 'https://m.media-amazon.com/images/M/MV5BYTMwYzNhMmItNjViNy00YzhlLTliZTYtZDE2YWVlYzg3Y2Y2XkEyXkFqcGdeQXVyODIyOTEyMzY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3480822', 'A film about Natasha Romanoff in her quests between the films Civil War and Infinity War.', 'tt3480822', 'MCU'),
(33, 'Zack Snyder\'s Justice League', 'https://m.media-amazon.com/images/M/MV5BYjI3NDg0ZTEtMDEwYS00YWMyLThjYjktMTNlM2NmYjc1OGRiXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt12361974', 'Determined to ensure Superman\'s ultimate sacrifice was not in vain, Bruce Wayne aligns forces with Diana Prince with plans to recruit a team of metahumans to protect the world from an approaching threat of catastrophic proportions.', 'tt12361974', 'Action'),
(34, 'The Wolf of Wall Street', 'https://m.media-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0993846', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.', 'tt0993846', 'Crime'),
(35, 'Titanic', 'https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0120338', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', 'tt0120338', 'Drama'),
(36, 'The Incredibles', 'https://m.media-amazon.com/images/M/MV5BMTY5OTU0OTc2NV5BMl5BanBnXkFtZTcwMzU4MDcyMQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0317705', 'A family of undercover superheroes, while trying to live the quiet suburban life, are forced into action to save the world.', 'tt0317705', 'Family'),
(37, 'Incredibles 2', 'https://m.media-amazon.com/images/M/MV5BMTEzNzY0OTg0NTdeQTJeQWpwZ15BbWU4MDU3OTg3MjUz._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3606756', 'The Incredibles family takes on a new mission which involves a change in family roles: Bob Parr (Mr. Incredible) must manage the house while his wife Helen (Elastigirl) goes out to save the world.', 'tt3606756', 'Family'),
(38, 'The Good, the Bart, and the Loki', 'https://m.media-amazon.com/images/M/MV5BZWM4MzJiMjgtMmEzZC00YThlLWE4OWUtYWZjNjVjYWE1MWVlXkEyXkFqcGdeQXVyMTE5MTkxMDI2._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt14957270', 'Loki joins forces with Bart Simpson to fight against his toughest opponents in Springfield after he is banished from Asgard yet again.', 'tt14957270', 'Action'),
(39, 'Sonic the Hedgehog', 'https://m.media-amazon.com/images/M/MV5BMDk5Yzc4NzMtODUwOS00NTdhLTg2MjEtZTkzZjc0ZWE2MzAwXkEyXkFqcGdeQXVyMTA3MTA4Mzgw._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3794354', 'After discovering a small, blue, fast hedgehog, a small-town police officer must help him defeat an evil genius who wants to do experiments on him.', 'tt3794354', 'Action'),
(40, 'Godzilla vs. Kong', 'https://m.media-amazon.com/images/M/MV5BZmYzMzU4NjctNDI0Mi00MGExLWI3ZDQtYzQzYThmYzc2ZmNjXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt5034838', 'The epic next chapter in the cinematic Monsterverse pits two of the greatest icons in motion picture history against one another - the fearsome Godzilla and the mighty Kong - with humanity caught in the balance.', 'tt5034838', 'Action'),
(41, 'Bee Movie', 'https://m.media-amazon.com/images/M/MV5BMjE1MDYxOTA4MF5BMl5BanBnXkFtZTcwMDE0MDUzMw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0389790', 'Barry B. Benson, a bee just graduated from college, is disillusioned at his lone career choice: making honey. On a special trip outside the hive, Barry\'s life is saved by Vanessa, a florist in New York City. As their relationship blossoms, he discovers humans actually eat honey, and subsequently decides to sue them.', 'tt0389790', 'Family'),
(42, 'Once Upon a Time... in Hollywood', 'https://m.media-amazon.com/images/M/MV5BOTg4ZTNkZmUtMzNlZi00YmFjLTk1MmUtNWQwNTM0YjcyNTNkXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt7131622', 'A faded television actor and his stunt double strive to achieve fame and success in the final years of Hollywood\'s Golden Age in 1969 Los Angeles.', 'tt7131622', 'Comedy'),
(43, 'Bad Boys for Life', 'https://m.media-amazon.com/images/M/MV5BMWU0MGYwZWQtMzcwYS00NWVhLTlkZTAtYWVjOTYwZTBhZTBiXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1502397', 'Miami detectives Mike Lowrey and Marcus Burnett must face off against a mother-and-son pair of drug lords who wreak vengeful havoc on their city.', 'tt1502397', 'Action'),
(44, 'Detective Pikachu\r\n', 'https://m.media-amazon.com/images/M/MV5BNDU4Mzc3NzE5NV5BMl5BanBnXkFtZTgwMzE1NzI1NzM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt5884052', 'In a world where people collect Pokémon to do battle, a boy comes across an intelligent talking Pikachu who seeks to be a detective.', 'tt5884052', 'Family'),
(45, 'Teenage Mutant Ninja Turtles', 'https://m.media-amazon.com/images/M/MV5BNzg3NTQ4NDk5NV5BMl5BanBnXkFtZTgwNzMzNDg4NjE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0100758', 'Four teenage mutant ninja turtles emerge from the shadows to protect New York City from a gang of criminal ninjas.', 'tt0100758', 'Action'),
(46, 'The Fast and the Furious', 'https://m.media-amazon.com/images/M/MV5BNzlkNzVjMDMtOTdhZC00MGE1LTkxODctMzFmMjkwZmMxZjFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0232500', 'Los Angeles police officer Brian O\'Conner must decide where his loyalty really lies when he becomes enamored with the street racing world he has been sent undercover to destroy.', 'tt0232500', 'FNF'),
(47, 'Fast & Furious 2', 'https://m.media-amazon.com/images/M/MV5BMzExYjcyYWMtY2JkOC00NDUwLTg2OTgtMDI3MGY2OWQzMDE2XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0322259', 'Former cop Brian O\'Conner is called upon to bust a dangerous criminal and he recruits the help of a former childhood friend and street racer who has a chance to redeem himself.', 'tt0322259', 'FNF'),
(48, 'Fast & Furious 3: Tokyo Drift', 'https://m.media-amazon.com/images/M/MV5BMTQ2NTMxODEyNV5BMl5BanBnXkFtZTcwMDgxMjA0MQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0463985', 'A teenager becomes a major competitor in the world of drift racing after moving in with his father in Tokyo to avoid a jail sentence in America.', 'tt0463985', 'FNF'),
(49, 'Fast & Furious 4', 'https://m.media-amazon.com/images/M/MV5BYjQ1ZTMxNzgtZDcxOC00NWY5LTk3ZjAtYzRhMDhlNDZlOWEzXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1013752', 'Brian O\'Conner, back working for the FBI in Los Angeles, teams up with Dominic Toretto to bring down a heroin importer by infiltrating his operation.', 'tt1013752', 'FNF'),
(50, 'Fast & Furious 5', 'https://m.media-amazon.com/images/M/MV5BMTUxNTk5MTE0OF5BMl5BanBnXkFtZTcwMjA2NzY3NA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1596343', 'Dominic Toretto and his crew of street racers plan a massive heist to buy their freedom while in the sights of a powerful Brazilian drug lord and a dangerous federal agent.', 'tt1596343', 'FNF'),
(51, 'Fast & Furious 6', 'https://m.media-amazon.com/images/M/MV5BMTM3NTg2NDQzOF5BMl5BanBnXkFtZTcwNjc2NzQzOQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1905041', 'Hobbs has Dominic and Brian reassemble their crew to take down a team of mercenaries: Dominic unexpectedly gets sidetracked with facing his presumed deceased girlfriend, Letty.', 'tt1905041', 'FNF'),
(52, 'Fast & Furious 7', 'https://m.media-amazon.com/images/M/MV5BMTQxOTA2NDUzOV5BMl5BanBnXkFtZTgwNzY2MTMxMzE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2820852', 'Deckard Shaw seeks revenge against Dominic Toretto and his family for his comatose brother.', 'tt2820852', 'FNF'),
(53, 'Fast & Furious 8', 'https://m.media-amazon.com/images/M/MV5BMjMxODI2NDM5Nl5BMl5BanBnXkFtZTgwNjgzOTk1MTI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt4630562', 'When a mysterious woman seduces Dominic Toretto into the world of terrorism and a betrayal of those closest to him, the crew face trials that will test them as never before.', 'tt4630562', 'FNF'),
(54, 'Fast & Furious 9', 'https://m.media-amazon.com/images/M/MV5BMjI0NmFkYzEtNzU2YS00NTg5LWIwYmMtNmQ1MTU0OGJjOTMxXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt5433138', 'Cipher enlists the help of Jakob, Dom\'s younger brother to take revenge on Dom and his team.\r\n', 'tt5433138', 'FNF'),
(55, 'Fast & Furious: Hobbs & Shaw', 'https://m.media-amazon.com/images/M/MV5BOTIzYmUyMmEtMWQzNC00YzExLTk3MzYtZTUzYjMyMmRiYzIwXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt6806448', 'Lawman Luke Hobbs (Dwayne \"The Rock\" Johnson) and outcast Deckard Shaw (Jason Statham) form an unlikely alliance when a cyber-genetically enhanced villain threatens the future of humanity.', 'tt6806448', 'FNF'),
(56, 'Shrek', 'https://m.media-amazon.com/images/M/MV5BOGZhM2FhNTItODAzNi00YjA0LWEyN2UtNjJlYWQzYzU1MDg5L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0126029', 'A mean lord exiles fairytale creatures to the swamp of a grumpy ogre, who must go on a quest and rescue a princess for the lord in order to get his land back.', 'tt0126029', 'Family'),
(57, 'Shrek 2', 'https://m.media-amazon.com/images/M/MV5BMDJhMGRjN2QtNDUxYy00NGM3LThjNGQtMmZiZTRhNjM4YzUxL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0298148', 'Shrek and Fiona travel to the Kingdom of Far Far Away, where Fiona\'s parents are King and Queen, to celebrate their marriage. When they arrive, they find they are not as welcome as they thought they would be.', 'tt0298148', 'Family'),
(58, 'Shrek the Third', 'https://m.media-amazon.com/images/M/MV5BOTgyMjc3ODk2MV5BMl5BanBnXkFtZTcwMjY0MjEzMw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0413267', 'Reluctantly designated as the heir to the land of Far, Far Away, Shrek hatches a plan to install the rebellious Artie as the new king while Princess Fiona tries to fend off a coup d\'état by the jilted Prince Charming.', 'tt0413267', 'Family'),
(59, 'Shrek 4ever After', 'https://m.media-amazon.com/images/M/MV5BMTY0OTU1NzkxMl5BMl5BanBnXkFtZTcwMzI2NDUzMw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0892791', 'Rumpelstiltskin tricks a mid-life crisis burdened Shrek into allowing himself to be erased from existence and cast in a dark alternate timeline where Rumpelstiltskin rules supreme.', 'tt0892791', 'Family'),
(60, 'Space Jam', 'https://m.media-amazon.com/images/M/MV5BMDgyZTI2YmYtZmI4ZC00MzE0LWIxZWYtMWRlZWYxNjliNTJjXkEyXkFqcGdeQXVyNjY5NDU4NzI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0117705', 'In a desperate attempt to win a basketball match and earn their freedom, the Looney Tunes seek the aid of retired basketball champion, Michael Jordan.', 'tt0117705', 'Family'),
(61, 'Forrest Gump', 'https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0109830', 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.', 'tt0109830', 'Comedy'),
(62, 'Despicable Me', 'https://m.media-amazon.com/images/M/MV5BMTY3NjY0MTQ0Nl5BMl5BanBnXkFtZTcwMzQ2MTc0Mw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1323594', 'When a criminal mastermind uses a trio of orphan girls as pawns for a grand scheme, he finds their love is profoundly changing him for the better.', 'tt1323594', 'Family'),
(63, 'Despicable Me 2', 'https://m.media-amazon.com/images/M/MV5BMjExNjAyNTcyMF5BMl5BanBnXkFtZTgwODQzMjQ3MDE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1690953', 'When Gru, the world\'s most super-bad turned super-dad has been recruited by a team of officials to stop lethal muscle and a host of Gru\'s own, He has to fight back with new gadgetry, cars, and more minion madness.', 'tt1690953', 'Family'),
(64, 'Despicable Me 3', 'https://m.media-amazon.com/images/M/MV5BNjUyNzQ2MTg3Ml5BMl5BanBnXkFtZTgwNzE4NDM3MTI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3469046', 'Gru meets his long-lost, charming, cheerful, and more successful twin brother Dru, who wants to team up with him for one last criminal heist.', 'tt3469046', 'Family'),
(65, 'Minions', 'https://m.media-amazon.com/images/M/MV5BMTg2MTMyMzU0M15BMl5BanBnXkFtZTgwOTU3ODk4NTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2293640', 'Minions Stuart, Kevin, and Bob are recruited by Scarlet Overkill, a supervillain who, alongside her inventor husband Herb, hatches a plot to take over the world.', 'tt2293640', 'Family'),
(66, 'Tenet', 'https://m.media-amazon.com/images/M/MV5BYzg0NGM2NjAtNmIxOC00MDJmLTg5ZmYtYzM0MTE4NWE2NzlhXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt6723592', 'Armed with only one word, Tenet, and fighting for the survival of the entire world, a Protagonist journeys through a twilight world of international espionage on a mission that will unfold in something beyond real time.', 'tt6723592', 'Action'),
(67, 'Pete\'s Dragon', 'https://m.media-amazon.com/images/M/MV5BMjJkMjcyOTktYTIwNC00MTY3LWE4ZTAtMTdlODg0NDE3YTQ1XkEyXkFqcGdeQXVyNjM1MTQ0NTQ@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0076538', 'An orphan boy and his magical dragon come to town with his abusive adoptive parents in pursuit.', 'tt0076538', 'Family'),
(68, 'The Conjuring', 'https://m.media-amazon.com/images/M/MV5BMTM3NjA1NDMyMV5BMl5BanBnXkFtZTcwMDQzNDMzOQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1457767', 'Paranormal investigators Ed and Lorraine Warren work to help a family terrorized by a dark presence in their farmhouse.', 'tt1457767', 'Horror'),
(69, 'Annabelle', 'https://m.media-amazon.com/images/M/MV5BOTQwZmQyYzEtODk5ZC00OTY3LWExMjAtYzRjNWFhNGM3MzBlXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3322940', 'A couple begins to experience terrifying supernatural occurrences involving a vintage doll shortly after their home is invaded by satanic cultists.', 'tt3322940', 'Horror'),
(70, 'The Conjuring 2', 'https://m.media-amazon.com/images/M/MV5BZjU5OWVlN2EtODNlYy00MjhhLWI0MDUtMTA3MmQ5MGMwYTZmXkEyXkFqcGdeQXVyNjE5MTM4MzY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3065204', 'Ed and Lorraine Warren travel to North London to help a single mother raising four children alone in a house plagued by a supernatural spirit.', 'tt3065204', 'Horror'),
(71, 'Annabelle 2: Creation', 'https://m.media-amazon.com/images/M/MV5BMjA1MzIwMjMxNF5BMl5BanBnXkFtZTgwMDQ3NTc2MjI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt5140878', 'Twelve years after the tragic death of their little girl, a doll-maker and his wife welcome a nun and several girls from a shuttered orphanage into their home, where they become the target of the doll-maker\'s possessed creation, Annabelle.', 'tt5140878', 'Horror'),
(72, 'The Nun', 'https://m.media-amazon.com/images/M/MV5BMjM3NzQ5NDcxOF5BMl5BanBnXkFtZTgwNzM4MTQ5NTM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt5814060', 'A priest with a haunted past and a novice on the threshold of her final vows are sent by the Vatican to investigate the death of a young nun in Romania and confront a malevolent force in the form of a demonic nun.', 'tt5814060', 'Horror'),
(73, 'The Curse of La Llorona', 'https://m.media-amazon.com/images/M/MV5BNjU4NjU4ZDktOTg2Ny00MWI2LThiMTAtMGFkZGE1MWI5MzhjXkEyXkFqcGdeQXVyODQxMTI4MjM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt4913966', 'Ignoring the eerie warning of a troubled mother suspected of child endangerment, a social worker and her own small kids are soon drawn into a frightening supernatural realm.', 'tt4913966', 'Horror'),
(74, 'Annabelle Comes Home', 'https://m.media-amazon.com/images/M/MV5BYmI4NDNiMmQtZTFkYi00ZDVmLThlYTAtMWJlMjU1M2I2ZmViXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt8350360', 'While babysitting the daughter of Ed and Lorraine Warren, a teenager and her friend unknowingly awaken an evil spirit trapped in a doll.', 'tt8350360', 'Horror'),
(75, 'The Conjuring: The Devil Made Me Do It', 'https://m.media-amazon.com/images/M/MV5BZWNiNTFhN2EtNWM4Yi00MjhkLWI2NWQtNWViNTZjMTMwNWVhXkEyXkFqcGdeQXVyMTIzNDk1MDYz._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt7069210', 'The Warrens investigate a murder that may be linked to a demonic possession.', 'tt7069210', 'Horror'),
(76, 'Børning 2', 'https://m.media-amazon.com/images/M/MV5BMmRjNGFkMDctMDIzOS00ZTI3LTliYTMtMjc5NWQ2N2U2YWMxXkEyXkFqcGdeQXVyMTY5Nzc4MDY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt4956984', 'After two years in prison for participating in an illegal street race, Roy says no to a new illegal winter race from Bergen to Murmansk in the North of Russia. But then he hears that his daughter will participate with a boyfriend.', 'tt4956984', 'Action'),
(77, 'Børning 3', 'https://m.media-amazon.com/images/M/MV5BZWI4YWNkOWEtYWJmNC00ZTI5LTlhM2MtNjQ5YmEzNjY0N2RhXkEyXkFqcGdeQXVyOTc5MDI5NjE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt6527456', 'The third and final installment in the Burnout trilogy. This time, the road leads trough Norway, to Sweden, Denmark and finally Germany to race on the famous racing track, Nürburgring.', 'tt6527456', 'Action'),
(78, 'Space Jam: En ny legende', 'https://m.media-amazon.com/images/M/MV5BZTAzN2ZlZTEtOTA5ZS00MGFjLTliYWMtYTQzYTFlYTIwZDVmXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3554046', 'A rogue artificial intelligence kidnaps the son of famed basketball player LeBron James, who then has to work with Bugs Bunny to win a basketball game.', 'tt3554046', 'Family'),
(79, 'Askeladden og de gode hjelperne', 'https://m.media-amazon.com/images/M/MV5BYjgyMGNkNTgtNzU0Ni00ZmMwLTg5NmEtMjEzNGM5N2JhNWYyXkEyXkFqcGdeQXVyMDMxMTgwOQ@@._V1_.jpg', 'https://www.youtube.com/embed/M9V1xC-4oTc', 'A young man named Ashlad is getting out on a journey in which he attempts to win both the king\'s daughter and half the kingdom. But it shall be more difficult than he had imagined.', 'tt0054638', 'Family'),
(80, 'Gutten som kappåt med trollet', 'https://m.media-amazon.com/images/M/MV5BZjUzNTA2NDgtMGRiOC00M2UxLWFlOTUtZDBiMjdiZWJkOTA5XkEyXkFqcGdeQXVyNDUxNjc5NjY@._V1_.jpg', 'https://www.youtube.com/embed/pzeseuMF690', 'An exuberant story about Askeladden, the hero of Norwegian traditional fairy tales, outwitting the good-natured troll.', 'tt0061741', 'Family'),
(81, 'Veslefrikk med fela', 'https://m.media-amazon.com/images/M/MV5BZjMxMjQ0NjUtNTc1ZS00YjY3LWEwM2QtM2M5ZmU4Mzg5NTBhL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMjM3ODA2NDQ@._V1_.jpg', 'https://www.youtube.com/embed/bSd-wP1nn1c', 'Once upon a time there was a poor boy with a fiddle, enthusiastic courage, and with no worries whatever hit him. Oe day he went out in the world to make a living.', 'tt0045291', 'Family'),
(82, 'Sjuende far i huset Dub', 'https://m.media-amazon.com/images/M/MV5BZjIzOWFiYWQtYTRlZC00ZTc1LTgzYzktY2EyNzE2NzMwMDAwXkEyXkFqcGdeQXVyMjMyNDUzMzI@._V1_.jpg', 'https://www.youtube.com/embed/z63CFfkpvkc', 'A Norwegian fairy-tale about a young man trying to find shelter for the night.', 'tt0060986', 'Family'),
(83, 'Cars', 'https://m.media-amazon.com/images/M/MV5BMTg5NzY0MzA2MV5BMl5BanBnXkFtZTYwNDc3NTc2._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0317219', 'A hot-shot race-car named Lightning McQueen gets waylaid in Radiator Springs, where he finds the true meaning of friendship and family.', 'tt0317219', 'Family'),
(84, 'Sausage Party', 'https://m.media-amazon.com/images/M/MV5BMjkxOTk1MzY4MF5BMl5BanBnXkFtZTgwODQzOTU5ODE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1700841', 'A sausage strives to discover the truth about his existence.', 'tt1700841', 'Comedy'),
(85, 'Star Wars: Episode I - The Phantom Menace', 'https://m.media-amazon.com/images/M/MV5BYTRhNjcwNWQtMGJmMi00NmQyLWE2YzItODVmMTdjNWI0ZDA2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0120915', 'Two Jedi escape a hostile blockade to find allies and come across a young boy who may bring balance to the Force, but the long dormant Sith resurface to claim their original glory.', 'tt0120915', 'Starwars'),
(86, 'Star Wars: Episode II - Attack of the Clones', 'https://m.media-amazon.com/images/M/MV5BMDAzM2M0Y2UtZjRmZi00MzVlLTg4MjEtOTE3NzU5ZDVlMTU5XkEyXkFqcGdeQXVyNDUyOTg3Njg@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0121765', 'Ten years after initially meeting, Anakin Skywalker shares a forbidden romance with Padmé Amidala, while Obi-Wan Kenobi investigates an assassination attempt on the senator and discovers a secret clone army crafted for the Jedi.', 'tt0121765', 'Starwars'),
(87, 'Star Wars: Episode III - Revenge of the Sith', 'https://m.media-amazon.com/images/M/MV5BNTc4MTc3NTQ5OF5BMl5BanBnXkFtZTcwOTg0NjI4NA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0121766', 'Three years into the Clone Wars, the Jedi rescue Palpatine from Count Dooku. As Obi-Wan pursues a new threat, Anakin acts as a double agent between the Jedi Council and Palpatine and is lured into a sinister plan to rule the galaxy.', 'tt0121766', 'Starwars'),
(88, 'Star Wars: Episode IV - A New Hope', 'https://m.media-amazon.com/images/M/MV5BNzVlY2MwMjktM2E4OS00Y2Y3LWE3ZjctYzhkZGM3YzA1ZWM2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0076759', 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire\'s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.', 'tt0076759', 'Starwars'),
(89, 'Star Wars: Episode V - The Empire Strikes Back', 'https://m.media-amazon.com/images/M/MV5BYmU1NDRjNDgtMzhiMi00NjZmLTg5NGItZDNiZjU5NTU4OTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0080684', 'After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued across the galaxy by Darth Vader and bounty hunter Boba Fett.', 'tt0080684', 'Starwars'),
(90, 'Star Wars: Episode VI - Return of the Jedi', 'https://m.media-amazon.com/images/M/MV5BOWZlMjFiYzgtMTUzNC00Y2IzLTk1NTMtZmNhMTczNTk0ODk1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0086190', 'After a daring mission to rescue Han Solo from Jabba the Hutt, the Rebels dispatch to Endor to destroy the second Death Star. Meanwhile, Luke struggles to help Darth Vader back from the dark side without falling into the Emperor\'s trap.', 'tt0086190', 'Starwars'),
(91, 'Star Wars: Episode VII - The Force Awakens', 'https://m.media-amazon.com/images/M/MV5BOTAzODEzNDAzMl5BMl5BanBnXkFtZTgwMDU1MTgzNzE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2488496', 'As a new threat to the galaxy rises, Rey, a desert scavenger, and Finn, an ex-stormtrooper, must join Han Solo and Chewbacca to search for the one hope of restoring peace.', 'tt2488496', 'Starwars'),
(92, 'Star Wars: Episode VIII - The Last Jedi', 'https://m.media-amazon.com/images/M/MV5BMjQ1MzcxNjg4N15BMl5BanBnXkFtZTgwNzgwMjY4MzI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2527336', 'The Star Wars saga continues as new heroes and galactic legends go on an epic adventure, unlocking mysteries of the Force and shocking revelations of the past.', 'tt2527336', 'Starwars'),
(93, 'Star Wars: Episode IX - The Rise of Skywalker', 'https://m.media-amazon.com/images/M/MV5BMDljNTQ5ODItZmQwMy00M2ExLTljOTQtZTVjNGE2NTg0NGIxXkEyXkFqcGdeQXVyODkzNTgxMDg@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2527338', 'In the riveting conclusion of the landmark Skywalker saga, new legends will be born-and the final battle for freedom is yet to come.', 'tt2527338', 'Starwars'),
(94, 'Rogue One: A Star Wars Story', 'https://m.media-amazon.com/images/M/MV5BMjEwMzMxODIzOV5BMl5BanBnXkFtZTgwNzg3OTAzMDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3748528', 'In a time of conflict, a group of unlikely heroes band together on a mission to steal the plans to the Death Star, the Empire\'s ultimate weapon of destruction.', 'tt3748528', 'Starwars'),
(95, 'Solo: A Star Wars Story', 'https://m.media-amazon.com/images/M/MV5BOTM2NTI3NTc3Nl5BMl5BanBnXkFtZTgwNzM1OTQyNTM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3778644', 'Board the Millennium Falcon and journey to a galaxy far, far away in an epic action-adventure that will set the course of one of the Star Wars saga\'s most unlikely heroes.', 'tt3778644', 'Starwars'),
(96, '[COMING SEPTEMBER 3rd] Shang-Chi and the Legend of the Ten Rings', 'https://m.media-amazon.com/images/M/MV5BYzM0YjJlMWEtZTg0MS00NjM4LWJkMDktN2VmZGU2ZjQ1YjI2XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt9376612', 'Shang-Chi, the master of unarmed weaponry based Kung Fu, is forced to confront his past after being drawn into the Ten Rings organisation.', 'tt9376612', 'MCU'),
(97, '[COMING NOVEMBER 5th] Eternals', 'https://m.media-amazon.com/images/M/MV5BY2Y1ODBhYTItYmJiZi00NjU2LWI2NjktNTcwM2U2NGQ2ZTNiXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt9032400', 'The saga of the Eternals, a race of immortal beings who lived on Earth and shaped its history and civilizations.', 'tt9032400', 'MCU'),
(98, '[COMING DECEMBER 17th] Spider-Man: No Way Home', 'https://m.media-amazon.com/images/M/MV5BNTMxOGI4OGMtMTgwMy00NmFjLWIyOTUtYjQ0OGQ4Mjk0YjNjXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt10872600', 'A continuation of Spider-Man: Far From Home.', 'tt10872600', 'MCU'),
(99, 'Cars 2', 'https://m.media-amazon.com/images/M/MV5BMTUzNTc3MTU3M15BMl5BanBnXkFtZTcwMzIxNTc3NA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1216475', 'Star race car Lightning McQueen and his pal Mater head overseas to compete in the World Grand Prix race. But the road to the championship becomes rocky as Mater gets caught up in an intriguing adventure of his own: international espionage.', 'tt1216475', 'Family'),
(100, 'After', 'https://m.media-amazon.com/images/M/MV5BOGUwMjk3YzktNDI0Yy00MzFiLWFjNmEtYTA2ODVjMzNhODhjXkEyXkFqcGdeQXVyOTQ1MDI4MzY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt4126476', 'A young woman falls for a guy with a dark secret and the two embark on a rocky relationship. Based on the novel by Anna Todd.', 'tt4126476', 'Drama'),
(101, 'After We Collided', 'https://m.media-amazon.com/images/M/MV5BN2UyNGM3MDUtMTIzZi00ZDdkLThlYTktYjk0ZDMzM2JiMjMyXkEyXkFqcGdeQXVyNzE0MjkxMzA@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt10362466', 'Based on the 2014 romance novel of the same name, this follows the love life of two young adults.', 'tt10362466', 'Drama'),
(102, 'Cars 3', 'https://m.media-amazon.com/images/M/MV5BMTc0NzU2OTYyN15BMl5BanBnXkFtZTgwMTkwOTg2MTI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3606752', 'Lightning McQueen sets out to prove to a new generation of racers that he\'s still the best race car in the world.', 'tt3606752', 'Family'),
(103, '[COMING SEPTEMBER 3rd] After We Fell', 'https://m.media-amazon.com/images/M/MV5BMTEzN2MxZWUtYTJkYS00NjU5LTk0ZjgtNzc1OTMwNWNjZGFkXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt13069986', 'Just as Tessa makes the biggest decision of her life, everything changes. Revelations about her family, and then Hardin\'s, throw everything they knew before in doubt and makes their hard-won future together more difficult to claim.', 'tt13069986', 'Drama'),
(104, 'American Pie', 'https://m.media-amazon.com/images/M/MV5BMTg3ODY5ODI1NF5BMl5BanBnXkFtZTgwMTkxNTYxMTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0163651', 'Four teenage boys enter a pact to lose their virginity by prom night.', 'tt0163651', 'Comedy'),
(105, 'Spider-Man', 'https://m.media-amazon.com/images/M/MV5BZDEyN2NhMjgtMjdhNi00MmNlLWE5YTgtZGE4MzNjMTRlMGEwXkEyXkFqcGdeQXVyNDUyOTg3Njg@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0145487', 'When bitten by a genetically modified spider, a nerdy, shy, and awkward high school student gains spider-like abilities that he eventually must use to fight evil as a superhero after tragedy befalls his family.', 'tt0145487', 'Action'),
(106, 'American Pie 2', 'https://m.media-amazon.com/images/M/MV5BOTEyYjhiMjYtNjU3YS00NmQ4LTlhNTEtYTczNWY3MGJmNzE2XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0252866', 'Jim and his friends are now in college, and they decide to meet up at the beach house for some fun.', 'tt0252866', 'Comedy'),
(107, 'Spider-Man: Into the Spider-Verse', 'https://m.media-amazon.com/images/M/MV5BMjMwNDkxMTgzOF5BMl5BanBnXkFtZTgwNTkwNTQ3NjM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt4633694', 'Teen Miles Morales becomes the Spider-Man of his universe, and must join with five spider-powered individuals from other dimensions to stop a threat for all realities.', 'tt4633694', 'Action'),
(108, 'Spider-Man 2', 'https://m.media-amazon.com/images/M/MV5BMzY2ODk4NmUtOTVmNi00ZTdkLTlmOWYtMmE2OWVhNTU2OTVkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0316654', 'Peter Parker is beset with troubles in his failing personal life as he battles a brilliant scientist named Doctor Otto Octavius.', 'tt0316654', 'Action'),
(109, 'Spider-Man 3', 'https://m.media-amazon.com/images/M/MV5BYTk3MDljOWQtNGI2My00OTEzLTlhYjQtOTQ4ODM2MzUwY2IwXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0413300', 'A strange black entity from another world bonds with Peter Parker and causes inner turmoil as he contends with new villains, temptations, and revenge.', 'tt0413300', 'Action'),
(110, 'The Amazing Spider-Man', 'https://m.media-amazon.com/images/M/MV5BMjMyOTM4MDMxNV5BMl5BanBnXkFtZTcwNjIyNzExOA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0948470', 'After Peter Parker is bitten by a genetically altered spider, he gains newfound, spider-like powers and ventures out to save the city from the machinations of a mysterious reptilian foe', 'tt0948470', 'Action'),
(111, 'The Amazing Spider-Man 2', 'https://m.media-amazon.com/images/M/MV5BOTA5NDYxNTg0OV5BMl5BanBnXkFtZTgwODE5NzU1MTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1872181', 'When New York is put under siege by Oscorp, it is up to Spider-Man to save the city he swore to protect as well as his loved ones.\r\n\r\n', 'tt1872181', 'Action'),
(113, 'Pirates of the Caribbean The Curse of the Black Pearl', 'https://m.media-amazon.com/images/M/MV5BNGYyZGM5MGMtYTY2Ni00M2Y1LWIzNjQtYWUzM2VlNGVhMDNhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0325980', 'Blacksmith Will Turner teams up with eccentric pirate Captain Jack Sparrow to save his love, the governors daughter from Jacks former pirate allies, who are now undead.', 'tt0325980', 'Action'),
(114, 'American Wedding', 'https://m.media-amazon.com/images/M/MV5BMTAwNTIzNDk1MDVeQTJeQWpwZ15BbWU3MDMwNzAwMDE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0328828', 'Its the wedding of Jim and Michelle and the gathering of their families and friends, including Jims old friends from high school and Michelles little sister.', 'tt0328828', 'Comedy'),
(115, 'Pitch Perfect', 'https://m.media-amazon.com/images/M/MV5BMTcyMTMzNzE5N15BMl5BanBnXkFtZTcwNzg5NjM5Nw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1981677', 'Beca, a freshman at Barden University, is cajoled into joining The Bellas, her schools all-girls singing group. Injecting some much needed energy into their repertoire, The Bellas take on their male rivals in a campus competition.', 'tt1981677', 'Comedy'),
(116, 'Pitch Perfect 2', 'https://m.media-amazon.com/images/M/MV5BMzk4OTM2NzMzNl5BMl5BanBnXkFtZTgwNTAzNDE0NDE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2848292', 'After a humiliating command performance at The Kennedy Center, the Barden Bellas enter an international competition that no American group has ever won in order to regain their status and right to perform.', 'tt2848292', 'Comedy'),
(117, 'Pitch Perfect 3', 'https://m.media-amazon.com/images/M/MV5BMTU5NDI1MjkwMF5BMl5BanBnXkFtZTgwNjIxNTY2MzI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt4765284', 'Following their win at the world championship, the now separated Bellas reunite for one last singing competition at an overseas USO tour, but face a group who uses both instruments and voices.', 'tt4765284', 'Comedy'),
(118, 'Pirates of the Caribbean Dead Mans Chest', 'https://m.media-amazon.com/images/M/MV5BMTcwODc1MTMxM15BMl5BanBnXkFtZTYwMDg1NzY3._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0383574', 'Jack Sparrow races to recover the heart of Davy Jones to avoid enslaving his soul to Jones service, as other friends and foes seek the heart for their own agenda as well.', 'tt0383574', 'Action'),
(119, 'Pirates of the Caribbean At Worlds End', 'https://m.media-amazon.com/images/M/MV5BMjIyNjkxNzEyMl5BMl5BanBnXkFtZTYwMjc3MDE3._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0449088', 'Captain Barbossa, Will Turner and Elizabeth Swann must sail off the edge of the map, navigate treachery and betrayal, find Jack Sparrow, and make their final alliances for one last decisive battle.', 'tt0449088', 'Action'),
(120, 'Pirates of the Caribbean: On Stranger Tides', 'https://m.media-amazon.com/images/M/MV5BMjE5MjkwODI3Nl5BMl5BanBnXkFtZTcwNjcwMDk4NA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1298650', 'Jack Sparrow and Barbossa embark on a quest to find the elusive fountain of youth, only to discover that Blackbeard and his daughter are after it too.', 'tt1298650', 'Action'),
(121, 'Pirates of the Caribbean: Salazars Revenge', 'https://m.media-amazon.com/images/M/MV5BMTYyMTcxNzc5M15BMl5BanBnXkFtZTgwOTg2ODE2MTI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1790809', 'To break the curse of Flying Dutchman, Captain Jack Sparrow and Henry Turner embark on a mission to find the Trident of Poseidon. They also try to stop Captain Salazar who intends to rule the seas.', 'tt1790809', 'Action'),
(122, 'Harry Potter and the Sorcerers Stone', 'https://m.media-amazon.com/images/M/MV5BNjQ3NWNlNmQtMTE5ZS00MDdmLTlkZjUtZTBlM2UxMGFiMTU3XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0241527', 'An orphaned boy enrolls in a school of wizardry, where he learns the truth about himself, his family and the terrible evil that haunts the magical world.', 'tt0241527', 'Adventure'),
(123, 'Pirates!', 'https://m.media-amazon.com/images/M/MV5BYjIyMjI0YzQtMDY0ZS00NmNhLTk0ZjAtYmE5YmI3Y2JhNTk2XkEyXkFqcGdeQXVyMTAyOTE2ODg0._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1430626', 'Pirate Captain sets out on a mission to defeat his rivals Black Bellamy and Cutlass Liz for the Pirate of the year Award. The quest takes Captain and his crew from the shores of Blood Island to the foggy streets of Victorian London.', 'tt1430626', 'Comedy'),
(124, 'Harry Potter and the Chamber of Secrets', 'https://m.media-amazon.com/images/M/MV5BMTcxODgwMDkxNV5BMl5BanBnXkFtZTYwMDk2MDg3._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0295297', 'An ancient prophecy seems to be coming true when a mysterious presence begins stalking the corridors of a school of magic and leaving its victims paralyzed.', 'tt0295297', 'Adventure'),
(125, 'Batman Begins', 'https://m.media-amazon.com/images/M/MV5BOTY4YjI2N2MtYmFlMC00ZjcyLTg3YjEtMDQyM2ZjYzQ5YWFkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0372784', 'After training with his mentor, Batman begins his fight to free crime-ridden Gotham City from corruption.', 'tt0372784', 'Action'),
(126, 'Harry Potter and the Prisoner of Azkaban', 'https://m.media-amazon.com/images/M/MV5BMTY4NTIwODg0N15BMl5BanBnXkFtZTcwOTc0MjEzMw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0304141', 'Harry Potter, Ron and Hermione return to Hogwarts School of Witchcraft and Wizardry for their third year of study, where they delve into the mystery surrounding an escaped prisoner who poses a dangerous threat to the young wizard.', 'tt0304141', 'Adventure'),
(127, 'Harry Potter and the Goblet of Fire', 'https://m.media-amazon.com/images/M/MV5BMTI1NDMyMjExOF5BMl5BanBnXkFtZTcwOTc4MjQzMQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0330373', 'Harry Potter finds himself competing in a hazardous tournament between rival schools of magic, but he is distracted by recurring nightmares.', 'tt0330373', 'Adventure'),
(128, 'The Dark Knight', 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0468569', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'tt0468569', 'Action');
INSERT INTO `filmer` (`id`, `title`, `bilde`, `film`, `beskrivelse`, `rating`, `kategori`) VALUES
(129, 'American Pie Presents: Band Camp', 'https://m.media-amazon.com/images/M/MV5BYzRkYjY4NmQtNmMxZS00MjkyLTk2YTMtYTgwZGRlYjAzNjZmXkEyXkFqcGdeQXVyMTY5Nzc4MDY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0436058', 'Matt Stifler wants to be just like his big bro, making porn movies and having a good time in college. After sabotaging the school band, he gets sent to band camp where he really doesnt like it at first but then learns how to deal with the bandeez.', 'tt0436058', 'Comedy'),
(130, 'The Dark Knight Rises', 'https://m.media-amazon.com/images/M/MV5BMTk4ODQzNDY3Ml5BMl5BanBnXkFtZTcwODA0NTM4Nw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1345836', 'Eight years after the Jokers reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City from the brutal guerrilla terrorist Bane.', 'tt1345836', 'Action'),
(131, 'American Pie Presents: The Naked Mile', 'https://m.media-amazon.com/images/M/MV5BNTNlMTk4YjEtMWY1ZC00ODkzLWEzM2UtZmFiYjUwYTRhOWZkXkEyXkFqcGdeQXVyMTY5Nzc4MDY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0808146', 'When Erik Stifler gets a free pass to do whatever he wants from his girlfriend, he and his two best friends head to see his cousin Dwight for the Naked Mile and a weekend they will never forget.', 'tt0808146', 'Comedy'),
(133, 'Harry Potter and the Order of the Phoenix', 'https://m.media-amazon.com/images/M/MV5BMTM0NTczMTUzOV5BMl5BanBnXkFtZTYwMzIxNTg3._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0373889', 'With their warning about Lord Voldemorts return scoffed at, Harry and Dumbledore are targeted by the Wizard authorities as an authoritarian bureaucrat slowly seizes power at Hogwarts.', 'tt0373889', 'Adventure'),
(134, 'Man of Steel', 'https://m.media-amazon.com/images/M/MV5BMTk5ODk1NDkxMF5BMl5BanBnXkFtZTcwNTA5OTY0OQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0770828', 'An alien child is evacuated from his dying world and sent to Earth to live among humans. His peace is threatened, when other survivors of his home planet invade Earth.', 'tt0770828', 'Action'),
(135, 'American Pie Presents: Beta House', 'https://m.media-amazon.com/images/M/MV5BMmM4NWY0M2YtZDdhYy00ZmRlLTliMGYtYThmNjQ3NWEyOGU0XkEyXkFqcGdeQXVyMTY5Nzc4MDY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0974959', 'Erik and Cooze start college and pledge the Beta House fraternity, presided over by none other than legendary Dwight Stifler.', 'tt0974959', 'Comedy'),
(136, 'American Pie Presents: The Book of Love', 'https://m.media-amazon.com/images/M/MV5BZTZiOTQ2MGUtMDk3Mi00NmUzLWJmMGYtZmE1MzFiNDU4NjM2XkEyXkFqcGdeQXVyMTY5Nzc4MDY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1407050', 'Ten years after the first American Pie movie, three new hapless virgins discover the Bible hidden in the school library at East Great Falls High.', 'tt1407050', 'Comedy'),
(137, 'American Reunion', 'https://m.media-amazon.com/images/M/MV5BMTY4MTEyMzU1N15BMl5BanBnXkFtZTcwNDQ0NTc1Nw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1605630', 'Jim, Michelle, Stifler, and their friends reunite in East Great Falls, Michigan for their high school reunion.', 'tt1605630', 'Comedy'),
(138, 'Harry Potter and the Half-Blood Prince', 'https://m.media-amazon.com/images/M/MV5BNzU3NDg4NTAyNV5BMl5BanBnXkFtZTcwOTg2ODg1Mg@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0417741', 'As Harry Potter begins his sixth year at Hogwarts, he discovers an old book marked as \"the property of the Half-Blood Prince\" and begins to learn more about Lord Voldemorts dark past.', 'tt0417741', 'Adventure'),
(139, 'American Pie Presents: Girls Rules', 'https://m.media-amazon.com/images/M/MV5BOTdlMzdmNDAtYTIyNi00ZWZiLWE3ZDYtOTg2YzE3NDRkNTYwXkEyXkFqcGdeQXVyODQ4NjA3Mw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt11771594', 'Its Senior year at East Great Falls. Annie, Kayla, Michelle, and Stephanie decide to harness their girl power and band together to get what they want their last year of high school.', 'tt11771594', 'Comedy'),
(140, 'Batman v Superman: Dawn of Justice', 'https://m.media-amazon.com/images/M/MV5BYThjYzcyYzItNTVjNy00NDk0LTgwMWQtYjMwNmNlNWJhMzMyXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2975590', 'Fearing that the actions of Superman are left unchecked, Batman takes on the Man of Steel, while the world wrestles with what kind of a hero it really needs.', 'tt2975590', 'Action'),
(141, 'Harry Potter and the Deathly Hallows: Part 1', 'https://m.media-amazon.com/images/M/MV5BMTQ2OTE1Mjk0N15BMl5BanBnXkFtZTcwODE3MDAwNA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0926084', 'As Harry, Ron, and Hermione race against time and evil to destroy the Horcruxes, they uncover the existence of the three most powerful objects in the wizarding world: the Deathly Hallows.', 'tt0926084', 'Adventure'),
(142, 'The Imitation Game', 'https://m.media-amazon.com/images/M/MV5BOTgwMzFiMWYtZDhlNS00ODNkLWJiODAtZDVhNzgyNzJhYjQ4L2ltYWdlXkEyXkFqcGdeQXVyNzEzOTYxNTQ@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2084970', 'During World War II, the English mathematical genius Alan Turing tries to crack the German Enigma code with help from fellow mathematicians.', 'tt2084970', 'Drama'),
(143, 'Harry Potter and the Deathly Hallows: Part 2', 'https://m.media-amazon.com/images/M/MV5BMGVmMWNiMDktYjQ0Mi00MWIxLTk0N2UtN2ZlYTdkN2IzNDNlXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1201607', 'Harry, Ron, and Hermione search for Voldemorts remaining Horcruxes in their effort to destroy the Dark Lord as the final battle rages on at Hogwarts.', 'tt1201607', 'Adventure'),
(144, 'The Smurfs', 'https://m.media-amazon.com/images/M/MV5BNDUyMmFiYTctZDcyYS00OGY4LTk1ZmYtZjBmODBlZTc1NjU4XkEyXkFqcGdeQXVyNTk1MTAyODc@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0472181', 'When the evil wizard Gargamel chases the tiny blue Smurfs out of their village, they tumble from their magical world into New York City.', 'tt0472181', 'Family'),
(145, 'World’s Most Expensive Food!', 'https://m.media-amazon.com/images/M/MV5BNzAzY2RmNjAtN2RiZi00MGMxLTkzOWYtNGZhN2Q1Y2MyZDJlXkEyXkFqcGdeQXVyMTI4Mjc2OTA1._V1_.jpg', 'https://www.youtube.com/embed/ooqdg9Wr-mo', 'SUBSCRIBE TO THESE CHANNELS OR ELSE', 'tt14802952', 'Youtube'),
(146, 'Fantastic Beasts and Where to Find Them', 'https://m.media-amazon.com/images/M/MV5BMjMxOTM1OTI4MV5BMl5BanBnXkFtZTgwODE5OTYxMDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3183660', 'The adventures of writer Newt Scamander in New Yorks secret community of witches and wizards seventy years before Harry Potter reads his book in school.', 'tt3183660', 'Adventure'),
(147, 'Fantastic Beasts: The Crimes of Grindelwald', 'https://m.media-amazon.com/images/M/MV5BYWVlMDI5N2UtZTIyMC00NjZkLWI5Y2QtODM5NGE5MzA0NmVjXkEyXkFqcGdeQXVyNzU3NjUxMzE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt4123430', 'The second installment of the \"Fantastic Beasts\" series featuring the adventures of Magizoologist Newt Scamander.', 'tt4123430', 'Adventure'),
(148, 'Peppa Pig Movie - My First Cinema Experience', 'https://i.ytimg.com/vi/psvr0x813GA/hq720.jpg?sqp=-oaymwEjCOgCEMoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLApi1D1stXiv3AHGvT7nj2u7hMlfA', 'https://www.youtube.com/embed/psvr0x813GA', 'Come sing and dance along with real life Peppa Pig and George!!', 'tt0426769', 'Action'),
(149, 'Peppa Pig: Endgame', 'https://i.ytimg.com/vi/Oozdpz12Ejo/hq720.jpg?sqp=-oaymwEjCOgCEMoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLBf2nHBaCIa7bUFj4lR-qonJopS7A', 'https://www.youtube.com/embed/Oozdpz12Ejo', 'Daddy Pig wiped out 50% of all living creatures. It is now up to Peppa and her friends to save the world.', 'tt0426769', 'Action'),
(150, 'Final Destination', 'https://m.media-amazon.com/images/M/MV5BZTI0NGM2OGYtNzVmMi00NGQ2LTk2MDAtN2RmYjIzMGRkZGYxXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0195714', 'Alex Browning is among a group of high school students readying themselves for a trip to Europe. When he suddenly has a premonition their airplane will crash, he screams to warn the others but instead he is thrown off of the plane.', 'tt0195714', 'Horror'),
(151, 'Final Destination 2', 'https://m.media-amazon.com/images/M/MV5BMjExMTMyODAzN15BMl5BanBnXkFtZTYwNjc5NDQ3._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0309593', 'Kimberly has a premonition of an accident killing multiple people including her and her friends. She blocks the cars behind her on the ramp and as a police trooper arrives, the accident happens. Death is stalking this group of survivors.', 'tt0309593', 'Horror'),
(152, 'Peppa Pig Endgame The Movie!', 'https://i.ytimg.com/vi/R7E0YC08aoA/hq720.jpg?sqp=-oaymwEjCOgCEMoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLAlXqEmj5bpYCNE83F3ls-Y0FzUUg', 'https://www.youtube.com/embed/ENdKDdD6ihw', 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Daddy Pigs actions and restore balance to the universe.', 'tt4154796', 'Action'),
(153, 'Final Destination 3', 'https://m.media-amazon.com/images/M/MV5BZDEyYTRjNTgtYmI4Yy00MTFmLWEzYTUtOGNjZGZmNzEyMjZmXkEyXkFqcGdeQXVyMTEwNDU1MzEy._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0414982', 'Six years after students cheated death, another teen has a premonition she and her friends will be involved in an accident. When the vision proves true, the student and survivors deal with the repercussions of cheating the Grim Reaper.', 'tt0414982', 'Horror'),
(154, 'The Final Destination', 'https://m.media-amazon.com/images/M/MV5BNzY1NmU2MDgtMDQxNC00MTQ4LTgxMWQtYWNkOWMyZWFlODZiXkEyXkFqcGdeQXVyMjQwMjk0NjI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1144884', 'A horrifying premonition saves a young man and his friends from death during a racetrack accident but terrible fates await them nonetheless.', 'tt1144884', 'Horror'),
(155, 'Final Destination 5', 'https://m.media-amazon.com/images/M/MV5BMTgyOTExNDc1M15BMl5BanBnXkFtZTcwMDA0MTA4NQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1622979', 'Death returns to claim the lucky survivors of a deadly bridge collapse in this fifth frightening installment in the series.', 'tt1622979', 'Horror'),
(156, 'Friday the 13th', 'https://m.media-amazon.com/images/M/MV5BNWMxYTYzYWQtNGZmNy00MTg5LTk1N2MtNzQ5NjQxYjQ5NTJhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0080761', 'A group of camp counselors are stalked and murdered by an unknown assailant while trying to reopen a summer camp which was the site of a childs drowning and a grisly double murder years before.', 'tt0080761', 'Horror'),
(157, 'Deadpool', 'https://m.media-amazon.com/images/M/MV5BYzE5MjY1ZDgtMTkyNC00MTMyLThhMjAtZGI5OTE1NzFlZGJjXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1431045', 'A wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks.', 'tt1431045', 'Action'),
(158, 'Friday the 13th Part 2', 'https://m.media-amazon.com/images/M/MV5BMzFkYTYyMmYtYWM2Mi00ZmM0LTg0MGUtYzA0YmExYzc2NjQ4XkEyXkFqcGdeQXVyMjMwNDgzNjc@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0082418', 'Mrs. Voorhees is dead, and Camp Crystal Lake is shut down, but a camp next to the infamous place is stalked by an unknown assailant.', 'tt0082418', 'Horror'),
(159, 'Deadpool 2', 'https://m.media-amazon.com/images/M/MV5BNjk1Njk3YjctMmMyYS00Y2I4LThhMzktN2U0MTMyZTFlYWQ5XkEyXkFqcGdeQXVyODM2ODEzMDA@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt5463162', 'Foul-mouthed mutant mercenary Wade Wilson (a.k.a. Deadpool) assembles a team of fellow mutant rogues to protect a young boy with supernatural abilities from the brutal, time-traveling cyborg Cable.', 'tt5463162', 'Action'),
(160, 'Pixels', 'https://m.media-amazon.com/images/M/MV5BMTYxMzM4NDY5N15BMl5BanBnXkFtZTgwNzg1NTI3MzE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2120120', 'When aliens misinterpret video feeds of classic arcade games as a declaration of war, they attack the Earth in the form of the video games.', 'tt2120120', 'Action'),
(161, 'Friday the 13th Part III', 'https://m.media-amazon.com/images/M/MV5BZjRiMTdlY2QtZGE3YS00YjQzLTk5MmUtNjVjMjUzYWRiMWNhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0083972', 'Having revived from his wounds, Jason Voorhees takes refuge at a cabin near Crystal Lake. As a group of co-eds arrive for their vacation, Jason continues his killing spree.', 'tt0083972', 'Horror'),
(162, 'X-Men', 'https://m.media-amazon.com/images/M/MV5BZmIyMDk5NGYtYjQ5NS00ZWQxLTg2YzQtZDk1ZmM4ZDBlN2E3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0120903', 'In a world where mutants (evolved super-powered humans) exist and are discriminated against, two groups form for an inevitable clash: the supremacist Brotherhood, and the pacifist X-Men.', 'tt0120903', 'Action'),
(163, 'Grown Ups', 'https://m.media-amazon.com/images/M/MV5BMjA0ODYwNzU5Nl5BMl5BanBnXkFtZTcwNTI1MTgxMw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1375670', 'After their high school basketball coach passes away, five good friends and former teammates reunite for a Fourth of July holiday weekend.', 'tt1375670', 'Comedy'),
(164, 'X-Men: Days of Future Past', 'https://m.media-amazon.com/images/M/MV5BZGIzNWYzN2YtMjcwYS00YjQ3LWI2NjMtOTNiYTUyYjE2MGNkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1877832', 'The X-Men send Wolverine to the past in a desperate effort to change history and prevent an event that results in doom for both humans and mutants.', 'tt1877832', 'Action'),
(165, 'Grown Ups 2', 'https://m.media-amazon.com/images/M/MV5BNTZkZDhjZTEtZjA5MC00MDU2LTk3NDItNzA2YzQ4Y2Q5NjZhXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2191701', 'After moving his family back to his hometown to be with his friends and their kids, Lenny finds out that between old bullies, new bullies, schizo bus drivers, drunk cops on skis, and four hundred costumed party crashers sometimes crazy follows you.', 'tt2191701', 'Comedy'),
(166, 'Friday the 13th: The Final Chapter', 'https://m.media-amazon.com/images/M/MV5BYWE5YzI0YWItMzkyMi00ODgzLThjNTAtYzVlMmZjZDA2ZWFjXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0087298', 'After being mortally wounded and taken to the morgue, murderer Jason Voorhees spontaneously revives and embarks on a killing spree as he makes his way back to his home at Camp Crystal Lake.', 'tt0087298', 'Horror'),
(167, 'X-Men: Apocalypse', 'https://m.media-amazon.com/images/M/MV5BMjU1ODM1MzYxN15BMl5BanBnXkFtZTgwOTA4NDE2ODE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3385516', 'In the 1980s the X-Men must defeat an ancient all-powerful mutant, En Sabah Nur, who intends to thrive through bringing destruction to the world.', 'tt3385516', 'Action'),
(168, 'Kung Fu Panda', 'https://m.media-amazon.com/images/M/MV5BODJkZTZhMWItMDI3Yy00ZWZlLTk4NjQtOTI1ZjU5NjBjZTVjXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0441773', 'The Dragon Warrior has to clash against the savage Tai Lung as Chinas fate hangs in the balance. However, the Dragon Warrior mantle is supposedly mistaken to be bestowed upon an obese panda who is a novice in martial arts.', 'tt0441773', 'Family'),
(169, 'Kung Fu Panda 2', 'https://m.media-amazon.com/images/M/MV5BYzQ0ZWIxZjAtYWI3Yy00MGM0LWFjOGYtNzcyYThiOTA3ODI1XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1302011', 'Po and his friends fight to stop a peacock villain from conquering China with a deadly new weapon, but first the Dragon Warrior must come to terms with his past.', 'tt1302011', 'Family'),
(170, 'Kung Fu Panda 3', 'https://m.media-amazon.com/images/M/MV5BMTUyNzgxNjg2M15BMl5BanBnXkFtZTgwMTY1NDI1NjE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2267968', 'Continuing his \"legendary adventures of awesomeness\", Po must face two hugely epic, but different threats: one supernatural and the other a little closer to home.', 'tt2267968', 'Family'),
(171, 'Toy Story', 'https://m.media-amazon.com/images/M/MV5BMDU2ZWJlMjktMTRhMy00ZTA5LWEzNDgtYmNmZTEwZTViZWJkXkEyXkFqcGdeQXVyNDQ2OTk4MzI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0114709', 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boys room.', 'tt0114709', 'Family'),
(172, 'Friday the 13th: A New Beginning', 'https://m.media-amazon.com/images/M/MV5BYjNkNzEwOWYtMjY4Ni00YjIwLTgyZGQtMmYwNmVmYWFlZDJhXkEyXkFqcGdeQXVyNDgxODg1MzU@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0089173', 'Still haunted by his past, Tommy Jarvis - who, as a child, killed Jason Voorhees - wonders if the serial killer is connected to a series of brutal murders occurring in and around the secluded halfway house where he now lives.', 'tt0089173', 'Horror'),
(173, 'Toy Story 2', 'https://m.media-amazon.com/images/M/MV5BMWM5ZDcxMTYtNTEyNS00MDRkLWI3YTItNThmMGExMWY4NDIwXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0120363', 'When Woody is stolen by a toy collector, Buzz and his friends set out on a rescue mission to save Woody before he becomes a museum toy property with his roundup gang Jessie, Prospector, and Bullseye.', 'tt0120363', 'Family'),
(174, 'X-Men: First Class', 'https://m.media-amazon.com/images/M/MV5BMTg5OTMxNzk4Nl5BMl5BanBnXkFtZTcwOTk1MjAwNQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1270798', 'In the 1960s, superpowered humans Charles Xavier and Erik Lensherr work together to find others like them, but Eriks vengeful pursuit of an ambitious mutant who ruined his life causes a schism to divide them.', 'tt1270798', 'Action'),
(175, 'Toy Story 3', 'https://m.media-amazon.com/images/M/MV5BMTgxOTY4Mjc0MF5BMl5BanBnXkFtZTcwNTA4MDQyMw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0435761', 'The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and its up to Woody to convince the other toys that they werent abandoned and to return home.', 'tt0435761', 'Family'),
(176, 'Friday the 13th Part VI: Jason Lives', 'https://m.media-amazon.com/images/M/MV5BYjM3ZjhjNzgtMjg2OC00MmI5LWIyZGItOTUxZTVlZjdjNTNkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0091080', 'Tommy Jarvis goes to the graveyard to get rid of Jason Voorhees body once and for all, but inadvertently brings him back to life instead. The newly revived killer once again seeks revenge, and Tommy may be the only one who can defeat him.', 'tt0091080', '¨Horror'),
(177, 'Toy Story 4', 'https://m.media-amazon.com/images/M/MV5BMTYzMDM4NzkxOV5BMl5BanBnXkFtZTgwNzM1Mzg2NzM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1979376', 'When a new toy called \"Forky\" joins Woody and the gang, a road trip alongside old and new friends reveals how big the world can be for a toy.', 'tt1979376', 'Family'),
(178, 'Godzilla', 'https://m.media-amazon.com/images/M/MV5BZDFmYTM4NzAtNWM0ZC00MGJlLWEyYzQtYzA3ZTFiNzc1YjllXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0831387', 'The world is beset by the appearance of monstrous creatures, but one of them may be the only one who can save humanity.', 'tt0831387', 'Action'),
(179, 'Friday the 13th Part VII: The New Blood', 'https://m.media-amazon.com/images/M/MV5BYzRhMzA5ZGItODMxMy00YTRiLTg3MjUtMmRjMzliZDkxOWI2XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0095179', 'Years after Tommy Jarvis chained him underwater at Camp Crystal Lake, the dormant Jason Voorhees is accidentally released from his prison by a telekinetic teenager. Now, only she can stop him.', 'tt0095179', 'Horror'),
(180, 'Godzilla: King of the Monsters', 'https://m.media-amazon.com/images/M/MV5BOGFjYWNkMTMtMTg1ZC00Y2I4LTg0ZTYtN2ZlMzI4MGQwNzg4XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3741700', 'The crypto-zoological agency Monarch faces off against a battery of god-sized monsters, including the mighty Godzilla, who collides with Mothra, Rodan, and his ultimate nemesis, the three-headed King Ghidorah.', 'tt3741700', 'Action'),
(181, 'Friday the 13th Part VIII: Jason Takes Manhattan', 'https://m.media-amazon.com/images/M/MV5BMDUyMGIxZDctNDVlMy00ZmVlLWIzZGUtMzQ2NWVhNTgwMjIzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0097388', 'A boatful of graduating high school students headed to Manhattan accidentally pull Jason Voorhees along for the ride.', 'tt0097388', 'Horror'),
(182, 'The Angry Birds Movie', 'https://m.media-amazon.com/images/M/MV5BMTY3MjU0NDA0OF5BMl5BanBnXkFtZTgwNTc0MTU3OTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1985949', 'When an island populated by happy, flightless birds is visited by mysterious green piggies, its up to three unlikely outcasts - Red, Chuck and Bomb - to figure out what the pigs are up to.', 'tt1985949', 'Family'),
(183, 'Kong: Skull Island', 'https://m.media-amazon.com/images/M/MV5BZDg0OGM1NWEtNDEwOC00OTE2LTliZWEtNzg1MTZkNjFlMmNhXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3731562', 'After the Vietnam war, a team of scientists explores an uncharted island in the Pacific, venturing into the domain of the mighty Kong, and must fight to escape a primal Eden.\r\n\r\n', 'tt3731562', 'Action'),
(184, 'The Angry Birds Movie 2', 'https://m.media-amazon.com/images/M/MV5BYzdkNGJhNzQtMjY1OC00MDI3LTk0ZDUtNzU0MGZiY2YwZGUxXkEyXkFqcGdeQXVyNzMxNjQxMTk@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt6095472', 'The flightless birds and scheming green pigs take their feud to the next level.', 'tt6095472', 'Family'),
(185, 'Jason Goes to Hell: The Final Friday', 'https://m.media-amazon.com/images/M/MV5BMGUxZGViMDktOWM5OS00MTlmLTkzZTYtZWJmZGEzNjg1M2ZlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0107254', 'Serial killer Jason Voorhees supernatural origins are revealed.\r\n\r\n', 'tt0107254', 'Horror'),
(186, 'Shin Gojira', 'https://m.media-amazon.com/images/M/MV5BODQ4ZmIzNWMtY2NiYi00MmM1LWFjMGQtMDE0Nzc1NzhjNjEyXkEyXkFqcGdeQXVyNDUwNzM4MzQ@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt4262980', 'Japan is plunged into chaos upon the appearance of a giant monster.', 'tt4262980', 'Action'),
(187, 'Were the Millers', 'https://m.media-amazon.com/images/M/MV5BMjA5Njc0NDUxNV5BMl5BanBnXkFtZTcwMjYzNzU1OQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1723121', 'A veteran pot dealer creates a fake family as part of his plan to move a huge shipment of weed into the U.S. from Mexico.', 'tt1723121', 'Comedy'),
(188, 'Scooby-Doo', 'https://m.media-amazon.com/images/M/MV5BMTg4MzMzMTY0OF5BMl5BanBnXkFtZTYwNzM3MTg2._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0267913', 'After an acrimonious break up, the Mystery Inc. gang are individually brought to an island resort to investigate strange goings on.\r\n\r\n', 'tt0267913', 'Family'),
(189, 'Jason X', 'https://m.media-amazon.com/images/M/MV5BYzc0MDllYjktYzFjZi00OTgwLWJmZWMtODlmMTVlODQyZTgwXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0211443', 'Jason Voorhees returns with a new look, a new machete, and his same murderous attitude as he is awakened on a spaceship in the 25th century.', 'tt0211443', 'Horror'),
(190, 'Scooby-Doo 2: Monsters Unleashed', 'https://m.media-amazon.com/images/M/MV5BMjEzNzk3NTE1Ml5BMl5BanBnXkFtZTYwODM1MTU3._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0331632', 'The Mystery Inc. gang must save Coolsville from an attack of their past monsters brought to life by an evil masked figure trying to take down the gang.\r\n\r\n', 'tt0331632', 'Family'),
(191, 'The Babysitter', 'https://m.media-amazon.com/images/M/MV5BMTY0MDUwNzg5OV5BMl5BanBnXkFtZTgwNTY4NjU3MzI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt4225622', 'When Cole stays up past his bedtime, he discovers that his hot baby sitter belongs to a satanic cult that will stop at nothing to keep him quiet.', 'tt4225622', 'Horror'),
(192, 'Freddy vs. Jason', 'https://m.media-amazon.com/images/M/MV5BODNlNWVjOTMtZjVjYy00MzRjLTg2MmQtNTM3MWVmZjFjYzgwXkEyXkFqcGdeQXVyMzM4MjM0Nzg@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0329101', 'Freddy Krueger and Jason Voorhees return to terrorize the teenagers of Elm Street. Only this time, theyre out to get each other, too.', 'tt0329101', 'Horror'),
(193, 'The Babysitter: Killer Queen', 'https://m.media-amazon.com/images/M/MV5BMWEwMDU3MWUtZTdiMy00Yjg5LWFiNWYtYTRmZGExNzk5YjQ2XkEyXkFqcGdeQXVyNTUwOTkzMzY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt11024272', 'Two years after Cole survived a satanic blood cult, hes living another nightmare: high school. And the demons from his past? Still making his life hell.', 'tt11024272', 'Horror'),
(194, 'It', 'https://m.media-amazon.com/images/M/MV5BZDVkZmI0YzAtNzdjYi00ZjhhLWE1ODEtMWMzMWMzNDA0NmQ4XkEyXkFqcGdeQXVyNzYzODM3Mzg@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1396484', 'In the summer of 1989, a group of bullied kids band together to destroy a shape-shifting monster, which disguises itself as a clown and preys on the children of Derry, their small Maine town.', 'tt1396484', 'Horror'),
(195, 'Friday the 13th (2009)', 'https://m.media-amazon.com/images/M/MV5BMTQ5ODI5NTMzN15BMl5BanBnXkFtZTcwNzY4MTYxMg@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0758746', 'A group of young adults visit a boarded up campsite named Crystal Lake where they soon encounter the mysterious Jason Voorhees and his deadly intentions.', 'tt0758746', 'Horror'),
(196, 'It Chapter Two', 'https://m.media-amazon.com/images/M/MV5BYTJlNjlkZTktNjEwOS00NzI5LTlkNDAtZmEwZDFmYmM2MjU2XkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt7349950', 'Twenty-seven years after their first encounter with the terrifying Pennywise, the Losers Club have grown up and moved away, until a devastating phone call brings them back.', 'tt7349950', 'Horror'),
(197, 'The Hunger Games', 'https://m.media-amazon.com/images/M/MV5BMjA4NDg3NzYxMF5BMl5BanBnXkFtZTcwNTgyNzkyNw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1392170', 'Katniss Everdeen voluntarily takes her younger sisters place in the Hunger Games: a televised competition in which two teenagers from each of the twelve Districts of Panem are chosen at random to fight to the death.', 'tt1392170', 'Sci-fi'),
(198, 'The Hunger Games: Catching Fire', 'https://m.media-amazon.com/images/M/MV5BMTAyMjQ3OTAxMzNeQTJeQWpwZ15BbWU4MDU0NzA1MzAx._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1951264', 'Katniss Everdeen and Peeta Mellark become targets of the Capitol after their victory in the 74th Hunger Games sparks a rebellion in the Districts of Panem.', 'tt1951264', 'Sci-fi'),
(199, 'The Hunger Games: Mockingjay - Part 1', 'https://m.media-amazon.com/images/M/MV5BMTcxNDI2NDAzNl5BMl5BanBnXkFtZTgwODM3MTc2MjE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1951265', 'Katniss Everdeen is in District 13 after she shatters the games forever. Under the leadership of President Coin and the advice of her trusted friends, Katniss spreads her wings as she fights to save Peeta and a nation moved by her courage.', 'tt1951265', 'Sci-fi'),
(200, 'The Matrix', 'https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0133093', 'When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.', 'tt0133093', 'Sci-fi'),
(201, 'Mission: Impossible', 'https://m.media-amazon.com/images/M/MV5BMTc3NjI2MjU0Nl5BMl5BanBnXkFtZTgwNDk3ODYxMTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0117060', 'An American agent, under false suspicion of disloyalty, must discover and expose the real spy without the help of his organization.\r\n\r\n', 'tt0117060', 'Action'),
(202, 'The Hunger Games: Mockingjay - Part 2', 'https://m.media-amazon.com/images/M/MV5BNjQzNDI2NTU1Ml5BMl5BanBnXkFtZTgwNTAyMDQ5NjE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1951266', 'Katniss and a team of rebels from District 13 prepare for the final battle that will decide the fate of Panem.', 'tt1951266', 'Sci-fi'),
(203, 'Mission: Impossible II', 'https://m.media-amazon.com/images/M/MV5BMGQ3YmYzNTMtNDAwYi00MWYzLWEyZGUtZTNlYTg2NDFmYzQyXkEyXkFqcGdeQXVyMTEwNDU1MzEy._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0120755', 'IMF agent Ethan Hunt is sent to Sydney to find and destroy a genetically modified disease called \"Chimera\".\r\n\r\n', 'tt0120755', 'Action'),
(204, 'The Matrix Reloaded', 'https://m.media-amazon.com/images/M/MV5BODE0MzZhZTgtYzkwYi00YmI5LThlZWYtOWRmNWE5ODk0NzMxXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0234215', 'Freedom fighters Neo, Trinity and Morpheus continue to lead the revolt against the Machine Army, unleashing their arsenal of extraordinary skills and weaponry against the systematic forces of repression and exploitation.', 'tt0234215', 'Sci-fi'),
(205, 'Divergent', 'https://m.media-amazon.com/images/M/MV5BMTYxMzYwODE4OV5BMl5BanBnXkFtZTgwNDE5MzE2MDE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1840309', 'In a world divided by factions based on virtues, Tris learns shes Divergent and wont fit in. When she discovers a plot to destroy Divergents, Tris and the mysterious Four must find out what makes Divergents dangerous before its too late.', 'tt1840309', 'Action'),
(206, 'The Divergent Series: Insurgent', 'https://m.media-amazon.com/images/M/MV5BMTgxOTYxMTg3OF5BMl5BanBnXkFtZTgwMDgyMzA2NDE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2908446', 'Beatrice Prior must confront her inner demons and continue her fight against a powerful alliance which threatens to tear her society apart with the help from others on her side.', 'tt2908446', 'Action'),
(207, 'Mission: Impossible III', 'https://m.media-amazon.com/images/M/MV5BOThhNTA1YjItYzk2Ny00M2Y1LWJlYWUtZDQyZDU0YmY5Y2M5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0317919', 'IMF agent Ethan Hunt comes into conflict with a dangerous and sadistic arms dealer who threatens his life and his fiancée in response.\r\n\r\n', 'tt0317919', 'Action'),
(208, 'The Matrix Revolutions', 'https://m.media-amazon.com/images/M/MV5BNzNlZTZjMDctZjYwNi00NzljLWIwN2QtZWZmYmJiYzQ0MTk2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0242653', 'The human city of Zion defends itself against the massive invasion of the machines as Neo fights to end the war at another front while also opposing the rogue Agent Smith.', 'tt0242653', 'Sci-fi'),
(209, 'The Divergent Series: Allegiant', 'https://m.media-amazon.com/images/M/MV5BNjk2OTc5YzQtMjAwMS00YWY4LTk1ZWItOTgyMmRkMGU4ZmY1XkEyXkFqcGdeQXVyMzQ1MzUwMTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3410834', 'After the earth-shattering revelations of Insurgent, Tris must escape with Four beyond the wall that encircles Chicago, to finally discover the shocking truth of the world around them.', 'tt3410834', 'Action'),
(210, 'Avatar', 'https://m.media-amazon.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0499549', 'A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', 'tt0499549', ''),
(211, '[COMING DECEMBER 22nd] The Matrix 4', 'https://m.media-amazon.com/images/M/MV5BNTg3OTQ5OWItMDUwNi00NjhlLTliZTgtZGY1MDc5MjYxZDQ0XkEyXkFqcGdeQXVyMzA2ODQ2OTU@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt10838180', 'The plot is currently unknown.', 'tt10838180', 'Sci-fi'),
(212, 'Mission: Impossible Ghost Protocol', 'https://m.media-amazon.com/images/M/MV5BMTY4MTUxMjQ5OV5BMl5BanBnXkFtZTcwNTUyMzg5Ng@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1229238', 'When the IMF is wrongly accused of bombing the Kremlin, Ethan and his team race against time to find the real culprits and clear the reputation of their organisation.', 'tt1229238', 'Action'),
(213, 'Dr. No', 'https://m.media-amazon.com/images/M/MV5BMWRkZTI4NzktYjA4Yi00ZjE0LTgzOWQtYzJlMTkyOTU1ODRmXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0055928', 'A resourceful British government agent seeks answers in a case involving the disappearance of a colleague and the disruption of the American space program.', 'tt0055928', 'Action'),
(214, 'Mission: Impossible Rogue Nation', 'https://m.media-amazon.com/images/M/MV5BOTFmNDA3ZjMtN2Y0MC00NDYyLWFlY2UtNTQ4OTQxMmY1NmVjXkEyXkFqcGdeQXVyNTg4NDQ4NDY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2381249', 'Ethan and his team take on their most impossible mission yet when they have to eradicate an international rogue organization as highly skilled as they are and committed to destroying the IMF.\r\n\r\n', 'tt2381249', 'Action'),
(215, 'From Russia with Love', 'https://m.media-amazon.com/images/M/MV5BZjBiNGNlNmItZTk2Zi00YjRlLTk1NzEtNDI2YTNmN2EwNDhlXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0057076', 'James Bond willingly falls into an assassination plot involving a naive Russian beauty in order to retrieve a Soviet encryption device that was stolen by S.P.E.C.T.R.E.', 'tt0057076', 'Action'),
(216, 'Mission: Impossible Fallout', 'https://m.media-amazon.com/images/M/MV5BMjIxYTUzMDYtNGFiNS00NTJkLWFjYWUtNzdjNDRiZmNjYmMzXkEyXkFqcGdeQXVyOTAyMTM4MTk@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt4912910', 'Ethan Hunt and his IMF team, along with some familiar allies, race against time after a mission gone wrong.\r\n\r\n', 'tt4912910', 'Action'),
(217, 'Goldfinger', 'https://m.media-amazon.com/images/M/MV5BMTQ2MzE0OTU3NV5BMl5BanBnXkFtZTcwNjQxNTgzNA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0058150', 'While investigating a gold magnates smuggling, James Bond uncovers a plot to contaminate the Fort Knox gold reserve.', 'tt0058150', 'Action'),
(219, 'Thunderball', 'https://m.media-amazon.com/images/M/MV5BM2I0YWRjZDQtMjQwMC00N2EzLTg0MTctYWE0MzIzOTZiMjE5XkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0059800', 'James Bond heads to the Bahamas to recover two nuclear warheads stolen by S.P.E.C.T.R.E. Agent Emilio Largo in an international extortion scheme.', 'tt0059800', 'Action'),
(220, 'You Only Live Twice', 'https://m.media-amazon.com/images/M/MV5BMTc5MThlMDMtNGZhNy00ZGI5LTliYjItNmIwMzZlOTliOTNhXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0062512', 'Secret Agent James Bond and the Japanese Secret Service must find and stop the true culprit of a series of space hijackings, before war is provoked between Russia and the United States.', 'tt0062512', 'Action'),
(221, 'The Smurfs 2', 'https://m.media-amazon.com/images/M/MV5BOGI0OTUwNTItZTU0Yy00YmMzLTlkNjQtZDJjZTI2YTliZTM4XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2017020', 'When Gargamel learns that Smurfette knows a secret spell that can turn Naughties, Smurf-like creatures, into real Smurfs, he kidnaps her. The Smurfs set out to rescue Smurfette.\r\n', 'tt2017020', 'Family'),
(222, 'On Her Majestys Secret Service', 'https://m.media-amazon.com/images/M/MV5BZGFlNGNiMmQtMThhZS00MWMxLWFiNGItZTM4ZmJlODM3ZmU2XkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0064757', 'James Bond woos a mob boss daughter and goes undercover to uncover the true reason for Ernst Stavro Blofelds allergy research in the Swiss Alps involving beautiful women from around the world.', 'tt0064757', 'Action'),
(223, 'Diamonds Are Forever', 'https://m.media-amazon.com/images/M/MV5BMDBlODdhNTYtMGYwNi00NjI1LWFiNTYtMzAwYWM5MTRlMzgzXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0066995', 'A diamond smuggling investigation leads James Bond to Las Vegas, where he uncovers an evil plot involving a rich business tycoon.', 'tt0066995', 'Action'),
(224, 'Live and Let Die', 'https://m.media-amazon.com/images/M/MV5BYzFhNTBiYTMtZmI3MC00YmIxLWJjYzQtYzNmMjg1NjlhYzJkXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0070328', 'James Bond is sent to stop a diabolically brilliant heroin magnate armed with a complex organisation and a reliable psychic tarot card reader.', 'tt0070328', 'Action'),
(225, 'The Man with the Golden Gun', 'https://m.media-amazon.com/images/M/MV5BYjY3YmM1MTItMWE0NC00NjFmLWFkMDgtMWFiZjY5NzQyZGVjXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0071807', 'James Bond is targeted by the worlds most expensive assassin, while he attempts to recover sensitive solar cell technology that is being sold to the highest bidder.', 'tt0071807', 'Action'),
(226, 'The Spy Who Loved Me', 'https://m.media-amazon.com/images/M/MV5BZDJhOTgyMTUtMDVhOS00MzRlLTk0MjYtYjI5NzhhMTExMTc1XkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0076752', 'James Bond investigates the hijacking of British and Russian submarines carrying nuclear warheads, with the help of a K.G.B. agent whose lover he killed.', 'tt0076752', 'Action'),
(227, 'Moonraker', 'https://m.media-amazon.com/images/M/MV5BM2M5MTA3YzUtZDRiNi00NTk4LTk2ODEtY2ZiOTZmMzcwNjQwXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0079574', 'James Bond investigates the mid-air theft of a space shuttle, and discovers a plot to commit global genocide.', 'tt0079574', 'Action'),
(228, 'Surfs Up', 'https://m.media-amazon.com/images/M/MV5BMjE4NDE3NzcwM15BMl5BanBnXkFtZTcwMTI0ODYzMw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0423294', 'Followed by a documentary film crew, Cody Maverick, a 17-year-old penguin, travels from Antarctica to Pen Gu Island hoping to win the Big Z Memorial Surf Off.\r\n', 'tt0423294', 'Family'),
(229, 'For Your Eyes Only', 'https://m.media-amazon.com/images/M/MV5BMzQ4YzUzNGQtMDNkYS00NTk5LTkyMDgtNmVkMjg5MjIzNTdmXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0082398', 'James Bond is assigned to find a missing British vessel, equipped with a weapons encryption device and prevent it from falling into enemy hands.', 'tt0082398', 'Action'),
(230, 'Surfs Up 2: WaveMania', 'https://m.media-amazon.com/images/M/MV5BMTcyMzM5ODI2Ml5BMl5BanBnXkFtZTgwMjcwMTIyODE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt5513260', 'An animated comedy that features WWE Superstars, providing their own voices while matching up against talking animals.\r\n\r\n', 'tt5513260', 'Family'),
(231, 'Octopussy', 'https://m.media-amazon.com/images/M/MV5BMjI2MDE0NjE1NV5BMl5BanBnXkFtZTcwNjYyMzY0NA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0086034', 'A fake Fabergé egg, and a fellow Agents death, lead James Bond to uncover an international jewel-smuggling operation, headed by the mysterious Octopussy, being used to disguise a nuclear attack on N.A.T.O. forces.', 'tt0086034', 'Action'),
(232, 'A View to a Kill', 'https://m.media-amazon.com/images/M/MV5BMDFlNDZkMGUtYTk4ZS00MTJlLTgzNjktMTQyN2I0MDE3ZTIzXkEyXkFqcGdeQXVyMTQ4NTI5MjE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0090264', 'The recovery of a microchip off the body of a fellow agent leads James Bond to a mad industrialist who plans to create a worldwide microchip monopoly by destroying Californias Silicon Valley.', 'tt0090264', 'Action'),
(233, 'The Living Daylights', 'https://m.media-amazon.com/images/M/MV5BZjI4MjBmYzItYTY5OC00OWYzLWE0NWYtZDQxNDQxM2QzYjA4XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0093428', 'James Bond is sent to investigate a KGB policy to kill all enemy spies and uncovers an arms deal that potentially has major global ramifications.', 'tt0093428', 'Action'),
(234, 'Licence to Kill', 'https://m.media-amazon.com/images/M/MV5BODY3M2I0NGItYzJhNy00M2NiLThhMDgtNjZkNjA1NTQzMDM4XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0097742', 'After capturing a drug lord, Felix Leiter is left for dead and his wife is murdered. James Bond goes rogue and seeks vengeance on those responsible, as he infiltrates an organisation posing as a hitman.', 'tt0097742', 'Action'),
(235, 'GoldenEye', 'https://m.media-amazon.com/images/M/MV5BMzk2OTg4MTk1NF5BMl5BanBnXkFtZTcwNjExNTgzNA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0113189', 'Years after a friend and fellow 00 agent is killed on a joint mission, a secret space based weapons program known as \"GoldenEye\" is stolen. James Bond sets out to stop a Russian crime syndicate from using the weapon.', 'tt0113189', 'Action'),
(236, 'Tomorrow Never Dies', 'https://m.media-amazon.com/images/M/MV5BMTM1MTk2ODQxNV5BMl5BanBnXkFtZTcwOTY5MDg0NA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0120347', 'James Bond sets out to stop a media moguls plan to induce war between China and the UK in order to obtain exclusive global media coverage.', 'tt0120347', 'Action'),
(237, 'Venom', 'https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1270797', 'A failed reporter is bonded to an alien entity, one of many symbiotes who have invaded Earth. But the being takes a liking to Earth and decides to protect it.\r\n\r\n', 'tt1270797', 'Action'),
(238, 'The World Is Not Enough', 'https://m.media-amazon.com/images/M/MV5BMjA0MzUyNjg0MV5BMl5BanBnXkFtZTcwNDY5MDg0NA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0143145', 'James Bond uncovers a nuclear plot while protecting an oil heiress from her former kidnapper, an international terrorist who cant feel pain.', 'tt0143145', 'Action'),
(239, 'Die Another Day', 'https://m.media-amazon.com/images/M/MV5BODNkYmIwYTMtYzdhNy00YWE3LThkYmEtNzA5ZTE5YmVjYzZlXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0246460', 'James Bond is sent to investigate the connection between a North Korean terrorist and a diamond mogul, who is funding the development of an international space weapon.', 'tt0246460', 'Action'),
(240, 'Casino Royale', 'https://m.media-amazon.com/images/M/MV5BMDI5ZWJhOWItYTlhOC00YWNhLTlkNzctNDU5YTI1M2E1MWZhXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0381061', 'After earning 00 status and a licence to kill, Secret Agent James Bond sets out on his first mission as 007. Bond must defeat a private banker funding terrorists in a high-stakes game of poker at Casino Royale, Montenegro.', 'tt0381061', 'Action'),
(241, 'Quantum of Solace', 'https://m.media-amazon.com/images/M/MV5BMjZiYTUzMzktZWI5Yy00Mzk4LWFlMDgtYjRmNWU0Mzc0MzNiXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0830515', 'James Bond descends into mystery as he tries to stop a mysterious organisation from eliminating a countrys most valuable resource.', 'tt0830515', 'Action'),
(242, 'Aladdin', 'https://static.wikia.nocookie.net/disneyprincess/images/d/d4/Aladdin_poster_1992.jpg/revision/latest?cb=20200428141704', 'https://www.youtube.com/embed/U1a3GBTW6p8', 'A kindhearted street urchin and a power-hungry Grand Vizier vie for a magic lamp that has the power to make their deepest wishes come true.\r\n\r\n', 'tt0103639', 'Family'),
(243, 'Skyfall', 'https://m.media-amazon.com/images/M/MV5BMWZiNjE2OWItMTkwNy00ZWQzLWI0NTgtMWE0NjNiYTljN2Q1XkEyXkFqcGdeQXVyNzAwMjYxMzA@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1074638', 'James Bonds loyalty to M is tested when her past comes back to haunt her. When MI6 comes under attack, 007 must track down and destroy the threat, no matter how personal the cost.', 'tt1074638', 'Action'),
(244, 'Spectre', 'https://m.media-amazon.com/images/M/MV5BOWQ1MDE1NzgtNTQ4OC00ZjliLTllZDAtN2IyOTVmMTc5YjUxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2379713', 'A cryptic message from James Bonds past sends him on a trail to uncover the existence of a sinister organisation named SPECTRE. With a new threat dawning, Bond learns the terrible truth about the author of all his pain in his most recent missions.', 'tt2379713', 'Action'),
(245, '[COMING OCTOBER 1st] No Time to Die', 'https://m.media-amazon.com/images/M/MV5BMTk3ZGM2YzQtMmYxYy00NDZjLWFmOTUtZTQwMzg0ZjA5ZjU3XkEyXkFqcGdeQXVyODk2NDQ3MTA@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2382320', 'James Bond has left active service. His peace is short-lived when Felix Leiter, an old friend from the CIA, turns up asking for help, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.', 'tt2382320', 'Action'),
(246, 'Casino Royale (1967)', 'https://m.media-amazon.com/images/M/MV5BZjJlYzgyZTQtNDFiMy00ZGFjLTk2N2ItN2ViNzNhNzhhNGM1XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0061452', 'In an early spy spoof, aging Sir James Bond comes out of retirement to take on SMERSH.', 'tt0061452', 'Action'),
(247, 'Never Say Never Again', 'https://m.media-amazon.com/images/M/MV5BMTM1NjgzMDkwOF5BMl5BanBnXkFtZTcwMzM4NzI0NA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0086006', 'A S.P.E.C.T.R.E. Agent has stolen two American nuclear warheads, and James Bond must find their targets before they are detonated.', 'tt0086006', 'Action'),
(248, 'Jaws', 'https://m.media-amazon.com/images/M/MV5BMmVmODY1MzEtYTMwZC00MzNhLWFkNDMtZjAwM2EwODUxZTA5XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0073195', 'When a killer shark unleashes chaos on a beach community, its up to a local sheriff, a marine biologist, and an old seafarer to hunt the beast down.\r\n\r\n', 'tt0073195', 'Horror'),
(249, '[COMING 2022] Mission: Impossible 7', 'https://m.media-amazon.com/images/M/MV5BNDkyYmRhMzQtMGFmMy00ODBmLWIwN2MtNmViODFkZDkyMTgwXkEyXkFqcGdeQXVyMTA1OTYzOTUx._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt9603212', 'Seventh entry in the long-running Mission: Impossible series.\r\n\r\n', 'tt9603212', 'Action'),
(250, 'gru meets roblox slender', 'https://i.ytimg.com/vi/mrY6IIFyUGU/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBYPkafwT9wqXkS1CLS5ZUZxnwcTA', 'https://www.youtube.com/embed/mrY6IIFyUGU', 'gru just wanted to play some mm2 on roblox😤  roblox slenders are vilen!1!!😡💀💀', 'tt1323594', 'Action'),
(251, 'Passengers', 'https://m.media-amazon.com/images/M/MV5BZjk4ZTMwMTYtOTk1NC00OTA0LWFhMGYtZTBjMzViMDY2YWZjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1355644', 'A malfunction in a sleeping pod on a spacecraft traveling to a distant colony planet wakes one passenger 90 years early.', 'tt1355644', 'Drama'),
(252, 'YouTuber Turned Mass Murderer: The Insane Case of Randy Stair ', 'https://i.ytimg.com/vi/qANNJP2DG8g/hq720.jpg?sqp=-oaymwEjCOgCEMoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLC_gra0ZTiOz9d1-6kA4BFZD81CTw', 'https://www.youtube.com/embed/qANNJP2DG8g', 'In todays true crime documentary, were covering the strange case of Randy Stair.\r\n', 'tt0452046', 'Crime'),
(253, 'Scream ', 'https://m.media-amazon.com/images/M/MV5BMjA2NjU5MTg5OF5BMl5BanBnXkFtZTgwOTkyMzQxMDE@._V1_FMjpg_UY475_.jpg 319w, https://m.media-amazon.com/images/M/MV5BMjA2NjU5MTg5OF5BMl5BanBnXkFtZTgwOTkyMzQxMDE@._V1_FMjpg_UY712_.jpg 479w, https://m.media-amazon.com/images/M/MV5BMjA2NjU5MTg5OF5BMl5BanBnXkFtZTgwOTkyMzQxMDE@._V1_FMjpg_UY337_.jpg 227w, https://m.media-amazon.com/images/M/MV5BMjA2NjU5MTg5OF5BMl5BanBnXkFtZTgwOTkyMzQxMDE@._V1_FMjpg_UX904_.jpg 904w', 'https://www.2embed.ru/embed/imdb/movie?id=tt0117571', 'A year after the murder of her mother, a teenage girl is terrorized by a new killer, who targets the girl and her friends by using horror films as part of a deadly game.', 'tt0117571', 'Horror'),
(254, 'Scream 2', 'https://m.media-amazon.com/images/M/MV5BMDNlM2E2OTUtZTRhZi00ZDU1LWIxODAtN2E5OGZiNmIwMDIwXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0120082', 'Two years after the first series of murders, as Sidney acclimates to college life, someone donning the Ghostface costume begins a new string of killings.', 'tt0120082', 'Horror'),
(255, 'muscles', 'https://i.ytimg.com/vi/IEI1a2MTTrA/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDO6PjhbJputOwL3GDlI6E4q637hw', 'https://www.youtube.com/embed/IEI1a2MTTrA', 'growing stronker', 'tt0111161', 'Comedy'),
(256, 'Scream 3', 'https://m.media-amazon.com/images/M/MV5BMDljNmI1YzctNjJlZC00NzZlLWFlZTgtMDE4MjJiMDk0ZGY4XkEyXkFqcGdeQXVyMjg3MDQ0Mjk@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0134084', 'While Sidney and her friends visit the Hollywood set of Stab 3, the third film based on the Woodsboro murders, another Ghostface killer rises to terrorize them.', 'tt0134084', 'Horror'),
(257, 'Scream 4', 'https://m.media-amazon.com/images/M/MV5BMTk5OTcxNTUyNF5BMl5BanBnXkFtZTcwMDczMzE0NA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1262416', 'Ten years have passed, and Sidney Prescott, who has put herself back together thanks in part to her writing, is visited by the Ghostface Killer.', 'tt1262416', 'Horror');
INSERT INTO `filmer` (`id`, `title`, `bilde`, `film`, `beskrivelse`, `rating`, `kategori`) VALUES
(258, '[COMING 2022] Scream', 'https://m.media-amazon.com/images/M/MV5BNDBjOGVjOGEtNTZmMi00MzlmLTg3OWEtNmVhNDk4MzYwOTAxXkEyXkFqcGdeQXVyNzk5NDk3MjQ@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt11245972', 'A new installment of the \"Scream\" horror franchise will follow a woman returning to her home town to try to find out who has been committing a series of vicious crimes.', 'tt11245972', 'Horror'),
(259, 'Twilight', 'https://m.media-amazon.com/images/M/MV5BMTQ2NzUxMTAxN15BMl5BanBnXkFtZTcwMzEyMTIwMg@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1099212', 'When Bella Swan moves to a small town in the Pacific Northwest, she falls in love with Edward Cullen, a mysterious classmate who reveals himself to be a 108-year-old vampire.', 'tt1099212', 'Drama'),
(260, 'The Twilight Saga: New Moon', 'https://m.media-amazon.com/images/M/MV5BMTI3MjE3NDIxNF5BMl5BanBnXkFtZTcwODM3NTY5Mg@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1259571', 'Edward leaves Bella after an attack that nearly claimed her life, and, in her depression, she falls into yet another difficult relationship - this time with her close friend, Jacob Black.', 'tt1259571', 'Drama'),
(261, 'The Twilight Saga: Eclipse', 'https://m.media-amazon.com/images/M/MV5BNDMwNjAzNzYwOF5BMl5BanBnXkFtZTcwMDY5NzcyMw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1325004', 'As a string of mysterious killings grips Seattle, Bella, whose high school graduation is fast approaching, is forced to choose between her love for vampire Edward and her friendship with werewolf Jacob.', 'tt1325004', 'Drama'),
(262, 'The Twilight Saga: Breaking Dawn - Part 1', 'https://m.media-amazon.com/images/M/MV5BODgxNDE0OTAzOF5BMl5BanBnXkFtZTcwNzcwODE2Ng@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1324999', 'The Quileutes close in on expecting parents Edward and Bella, whose unborn child poses a threat to the Wolf Pack and the towns people of Forks.', 'tt1324999', 'Drama'),
(263, 'The Twilight Saga: Breaking Dawn - Part 2', 'https://m.media-amazon.com/images/M/MV5BMTcyMzUyMzY1OF5BMl5BanBnXkFtZTcwNDQ4ODk1OA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1673434', 'After the birth of Renesmee/Nessie, the Cullens gather other vampire clans in order to protect the child from a false allegation that puts the family in front of the Volturi.', 'tt1673434', 'Drama'),
(264, 'Aquaman', 'https://m.media-amazon.com/images/M/MV5BOTk5ODg0OTU5M15BMl5BanBnXkFtZTgwMDQ3MDY3NjM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1477834', 'Arthur Curry, the human-born heir to the underwater kingdom of Atlantis, goes on a quest to prevent a war between the worlds of ocean and land.', 'tt1477834', 'Action'),
(265, 'Joker', 'https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt7286456', 'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face to face with his alter-ego: the Joker.\r\n\r\n', 'tt7286456', 'Crime'),
(266, 'The Tomorrow War', 'https://m.media-amazon.com/images/M/MV5BNTI2YTI0MWEtNGQ4OS00ODIzLWE1MWEtZGJiN2E3ZmM1OWI1XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt9777666', 'A family man is drafted to fight in a future war where the fate of humanity relies on his ability to confront the past.', 'tt9777666', 'Action'),
(267, 'Shazam!', 'https://m.media-amazon.com/images/M/MV5BOWZhZjE4NGQtODg5Ni00MjQ1LWJmMzAtNzQ2N2M1NzYzMDJkXkEyXkFqcGdeQXVyMjMwNDgzNjc@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0448115', 'A newly fostered young boy in search of his mother instead finds unexpected super powers and soon gains a powerful enemy.', 'tt0448115', 'Action'),
(268, 'The Adventures of Sharkboy and Lavagirl 3-D', 'https://m.media-amazon.com/images/M/MV5BZjY5NGNhNDMtNDM3OC00YTc0LWFiMzYtNWQ1NWYyYzFjOTk0XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0424774', 'A young boy is recruited by his imaginary friends Sharkboy and Lavagirl to help save their planet.', 'tt0424774', 'Family'),
(269, 'We Can Be Heroes', 'https://m.media-amazon.com/images/M/MV5BYmU3OGFhZDItMjhlZi00YjQwLWJlOTItYzlhOGEwNGU3NjIwXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt10600398', 'When alien invaders capture the Earths superheroes, their kids must learn to work together to save their parents- and the planet.', 'tt10600398', 'Family'),
(270, 'Edge of Tomorrow', 'https://m.media-amazon.com/images/M/MV5BMTc5OTk4MTM3M15BMl5BanBnXkFtZTgwODcxNjg3MDE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1631867', 'A soldier fighting aliens gets to relive the same day over and over again, the day restarting every time he dies.', 'tt1631867', 'Action'),
(271, 'Interstellar', 'https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0816692', 'When Earth becomes uninhabitable in the future, a farmer and ex NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.', 'tt0816692', 'Sci-fi'),
(272, 'Warcraft', 'https://m.media-amazon.com/images/M/MV5BMjIwNTM0Mzc5MV5BMl5BanBnXkFtZTgwMDk5NDU1ODE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0803096', 'As an Orc horde invades the planet Azeroth using a magic portal, a few human heroes and dissenting Orcs must attempt to stop the true evil behind this war.', 'tt0803096', 'Action'),
(273, 'The Lord of the Rings: The Fellowship of the Ring', 'https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0120737', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.', 'tt0120737', 'Adventure'),
(274, 'Halloween', 'https://m.media-amazon.com/images/M/MV5BMmMzNjJhYjUtNzFkZi00MWQ4LWJiMDEtYWM0NTAzNGZjMTI3XkEyXkFqcGdeQXVyOTE2OTMwNDk@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1502407', 'Laurie Strode confronts her long time foe Michael Myers, the masked figure who has haunted her since she narrowly escaped his killing spree on Halloween night four decades ago.\r\n\r\n', 'tt1502407', 'Horror'),
(275, 'The Lord of the Rings: The Two Towers', 'https://m.media-amazon.com/images/M/MV5BZGMxZTdjZmYtMmE2Ni00ZTdkLWI5NTgtNjlmMjBiNzU2MmI5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0167261', 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Saurons new ally, Saruman, and his hordes of Isengard.', 'tt0167261', 'Adventure'),
(276, 'Willys Wonderland', 'https://m.media-amazon.com/images/M/MV5BOTc3ZjVkYTYtMDZiMC00OTliLWE3OTEtYjY5NTBmNGJjYTBmXkEyXkFqcGdeQXVyNDExMzMxNjE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt8114980', 'A quiet drifter is tricked into a janitorial job at the now condemned Willys Wonderland. The mundane tasks suddenly become an all-out fight for survival against wave after wave of demonic animatronics. Fists fly, kicks land, titans clash -- and only one side will make it out alive.', 'tt8114980', 'Comedy'),
(277, 'The Lord of the Rings: The Return of the King', 'https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0167260', 'Gandalf and Aragorn lead the World of Men against Saurons army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', 'tt0167260', 'Adventure'),
(278, 'Halloween 2007', 'https://m.media-amazon.com/images/M/MV5BMTMzOTg4MzcxNF5BMl5BanBnXkFtZTcwMzY5MDE1MQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0373883', 'After being committed for 17 years, Michael Myers, now a grown man and still very dangerous, escapes from the mental institution and immediately returns to Haddonfield to find his baby sister, Laurie.\r\n\r\n', 'tt0373883', 'Horror'),
(279, 'Ghost Rider', 'https://m.media-amazon.com/images/M/MV5BMzIyNDE5ODI1OV5BMl5BanBnXkFtZTcwNTIyNDE0MQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0259324', 'When motorcycle rider Johnny Blaze sells his soul to the Devil to save his fathers life, he is transformed into the Ghost Rider, the Devils own bounty hunter, and is sent to hunt down sinners.', 'tt0259324', 'Action'),
(280, 'Ghost Rider: Spirit of Vengeance', 'https://m.media-amazon.com/images/M/MV5BMTkwNDM5MDEzOF5BMl5BanBnXkFtZTcwNDEyNTUxNw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1071875', 'Johnny Blaze, tortured by the Ghost Riders curse, gets a chance of redemption through protecting the Devils son, whose father is pursuing him.', 'tt1071875', 'Action'),
(281, 'The Hobbit: An Unexpected Journey', 'https://m.media-amazon.com/images/M/MV5BMTcwNTE4MTUxMl5BMl5BanBnXkFtZTcwMDIyODM4OA@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0903624', 'A reluctant Hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home, and the gold within it from the dragon Smaug.', 'tt0903624', 'Adventure'),
(282, 'Neighbors', 'https://m.media-amazon.com/images/M/MV5BOTQ0OTkzODgyNF5BMl5BanBnXkFtZTgwOTA3OTE4MDE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2004420', 'After they are forced to live next to a fraternity house, a couple with a newborn baby do whatever they can to take them down.', 'tt2004420', 'Comedy'),
(283, 'The Hobbit: The Desolation of Smaug', 'https://m.media-amazon.com/images/M/MV5BMzU0NDY0NDEzNV5BMl5BanBnXkFtZTgwOTIxNDU1MDE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1170358', 'The dwarves, along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor, their homeland, from Smaug. Bilbo Baggins is in possession of a mysterious and magical ring.', 'tt1170358', 'Adventure'),
(284, 'The Hobbit: The Battle of the Five Armies', 'https://m.media-amazon.com/images/M/MV5BMTYzNDE3OTQ3MF5BMl5BanBnXkFtZTgwODczMTg4MjE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2310332', 'Bilbo and company are forced to engage in a war against an array of combatants and keep the Lonely Mountain from falling into the hands of a rising darkness.', 'tt2310332', 'Adventure'),
(285, 'Neighbors 2: Sorority Rising', 'https://m.media-amazon.com/images/M/MV5BMTY0NzUxMDUzN15BMl5BanBnXkFtZTgwNzI2MTY4ODE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt4438848', 'When their new next-door neighbors turn out to be a sorority even more debaucherous than the fraternity previously living there, Mac and Kelly team with their former enemy, Teddy, to bring the girls down.', 'tt4438848', 'Comedy'),
(286, 'Sharknado', 'https://m.media-amazon.com/images/M/MV5BODcwZWFiNTEtNDgzMC00ZmE2LWExMzYtNzZhZDgzNDc5NDkyXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2724064', 'When a freak hurricane swamps Los Angeles, natures deadliest killer rules sea, land, and air as thousands of sharks terrorize the waterlogged populace.', 'tt2724064', 'Action'),
(287, 'Sharknado 2: The Second One', 'https://m.media-amazon.com/images/M/MV5BMjA0MTIxMDEwNF5BMl5BanBnXkFtZTgwMDk3ODIxMjE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3062074', 'Fin and April are on their way to New York City, until a category seven hurricane spawns heavy rain, storm surges, and deadly Sharknadoes.', 'tt3062074', 'Action'),
(288, 'Sharknado 3: Oh Hell No!', 'https://m.media-amazon.com/images/M/MV5BMTc5MDUzNzQzOF5BMl5BanBnXkFtZTgwMDg4NTYzNTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3899796', 'A monstrous tornado unleashes ravenous sharks from Washington, D.C., all the way down to Orlando, Florida.', 'tt3899796', 'Action'),
(289, 'San Andreas', 'https://m.media-amazon.com/images/M/MV5BNzZhYmQ2NGMtZmRmYi00NzgzLTllNmUtNDQwZDAxMmE3NzI0XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=https://www.2embed.ru/embed/imdb/movie?id=tt2126355', 'In the aftermath of a massive earthquake in California, a rescue-chopper pilot makes a dangerous journey with his ex-wife across the state in order to rescue his daughter.', 'tt2126355', 'Disaster'),
(290, 'Sharknado 4: The 4th Awakens', 'https://m.media-amazon.com/images/M/MV5BMWE5YWJhZWYtMzUwMy00MWUyLTkzZWEtYzVjY2M0YzVmZjQ3XkEyXkFqcGdeQXVyNTc5NTcxMTQ@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt4831420', 'Fin, his family and the cosmos have been blissfully sharknado-free in the five years since the most recent attack, but now sharks and tornadoes are being whipped up in unexpected ways and places.', 'tt4831420', 'Action'),
(291, '2012', 'https://m.media-amazon.com/images/M/MV5BMTY0MjEyODQzMF5BMl5BanBnXkFtZTcwMTczMjQ4Mg@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1190080', 'A frustrated writer struggles to keep his family alive when a series of global catastrophes threatens to annihilate mankind.', 'tt1190080', 'Disaster'),
(292, 'Sharknado 5: Global Swarming', 'https://m.media-amazon.com/images/M/MV5BMjQ3Mzk5NzAwNV5BMl5BanBnXkFtZTgwNDkwOTc3MjI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt6298780', 'With much of America lying in ruins, the rest of the world braces for a global sharknado, and Fin and his family must travel around the world to stop them.', 'tt6298780', 'Action'),
(294, 'The Last Sharknado: Its About Time', 'https://m.media-amazon.com/images/M/MV5BNWM4MjY5NzktMTg2ZS00MmE5LWIxNGMtYThhMGMwYmMwZGYzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt8031422', 'Fin has to go back in time to rejoin his shark-battling friends to stop the first Sharknado and save humanity.', 'tt8031422', 'Action'),
(295, 'Bølgen', 'https://m.media-amazon.com/images/M/MV5BZTE2NmNjOWMtZWJmNC00ZmFiLWI3ZDgtYWU3MWZhOGVhMTlkXkEyXkFqcGdeQXVyMjg0NDI1MjU@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3616916', 'Although anticipated, no one is really ready when the mountain pass above the scenic, narrow Norwegian fjord Geiranger collapses and creates an 85-meter high violent tsunami. A geologist is one of those caught in the middle of it.', 'tt3616916', 'Disaster'),
(296, 'Skjelvet', 'https://m.media-amazon.com/images/M/MV5BNjYzYWRlZmEtNTQzZC00ZmE2LThjNzAtMDY3ZmNmYmJiMjBlXkEyXkFqcGdeQXVyODAzODU1NDQ@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt6523720', 'In 1904 an earthquake of magnitude 5.4 on the Richter scale shook Oslo, with an epicenter in the \"Oslo Graben\" which runs under the Norwegian capital. There are now signs that indicate that we can expect a major future earthquake in Oslo.', 'tt6523720', 'Disaster'),
(297, 'Tunnelen', 'https://m.media-amazon.com/images/M/MV5BM2E2Y2U2YWUtMDM5MC00ZTg5LTg0MGMtNTU2OTVmNjg4Mjk2XkEyXkFqcGdeQXVyMjE4NzUxNDA@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt9049042', 'When a truck crashes inside a tunnel, people on their way home for Christmas are brutally trapped in a deadly fire. With a blizzard raging outside, and the first responders struggling to get to the accident, its every man for himself.', 'tt9049042', 'Disaster'),
(298, 'Luca', 'https://m.media-amazon.com/images/M/MV5BZTQyNTU0MDktYTFkYi00ZjNhLWE2ODctMzBkM2U1ZTk3YTMzXkEyXkFqcGdeQXVyNTI4MzE4MDU@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt12801262', 'On the Italian Riviera, an unlikely but strong friendship grows between a human being and a sea monster disguised as a human.', 'tt12801262', 'Family'),
(299, 'Lego: The Adventures of Clutch Powers', 'https://m.media-amazon.com/images/M/MV5BODg2NjgyNDYwM15BMl5BanBnXkFtZTgwOTQ4MTgwMzE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1587414', 'For the first time ever, see the world of LEGO come to life in the all-new feature-length DVD movie adventure with Clutch Powers, the best builder and explorer in the LEGO universe.', 'tt1587414', 'Lego'),
(300, 'Inception', 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt1375666', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', 'tt1375666', 'Action'),
(301, 'X-Men: Dark Phoenix', 'https://m.media-amazon.com/images/M/MV5BMmZmYTgwZGItNDIxMS00MmRkLWEzODQtYTllNzM0ZWE1NmQ5XkEyXkFqcGdeQXVyODQzNTE3ODc@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt6565702', 'Jean Grey begins to develop incredible powers that corrupt and turn her into a Dark Phoenix, causing the X-Men to decide if her life is worth more than all of humanity.', 'tt6565702', 'Action'),
(302, 'The Purge', 'https://m.media-amazon.com/images/M/MV5BMTQzNTcwODEyM15BMl5BanBnXkFtZTcwMjM1MDI0OQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2184339', 'A wealthy family is held hostage for harboring the target of a murderous syndicate during the Purge, a 12-hour period in which any and all crime is legal.', 'tt2184339', 'Horror'),
(303, 'Split', 'https://m.media-amazon.com/images/M/MV5BZTJiNGM2NjItNDRiYy00ZjY0LTgwNTItZDBmZGRlODQ4YThkL2ltYWdlXkEyXkFqcGdeQXVyMjY5ODI4NDk@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt4972582', 'Three girls are kidnapped by a man with a diagnosed 23 distinct personalities. They must try to escape before the apparent emergence of a frightful new 24th.', 'tt4972582', 'Horror'),
(304, 'The Purge: Anarchy', 'https://m.media-amazon.com/images/M/MV5BMjE2ODMxMTk1Nl5BMl5BanBnXkFtZTgwMDEzNjEzMTE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2975578', 'Three groups of people intertwine and are left stranded in the streets on Purge Night, trying to survive the chaos and violence that occurs.', 'tt2975578', 'Horror'),
(305, 'The Purge: Election Year', 'https://m.media-amazon.com/images/M/MV5BMjI3MDI0MTA1N15BMl5BanBnXkFtZTgwOTk4NjU5ODE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt4094724', 'Former Police Sergeant Barnes becomes head of security for Senator Charlie Roan, a Presidential candidate targeted for death on Purge night due to her vow to eliminate the Purge.', 'tt4094724', 'Horror'),
(306, 'Glass', 'https://m.media-amazon.com/images/M/MV5BMTY1OTA2MjI5OV5BMl5BanBnXkFtZTgwNzkxMjU4NjM@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt6823368', 'Security guard David Dunn uses his supernatural abilities to track Kevin Wendell Crumb, a disturbed man who has twenty-four personalities.', 'tt6823368', 'Drama'),
(307, 'The First Purge', 'https://m.media-amazon.com/images/M/MV5BYmVjMWJhMTYtMzUxMC00ODdhLTk3YzMtZDFhNGUyOGFhYTY0XkEyXkFqcGdeQXVyNDIzMzcwNjc@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt6133466', 'Americas third political party, the New Founding Fathers of America, comes to power and conducts an experiment: no laws for 12 hours on Staten Island. No one has to stay on the island, but $5,000 is given to anyone who does.', 'tt6133466', 'Horror'),
(308, 'Unbreakable', 'https://m.media-amazon.com/images/M/MV5BMDIwMjAxNzktNmEzYS00ZDY5LWEyZjktM2Y0MmUzZDkyYmZkXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt0217869', 'A man learns something extraordinary about himself after a devastating accident.', 'tt0217869', 'Drama'),
(309, 'The Forever Purge', 'https://m.media-amazon.com/images/M/MV5BMGE5NjJjNGMtZDkwMy00MGFlLWFkYTktYWFkNTY1NjcwOTY2XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt10327252', 'All the rules are broken as a sect of lawless marauders decides that the annual Purge does not stop at daybreak and instead should never end.', 'tt10327252', 'Horror'),
(310, 'Lego Star Wars: The Empire Strikes Out', 'https://m.media-amazon.com/images/M/MV5BMjIxMzMxNjg1OF5BMl5BanBnXkFtZTcwNjc4NzYxOQ@@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt2402600', 'Luke Skywalker embarks on a mission to find and destroy an Imperial base on Naboo, but is relentlessly chased by a group of fanatic girls, who think of him as a celebrity for destroying the Death Star. Meanwhile, Darth Vader engages a \"sibling\" rivalry with Darth Maul, in order to prove hes the best Sith Lord to Emperor Palpatine.', 'tt2402600', 'Lego'),
(311, '52: How to upload profile images to users using PHP - PHP tutorial', 'https://www.timts.edu.in/images/web-development/Core%20PHP.jpg', 'https://www.youtube.com/embed/y4GxrIa7MiE', 'How to upload profile images to users using PHP - Learn PHP backend programming. In this episode we will learn how to upload profile images to users in a website.', 'tt2402600', 'Documentary'),
(312, 'Blue Mountain State: The Rise of Thadland', 'https://m.media-amazon.com/images/M/MV5BMTYyODE5MTUwNV5BMl5BanBnXkFtZTgwMjk2MjM4NzE@._V1_.jpg', 'https://www.2embed.ru/embed/imdb/movie?id=tt3748440', 'When the Dean of Blue Mountain State threatens to sell the Goat House, Alex throws Thad the party of his dreams in an effort to get him to buy it.', 'tt3748440', 'Comedy');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `film_likes`
--

CREATE TABLE `film_likes` (
  `id` int(11) NOT NULL,
  `user` bigint(20) NOT NULL,
  `film` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dataark for tabell `film_likes`
--

INSERT INTO `film_likes` (`id`, `user`, `film`) VALUES
(1, 82962432, 20),
(2, 7567328494524, 20),
(5, 9223372036854, 20),
(6, 5485973988218682689, 76),
(7, 82962432, 84),
(8, 5485973988218682689, 7),
(9, 82962432, 10),
(10, 15613106786063, 1),
(11, 18874665539755, 79),
(12, 8380739811, 30),
(13, 8380739811, 32),
(14, 82962432, 30),
(15, 8380739811, 38),
(16, 8380739811, 20),
(17, 82962432, 88),
(18, 82962432, 99),
(19, 82962432, 96),
(20, 82962432, 34),
(21, 82962432, 102),
(22, 82962432, 83),
(23, 8380739811, 105),
(24, 7567328494524, 109),
(25, 7567328494524, 108),
(26, 7567328494524, 107),
(27, 7567328494524, 111),
(28, 7567328494524, 110),
(29, 8380739811, 108),
(30, 8380739811, 109),
(31, 7567328494524, 123),
(32, 8380739811, 123),
(33, 82962432, 125),
(34, 8380739811, 125),
(35, 8380739811, 128),
(36, 8380739811, 134),
(37, 8380739811, 140),
(38, 8380739811, 148),
(39, 7567328494524, 148),
(40, 7567328494524, 149),
(41, 7567328494524, 85),
(42, 7567328494524, 152),
(43, 8380739811, 237),
(44, 9223372036854775807, 48),
(45, 82962432, 237),
(46, 82962432, 48),
(47, 82962432, 5),
(48, 82962432, 242),
(49, 82962432, 109),
(50, 82962432, 79),
(51, 82962432, 14),
(52, 82962432, 218),
(53, 82962432, 250),
(54, 82962432, 252),
(55, 8380739811, 252),
(56, 82962432, 255),
(57, 82962432, 64),
(58, 8380739811, 265),
(59, 5485973988218682689, 266),
(60, 82962432, 268),
(61, 8380739811, 271),
(62, 5485973988218682689, 148),
(63, 5485973988218682689, 299),
(64, 5485973988218682689, 310),
(65, 8380739811, 118),
(66, 82962432, 311),
(67, 82962432, 78),
(68, 5485973988218682689, 14),
(69, 15613106786063, 30),
(70, 82962432, 19),
(71, 82962432, 27),
(72, 82962432, 310),
(73, 82962432, 152),
(74, 8380739811, 78),
(75, 82962432, 148),
(76, 8380739811, 250),
(77, 82962432, 194),
(78, 82962432, 32),
(79, 7567328494524, 78),
(80, 5485973988218682689, 34),
(81, 9223372036854, 54),
(82, 5485973988218682689, 80),
(83, 5485973988218682689, 79),
(84, 7567328494524, 312),
(85, 3726593428655365415, 266);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `serier`
--

CREATE TABLE `serier` (
  `serie_id` int(11) NOT NULL,
  `serie_navn` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dataark for tabell `serier`
--

INSERT INTO `serier` (`serie_id`, `serie_navn`, `thumbnail`, `rating`) VALUES
(1, 'Rick and Morty', 'https://m.media-amazon.com/images/M/MV5BZjRjOTFkOTktZWUzMi00YzMyLThkMmYtMjEwNmQyNzliYTNmXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_.jpg', 'tt2861424'),
(2, 'Invincible', 'https://m.media-amazon.com/images/M/MV5BMmE1ODVhMGYtODYyYS00Mjc4LWIzN2EtYWZkZDg1MTUyNDkxXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'tt6741278'),
(3, 'The Boys', 'https://m.media-amazon.com/images/M/MV5BNGEyOGJiNWEtMTgwMi00ODU4LTlkMjItZWI4NjFmMzgxZGY2XkEyXkFqcGdeQXVyNjcyNjcyMzQ@._V1_.jpg', 'tt1190634'),
(4, 'Loki', 'https://m.media-amazon.com/images/M/MV5BNTM4MTBlOTgtZjg3YS00MGM2LWI2ZjQtYzZkNjdmNTE2OGQ0XkEyXkFqcGdeQXVyMTAwMjYyMjQ2._V1_.jpg', 'tt9140554'),
(5, 'WandaVision', 'https://m.media-amazon.com/images/M/MV5BZGEwYmMwZmMtMTQ3MS00YWNhLWEwMmQtZTU5YTIwZmJjZGQ0XkEyXkFqcGdeQXVyMTI5MzA5MjA1._V1_.jpg', 'tt9140560'),
(6, 'The Falcon and the Winter Soldier', 'https://m.media-amazon.com/images/M/MV5BODNiODVmYjItM2MyMC00ZWQyLTgyMGYtNzJjMmVmZTY2OTJjXkEyXkFqcGdeQXVyNzk3NDUzNTc@._V1_.jpg', 'tt9208876'),
(7, 'Stranger Things', 'https://m.media-amazon.com/images/M/MV5BN2ZmYjg1YmItNWQ4OC00YWM0LWE0ZDktYThjOTZiZjhhN2Q2XkEyXkFqcGdeQXVyNjgxNTQ3Mjk@._V1_.jpg', 'tt4574334'),
(8, 'The Flash', 'https://m.media-amazon.com/images/M/MV5BMDIzNzYwNTctZWY4Mi00YjQ2LWI5YWYtMzdmNDgwMGI4Yzk1XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'tt3107288');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `sesonger`
--

CREATE TABLE `sesonger` (
  `sesong_id` int(11) NOT NULL,
  `serie_navn` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sesong_bilde` text COLLATE utf8_unicode_ci NOT NULL,
  `sesong_nummer` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `episoder` int(11) NOT NULL,
  `sesong_tall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dataark for tabell `sesonger`
--

INSERT INTO `sesonger` (`sesong_id`, `serie_navn`, `sesong_bilde`, `sesong_nummer`, `episoder`, `sesong_tall`) VALUES
(1, 'Rick and Morty', 'https://m.media-amazon.com/images/M/MV5BZjRjOTFkOTktZWUzMi00YzMyLThkMmYtMjEwNmQyNzliYTNmXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_.jpg', 'rickandmorty1', 11, 1),
(2, 'Rick and Morty', 'https://m.media-amazon.com/images/M/MV5BYzEzOWFhN2ItNjM4MS00N2M4LWI2NWUtYzQ1ZDkyZmM5ZWI1XkEyXkFqcGdeQXVyNzE0MTIyODk@._V1_.jpg', 'rickandmorty2', 10, 2),
(3, 'Rick and Morty', 'https://m.media-amazon.com/images/M/MV5BYjNmMjU3ZGUtZTdiMi00NDdlLTg0NTUtNDE4NzMwYTczYjAwXkEyXkFqcGdeQXVyNzYzMzM2Mzg@._V1_.jpg', 'rickandmorty3', 10, 3),
(4, 'Rick and Morty', 'https://m.media-amazon.com/images/M/MV5BMDNmZTEwZDAtNjczNS00ODkwLWJiMzEtMjIwOGZiYWEwMGI2XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg', 'rickandmorty4', 10, 4),
(5, 'Invincible', 'https://m.media-amazon.com/images/M/MV5BNWYwYjAyMzgtNzQyNC00M2JiLWI2ZTQtNzRmZThmOTk4NmRmXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'invincible1', 8, 1),
(6, 'The Boys', 'https://m.media-amazon.com/images/M/MV5BYjUyODkwMGItZDBhZS00YzJiLTgxOTktNTgxZmU3NWM4YjI1XkEyXkFqcGdeQXVyMDc2NTEzMw@@._V1_.jpg', 'theboys1', 8, 1),
(7, 'The Boys', 'https://m.media-amazon.com/images/M/MV5BZDIzNDE3MDEtMDllZS00MjFmLWIwZjUtYWY2ZDA3ODQ0Mzc5XkEyXkFqcGdeQXVyMTA3MzQ4MTcw._V1_.jpg', 'theboys2', 8, 2),
(8, 'The Boys', 'https://m.media-amazon.com/images/M/MV5BN2JjNmFjZmItMDVlMS00NzExLWJkOTMtY2U3ZDRiZGUyMTdhXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'theboys3', 8, 3),
(9, 'Loki', 'https://m.media-amazon.com/images/M/MV5BMDQwODQ5YjYtOTk2YS00OTYzLThlZjEtMTJhZmRmODNiOGRmXkEyXkFqcGdeQXVyODQ0Mzg4ODY@._V1_.jpg', 'loki1', 6, 1),
(10, 'WandaVision', 'https://m.media-amazon.com/images/M/MV5BMzAyOGY1OTAtMzUwNC00Mzg3LWFhYzQtZTE2NzQ0NWI0YjJmXkEyXkFqcGdeQXVyNzEzNjU1NDg@._V1_.jpg', 'wandavision1', 9, 1),
(11, 'The Falcon and the Winter Soldier', 'https://m.media-amazon.com/images/M/MV5BNTU5YmNiYmItM2VjZC00MGNjLWE1YjEtOGUzMDU5OGZkYjA5XkEyXkFqcGdeQXVyNzEzNjU1NDg@._V1_.jpg', 'falconwinter1', 6, 1),
(12, 'Stranger Things', 'https://m.media-amazon.com/images/M/MV5BNzNjMTFiZmQtMmU1YS00NDYzLWE3NGUtM2JmYTk5NGFmMjc3XkEyXkFqcGdeQXVyMjgyOTI1ODY@._V1_.jpg', 'strangerthings1', 8, 1),
(13, 'Stranger Things', 'https://m.media-amazon.com/images/M/MV5BNDNmZTBhZmQtNzhhZC00NGU5LWFiZDktNWVmNDA2NDkxMTY1XkEyXkFqcGdeQXVyNjQyMDMzNzc@._V1_.jpg', 'strangerthings2', 9, 2),
(14, 'Stranger Things', 'https://m.media-amazon.com/images/M/MV5BMzJjNDg4NTQtYzdiNC00NTNiLWI4NWMtOTBhOWMzNmI5YTFkXkEyXkFqcGdeQXVyODExNTExMTM@._V1_.jpg', 'strangerthings3', 8, 3),
(15, 'The Flash', 'https://m.media-amazon.com/images/M/MV5BZGM2YzRlNzAtZjM5NS00MWE4LTk3NzYtMGFmMDdjZWE5NzJmXkEyXkFqcGdeQXVyODk2ODI3MTU@._V1_.jpg', 'theflash1', 23, 1),
(16, 'The Flash', 'https://m.media-amazon.com/images/M/MV5BMjI1MDAwNDM4OV5BMl5BanBnXkFtZTgwNjUwNDIxNjM@._V1_.jpg', 'theflash2', 23, 2),
(17, 'The Flash', 'https://m.media-amazon.com/images/M/MV5BMTY1MjYwNzQyMF5BMl5BanBnXkFtZTgwNjk5NDM4NDE@._V1_.jpg', 'theflash3', 23, 3),
(18, 'The Flash', 'https://m.media-amazon.com/images/M/MV5BMjAwNTljOTgtYzk0NS00OGMzLTgzMDUtZDc2YjhjNzU3Yjg5XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'theflash4', 23, 4),
(19, 'The Flash', 'https://m.media-amazon.com/images/M/MV5BNTEwNzQwMDgtNGM2YS00ZmM5LThjZjctNjlkODU3M2U2ZGEyXkEyXkFqcGdeQXVyMTYzMDM0NTU@._V1_.jpg', 'theflash5', 22, 5),
(20, 'The Flash', 'https://m.media-amazon.com/images/M/MV5BMTUxYjVkMmUtNTNjZi00YThlLTllZmQtNTFiZGM2ZGZkMjY5XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'theflash6', 19, 6),
(21, 'The Flash', 'https://m.media-amazon.com/images/M/MV5BMTk3ODI1NjA0N15BMl5BanBnXkFtZTgwOTU4NjE3MDI@._V1_.jpg', 'theflash7', 18, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bruker`
--
ALTER TABLE `bruker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episoder`
--
ALTER TABLE `episoder`
  ADD PRIMARY KEY (`episode_id`);

--
-- Indexes for table `filmer`
--
ALTER TABLE `filmer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film_likes`
--
ALTER TABLE `film_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serier`
--
ALTER TABLE `serier`
  ADD PRIMARY KEY (`serie_id`),
  ADD KEY `serie_navn` (`serie_navn`);

--
-- Indexes for table `sesonger`
--
ALTER TABLE `sesonger`
  ADD PRIMARY KEY (`sesong_id`),
  ADD KEY `sesong_nummer` (`sesong_nummer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bruker`
--
ALTER TABLE `bruker`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `episoder`
--
ALTER TABLE `episoder`
  MODIFY `episode_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filmer`
--
ALTER TABLE `filmer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `film_likes`
--
ALTER TABLE `film_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serier`
--
ALTER TABLE `serier`
  MODIFY `serie_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sesonger`
--
ALTER TABLE `sesonger`
  MODIFY `sesong_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
