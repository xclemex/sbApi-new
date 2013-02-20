-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 17, 2013 at 07:07 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `silver bird`
--

-- --------------------------------------------------------

--
-- Table structure for table `casts`
--

CREATE TABLE IF NOT EXISTS `casts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movies_id` int(11) NOT NULL,
  `real_name` varchar(100) NOT NULL,
  `movie_role_name` varchar(100) NOT NULL,
  `actor_photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `casts`
--

INSERT INTO `casts` (`id`, `movies_id`, `real_name`, `movie_role_name`, `actor_photo`) VALUES
(1, 21, 'Jamie Foxx', '', ''),
(2, 22, 'Hlomla Dandala', '', ''),
(3, 21, 'Don Johnson ', '', ''),
(4, 22, 'Yvonne Okoro', '', ''),
(5, 21, 'Leonardo DiCaprio', '', ''),
(6, 22, 'Joseph Benjamin', '', ''),
(7, 23, 'Billy Crystal', '', ''),
(8, 24, 'Tom Cruise', '', ''),
(9, 23, 'Bette Midler ', '', ''),
(10, 24, 'Rosamund Pike', '', ''),
(11, 23, 'Marisa Tomei', '', ''),
(12, 24, 'Richard Jenkins', '', ''),
(13, 25, 'Anna Kendrick', '', ''),
(14, 25, 'Brittany Snow', '', ''),
(15, 25, 'Rebel Wilson', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_title` varchar(40) NOT NULL,
  `item_category` varchar(11) NOT NULL,
  `author_artist` text NOT NULL,
  `age_rating` int(2) NOT NULL,
  `item_cover` varchar(255) NOT NULL,
  `features` text NOT NULL,
  `format` varchar(11) NOT NULL,
  `weight` varchar(11) NOT NULL,
  `dimensions` varchar(11) NOT NULL,
  `release_date` date NOT NULL,
  `price` varchar(11) NOT NULL,
  `item_description` varchar(80) NOT NULL,
  `item_user_rating` int(11) NOT NULL,
  `item_review` text NOT NULL,
  `item_label` varchar(30) NOT NULL,
  `item_disc_no.` int(11) NOT NULL,
  `language` varchar(11) NOT NULL,
  `genre` varchar(11) NOT NULL,
  `ASIN` int(11) NOT NULL,
  `ISBN_10` int(11) NOT NULL,
  `ISBN_13` int(11) NOT NULL,
  `Availability` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_title`, `item_category`, `author_artist`, `age_rating`, `item_cover`, `features`, `format`, `weight`, `dimensions`, `release_date`, `price`, `item_description`, `item_user_rating`, `item_review`, `item_label`, `item_disc_no.`, `language`, `genre`, `ASIN`, `ISBN_10`, `ISBN_13`, `Availability`) VALUES
(1, 'The gods are not to blame', 'book', 'Chinua Achebe', 15, 'tgant.jpg', 'hard cover', '', '20g', '20x15cm', '1995-08-01', 'GHC 4.00', 'nice story', 6, 'lhjvkhkfcftit,dfseseyseyes', 'null', 0, 'en,yuroba', 'historical', 2147483647, 879652352, 2147483647, 'yes'),
(2, 'Apologise', 'music', 'One Republic', 12, '0', 'cd', 'mp3', '10g', '16x12cm', '2009-08-11', 'GHC 7.00', 'black cd covers', 7, 'b ,ghvccuditfb  hbybb   buybh, jbuvivicucesbhjjhbkvkg bnhb jgfgfj bn ', 'null', 3252, 'en-(Us)', 'rock', 8364335, 2147483647, 2147483647, 'no'),
(3, 'oware', 'game', 'me', 10, '0', 'tutorials,multi-levels', 'exe', '10g', '16x12cm', '2012-08-18', 'GHC 5.00', 'logical', 9, '...extremel logical,', 'oware', 356, 'en-(Uk)', 'strategy', 2147483647, 2147483647, 2147483647, 'yes'),
(4, 'mp3 player', 'electronic', 'me', 16, 'mp.png', 'auto replay,radio,wifi surround sound', 'null', '5g', '10x3.5cm', '2012-08-06', 'GHC 10.00', 'jet black', 5, 'cool and sleek', 'samsung', 0, 'en,japanees', 'null', 0, 0, 0, 'yes'),
(5, 'Harry Potter', 'dvd', 'J.K.Rowling', 16, 'hp.png', 'cool quality dvd', 'DVD', '', '', '0000-00-00', 'GHC 50 ', '', 0, '', '', 0, 'en', '', 0, 0, 0, 'yes'),
(6, 'The Avengers', 'dvd', '', 7, 'av.png', '', '', '', '', '0000-00-00', 'GHC 35.00', '', 0, '', '', 0, 'en', '', 0, 0, 0, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `poster` varchar(40) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `language` varchar(11) NOT NULL,
  `tagline` varchar(50) NOT NULL,
  `release_date` date NOT NULL,
  `directors` text NOT NULL,
  `trailers` text NOT NULL,
  `plot_synopsis` text NOT NULL,
  `movie_cast` text NOT NULL,
  `running_time` varchar(11) NOT NULL,
  `n_attr` int(1) NOT NULL,
  `now_showing` tinyint(4) NOT NULL,
  `coming_soon` tinyint(4) NOT NULL,
  `msn_movie_rating` int(2) NOT NULL,
  `r_sum` int(11) NOT NULL,
  `cnt` int(11) NOT NULL,
  `user_rating` int(2) NOT NULL,
  `age_limit` varchar(4) NOT NULL,
  `movie_website` varchar(255) NOT NULL,
  `awards` varchar(255) NOT NULL,
  `trivia` text NOT NULL,
  `show_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `poster`, `genre`, `language`, `tagline`, `release_date`, `directors`, `trailers`, `plot_synopsis`, `movie_cast`, `running_time`, `n_attr`, `now_showing`, `coming_soon`, `msn_movie_rating`, `r_sum`, `cnt`, `user_rating`, `age_limit`, `movie_website`, `awards`, `trivia`, `show_on`) VALUES
