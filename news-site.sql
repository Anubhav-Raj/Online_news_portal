-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 07:42 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(56, 'Programming', 0),
(48, ' Tech', 2),
(49, 'Education', 1),
(54, 'COVID-19', 2),
(55, 'Front End Web development ', 0),
(52, 'Sport', 2),
(53, 'Google News', 0),
(47, ' News', 0),
(57, 'Exam', 0),
(58, 'RRB Railways', 0),
(59, 'Delhi-metro', 0),
(60, ' Collages', 0),
(61, 'School', 0),
(62, 'IPL', 0),
(63, 'ISRO', 0),
(64, 'International', 0),
(65, 'Films', 1),
(66, 'Recipes', 0),
(67, 'Money  Heists Netfilx', 0),
(68, 'State', 2),
(69, 'Food', 2),
(70, 'life Style', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(87, 'BCCI President Sourav Ganguly Confirms Mumbai Will Host IPL 2021 Matches', '                The Board of Control for Cricket in India (BCCI) President Sourav Ganguly has made a confirmation that Mumbai will host the IPL matches in the 2021 edition despite the spike in COVID-19 cases in the city. Recently, the 10 groundsmen of the Wankhede Stadium and a few event managers had tested positive for the novel virus.\r\nGanguly is adamant about hosting the matches in Mumbai even if the Maharashtra government decides to put a lockdown\r\nLockdown in a way will be better since not many people will be around. So it will be restricted to few people who will undergo regular tests inside the bio-bubble,” Sourav told The Telegraph on Saturday.\r\nhe BCCI president claims there were few such incidents during IPL 2020 in UAE but the bio-secure bubble is safe and nothing happens when a player or staff member enters it.\r\n\r\n\r\n“The IPL matches will be held in Mumbai,” Sourav said. “Once you are in a bubble nothing happens. Even in the UAE last season, there were a few such incidents in the lead-up to the event but once the tournament started everything was fine,” he said.\r\nThe former India captain further said that the BCCI has got the permissions and assurances from the state government to host matches in Mumbai in case of lockdown in the state.                ', '52', '05 Apr, 2021 ', 50, '1617645821-pjimage-2021-04-04T204631.060.webp'),
(88, 'Holi 2021| Be At Your Colourful Best With These DIY Cocktails', 'With the change of season, we are all set to welcome the revelry that brings in an element of joy, colours, music and laughter in the air. While this year’s celebration might continue to be intimate, make the gaiety worthwhile with your guests by serving some delicious and refreshing cocktails. No matter the choice of dram, the Brand Ambassadors of Diageo India have rounded up some of their classic cocktails serves in a DIY format. Take your pick from single malts, scotches, vodka, and gin as you create lip-smacking cocktails with locally available products for your bash', '69', '05 Apr, 2021 ', 53, '1617646044-MicrosoftTeams-image-58.webp'),
(89, 'Tantalise Your Tastebuds With Adai Dosa, Learn The Recipe of Lentil Dosa', 'Adai is one of South Indian’s popular breakfast recipe. Adai Dosai is a healthy, highly nutritious, and protein-rich food dish made with lentils. The main ingredients of Adai are Raw Rice, Toor Dal, Chana Dal, Yellow Moong Dal. Adai is served along with Avial, Chutney, or Jaggery. Adai Dosai is generally thicker than the regular dosa, and it gives a wholesome experience and energy for the entire day.', '69', '05 Apr, 2021 ', 53, '1617646103-Adai-Dosa-main.webp'),
(90, 'Tiger Shroff Follows Combination of Gym And Outdoor Sports For Fitness And Agility, Reveals His Trai', 'New Delhi: If it is Tiger Shroff, the one thing you cannot escape noticing is his super-hot bod. It is that stuff that driving the teenagers crazy and kids wanting to be Tiger Shroff when they grow up. To say the least, it is drool-worthy! We have seen what he can do with his fit body on the big screen in almost all his films so far. There is no one else who can perform the stunts and dance sequences that Tiger can so effortlessly. But all this has not been achieved overnight. It’s years of dedication and hard work that has got Tiger where he is when it comes to his fitness. \r\nEver since Tiger was a young boy, he’s been training in Martial Arts and gymnastics. Apart from that, he’s always practiced various forms of dancing techniques. He’s also been an ardent football player and still continues to play the sport, whenever he felt finds the time. Speaking about Tiger’s fitness regime, his trainer shares, “There is no special kind of workout we both believe and follow a scientific old school weight training routine. Tiger has always been an outdoor person, even before I met him. For his workouts, it’s mostly a combination of gym and outdoor sports that keeps him fit and agile.” \r\nShares a source, “Tiger has always been an outdoor person. He used to practise his gymnastics on the Mumbai beaches much before he entered films, when people didn’t recognise him. He has continued the hardwork and practice, even today after becoming a big star.” \r\nWell, for someone who’s known to be the young and happening action star, who’s given us some noteworthy action-packed entertainment, Tiger is geared up to provide us with more in the coming days. He’s presently working on high drama action films like Heropanti 2, Baaghi 4 and Ganapath. To do justice to such high octane films, Tiger never ceases to work hard at his gifted skills.', '70', '05 Apr, 2021 ', 55, '1617646272-Tiger-Shroff.webp'),
(91, 'From Alia Bhatt to Priyanka Chopra Jonas, ', '                If you are among those unlucky ones who deals with dry and frizzy hair in all seasons, then don’t you worry. Here we have compiled a list of amazingly natural haircare routine followed by some of our favourite Bollywood divas, including Alia Bhatt, Kareena Kapoor Khan, and Priyanka Chopra Jonas among others, that will help you get lustrous hair, just like them\r\nPriyanka Chopra is one of the few celebrities in the Bollywood industry who aces in everything she does. Even for taking care of her luscious mane, PeeCee believes in natural home remedies to protect it from any kind of damage. The global star applies yogurt to add moisture to her hair.\r\nkind of damage. The global star applies yogurt to add moisture to her hair.                ', '65', '05 Apr, 2021 ', 55, '1617646403-Priyanka-Chopra-feature-image-insta-1200.webp'),
(80, 'Delhi Records Over 4,000 Fresh COVID-19 Cases in Highest Spike in 4 Months; Positivity Rate 4.64 pc', 'New Delhi: Delhi recorded 4,033 coronavirus cases on Sunday, the highest daily count this year, while the positivity rate rose to 4.64 per cent from 4.48 per cent a day ago, according to the health department. Also Read - India Records Over 1 Lakh New COVID-19 Cases in Highest Single-Day Spike Since Pandemic Began\r\n\r\nTwenty-one more people died due to the disease, the highest since January 1, when an equal number of fatalities were reported. Also Read - Maharashtra Logs Highest One-day Spike of 57,074 COVID Cases; Night Curfew From Monday | What\'s Allowed, What\'s Not\r\n\r\nThe number of cumulative cases stands at 6,76,414 and the death toll is 11,081.\r\n\r\nThe city had reported 3,567 cases on Saturday and 3,594 cases on Friday.\r\n\r\nThe last time the city recorded more than 4,000 cases was on December 4 when 4,067 people were diagnosed with COVID-19.\r\n\r\nDelhi had reported 2,790 cases on Thursday, and 1,819 coronavirus cases on Wednesday, 992 cases on Tuesday, 1,904 cases on Monday and 1,881 cases on last Sunday.\r\n\r\nThe number of active cases rose to 13,982 from 12,647 a day before.\r\n\r\nA total of 86,899 tests, including 54,472 RT-PCR tests, were conducted a day ago, the bulletin said.\r\n\r\nThe number of people under home isolation rose to 7,144 from 6,569 a day ago. The containment zones rose to 2,917 from 2,618 on Saturday, it said.\r\n\r\nOf the 6,139 beds set aside for coronavirus patients in government and private hospitals in Delhi, 3,404 are unoccupied, according to government data.\r\n\r\nEarlier this week, 230 more ICU beds for coronavirus patients have been added in 33 private hospitals on the directions of the Delhi government.\r\n\r\nThe number of non-ICU beds in these private facilities has been increased by 842.\r\n\r\nThe case positivity rate has increased from 1.07 per cent on March 20 to 4.64 per cent on Sunday.\r\n\r\nHealth Minister Satyendar Jain had earlier said that according to the World Health Organisation, the situation is considered under control if the positivity rate remains below 5 per cent for several days.\r\n\r\nThe number of cumulative cases as of January 1 had stood at over 6.25 lakh and the total fatalities were 10,557.\r\n\r\nThe number of daily cases had started to come down in February.\r\n\r\nOn February 26, the month’s highest daily count of 256 cases was recorded.\r\n\r\nHowever, the daily cases began to rise again in March and have been steadily increasing since then.\r\n\r\nHealth experts and doctors have attributed this “sudden rise” in cases to people turning complacent, not following COVID-appropriate behaviour and “assuming all is well now”.\r\n\r\nThe next two-three months could be challenging, they said, adding the situation can be kept under control if vaccination is opened up for more people and COVID-19 protocols are strictly adhered to.\r\n\r\nChief Minister Arvind Kejriwal had said on Friday that Delhi is encountering the fourth wave of COVID-19 infection but the imposition of a lockdown is not being considered yet.\r\n\r\nIf there is a need for a lockdown in the future, a decision will be taken after due public consultation, he had said, adding the fourth wave is less serious than the previous ones as there are fewer deaths and hospitalisations this time.\r\n\r\nHe had also suggested that the Centre lift the age bar of 45 years for vaccination to pave the way for mass-level inoculation.\r\n the Centre allowed vaccination at non-healthcare facilities like schools, immunization be undertaken on a war footing to check the spread of the virus, he had said.', '54', '05 Apr, 2021 ', 52, '1617642234-covid-test-corona-cases-PTI.webp'),
(81, 'India Records Over 1 Lakh New COVID-19 Cases in Highest Single-Day Spike Since Pandemic Began', '                                New Delhi: Breaking all past records for the highest single-day spike in coronavirus cases, India has reported more than 1 lakh infections in the past 24 hours with 1,03,794 new COVID-19 cases. This is the biggest surge in COVID-19 cases that India has seen since the coronavirus pandemic began last year. Before this, the highest daily increase in India was recorded on September 16, 2020 with 97,894 cases being recorded in a day. This takes the total COVID-19 tally in India due to the pandemic to 1,25,87,921 (Over 1.25 crore). The record spike takes active COVID-19 cases across the country to 7,37,870. This is the latest data updated on covid19india.org on Monday morning. Also Read - RT-PCR Test, Schools Shut, Night Curfew: Rajasthan Imposes Lockdown-like Restrictions Amid COVID-19 Surge\r\n\r\nOn Sunday, India recorded 93,249 new COVID-19 cases and 513 deaths in a span of 24 hours. Also Read - Maharashtra Logs Highest One-day Spike of 57,074 COVID Cases; Night Curfew From Monday | What\'s Allowed, What\'s Not\r\nMeanwhile, 477 people died due to the virus in the last 24 hours, taking the total death from the coronavirus pandemic to 1,65,132 (Over 1.65 lakh). Also Read - India Records Over 93,000 Cases, 500 Deaths in Highest Single-Day COVID Spike in 6 Months\r\nMaharashtra continues to be the worst-hit state in India as it has reported more than half of the total cases in India in the last 24 hours with 57,074 fresh infections. Chhattisgarh has reported the second highest cases with a spike of 5,250 infections. Karnataka has reported the third highest number of cases with 4,553 new infections. Uttar Pradesh is the fourth worst-hit state as it recorded a spike of 4,136 new COVID-19 cases.\r\n\r\n                                ', '54', '05 Apr, 2021 ', 52, '1617644137-covidtestPTI19.webp'),
(82, 'UP Panchayat Elections 2021: BJP Announces 819 Candidates For First Phase', '                Lucknow: The Bharatiya Janata Party (BJP) on Saturday announced the list of candidates for the first phase of upcoming Uttar Pradesh panchayat polls, reported news agency IANS. The party has fielded 819 candidates in 20 districts where polls are scheduled to be held in four phases starting April 15. The party has tried to follow the formula of ‘Sabka Sath, Sabka Vikas’ while announcing the names as it has included candidates from Backward Classes as well from Muslim community. Also Read - BJP Punishing Kejriwal For Supporting Farmers\' Protest: Delhi CM on Centre Enhancing LG\'s Powers\r\n\r\nMehtab Alam from Razapur seat of Ghaziabad and Ruby Begum from Gugarapur seat of Kannauj are the Muslim faces for the party in the polls. Ex-MP Daddan Mishra has been named from Shravasti district while ex-MLA from Bareilly Subhash Patel’s wife Rashmi Patel has been fielded from Ward no. 57 while Tejashwari Singh, daughter of former minister Bhanu Pratap Singh, has been named from Fatehganj. This was to send out a message that the party is not taking even Panchayat elections lightly. Seema Chaudhary, daughter-in-law of ex-MP Baburam, has been fielded from Achhnera in Agra. Also Read - UP Panchayat Election 2021: Miss India 2015 Finalist Diksha Singh to Contest From Jaunpur - Here\'s All You Need to Know About Her .\r\nSeveral former district presidents have also been given preference, however, no office-bearer has been named as state president Swatantra Dev Singh had already clarified that if any office bearer is willing to contest panchayat polls then he/she has to resign from the post. Also Read - BJP, TMC Engage in War of Words Over Video Showing Mamata Shaking Her Plastered Leg | Watch\r\nolitical analyst Prasoon Pandey said, “The BJP has deliberated seriously while announcing the candidates even for the panchayat polls in the state. It has fielded women and candidates from backward classes from the reserved seats. Eyeing the 2022 Uttar Pradesh Assembly polls, the party has given preference to the people close to MPs, MLAs etc.”\r\n\r\nOn giving tickets to the Muslim candidates, state general secretary Ashwini Tyagi said, “The BJP has never given ticket on the basis of religion or caste. The party has always followed the ‘Sabka Sath, Sabka Vikas’ formula of Prime Minister Narendra Modi.”\r\n                ', '68', '05 Apr, 2021 ', 52, '1617644688-UP-Panchayat-elections.webp'),
(83, 'Youth, Angry at God, Throws Stones at Temple in Delhi’s Punjabi Bagh; Arrested', 'New Delhi: In a bizarre incident, a 28-year-old man, holding a grudge against God for giving him a life of vagabond, allegedly threw stones and bricks at a temple in west Delhi’s Punjabi Bagh on Saturday, police said. The man identified as Vicky Mal has been arrested, they said. Ranjeet Pathak, the priest at Vaishno Mata Mandir, found that two statues of Lord Shiva, which were kept in an open area of the temple, were broken on Saturday morning. Stones and brick pieces were also found lying inside the temple premises, police said. Also Read - Delhi Woman, Brain Dead, Saves Life of 3 Other Patients\r\n\r\nDuring investigation, police analysed CCTV footage and found that Mal, who worked as a ragpicker, was behind the incident. The accused used to work with his father before the coronavirus-induced lockdown. His father later went back to Motihari in Bihar. Mal started holding grudge against God for giving him the life of a vagabond, a police officer said. Also Read - Delhi Records Over 3,500 COVID-19 Cases For Second Consecutive Day, 10 Deaths Take Toll to 11,060\r\nAn FIR was registered against the accused under IPC sections 295A (deliberate and malicious acts, intended to outrage religious feelings of any class by insulting its religion or religious beliefs) and 457 (lurking house-trespass or house-breaking by night in order to commit offence punishable with imprisonment), he said, adding that further investigation is underway. Also Read - Delhi: \'Cyber Stalker\' Arrested For Harassing Girls, Uploading Morphed Pics Online', '68', '05 Apr, 2021 ', 52, '1617644839-arrest-1.webp'),
(84, 'Google to Block Apps From Accessing Entire App List on Phones', 'New Delhi: Are you aware that any single app on your smartphone can see every other app that you have installed on your device, thus accessing sensitive information like dating preferences, banking information, political affiliation and password management etc? Google has announced to change this system on its Play Store from May 5. In an update, Google has said that app developers will have to provide a solid reason for why the tech giant should let them access other apps on users’ smartphones, reports arstechnica.\r\nCurrently, Android 11 apps that request the “Query_All_Packages” permission can see the full list of apps you have stored on your device. \r\nGoogle has now updated its Developer Programme Policy, restricting which apps are allowed to use the permission.\r\nApps that have a core purpose to launch, search, or interoperate with other apps on the device may obtain scope-appropriate visibility to other installed apps on the device,” Google said\r\nThere’s an exception for financial apps like banking apps and P2P wallets, which the page says “may obtain broad visibility into installed apps solely for security-based purposes.”\r\n\r\nIf your app meets the policy requirements for acceptable use of the “Query_All_Packages” permission, you will be required to declare this and any other high risk permissions using the declaration form in Play Console.\r\n“Apps that fail to meet policy requirements or do not submit a Declaration Form may be removed from Google Play. Important: If you change how your app uses these restricted permissions, you must revise your declaration with updated and accurate information,” Google warned.\r\n\r\n“Deceptive and non-declared uses of these permissions may result in a suspension of your app and/or termination of your developer account”.\r\n\r\nFor apps that have to interact with other apps, Google wants developers to use app-discovery APIs instead of just pulling the entire app list.\r\n\r\nThe ‘Query_All_Packages’ permission was added in Android 11, so it only applies to apps targeting Android 11’s API level, which is “API Level 30.”\r\nThe Play Store’s restrictions also apply to apps targeting API level 30 and up, which means not many apps will be counted to date for such restrictions.', '48', '05 Apr, 2021 ', 52, '1617645029-Google.webp'),
(85, 'PUBG Lite Latest News: Battle Royale Game to Officially Shut Down on THIS Date. Read Here', 'PUBG Lite Latest News: In sad news for PUBG lovers, the low-end version of the battle royale game called Lite is officially closing down on April 29. The development was confirmed by the developers Krafton via a message on its official website. It must be noted that PUBG Lite was launched in 2019 for entry-level mobile devices. PUBG Mobile and PUBG Mobile Lite were banned in India on September 2, 2020. “We are deeply grateful for the passion and support from the astounding number of PUBG Lite fans that have been with us. During the strenuous times of the Covid-19 pandemic, we hope that PUBG Lite was able to provide our fans a fun way to stay safe,” the developer said. Also Read - PUBG Mobile 1.3 Latest Update: Complete Guide For APK Download Link For Global Users\r\n\r\n“Unfortunately, we have made the difficult decision to close service after much deliberation and the time has come for our journey to end. We regretfully inform you that service of PUBG Lite is scheduled to end on April 29th, 2021 (UTC),” the company added.\r\n\r\nPUBG Lite Facebook will be open even after the game service termination until further notice.\r\n\r\n“We would like to convey our sincerest apology as well as our deepest appreciation to everyone. We truly hope you have enjoyed your time with us and please look forward to our future endeavours,” the developers said.\r\n\r\nPUBG Lite was among one of the most popular games of the early pandemic months. The game was banned under Section 69A of the Information Technology Act in India. PUBG Corporation later announced that they were withdrawing their partnership with Tencent, and will work with the Indian government to look for a quick resolution. PUBG, which has more than 600 million downloads and 50 million active players globally, had nearly 33 million users in India.', '48', '05 Apr, 2021 ', 52, '1617645146-Pubg-Mobile-Lite.webp'),
(86, 'Quinton de Kock Accused of Fake Fielding After Fakhar Zaman Run Out | Watch Video', '                Johannesburg: It’s the talk of the cricketing world. Fakhar Zaman (193) was denied a potential double-century in a dramatic turn of events during the 2nd ODI between South Africa and Pakistan which the latter went on to lose in Johannesburg on Sunday.\r\nIn chase of 325, Pakistan had all but lost the plot at 205/7 but their opening batsman Zaman was still battling. He completed a century and then shifted gears to push charge for what would have been an unlikely win considering the hole the tourists had dug themselves in.\r\nZaman belted boundaries with alarming regularity leaving South Africa camp worried. The contest entered the final over with Pakistan needing 14 runs to win and Zaman still batting. However, off the very first delivery of the over, bowled by Lungi Ngidi, Zaman was run out while taking a second run ending his team’s hopes. \r\nZaman was haring back to the striker’s end when wicketkeeper Quinton de Kock made a signal towards the bowler, apparently asking the fielder Aiden Markram to direct his throw from the deep towards the non-striker’s end.\r\n\r\nZaman ended up looking back and in turn, slowed down with Markram’s direct-hit finding him well short of the popping crease. De Kock signalled his hand towards Zaman in a cheeky ‘I got you there’ fashion.\r\n\r\nPakistan finishing with 324/9 with South Africa managing to draw level at one-all in the three-match series.                ', '52', '05 Apr, 2021 ', 50, '1617645479-fake-fielding-238x134.webp'),
(92, 'eduction', ' tthis is eduction news', '49', '12 Apr, 2021 ', 52, '1618209421-123.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`websitename`, `logo`, `footerdesc`) VALUES
('news', 'news.png', '© Copyright 2020 News | Powered by Anubhav ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(52, ' Anubhav', 'Rajput', 'anubav', '61cd9b5b32f7b04df05f6ec5421f9311', 1),
(53, 'puneet', ' kumar', 'patel', '64a43b6ca15d128ac6a0679b39bc9c07', 0),
(54, 'rajjo', '(rajjo)', 'rajjo', 'b036ac31a074ce8863a7debb222d9079', 0),
(55, 'robin', 'singh', 'robin', '8ee60a2e00c90d7e00d5069188dc115b', 0),
(50, 'normal', 'user', 'normal', 'fea087517c26fadd409bd4b9dc642555', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
