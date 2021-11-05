-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2021 at 10:38 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buutti`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `author` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `description`, `created`, `modified`) VALUES
(1, 'Sand County Almanac', 'Aldo Leopold', '“I first read this book in high school, in the 1980s, and again every couple of years since then,” says Stan Rullman, Ph.D., director of research at Earthwatch. “Leopold’s poetic observations of the natural world have sparked many fields of ecological study —a large percentage confirming Leopold’s hypotheses—and have inspired many more students and ecologists to help figure out how nature works. It should be required reading for every student, teacher, politician, and voter.”  ', '2021-11-03 10:22:47', '2021-11-03 09:25:02'),
(2, 'This Changes Everything: Capitalism vs. the Climate', 'Naomi Klein', 'Rullman says this should be another mandatory read for politicians and economists, and maybe everyone else. “Though the current COVID-19 crisis is somewhat tangential to the climate crisis, what we are learning about how incredibly fragile our global Jenga-conomy is to disruptions should be a wake-up call for the looming elephant-in-the-china-shop calamity that our rapidly changing climate portends,” he says. “With passion and eloquence and a grounding in strong science, Naomi tells us we need to change our ways.”  ', '2021-11-03 10:25:14', '2021-11-03 09:25:49'),
(3, 'How to Be a Good Creature', 'Sy Montgomery', '“I was first introduced to Sy’s incredible writing when I picked up The Soul of an Octopus years ago,” says Alix Morris, Earthwatch’s director of communications. “I was riveted. The way she explores the consciousness of creatures is profound, reminding us how much we still have to learn about the world around us.”\r\n\r\nIn the opening of her book How to Be a Good Creature, Montgomery attributes her impressive career as a science writer and naturalist to Earthwatch, and details her first expedition following emus in the Australian Outback. “Sy shows us how much we can learn from creatures, how to see and hear the wild world in new ways, and how to better understand and appreciate our place in this universe. Combine this with a heavy dose of humor and poetic prose and you have yourself a fantastic read.”', '2021-11-03 10:25:51', '2021-11-03 09:26:15'),
(4, 'Song of the Dodo', 'David Quammen', '“David Quammen has a knack for taking complex scientific concepts and melting them down and wordsmithing them back into a more accessible and understandable story,” Rullman says. “His approach to character development rivals the best novelists, yet his characters are usually vanguard scientists whose discoveries continue to push our understanding of how nature works.” \r\n\r\nSong of the Dodo is perhaps Quammen’s most eloquent work, Rullman says, offering a look at “island biogeography and why insular ecosystems are prone to extinctions.” But Quammen’s 2012 book Spillover is another great choice given our present pandemic, he adds. “It explores several of the historic and emerging pandemics that arise from us releasing viruses, bacteria, parasites, etc., from the somewhat contained ecosystems where they evolved. The subtitle says it all: Animal Infections and the Next Human Pandemic.”', '2021-11-03 20:45:56', '2021-11-03 19:46:44'),
(26, 'Walden', 'Henry David Thoreau', 'In the 1840s, Henry David Thoreau spent more than two years living a quiet naturalist’s life on Walden Pond in the woods of Concord, Mass. His thoughtful reflection on that time is available for free online through Project Gutenberg, and has inspired environmentalists in three centuries. \n\n“Thoreau has inspired much of my scientific career,” says Abraham Miller-Rushing, Ph.D., who leads the Earthwatch expedition Climate Change: Sea to Trees at Acadia National Park. Thoreau’s work, including his journal, is particularly relevant at a time when travel is limited, Miller-Rushing says. “He emphasized knowing intimately the nature right around you, seeing things that most people miss, and drawing inspiration from everyday natural events.” ', '2021-11-04 10:32:24', '2021-11-04 09:32:24'),
(27, 'The Diversity of Life', 'Edward O. Wilson', 'Start this one-two punch with E.O. Wilson’s The Diversity of Life. “[It’s] a glorious examination on biodiversity by a biologist recognized as ‘the father of biodiversity,’” Rullman says. Not to mention biogeography —in fact, Wilson was a prominent character in Song of the Dodo — sociobiology, and ant ecology. “Even at 90 years old, he’s not finished. So read his book first, then fast-forward nearly a quarter of a century to Elizabeth Kolbert’s thoughtful Pulitzer Prize-winning treatment on biodiversity and its snowballing and disruptive loss,” Rullman says. \n\n“Our understanding of the impacts of our changing climate were still theoretical and embryonic when Wilson wrote The Diversity of Life,” Rullman adds, “but based on what has been learned in the decades in between, Kolbert uncovers the increasing evidence that the diversity of life is plummeting, even as temperatures and CO2 levels are rising.” \n\nIt’s a topic Kolbert also tackled well in her 2006 book Field Notes from a Catastrophe: Man, Nature, and Climate Change — a top pick of Earthwatch director of scientific initiatives Mark Chandler, Ph.D., who also recommends Wilson’s more recent Half Earth: Our Planet’s Fight for Life. Among Chandler’s other favorites are Finding Beauty in a Broken World by Terry Tempest Williams and The End of Nature by Bill McKibben.', '2021-11-04 10:33:03', '2021-11-04 09:33:03'),
(28, 'Tropical Nature: Life and Death in the Rain Forests of Central and South America', 'Adrian Forsyth and Ken Miyata', 'This essay collection also comes recommended by both Chandler and Rullman. “Back when I was taking middle school students on explorations into Central and South America’s rainforests, this book was our introduction to those complex ecosystems,” Rullman says. When he started including adults on those expeditions, he reached for the same book. “Though some of it is now a bit dated, it’s still one of the best introductions to neotropical ecology out there. Strong science and playfully written, it holds your attention while you’re packing your bags to go!”  ', '2021-11-04 10:33:29', '2021-11-04 09:33:29'),
(30, 'Where the Wild Things Were', 'William Stolzenburg', '“I’m glad this book came out after my general exam process in grad school, or I likely would have been accused of plagiarism,” Rullman says. With a carefully crafted journalistic story arc, Stolzenburg lays out why large carnivores are important to the functioning of the ecosystems within which they live — and what happens when they disappear. “His character cast is one of the most exciting in all of ecology, and their collective contributions to keystone species, trophic cascades and the ecology of fear have reshaped our understanding of the complex nature of predator-prey relationships.”  \n\nRullman says the essence of the book can be captured by two lines found within it. The first is by Jim Estes, one of the book’s main characters: “Carnivorous animals are important. We have to stop thinking of them as passengers on this earth and start thinking of them as drivers.” The other is by the author himself: “Here was evidence that the biggest and scariest of carnivores were more dangerous by their absence.”\n\n“I have photos of my daughter as a toddler looking at Maurice Sendak’s Where the Wild Things Are while I am holding up this one,” Rullman says. “And then we switched, and when I saw the resulting image, I pledged to dedicate my life to ensuring that there will always be places for wild places and wild things for her and her generation to enjoy — even if they are the yodeling choruses of coyotes in the suburbs, pollinator gardens to support community vegetable gardens, and peregrines hunting in the steep canyons of our cities.” ', '2021-11-04 10:34:02', '2021-11-04 09:34:02'),
(31, 'New York 2140', 'Kim Stanley Robinson', '“It can be tough to really visualize what life might be like if climate change continues for another 100+ years,” Miller-Rushing says. “This climate fiction novel paints a vivid picture of one possible, admittedly extreme, future.” (You might also check out Robinson\'s latest essay on climate change in the New Yorker, entitled \'The Coronavirus is Rewriting Our Imaginations.\')', '2021-11-04 10:34:25', '2021-11-04 09:34:25'),
(32, 'The Two-Mile Time Machine: Ice Cores, Abrupt Climate Change, and Our Future', 'Richard Alley', 'Described by Publishers Weekly as “a brilliant combination of scientific thriller, memoir, and environmental science,” this book is “a great layman synopsis of what climate is and how the numerous cycles at play create glacials, interglacials, and the current Anthropocene epoch,” says Steven Mamet, Ph.D., principal investigator on Climate Change in the Mackenzie Mountains. “I was fascinated by how well Dr. Alley could distill such a complex topic into something even I could understand.” ', '2021-11-04 10:35:02', '2021-11-04 09:35:02'),
(33, 'The Beak of the Finch: A Story of Evolution in Our Time', 'Jonathan Weiner', 'In 1994, Rullman led his first trip to the Galápagos Islands. “I prepped with all the recommended readings, from Charles Darwin to Michael Jackson (not the Michael Jackson you’re thinking of). And I grabbed a fresh-off-the-press book called The Beak of the Finch that told the story of biologists Peter and Rosemary Grant’s decades on one tiny little island (Daphne Major), studying several species within the group of birds that now collectively bear Darwin’s name — the 13 species of finches that live throughout the archipelago,” he says. \n\n“While Darwin speculated that very small changes in physical attributes might enhance survival just enough to give an organism a slightly higher chance of having their genes passed down to their offspring, the Grants found such shifts can be measurable and in response to the oscillations between El Niños and La Niñas and the weather patterns that accompany each. This is a wonderful introduction to natural selection and evolution, and also serves as a portal to a ton of other amazing books on this topic.”', '2021-11-04 10:35:27', '2021-11-04 09:35:27'),
(34, 'Desert Solitaire and The Monkey Wrench Gang', 'Edward Abbey', '“I worked at a guest ranch high in the mountains of Colorado in between high school and college, and traded one of the ranch hands my copy of Zen in the Art of Archery for Ed Abbey’s Desert Solitaire,” Rullman recalls. He was unfamiliar with Abbey’s works at the time, but that single book proved to be a gateway — “to an entire shelf dedicated to Abbey, his irreverent perspective on mainstream culture, his intolerance of ignorance, and his passion for the wild desert southwest. He’s not for everyone, and at times, not even for me. But I still miss his fire, and whenever I need my commitment to conservation and preservation restoked, I light up one of his books.” ', '2021-11-04 10:35:57', '2021-11-04 09:35:57'),
(37, 'The Abstract Wild', 'Jack Turner', 'This book found Rullman at just the right time, he says. “I often struggle with rants, even those from people whose views align pretty much with my own. But sometimes I need them — someone putting themselves out there and taking a stand. Ed Abbey certainly did that. David Brower did as well. Wendell Barry’s gentle manifestos are often just as passionate, though not rantful. And this little but powerful book popped into my life when many of the intrinsic values of wild places were being replaced by more economic metrics, and at that time in my life, I didn’t want wild nature to be reduced to numbers,” he explains.\n\n“I now see this as more of an ‘and’ than an ‘or,’ and that wildness is hopefully big enough to accommodate both views. The day that it isn’t big enough for this pluralism of values will be a very sad day, as it will mean we have officially lost too much.”', '2021-11-04 10:36:45', '2021-11-04 09:36:45'),
(36, 'The Balance of Nature: Ecology’s Enduring Myth', 'John Kricher', 'Rullman calls Kricher, a former Earthwatch-supported scientist, “a wonderful professor (recently retired) and a brilliant ecologist,” whose many volumes take up considerable real estate on his bookshelves. “With this book, he provides a thorough and eloquent ‘history of ecology for a lay audience’ – by itself a valuable contribution to the literature – but in doing so, he dismantles the long-held framework that there is a true balance of nature, a fulcrum upon which all that we know is statically poised,” Rullman explains.\n\n“Instead, he promotes a term more favored by ecologists: dynamic equilibrium, which better allows for change, adaptiveness, resiliency and, well, some degree of wobble,&quot; Rullman continues. &quot;Another mandatory read for decision makers — and, heck, we are all decision makers in some sense, so a must-read for everyone!”  ', '2021-11-04 10:36:20', '2021-11-04 09:36:20'),
(38, 'The Winds of Change', 'Eugene Linden', 'This 2007 book chronicles the historical clashes between cultures and climate in societies from arctic Greenland to the Fertile Crescent to the ancient Mayan cities of Central America. “It’s all about the rise and fall of civilizations around water supplies,” Mamet says. “I feel it’s timely given the dire water situation in South Africa and a reminder that we can’t engineer away all of our environmental problems—change at the individual level is necessary.” ', '2021-11-04 10:37:23', '2021-11-04 09:37:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