(1, 'The Avengers ', 'avengers.png', 'action', 'English', '0', '2012-04-11', 'Joss Whedon', 'TheAvengers.mp4', 'An Amalgamation of Vintage Heroes and Modern Heroes', 'Robert Downey Jr., Chris Hemsworth, Scarlett Johansson, Chris Evans, Tom Hiddleston, Jeremy Renner, Mark Ruffalo, Samuel L. Jackson, Cobie Smulders', '143 minutes', 0, 0, 0, 8, 0, 0, 6, '16', 'http://www.msn.com/movies?q=avengers', 'Grammy award winner, Action movie of the year.', '', '0000-00-00'),
(2, 'Harry Potter 6', 'hp6.png', 'fiction', 'English', '0', '2011-10-03', 'David Yates', '', 'As Harry Potter begins his 6th year at Hogwarts School of Witchcraft and Wizardry, he discovers an old book marked mysteriously "This book is the property of the Half-Blood Prince" and begins to learn more about Lord Voldemort''s dark past.', 'Daniel Radcliffe, Emma Watson, Rupert Grint', '120 minutes', 0, 0, 0, 8, 0, 0, 6, '13', 'http://www.msn.com/movies?q=hp6', '...best selling fiction movie', '', '0000-00-00'),
(3, 'Abraham Lincoln', 'abraham_lincoln.png', 'action', 'English', 'President by day, Hunter by night.', '2012-08-13', 'Timur Bekmambeto', 'ab.mp4', 'Abraham Lincoln, the 16th President of the United States, discovers vampires are planning to take over the United States. He makes it his mission to eliminate them.', 'Benjamin Walker, Rufus Sewell and Dominic Cooper', '105 minutes', 0, 0, 0, 7, 0, 0, 9, 'TBA', 'http://www.filestube.com/movies?q=abraham_lincoln', 'none', '', '0000-00-00'),
(4, 'Snow White and The Huntsman', 'snow_white.png', 'adventure', 'English', 'A mission must be accomplished.', '2012-07-13', 'Rupert Sanders', 'SnowWhiteandtheHuntsman.mp4', 'In a twist to the fairy tale, the Huntsman ordered to take Snow White into the woods to be killed winds up becoming her protector and mentor in a quest to vanquish the Evil Queen.', 'Kristen Stewart, Chris Hemsworth and Charlize Theron', '127 minutes', 0, 1, 0, 6, 0, 0, 0, 'TBA', 'http://www.msn.com/movies?q=snwh', 'none yet', '', '0000-00-00'),
(5, 'The Amazing Spider Man', 'the_amazing_spider-man.png', 'action', 'English', '0', '2012-05-23', 'Marc Webb', 'TheAmazingSpider-Man.mp4', 'Peter Parker finds a clue that might help him understand why his parents disappeared when he was young. His path puts him on a collision course with Dr. Curt Connors, his father''s former partner', 'Andrew Garfield, Emma Stone, Rhys Ifans', '132 minutes', 0, 1, 0, 5, 0, 0, 0, '0', 'http://www.msn.com/movies?q=spiderman', 'none', '', '0000-00-00'),
(6, 'The Dark Knight Rises ', 'the_dark_knight_2.png', 'action', 'English', 'The Legend Ends', '2012-07-20', 'Christopher Nolan', 'TheDarkKnightRises.mp4', 'Eight years on, a new terrorist leader, Bane, overwhelms Gotham''s finest, and the Dark Knight resurfaces to protect a city that has branded him an enemy.', 'Christian Bale, Michael Caine, Anne Hathaway and Gary Oldman, Tom Hardy, Morgan Freeman and Liam Neeson.', '164 minutes', 0, 1, 0, 5, 0, 0, 0, '15', 'http://www.thedarkknightrises.com', 'none', '', '0000-00-00'),
(7, 'Total Recall', 'total_recall.png', 'action', 'English', 'What is real?', '2012-08-10', 'Len Wiseman', '', 'A factory worker named Douglas Quaid (Colin Farrell) decides to visit Rekall, a company that implants artificial memories. Rekall employee Bob McClane (John Cho) convinces Quaid to be implanted with memories of a secret agent. Just as Quaid is starting to be implanted, Mac discovers that Quaid has real memories of being a spy', 'Colin Farrell, Bokeem Woodbine and Bryan Cranston', '118 minutes', 1, 127, 0, 6, 0, 0, 0, '13', 'http://www.msn.com/movies?q=totalrecall', 'action movie of 2011', '', '0000-00-00'),
(8, 'Brave', 'Brave-Poster.png', 'animation', 'English', 'Change your fate', '2012-06-22', 'Mark Andrews, Brenda Chapman', 'brave.mp4', 'An impetuous princess discovers that her reckless choice has put both her family and her father''s kingdom in peril in this animated adventure from Pixar films. As a toddler, Merida (voice of Kelly MacDonald) saw her father, King Fergus (Billy Connolly), do battle with one of the fiercest animals in the kingdom -- a horribly scarred hulk of a bear named Mordu. Though Fergus lost his leg defending his family, Merida and her mother, Queen Elinor (Emma Thompson), managed to escape the beast before it vanished back into the forest. Years later, Merida has grown up to become not just a skilled archer, but also a beautiful princess who inspires a competition among the eligible bachelors in the land. But Merida has little interest in getting married, and the harder her mother pushes the issue, the more fiercely she resists it. When the tournament for her hand gets under way and a deep divide opens between mother and daughter, Merida makes a wish that threatens the future of both her family and the entire kingdom. Now, with only a brief window of time to set things right, Merida must summon the courage to atone for her mistake and prevent a past tragedy from destroying any hope for a peaceful future.', 'Kelly Macdonald, Julie Walters, Billy Connolly, Emma Thompson, Kevin McKidd, Craig Ferguson, Robbie Coltrane.', '93 minutes', 0, 127, 0, 7, 0, 0, 0, '8', 'http://www.disney.com/brave', 'none yet', '', '0000-00-00'),
(9, 'Ice Age 4', 'ice_age_4.png', 'Animation, Adventure, Comedy', 'English', '0', '2012-08-19', 'Steve Martino, Mike Thurmeier', 'IceAge4_2.mp4', 'Manny, Diego, and Sid - embark upon their greatest adventure after cataclysm sets an entire continent adrift. Separated from the rest of the herd, they use an iceberg as a makeshift ship, which launches them on an epic seafaring quest. Manny and the gang are challenged like never before to become heroes and do the impossible, as they encounter exotic sea creatures, explore a brave new world, and battle ruthless pirates. And Scrat''s reunion with his cursed nut catapults him to places no prehistoric squirrel has gone before.', 'Ray Romano Queen Latifah, Jennette McCurdy', '94 mins', 0, 127, 0, 7, 0, 0, 0, '10', 'http://www.msn.com/movies?q=ia4', 'none yet', '', '0000-00-00'),
(10, 'Madagascar 3', 'madagasca_3.png', 'animation', 'English', 'They have one shot to get back home!', '2012-07-13', 'same old thugs', 'MADAGASCAR3.mp4', 'Alex, Marty, Gloria and Melman are still fighting to get home to their beloved Big Apple. Their journey takes them through Europe where they find the perfect cover: a traveling circus, which they reinvent - Madagascar style.', 'Ben Stiller, Jada Pinkett Smith and Chris Rock', '93 minutes', 0, 127, 0, 6, 0, 0, 0, '10', 'http://www.msn.com/movies?q=mdg', 'none', '', '0000-00-00'),
(11, 'Think like a man', 'think_like_a_man.png', 'comedy', 'English', 'Let the mind games begin', '2012-06-22', 'Tim Story', '', 'Four friends conspire to turn the tables on their women when they discover the ladies have been using Steve Harvey''s relationship advice against them.', 'Steve Harvey, Michael Ealy, Meagan Good, Gabrielle Union, Taraji P. Henson, Chris Brown and Kevin Hart', '122 minutes', 1, 127, 0, 6, 0, 0, 0, 'U.10', 'http://www.msn.com/movies?q=tlam', 'Grammy awards,comedy movie of the year', '', '0000-00-00'),
(12, 'The Watch', 'the_watch.png', 'comedy', 'English', '', '2012-07-27', 'Akiva Schaffer', '', 'Four everyday suburban guys come together as an excuse to escape their humdrum lives one night a week. But when they accidentally discover that their town has become overrun with aliens posing as ordinary suburbanites, they have no choice but to save their neighborhood -- and the world -- from total extermination. -- (C) 20th Century Fox	', 'Ben Stiller, Vince Vaughn, Jonah Hill, Richard Ayoade', '100 minutes', 1, 127, 0, 0, 0, 0, 0, 'R', '', '', '', '0000-00-00'),
(13, 'The Expendables 2', 'expendables_2.png', 'action', 'English', 'Back for War', '2012-08-31', 'Simon West', 'TheExpendables2.mp4', 'Barney Ross is approached by CIA man Church, who wants him and his guns for hire to go to the former Soviet Union to retrieve something that was on a plane that crashed. Church doesn''t tell him what he is getting. And Church sends a woman, Maggie with him to make sure he gets it. They find the plane and get the thing but some men take one of Barney''s people hostage and the leader tells him to give him what they got or he''ll kill his hostage. The give it to him but he kills his hostage anyway. Barney asks Maggie what was so important about that thing. She says that it showed the location of a Russian plutonium mine. Barney decides to track the man down and deal with him. They track them down and discover that the man they seek is Vilain who leads a group known as The Sangs and that they have taken all the men from the surrounding villages to work the mine.', 'all the boleros', '103 minutes', 0, 1, 0, 0, 0, 0, 0, 'TBA', '', '', '', '0000-00-00'),
(14, 'Joker', 'jokers_3d.png', 'adventure', 'English', '', '2012-09-01', 'Shirish Kunder', '', 'In 1947 when the maps of India and Pakistan were being drawn, an oversight ensured that the village of Paglapur didn''t find a place in either country. The village had the distinction of housing the largest mental asylum in the region and in the m?l?e that ensued during partition, the asylum inmates broke loose, drove away the villagers and established their own republic in Paglapur. And that''s how it stayed for the next 60 years! While the world outside changed, Paglapur remained isolated, with no electricity, television or sanity. Now, decades after the world forgot this village, a NASA scientist of Indian origin, Agastya and his beautiful wife find themselves on the road to Paglapur. Agastya is working on a top secret project for creating a device to communicate with aliens.', '', '120 minutes', 0, 1, 0, 0, 0, 0, 0, 'TBA', '', '', '', '2013-02-18'),
(15, 'Wrong Target', 'wrong_target.png', 'Suspense', 'English', '', '2012-09-08', 'Samuel Owusu Asare', '', 'The multiple conflicts in "WRONG TARGET" are woven together perfectly, and they develop into an explosive crescendo where Kofi Aggrey (Dumelo) proves that in spite of his seeming wimpy personality as a software developer, he can quickly trade his business suits for a Rambo-like demeanor that dwarfs the mean spirits of the two competing gangs in the movie.	', 'John Dumelo, Yvonne Nelson', '100 minutes', 0, 1, 0, 0, 0, 0, 0, '', '', '', '', '2013-02-18'),
(16, 'Man of Steel', 'manOfSteel.png', 'Action, Adventure, Fantasy', 'English', '', '2012-09-01', 'Zack Snyder', 'ManOfSteel.mp4', 'An alien infant is raised on Earth and grows up with superhuman abilities. He sets out to use these abilities to guard his adopted world.', 'Henry Cavill, Russell Crowe and Amy Adams', '150 minutes', 0, 0, 1, 0, 0, 0, 0, '', '', '', '', '0000-00-00'),
(17, 'That''s My Boy', 'that''s_my_boy-poster.png', 'Comedy', 'English', '', '2012-06-15', 'Sean Anders', 'ThatsMyBoy.mp4', 'That''s My Boy is a 2012 American comedy film starring Adam Sandler, Andy Samberg, and Leighton Meester. The script was written by David Caspe and directed by Sean Anders', 'Adam Sandler, Andy Samberg, Leighton Meester, Vanilla Ice,Milo Ventimiglia', '114 minutes', 0, 1, 0, 0, 0, 0, 0, '', '', '', '', '2013-02-19'),
(18, 'Lincoln', 'Lincoln_2012_Teaser_Poster.png', 'History', 'English', '', '2012-11-09', 'Steven Spielberg', 'lincoln.mp4', 'In 1865, as the American Civil War winds inexorably toward conclusion, U.S. president Abraham Lincoln endeavors to achieve passage of the landmark constitutional amendment which will forever ban slavery from the United States. However, his task is a race against time, for peace may come at any time, and if it comes before the amendment is passed, the returning southern states will stop it before it can become law. Lincoln must, by almost any means possible, obtain enough votes from a recalcitrant Congress before peace arrives and it is too late. Yet the president is torn, as an early peace would save thousands of lives. As the nation confronts its conscience over the freedom of its entire population, Lincoln faces his own crisis of conscience -- end slavery or end the war.', 'Daniel Day-Lewis,\r\nSally Field,\r\nDavid Strathairn,\r\nJoseph Gordon-Levitt,\r\nJames Spader,\r\nHal Holbrook,\r\nTommy Lee Jones', '150 minutes', 0, 1, 0, 0, 0, 0, 0, '13', 'http://www.thelincolnmovie.com', '', '', '2013-02-20'),
(19, 'THE HOBBIT:AN UNEXPECTED JOURNEY (2012) - TBA', 'the_hobbit.png', 'Adventure', 'English', 'From the smallest beginnings come the greatest leg', '2012-12-14', 'Peter Jackson', 'the_hobbit.mp4', 'Bilbo Baggins is swept into a quest to reclaim the lost Dwarf Kingdom of Erebor from the fearsome dragon Smaug. Approached out of the blue by the wizard Gandalf the Grey, Bilbo finds himself joining a company of thirteen dwarves led by the legendary warrior, Thorin Oakenshield. Their journey will take them into the Wild; through treacherous lands swarming with Goblins and Orcs, deadly Wargs and Giant Spiders, Shapeshifters and Sorcerers. Although their goal lies to the East and the wastelands of the Lonely Mountain first they must escape the goblin tunnels, where Bilbo meets the creature that will change his life forever ... Gollum. Here, alone with Gollum, on the shores of an underground lake, the unassuming Bilbo Baggins not only discovers depths of guile and courage that surprise even him, he also gains possession of Gollum''s "precious" ring that holds unexpected and useful qualities', 'Martin Freeman, Ian McKellen and Richard Armitage', '169 minutes', 0, 1, 0, 0, 0, 0, 0, '', 'http://www.thehobbitblog.com/', '', '', '2013-02-20'),
(20, 'HOTEL TRANSYLVANIA (2012) - TBA', 'hotel_transylvania.png', 'Animation', 'English', 'Where monsters go to get away from it all', '2012-11-30', 'Genndy Tartakovsky', 'hotel_transylvania.mp4', 'Welcome to the Hotel Transylvania, Dracula''s lavish five-stake resort, where monsters and their families can live it up, free to be the monsters they are without humans to bother them. On one special weekend, Dracula has invited some of the world''s most famous monsters - Frankenstein and his wife, the Mummy, the Invisible Man, a family of werewolves, and more - to celebrate his daughter Mavis'' 118th birthday. For Drac, catering to all of these legendary monsters is no problem - but his world could come crashing down when a human stumbles on the hotel for the first time and takes a shine to Mavis.', 'Adam Sandler, Kevin James and Andy Samberg', '91 minutes', 0, 1, 0, 0, 0, 0, 0, '', 'http://www.welcometohotelt.com/', '', '', '0000-00-00'),
(21, 'DJANGO UNCHAINED (2013) - TBA', 'Django_Unchained_Poster.png', 'Action', 'English', 'Life, liberty and the pursuit of vengeance.', '2013-01-18', 'Quentin Tarantino', 'djangoUnchained.mp4', 'Former dentist, Dr. King Schultz, buys the freedom of a slave, Django, and trains him with the intent to make him his deputy bounty hunter. Instead, he is led to the site of Django''s wife who is under the hands of Calvin Candie, a ruthless plantation owner.', 'Jamie Foxx, Don Johnson and Leonardo DiCaprio', '165 minutes', 0, 1, 0, 0, 0, 0, 0, '', 'http://unchainedmovie.com', '', '', '2013-02-21'),
(22, 'CONTRACT (2012) - TBA', 'contract_poster.png', 'Comedy', 'English', 'It''s one funny baby business.', '2012-12-29', 'Shirely Frimpong-Manso', 'contract.mp4', 'Successful Peter is 40, rich and a staunch bachelor. In his quest to find the woman who will take his money, have his child and disappear. Peter begins a roller coaster, contracted relationship with Abena, a crude but clever girl until a yearning to have a child arises', 'Hlomla Dandala, Yvonne Okoro, Joseph Benjamin', '93 minutes', 0, 1, 0, 0, 0, 0, 0, '', '', '', '', '2013-02-21'),
(23, 'PARENTAL GUIDANCE (2013) - TBA', 'parental-guidance-poster.png', 'Comedy', 'English', '', '2013-01-03', 'Andy Fickman', 'Parental_Guidance.mp4', 'Old school grandfather Artie (Billy Crystal), who is accustomed to calling the shots, meets his match when he and his eager-to-please wife Diane (Bette Midler) agree to babysit their three grandkids when their type-A helicopter parents (Marisa Tomei, Tom Everett Scott) go away for work. But when 21st century problems collide with Artie and Diane''s old school methods of tough rules, lots of love and old-fashioned games, it''s learning to bend - and not holding your ground - that binds a family together.', 'Billy Crystal, Bette Midler and Marisa Tomei', '104 minutes', 0, 1, 0, 0, 0, 0, 0, '', 'http://www.parentalguidancemovie.com', '', '', '2013-02-22'),
(24, 'JACK REACHER (2013)', 'jack-reacher-poster.png', 'Action', 'English', 'The law has limits. He does not.', '2013-01-18', 'Christopher McQuarrie', 'jack-reacher.mp4', 'In an innocent heartland city, five are shot dead by an expert sniper. The police quickly identify and arrest the culprit, and build a slam-dunk case. But the accused man claims he''s innocent and says "Get Jack Reacher." Reacher himself sees the news report and turns up in the city. The defense is immensely relieved, but Reacher has come to bury the guy. Shocked at the accused''s request, Reacher sets out to confirm for himself the absolute certainty of the man''s guilt, but comes up with more than he bargained for.', 'Tom Cruise, Rosamund Pike and Richard Jenkins', '130 minutes', 0, 1, 0, 0, 0, 0, 0, '', '', '', '', '2013-02-23'),
(25, 'PITCH PERFECT (2013)', 'pitch-perfect-movie-poster3.png', 'Comedy', 'English', 'Get Pitch Slapped', '2013-01-18', 'Jason Moore', 'PitchPerfect.mp4', 'The Barden Bellas are a collegiate, all-girls a cappella singing group thriving on female pop songs and their perfect looks. After a disastrous failing at last year''s finals, they are forced to regroup. Among the new recruits is freshman Beca, an independent, aspiring DJ with no interest in the college life. But after she meets Jesse, from the rival all-male acappella group, Beca has a new outlook and takes it upon herself to help the Bellas find their new look and sound and get back into the competition.', 'Anna Kendrick, Brittany Snow and Rebel Wilson', '112 minutes', 0, 1, 0, 0, 0, 0, 0, '', 'http://www.facebook.com/pitchperfectmovie', '', '', '2013-02-24');

-- --------------------------------------------------------

--
-- Table structure for table `movie_reviews`
--

CREATE TABLE IF NOT EXISTS `movie_reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movies_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `time_of_review` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `movie_reviews`
--

INSERT INTO `movie_reviews` (`id`, `movies_id`, `users_id`, `comment`, `time_of_review`) VALUES
(1, 1, 2, 'pretty cool', '2012-09-25 06:22:17'),
(2, 1, 3, 'totally awesome', '2012-09-17 04:15:00'),
(3, 3, 1, '...thrilling,scintillating,totally exciting.Best! movie for my buck this year', '0000-00-00 00:00:00'),
(4, 4, 5, '..chale,chale its just too cool!', '0000-00-00 00:00:00'),
(5, 5, 3, '..the effects jux dey ''b''', '0000-00-00 00:00:00'),
(6, 9, 2, 'well,ichoose ahhh', '0000-00-00 00:00:00'),
(7, 8, 1, '..what can I say.not bad!', '0000-00-00 00:00:00'),
(8, 6, 4, 'The story is dense, overlong, and studded with references that will make sense only to those intimate with Nolan''s previous excursions into Batmanhood.', '2012-09-11 12:05:00'),
(9, 7, 3, 'it jux dey bore', '0000-00-00 00:00:00'),
(10, 2, 3, 'hmm....just a bit too much romance', '0000-00-00 00:00:00'),
(11, 10, 5, 'still think others in the sequel are better!', '0000-00-00 00:00:00'),
(12, 12, 4, 'coooool...lol..hilarious', '0000-00-00 00:00:00'),
(13, 12, 2, 'lmao!damn right silly', '0000-00-00 00:00:00'),
(14, 6, 5, 'Was Tooo Coooooollll Really enjoyed it! Awesome!!! Again Too Cool. ', '2012-09-20 18:24:58'),
(15, 8, 3, 'Great Trailer, looking forward to take a break from work to watch it. :)', '2012-09-25 21:03:10'),
(16, 22, 1, 'would kill for another ticket', '0000-00-00 00:00:00'),
(17, 22, 2, 'exciting stufff', '0000-00-00 00:00:00'),
(18, 22, 4, 'not really into that kinda dtuff', '0000-00-00 00:00:00'),
(19, 22, 5, 'review from new-Api', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `movie_schedules`
--

CREATE TABLE IF NOT EXISTS `movie_schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movies_id` int(11) NOT NULL,
  `cinema` varchar(11) NOT NULL,
  `theatre` varchar(11) NOT NULL,
  `pricing` varchar(11) NOT NULL,
  `dates` date NOT NULL,
  `times` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `movie_schedules`
--

INSERT INTO `movie_schedules` (`id`, `movies_id`, `cinema`, `theatre`, `pricing`, `dates`, `times`) VALUES
(1, 1, 'Accra Mall', 'Screen 1', 'GHC 15.00', '2012-08-16', '8:30pm'),
(2, 2, 'Accra Mall', 'Screen 2', 'GHC 15.00', '2012-08-17', '8:00pm'),
(3, 2, 'Accra Mall', 'screen 1', 'GHC 12.00', '2012-08-18', '2:00pm'),
(4, 1, 'Accra Mall', 'Screen 3', 'GHC 12.00', '2012-08-18', '12:15pm'),
(5, 3, 'Accra Mall', 'Screen 1', 'GHC 15.00', '2012-09-01', '5:45pm'),
(6, 4, 'Accra Mall', 'Screen 2', 'GHC 15.00', '2012-08-23', '2:30pm'),
(7, 6, 'Accra Mall', 'Screen 4', 'GHC 15.00', '2012-08-21', '6:15pm'),
(8, 5, 'Accra Mall', 'Screen 5', 'GHC 15.00', '2012-08-21', '9:00pm'),
(9, 7, 'Accra Mall', 'Screen 4', 'GHC 15.00', '2012-08-22', '9:00pm'),
(10, 8, 'Accra Mall', 'screen 5', 'GHC 15.00', '2012-09-21', '12:20pm'),
(11, 11, 'Accra Mall', 'Screen 1', 'GHC 15.00', '2012-08-21', '7:45pm'),
(12, 10, 'Accra Mall', 'Screen 4', 'GHC 15.00', '2012-08-22', '2:45pm'),
(13, 9, 'Accra Mall', 'Screen 5', 'GHC 15.00', '2012-08-21', '5:30pm'),
(14, 4, 'Accra Mall', 'Screen 3', 'GHC 12.00', '2012-08-24', '2:30pm'),
(22, 18, 'Accra Mall', 'Screen 1', '', '2013-01-26', '6:20pm'),
(16, 1, 'Accra Mall', 'Screen 3', 'GHC 12', '2012-09-21', '6:00pm'),
(17, 1, 'Accra Mall', 'Screen 1', 'GHC 12', '2012-09-14', '8:00pm'),
(18, 8, 'Accra Mall', 'Screen 5', 'GHC 12', '2012-09-20', '12:20pm'),
(23, 18, 'Accra Mall', 'Screen 1', '', '2013-01-27', '6:20pm'),
(21, 8, 'Accra Mall', 'Screen 5', 'GHC 12.00', '2012-09-27', '12:20pm'),
(24, 18, 'Accra Mall', 'Screen 1', '', '2013-01-28', '6:20pm'),
(25, 18, 'Accra Mall', 'Screen 1', '', '2013-01-26', '9:20pm'),
(26, 19, 'Accra Mall', 'Screen 1', '', '2013-01-27', '11:30am '),
(27, 20, 'Accra Mall', 'Screen 1', '', '2013-01-27', '12:00pm'),
(28, 21, 'Accra Mall', 'Screen 1', '', '2013-01-27', '5:45pm'),
(29, 23, 'Accra Mall', 'Screen 1', '', '2013-01-27', '4:00pm'),
(30, 25, 'Accra Mall', 'Screen 1', '', '2013-01-27', '3:20pm'),
(31, 22, 'Accra Mall', 'Screen 1', '', '2013-01-27', '9:00pm'),
(32, 24, 'Accra Mall', 'Screen 1', '', '2013-01-27', '9:15pm');

-- --------------------------------------------------------

--
-- Table structure for table `spotlight`
--

CREATE TABLE IF NOT EXISTS `spotlight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poster` varchar(21) NOT NULL,
  `trailers` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `spotlight`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `profile_pic` varchar(11) NOT NULL,
  `coverphoto` varchar(100) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(11) NOT NULL,
  `movie_wishlist` text NOT NULL,
  `movies_rated` text NOT NULL,
  `favourite_movies` text NOT NULL,
  `type_of_account` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `firstname`, `lastname`, `profile_pic`, `coverphoto`, `gender`, `email`, `password`, `movie_wishlist`, `movies_rated`, `favourite_movies`, `type_of_account`) VALUES
(1, 'Snr Berkov', '', '', 'SnB.jpg', '', 'm', 'gogomi@tokrom.com', 'shh!', 'alice in wonderland', 'Dark Night', '', 'sb'),
(2, 'Brim', '', '', 'br.gif', '', '', 'cyberp@plasma .org', 'dont_tell', 'Prince of persia,Adams apple', 'none', '', 'sb'),
(3, 'Drew Barnes', '', '', 'dr.png', '', 'm', 'drew@pineloop.com', 'susubiribi', 'X-men, Avengers, Brave', 'Spiderman, Brave', '', 'fb'),
(4, 'Decutie', '', '', 'g.gif', '', 'f', 'lilypad@flowers.com', 'syrup', 'transformers,Mr and Mrs Smith', 'Madagascar 3,Ice Age 4', '', 'tw'),
(5, 'Kwame Maybach', '', '', '', '', 'M', 'kenasante@gmail.com', 'sb', '', 'The Dark Knight Rises', '', 'sb');
