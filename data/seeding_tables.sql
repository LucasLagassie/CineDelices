BEGIN;

-- Insertion des categories

INSERT INTO "movie_category" 
    ("name") 
VALUES 
    ('Action'),
    ('Drame'),
    ('Thriller'),
    ('Comedie'),
    ('Aventure'), 
    ('Horreur'), 
    ('Fantastique'), 
    ('Animation')
;

INSERT INTO "user"
    ("email", "pseudo", "password", "avatar", "role")
VALUES
    ('johndoe@example.com', 'JohnDoe', 'hashed_password1', 'avatar1.png', 'user', 'user'),
    ('admin@example.com', 'admin', 'hashed_password_admin', 'avatar2.png', 'admin', 'admin')
;

-- Insertion des films

INSERT INTO "movie_and_serie"
    ("name", "synopsis", "director", "actor", "release_date", "picture")
VALUES
    ('Ratatouille', 'Le film Ratatouille est une ode à la cuisine française et met en avant des plats raffinés avec des ingrédients simples mais savoureux. Voici trois recettes inspirées par le film, allant de l''entrée au dessert, pour capturer l''essence de la cuisine provençale et l''élégance culinaire du film.', 'Brad Bird', 'Patton Oswalt', '2007-06-29', NULL),
    ('Star Wars', 'Voici une liste de trois recettes inspirées par l''univers de Star Wars, allant de l''entrée au dessert. Chacune est conçue pour capturer l''esprit de la galaxie lointaine, très lointaine, tout en étant adaptée à un repas convivial. Les recettes sont pour environ 4 personnes et incluent le temps de préparation.', 'George Lucas', 'Mark Hamill', '1977-05-25', NULL),
    ('Breaking Bad', 'La série Breaking Bad est remplie de moments intenses et de personnages complexes, mais elle a aussi des touches de gastronomie, notamment grâce à la fameuse scène de la cuisine de Walter White. Voici trois recettes inspirées par la série, allant de l''entrée au dessert, pour capturer l’esprit de Breaking Bad', 'Vince Gilligan', 'Bryan Cranston', '2008-01-20', NULL),
    ('Dexter', 'La série Dexter se distingue par son ambiance sombre et mystérieuse, ainsi que par ses scènes de cuisine qui mettent souvent en avant la précision et la préparation méticuleuse. Voici trois recettes inspirées par la série, allant de l''entrée au dessert, qui capturent à la fois l''élégance et l''atmosphère intrigante de Dexter', 'James Manos Jr.', 'Michael C. Hall', '2006-10-01', NULL),
    ('Pulp Fiction', 'Le film Pulp Fiction de Quentin Tarantino est célèbre pour ses dialogues percutants, ses personnages mémorables, et ses scènes culinaires iconiques. Voici trois recettes inspirées par les moments culinaires du film, allant de l''entrée au dessert, pour une expérience gastronomique digne de ce classique du cinéma.', 'Quentin Tarantino', 'John Travolta', '1994-10-14', NULL),
    ('Harry Potter', 'Plongez dans l''univers magique de Poudlard avec trois recettes inspirées par les banquets de la Grande Salle, les délices de la Cabane de Hagrid, et les secrets gourmands de Pré-au-Lard. Ces plats évoquent la richesse et la fantaisie de la saga de J.K. Rowling, parfaits pour une soirée ensorcelée.', 'J. K. Rowling', 'Daniel Radcliffe', '2001', NULL),
    ('Game of Thrones', 'Préparez un festin royal ou digne d''une taverne avec trois recettes inspirées par les intrigues et les grandes maisons de Westeros. Chaque plat est conçu pour capturer l''essence brute et passionnée de cet univers épique.', 'George.R.R. Martins ', 'Emilia Clarke', '2011', NULL),
    ('One piece', 'Embarquez avec l''équipage du Chapeau de Paille et découvrez trois recettes qui capturent l''esprit d''aventure des mers de Grand Line. Chaque plat est inspiré des voyages et des délices que l''on pourrait déguster à bord du Thousand Sunny.', 'Eiichiro Oda', 'Luffy', '1999', NULL),
    ('Naruto', 'Invitez la chaleur et le réconfort du village de Konoha dans votre cuisine avec trois recettes inspirées par les mets préférés des ninjas. Chaque plat évoque l''énergie et la passion qui caractérisent cet univers de shinobis.', 'Masashi Kishimoto', 'Naruto', '2002', NULL),


    ('Le seigneur des Anneaux', 'Entrez dans la Terre du Milieu avec ces trois recettes inspirées des repas chaleureux des Hobbits, des festins elfiques et des plats robustes des nains. Parfait pour une aventure culinaire épique digne de Frodon et de Sam.', 'J.R.R. Tolkien', 'Elijah Wood', '2001', NULL),
    ('Le monde de Narnia', 'Voyagez au-delà de l''armoire et goûtez aux saveurs magiques de Narnia avec trois recettes inspirées de ce monde enchanteur. Chacune capture un moment gourmand de la saga de C.S. Lewis.', 'Andrew Adamson', 'Georgie Henley', '2005', NULL),
    ('Les Animaux Fantastiques', 'Explorez l''Amérique magique des années 1920 avec trois recettes inspirées des mets dégustés par Norbert Dragonneau et ses compagnons, reflétant le charme et l''élégance de cette époque enchantée.', 'David Yates', 'Eddie Redmayne', '2016', NULL),
    ('Le Voyage de Chihiro', 'Faites un voyage culinaire au cœur de l''univers onirique de Miyazaki avec trois recettes inspirées des mets appétissants du film. Chaque plat évoque la magie et le mystère de ce voyage extraordinaire.', 'Hayao Miyazak', 'Rumi Hiiragi', '2001', NULL),
    ('Le Grinch', 'Apportez un peu de folie de Whoville à votre table avec trois recettes qui capturent l''esprit farfelu et festif du Grinch. Chaque plat est une explosion de couleurs et de saveurs, parfaite pour les fêtes de fin d''année.', 'Ron Howard', 'Jim Carrey', '2000', NULL),
    ('Alice aux Pays des Merveilles', 'Laissez-vous emporter par l''univers fantastique et merveilleux d''Alice avec trois recettes inspirées par les personnages et les lieux enchâssés dans le Pays des Merveilles. Ces plats capturent l''esprit ludique et imaginaire du film de Tim Burton.', 'Tim Burton', 'Mia Wasikowska', '2010 ', NULL),
;

-- Insertion des catégories de recettes

INSERT INTO "recipe_category"
    ("name")
VALUES
    ('Entrée'),
    ('Plat'),
    ('Dessert')
;   

-- Insertion des recettes

INSERT INTO "recipe"
    ("name", "description", "picture", "difficulty", "time", "instruction", "recipe_category_id", "movie_id", "user_id")
VALUES
    1 ('Soupe à l''Oignon Gratinée (4pers)',
    'Une entrée classique et chaleureuse inspirée par la cuisine française.',
    NULL,
    'Facile',
    '1:00:00',
    'Faites fondre le beurre avec l''huile d''olive dans une grande casserole à feu moyen. Ajoutez les oignons émincés et faites-les revenir doucement jusqu''à ce qu''ils soient caramélisés et dorés (environ 20-25 minutes).
    Déglacez avec le vin blanc (si utilisé) et laissez réduire pendant 2 minutes.
    Ajoutez le bouillon de bœuf et le bouquet garni. Laissez mijoter 15-20 minutes. Assaisonnez avec du sel et du poivre.
    Préchauffez votre four à 200°C. Disposez les tranches de pain sur une plaque de cuisson et faites-les légèrement griller.
    Répartissez la soupe dans des bols allant au four, déposez une tranche de pain grillé sur chaque bol, puis recouvrez généreusement de fromage râpé.
    Faites gratiner sous le gril du four jusqu''à ce que le fromage soit doré et bouillonnant.',
    1,
    1,
    NULL),

    2 ('Ratatouille (4pers)',
    'Un plat principal provençal avec des légumes frais.',
    NULL,
    'Moyenne',
    '1:00:00',
    'Préchauffez le four à 180°C.
    Coupez l''aubergine, la courgette, les poivrons et les tomates en tranches fines. Émincez l''oignon et l''ail.
    Dans une grande poêle, faites chauffer l''huile d''olive. Faites revenir l''oignon et l''ail jusqu''à ce qu''ils soient tendres.
    Disposez les tranches de légumes en couches alternées dans un plat à gratin, en commençant par l''aubergine, puis la courgette, les poivrons, et enfin les tomates. Assaisonnez avec les herbes de Provence, le sel et le poivre.
    Arrosez d''un filet d''huile d''olive et couvrez le plat de papier d''aluminium.
    Faites cuire au four pendant environ 40 minutes, puis retirez le papier d''aluminium et poursuivez la cuisson pendant 10-15 minutes pour dorer les légumes.',
    2,
    1,
    NULL),

    3 ('Tarte Tatin aux Pommes (6pers)',
    'Un dessert classique français avec des pommes caramélisées.',
    NULL,
    'Difficile',
    '1:30:00',
    '
    Préchauffez votre four à 180°C.
    Pelez, épépinez et coupez les pommes en quartiers.
    Dans une poêle allant au four, faites fondre le beurre et ajoutez le sucre. Faites chauffer jusqu''à obtenir un caramel doré.
    Disposez les quartiers de pommes dans le caramel en les serrant bien. Faites cuire à feu moyen pendant environ 10 minutes.
    Étalez la pâte brisée ou feuilletée et placez-la sur les pommes en rentrant les bords dans la poêle.
    Faites cuire au four pendant environ 25-30 minutes, jusqu''à ce que la pâte soit dorée.
    Laissez tiédir avant de retourner délicatement la tarte sur un plat de service. Saupoudrez de cannelle si désiré.',
    3,
    1,
    NULL),

    4 ('Sablés de Tatooine (4pers)',
    'Des sablés évoquant les paysages désertiques de Tatooine.',
    NULL, 'Facile',
    '35:00',
    'Préchauffez votre four à 180°C.
    Dans un bol, mélangez la farine, le sucre et le sel. Ajoutez le beurre et travaillez le mélange du bout des doigts jusqu''à obtenir une texture granuleuse.
    Incorporez le jaune d''oeuf et l''extrait de vanille. Mélangez jusqu''à former une pâte homogène.
    Étalez la pâte sur une surface farinée et découpez-la en formes désirées à l''aide d''emporte-pièces.
    Disposez les sablés sur une plaque de cuisson recouverte de papier sulfurisé et faites cuire pendant 12-15 minutes, ou jusqu''à ce qu''ils soient légèrement dorés.
    Laissez refroidir avant de saupoudrer de sucre glace, si désiré.',
    1,
    2,
    NULL),

    5 ('Ragoût de Wookiee (4pers)',
    'Un plat copieux inspiré par Chewbacca et sa planète natale.',
    NULL,
    'Moyenne',
    '1:50:00',
    'Faites chauffer l''huile d''olive dans une grande casserole à feu moyen. Ajoutez la viande et faites-la dorer sur toutes les faces.
    Ajoutez l''oignon et l''ail, et faites revenir jusqu''à ce qu''ils soient translucides.
    Incorporez les carottes, les pommes de terre, les champignons, le thym et le romarin. Mélangez bien.
    Versez le bouillon de bœuf et le vin rouge (si utilisé). Assaisonnez avec du sel et du poivre.
    Portez à ébullition, puis réduisez le feu et laissez mijoter pendant environ 1 heure 30, ou jusqu''à ce que la viande soit tendre et que les légumes soient cuits.
    Servez chaud avec du pain croustillant.',
    2,
    2,
    NULL),

    6 ('Tarte aux Étoiles (4pers)',
    'Une tarte évoquant les étoiles et constellations.',
    NULL,
    'Facile',
    '50:00',
    'Préchauffez votre four à 180°C.
    Étalez la pâte sablée et foncez un moule à tarte. Piquez le fond avec une fourchette.
    Dans un bol, mélangez la compote de pommes, le sucre, la cannelle et le jus de citron.
    Versez la compote sur la pâte.
    Découpez des formes d''étoiles dans un reste de pâte et disposez-les sur le dessus de la tarte.
    Badigeonnez les étoiles de pâte avec l''oeuf battu pour une finition dorée.
    Faites cuire au four pendant environ 30-35 minutes, ou jusqu''à ce que la pâte soit dorée et que la compote bouillonne.
    Laissez refroidir avant de saupoudrer de sucre glace si désiré.',
    3,
    2,
    NULL),

    7 ('Nachos au Fromage avec "Crystal Blue" Salsa (4pers)',
    'Des nachos avec une salsa inspirée des cristaux du laboratoire.',
    NULL,
    'Facile',
    '20:00',
    'Préchauffez le four à 180°C.
    Disposez les chips de tortilla sur une plaque de cuisson. Parsemez de fromage cheddar et Monterey Jack.
    Faites chauffer au four jusqu''à ce que le fromage soit fondu et légèrement doré (environ 10 minutes).
    Pendant ce temps, préparez la salsa en mélangeant l''avocat, la tomate, l''oignon, le jalapeño (si utilisé), la coriandre, le jus de citron, le sel et le poivre.
    Sortez les nachos du four et garnissez-les de la salsa fraîche avant de servir.',
    1,
    3,
    NULL),

    8('Chili "Heisenberg" à la Mexicaine (4pers)',
    'Un chili épicé inspiré par Breaking Bad.',
    NULL,
    'Moyenne',
    '45:00',
    '
    Faites chauffer l''huile d''olive dans une grande casserole à feu moyen. Ajoutez l''oignon et l''ail, et faites revenir jusqu''à ce qu''ils soient tendres.
    Ajoutez la viande hachée et faites cuire jusqu''à ce qu''elle soit bien dorée.
    Ajoutez les poivrons, les tomates concassées, les haricots rouges, le maïs, la poudre de chili, le cumin, le paprika, le sel et le poivre. Mélangez bien.
    Réduisez le feu et laissez mijoter pendant environ 30 minutes, en remuant de temps en temps.
    Servez chaud avec une cuillerée de crème aigre et de la coriandre fraîche.',
    2,
    3,
    NULL),

    9('"Blue Sky" Macarons au Chocolat (10pers)',
    'Inspirés par la fameuse couleur bleue des cristaux dans la série, ces macarons au chocolat sont une touche sucrée élégante pour clore le repas.',
    NULL,
    'Moyenne',
    '4:00:00',
    'Préchauffez le four à 150°C (300°F) et tapissez une plaque de cuisson de papier sulfurisé.
    Tamisez ensemble la poudre d’amandes et le sucre glace.
    Battez les blancs d’œufs jusqu’à obtenir des pics fermes. Ajoutez le sucre en poudre en continuant à battre jusqu’à obtenir une meringue brillante.
    Incorporez délicatement le mélange de poudre d’amandes dans la meringue avec une spatule, en faisant attention de ne pas trop mélanger. Ajoutez le colorant si désiré.
    Dressez des petits tas de pâte sur la plaque de cuisson avec une poche à douille.
    Laissez reposer les coques pendant environ 30 minutes, jusqu’à ce qu’une fine croûte se forme.
    Faites cuire au four pendant 15-18 minutes. Laissez refroidir complètement avant de les décoller.
    Préparez la ganache :
    Faites chauffer la crème jusqu’à ébullition. Versez-la sur le chocolat haché dans un bol.
    Laissez reposer 2 minutes, puis mélangez jusqu’à obtenir une ganache lisse. Incorporez le beurre jusqu’à ce qu’il soit fondu et bien mélangé.
    Laissez refroidir à température ambiante.
    Montage :
    Garnissez une coque de ganache au chocolat et recouvrez avec une autre coque. Répétez avec le reste des macarons.
    Réfrigérez les macarons pendant quelques heures avant de servir pour permettre à la ganache de se raffermir.
    ',
    3,
    3,
    NULL),

    10 ('Carpaccio de Bœuf à la Dexter (4pers)',
    'Un plat élégant et sophistiqué, parfait pour refléter le goût raffiné de Dexter tout en restant simple et délicieux.',
    NULL,
    'Facile',
    '20:00',
    'Placez le filet de bœuf au congélateur pendant environ 30 minutes pour faciliter la découpe.
    Tranchez le bœuf en très fines tranches à l’aide d’un couteau bien aiguisé. Disposez les tranches en une seule couche sur une assiette.
    Dans un petit bol, mélangez l''huile d''olive et le jus de citron. Versez ce mélange sur les tranches de bœuf.
    Répartissez les câpres, les copeaux de parmesan et la roquette sur le carpaccio.
    Assaisonnez avec du sel, du poivre noir et quelques feuilles de basilic frais si désiré.
    Servez immédiatement pour une entrée raffinée et légère.',
    1,
    4,
    NULL),

    11('Plat : Steak au Poivre avec Sauce au Cognac (2pers)',
    'Un plat principal qui combine robustesse et sophistication, parfait pour refléter la nature complexe de Dexter tout en offrant un goût riche et savoureux.',
    NULL,
    'Moyenne',
    '30:00',
    'Assaisonnez les steaks avec du sel et le poivre noir concassé sur toutes les faces.
    Faites chauffer l''huile d''olive dans une poêle à feu moyen-vif. Faites cuire les steaks selon votre préférence de cuisson (environ 3-4 minutes de chaque côté pour une cuisson à point).
    Retirez les steaks de la poêle et laissez-les reposer sur une assiette couverte de papier aluminium.
    Dans la même poêle, ajoutez l''échalote et faites revenir jusqu’à ce qu’elle soit tendre.
    Déglacez la poêle avec le cognac, en grattant les sucs de cuisson. Faites réduire de moitié.
    Ajoutez la crème liquide et la moutarde, puis laissez mijoter jusqu’à obtenir une sauce épaisse.
    Rectifiez l’assaisonnement avec du sel si nécessaire.
    Servez les steaks nappés de la sauce au cognac, accompagnés de légumes sautés ou de pommes de terre.',
    2,
    4,
    NULL),

    12('Tarte au Chocolat et aux Framboises (8pers)',
    'Un dessert élégant et délicieux qui contraste avec l''intensité de la série tout en offrant une touche de sophistication.',
    NULL,
    'Moyenne',
    '3;00:00',
    'Préparez la pâte :
    Préchauffez votre four à 180°C (350°F).
    Dans un bol, mélangez la farine, le sucre glace et le beurre jusqu’à obtenir une texture granuleuse.
    Ajoutez le jaune d''œuf et mélangez jusqu’à ce que la pâte se forme. Étalez la pâte et foncez un moule à tarte.
    Piquez le fond de la pâte avec une fourchette et faites cuire à blanc pendant environ 15 minutes. Laissez refroidir.
    Préparez la ganache :
    Faites chauffer la crème liquide jusqu’à ébullition.
    Versez-la sur le chocolat noir haché dans un bol et laissez reposer pendant 2 minutes. Mélangez jusqu’à obtenir une ganache lisse.
    Incorporez le beurre jusqu’à ce qu''il soit fondu et bien mélangé.
    Versez la ganache sur la pâte précuite et lissez avec une spatule. Réfrigérez pendant au moins 2 heures pour que la ganache prenne.
    Garnissez :
    Disposez les framboises fraîches sur le dessus de la tarte.
    Saupoudrez légèrement de sucre glace avant de servir.
    ',
    3,
    4,
    NULL), 

    13('Royale with Cheese (4pers)', 'Inspiré par la fameuse scène du "Royale with Cheese" où Vincent Vega et Jules Winnfield discutent des différences entre les hamburgers en France et aux États-Unis. Préparez une version élégante et gourmet du célèbre burger pour commencer le repas.', NULL, 'Moyenne', '30:00', 'Formez des galettes de viande hachée, assaisonnez avec du sel et du poivre.
    Faites chauffer l’huile dans une poêle à feu moyen-vif et faites cuire les galettes environ 3-4 minutes de chaque côté, ou jusqu''à ce qu''elles soient cuites à votre goût.
    Pendant la cuisson des galettes, faites griller les pains à hamburger.
    Assemblez les burgers : tartinez les pains de mayonnaise et de sauce barbecue, ajoutez une galette de viande, une tranche de fromage cheddar, des tranches d''oignon, de tomate et des feuilles de laitue.
    Servez immédiatement avec des frites ou une salade.
', 1, 5, NULL),

    14 ('Chili Con Carne (4pers)', 'Un plat épicé et savoureux, inspiré par la scène où Vincent et Jules discutent des effets d’un bon chili. Ce chili con carne est riche en saveurs et idéal pour un repas principal réconfortant.', NULL, 'Difficile', '45:00', 'Faites chauffer l’huile dans une grande casserole à feu moyen. Ajoutez l’oignon, l’ail et le poivron rouge, et faites revenir jusqu’à ce qu''ils soient tendres.
    Ajoutez la viande hachée et faites cuire jusqu’à ce qu’elle soit bien dorée.
    Incorporez les tomates concassées, les haricots rouges, la poudre de chili, le cumin et le paprika. Assaisonnez avec du sel et du poivre.
    Réduisez le feu et laissez mijoter pendant 30 minutes, en remuant de temps en temps.
    Servez chaud, garni de coriandre fraîche, avec du riz ou du pain à l’ail.
', 2, 5, NULL),

    15 ('Milkshake à la Vanille (4pers)', 'Inspiré par la scène où Vincent et Mia dégustent des milkshakes dans le restaurant. Un dessert classique et crémeux pour conclure le repas avec une touche rétro.', NULL, 'Facile', '10:00', 'Dans un mixeur, combinez la glace à la vanille, le lait et l''extrait de vanille. Mixez jusqu’à obtenir une consistance lisse et crémeuse.
    Versez le milkshake dans des grands verres.
    Garnissez avec de la crème chantilly et une cerise au marasquin si désiré.
    Servez immédiatement avec une paille.
', 3, 5, NULL),

    16 (' Boulettes de Dragon de Feu (4pers)',
    'Ces boulettes de viande épicées sont inspirées du Tournoi des Trois Sorciers, avec un clin d''oeil aux dragons cracheurs de feu.',
    NULL,
    'Moyenne',
    '45:00',
    'Préparer les boulettes : Mélanger la viande hachée, l''oeuf, l''oignon, l''ail, la chapelure, le piment, la sauce piquante, le sel et le poivre.
    Former des boulettes : Former des boulettes de la taille d''une noix.
    Cuire les boulettes : Faire chauffer l''huile dans une poêle et faire frire les boulettes jusqu''à ce qu''elles soient bien dorées et cuites à coeur.
    Servir : Servir chaud avec une sauce dip épicée.',
    1,
    6,
    NULL),

      17  ('Rôti de Boeuf à la Sauce à la Bière Noire (6pers)', '
    ', 'Un plat copieux et réconfortant que l''on pourrait imaginer servi dans la Grande Salle de Poudlard. Ce rôti de bœuf est accompagné d''une sauce à la bière noire, de    pommes de terre rôties et de légumes, parfait pour un repas entre amis.', NULL, 'Difficile', '2:30:00', "Préparer le rôti : Préchauffer le four à 180°C. Chauffer l''huile d''olive dans une grande cocotte, faire dorer le rôti de bœuf sur tous les côtés, puis retirer et réserver.
        Préparer la sauce : Dans la même cocotte, ajouter les oignons et l''ail, et cuire jusqu''à ce qu''ils soient dorés. Saupoudrer de farine et remuer. Ajouter la bière noire et le bouillon, porter à ébullition, puis ajouter la moutarde.
        Cuire au four : Remettre le rôti dans la cocotte, couvrir, et cuire au four pendant 1h30 à 2h, en arrosant de temps en temps avec la sauce.
        Préparer les accompagnements : Pendant ce temps, préparer les pommes de terre rôties et les légumes de saison.
        Servir : Trancher le rôti et servir avec la sauce à la bière, les pommes de terre rôties, et les légumes." 2, 6, NULL),

    18 ('Tarte au Citron de Luna Lovegood',
    'Inspirée par la personnalité unique de Luna, cette tarte au citron est acidulée, sucrée, et un peu excentrique avec sa meringue colorée',
    NULL,
    'Moyenne',
    '2:00:00',
    'Cuire la pâte : Étaler la pâte dans un moule à tarte et cuire à blanc à 180°C pendant 20 minutes.
    Préparer la crème citron : Mélanger le jus et le zeste de citron, le sucre, les œufs, et le beurre dans une casserole. Faire épaissir à feu doux.
    Préparer la meringue : Battre les blancs d''oeufs en neige avec le sucre glace. Ajouter quelques gouttes de colorant.
    Assembler et cuire : Verser la crème citron sur la pâte précuite, étaler la meringue colorée par-dessus, et cuire au four à 150°C pendant 15 minutes. Laisser refroidir avant de servir.',
    3,
    6,
    NULL),
    
    19 (' Oeufs de Dragon (4pers)',
    'Une entrée savoureuse de petits œufs en pâte feuilletée, farcis de fromage et d''herbes, rappelant les célèbres oeufs de dragon de Daenerys.',
    NULL,
    'Facile',
    '1:00:00',
    'Préparer la farce : Mélanger le fromage, le persil, la ciboulette, le sel et le poivre.
    Former les œufs : Découper la pâte feuilletée en cercles, ajouter une cuillère de farce au centre et refermer en formant une forme d''oeuf.
    Badigeonner et cuire : Badigeonner avec l''oeuf battu et cuire au four à 180°C pendant 25-30 minutes jusqu''à ce qu''ils soient dorés.
    Servir : Servir chaud en entrée avec une sauce légère.',
    1,
    7,
    NULL),

    20 ('Ragoût d''agneau des Terres du Nord (6pers)', 'Un ragoût copieux et riche en saveurs, inspiré des plats robustes servis dans le Nord de Westeros, idéal pour les froides nuits d''hiver', NULL, 'Difficile', '2:00:00', 'Faire revenir l''agneau : Chauffer l''huile dans une cocotte et faire dorer les morceaux d''agneau de tous les côtés. Réserver.
    Préparer les légumes : Dans la même cocotte, ajouter les oignons, l''ail, les carottes et les pommes de terre. Faire revenir jusqu''à ce qu''ils soient légèrement dorés.
    Ajouter les liquides : Remettre l''agneau dans la cocotte, ajouter le bouillon, le vin rouge et le bouquet garni. Assaisonner avec du sel et du poivre.
    Laisser mijoter : Couvrir et laisser mijoter à feu doux pendant 1h30, jusqu''à ce que l''agneau soit tendre et que la sauce ait épaissi.
    Servir : Accompagner de pain de campagne ou de purée de pommes de terre.
', 2, 7, NULL),

   21 ('Gâteau aux Noix des Sept Couronnes (8pers)', 'Un gâteau rustique aux noix et au miel, typique des tables royales des Sept Couronnes.', NULL, 'Facile', '1:15:00', 'Préparer la pâte : Mélanger le beurre fondu, le miel, les œufs, et le lait. Ajouter la farine, la levure, la cannelle, et les noix.
    Cuire le gâteau : Verser dans un moule et cuire au four à 180°C pendant 50 minutes.
    Servir : Servir chaud ou froid, arrosé d''un filet de miel pour encore plus de douceur.
', 3, 7, NULL),

   22 ('Salade d’Algues de Nami (4pers)', ' Une salade d’algues japonaise rafraîchissante et légère, idéale pour accompagner un repas copieux ou comme entrée.', NULL, 'Facile', '20:00', 'Réhydrater les algues : Faire tremper les algues dans l''eau froide pendant 10 minutes, puis les égoutter.
    Préparer la vinaigrette : Mélanger le vinaigre de riz, la sauce soja, l''huile de sésame, et le sucre.
    Mélanger la salade : Mélanger les algues avec les carottes, le concombre, et la vinaigrette.
    Servir : Garnir de graines de sésame grillées et servir frais.
', 1, 8, NULL),

   23 ('Curry de Poulet à la Sanji (4pers)', ' Inspiré par le chef Sanji de l''équipage du Chapeau de Paille, ce curry japonais de poulet est à la fois épicé et savoureux, parfait pour un repas de pirates !
', NULL, 'Moyenne', '1:15:00', 'Faire revenir le poulet : Chauffer l''huile dans une grande poêle et faire revenir le poulet jusqu''à ce qu''il soit doré. Réserver.
    Cuire les légumes : Dans la même poêle, ajouter les oignons, les carottes et les pommes de terre. Cuire jusqu''à ce qu''ils soient légèrement tendres.
    Préparer le curry : Ajouter le poulet cuit aux légumes. Verser le bouillon de poulet et porter à ébullition. Ajouter la pâte de curry et mélanger jusqu''à ce qu''elle soit dissoute.
    Laisser mijoter : Réduire le feu et laisser mijoter pendant 30 minutes, jusqu''à ce que le curry épaississe et que les légumes soient cuits.
    Servir : Servir chaud sur un lit de riz blanc.
', 2, 8, NULL),

   24 ('Mochi Glacés de Nami (6pers)', ' Ces mochis glacés, enveloppés de pâte de riz douce et farcis de crème glacée, sont parfaits pour une douce fin de repas.', NULL, 'Moyenne', '2:00:00', 'Préparer la pâte à mochi : Mélanger la farine de riz, le sucre, et l''eau dans un bol. Cuire au micro-ondes pendant 2 minutes, mélanger, et cuire encore 1 minute.
    Façonner les mochis : Saupoudrer de fécule de maïs et étaler la pâte. Découper en cercles, envelopper une boule de glace, et sceller.
    Congeler : Placer les mochis au congélateur pendant 1h30.
    Servir : Servir immédiatement après la sortie du congélateur.
', 3, 8, NULL),

   25 ('Onigiri de Sasuke (4pers)', 'Ces boulettes de riz en forme de triangle, garnies de saumon grillé ou de prunes marinées (umeboshi), sont faciles à transporter et à déguster.', NULL, 'Facile', '40:00', 'Former les onigiri : Mouiller vos mains et ajouter une pincée de sel. Prenez une boule de riz et placez un peu de saumon ou umeboshi au centre.
    Façonner en triangle : Fermez le riz autour de la garniture et façonnez-le en triangle.
    Ajouter le nori : Enveloppez une bande de nori autour de la base.
    Servir : Servir frais ou légèrement grillés.
', 1, 9, NULL),

   26 ('Ramen Ichiraku (4pers)', 'Ce bol de ramen est inspiré du célèbre restaurant Ichiraku où Naruto aime manger. Ce plat est rempli de nouilles, de bouillon savoureux, de porc chashu, d''œufs marinés et de narutomaki.', NULL, 'Moyenne', '2:00:00', 'Préparer le bouillon : Faire chauffer le bouillon de poulet, ajouter le miso et la sauce soja. Porter à ébullition puis réduire à feu doux.
    Cuire les nouilles : Faire cuire les nouilles ramen selon les instructions du paquet, égoutter et réserver.
    Assembler le bol : Placer les nouilles dans un bol, verser le bouillon chaud dessus. Ajouter les tranches de porc chashu, les œufs marinés coupés en deux, des tranches de narutomaki, et les oignons verts.
    Garnir : Ajouter une feuille de nori et des germes de soja.
    Servir : Servir chaud avec des baguettes !
', 2, 9, NULL),

  27  ('Taiyaki de Konoha (6pers)', 'Un gâteau japonais en forme de poisson, rempli de pâte de haricots rouges sucrée (anko), parfait pour les collations rapides des ninjas.', NULL, 'Moyenne', '1:00:00', 'Préparer la pâte : Mélanger la farine, les œufs, le lait, le sucre, et la levure pour former une pâte lisse.
    Cuire les taiyaki : Chauffer un moule à taiyaki, verser une louche de pâte, ajouter une cuillère de pâte de haricots rouges, et recouvrir de pâte.
    Tourner et cuire : Fermer le moule, retourner, et cuire jusqu''à ce que chaque côté soit doré.
    Servir : Servir chaud avec une tasse de thé vert.
', 3, 9, NULL),

   28 ('Pain Lembas des Elfes(8 pers)', 'Ce pain nourrissant est connu pour être l''aliment de base des voyageurs elfes en Terre du Milieu. Léger, mais incroyablement énergétique !', NULL, 'Moyenne', '1:00:00', 'Préparer la pâte : Mélanger la farine de blé, la farine d''avoine, la levure chimique, la cannelle, et la muscade. Ajouter le beurre coupé en morceaux et frotter jusqu''à obtenir une consistance sableuse.
    Ajouter les liquides : Ajouter le miel et le lait, puis mélanger jusqu''à former une pâte.
    Former les pains : Étaler la pâte et découper en carrés de 10 cm. Tracer un "X" léger sur chaque carré.
    Cuire au four : Préchauffer le four à 180°C et cuire pendant 25-30 minutes jusqu''à ce qu''ils soient dorés.
    Servir : Laisser refroidir et servir avec du beurre ou du miel. Parfait pour emporter lors d''une longue randonnée !
    ', 1, 10, NULL),

   29 ('Soupe de Champignons de la Comté (4 pers)
    ', 'Une soupe réconfortante aux champignons inspirée par les plats que les hobbits apprécieraient en Comté.
    ', NULL, 'Facile', '1:00:00', 'Faire revenir les légumes : Faire fondre le beurre dans une casserole, ajouter les oignons et l''ail et cuire jusqu''à ce qu''ils soient tendres.
    Ajouter les champignons : Ajouter les champignons et cuire jusqu''à ce qu''ils soient dorés.
    Ajouter le bouillon et mijoter : Ajouter le bouillon, couvrir et laisser mijoter pendant 30 minutes.
    Mixer et ajouter la crème : Mixer la soupe jusqu''à obtenir une consistance lisse, ajouter la crème, et assaisonner.
    Servir : Servir chaud avec du pain de campagne.
    ', 2, 10, NULL),

    30    ('Flan au Miel de la Forêt Noire (6 pers)
    ', 'Un dessert délicat et sucré inspiré par la Forêt Noire de la Terre du Milieu. Ce flan crémeux est infusé au miel et garni de baies sauvages, rappelant les saveurs naturelles et riches de la région.', NULL, 'Difficile', '4:00:00  (inclut le temps de refroidissement)', 'Préparer la crème : Chauffer le lait, la crème, et le miel dans une casserole à feu moyen jusqu’à frémissement. Retirer du feu et ajouter l''extrait de vanille.
    Préparer le mélange d''oeufs : Battre les oeufs dans un bol. Verser lentement le mélange de lait chaud dans les œufs, en fouettant constamment pour éviter que les œufs ne coagulent.
    Cuire le flan : Préchauffer le four à 160°C. Verser le mélange dans des ramequins. Placer les ramequins dans un plat à four rempli d''eau chaude pour une cuisson au bain-marie. Cuire pendant 30 à 35 minutes, ou jusqu''à ce que les flans soient pris mais encore légèrement tremblotants au centre.
    Refroidir : Retirer les ramequins du bain-marie et laisser refroidir à température ambiante, puis réfrigérer pendant au moins 2 heures.
    Préparer la garniture de baies : Dans une poêle, faire revenir les baies avec le sucre pendant 5 minutes jusqu’à ce qu’elles soient légèrement compotées.
    Servir : Garnir chaque flan refroidi avec une cuillerée de baies chaudes et servir.
    ', 3, 10, NULL),

   31 ('Gâteaux Turcs (6pers)', 'Inspirés par les friandises enchanteresses qui captivent Edmund dans "Le Monde de Narnia", ces gâteaux turcs sont de véritables douceurs royales. Saupoudrés de sucre glace et parfumés à l''essence de rose, ils vous transporteront directement dans le palais de la Sorcière Blanche.', NULL, 'Facile', '15:00', 'Mélanger tous les ingrédients pour former une pâte.
    Étaler la pâte, découper en carrés et cuire à 180°C pendant 15 minutes.
    Saupoudrer de sucre glace et un peu d''essence de rose.
', 3, 11, NULL),

  32  ('Salade des Bois (4pers) ', 'Évoquant la fraîcheur des forêts magiques de Narnia, cette salade des bois est une entrée légère et rafraîchissante. Avec des feuilles de roquette, des noix croquantes, et une vinaigrette douce au miel et à la cannelle, elle rappelle les saveurs simples et naturelles qui pourraient être dégustées dans une clairière enchantée.', NULL, 'Facile', '10:00', 'Dans un grand saladier, mélanger la roquette, les noix, le fromage de chèvre et les tranches de pomme.
    Dans un petit bol, fouetter ensemble le miel, le vinaigre balsamique, l''huile d''olive et la cannelle pour faire la vinaigrette.
    Verser la vinaigrette sur la salade juste avant de servir et mélanger délicatement.
    Servir immédiatement pour profiter de la fraîcheur des ingrédients
', 1, 11, NULL),

   33 ('Ragoût de Lapin (4pers)', 'Recréez l''authenticité des repas des créatures de Narnia avec ce ragoût de lapin simple mais savoureux. Mijoté longuement avec des légumes et des herbes, ce plat rustique et réconfortant est digne des banquets au camp des résistants narniens.', NULL, 'Difficile', '1:30:00', 'Faire revenir l''oignon et le lapin dans une cocotte.
    Ajouter les carottes, le bouillon et les herbes.
    Laisser mijoter pendant 1h30 à feu doux.
', 2, 11, NULL),


   34 ('Pouding de Pukwudgie (4 pers)', 'Évoquant la magie et le mystère des créatures fantastiques, ce doux et crémeux pouding aux accents de vanille ravira petits et grands sorciers. Inspiré des traditions gourmandes de Poudlard, c''est un dessert qui séduira même les créatures les plus farouches.
    ', NULL, 'Facile', '10:00 (plus refroidissement)', 'Chauffer le lait avec le sucre.
    Ajouter la maïzena diluée dans un peu de lait froid et mélanger jusqu''à épaississement.
    Ajouter la vanille et verser dans des ramequins.
    ', 1, 12, NULL),

   35 ('Tarte aux Œufs de Serpencendre (6 pers)', 'Reprenant le côté énigmatique des animaux fantastiques, cette tarte aux œufs est simple mais pleine de caractère. Avec une texture riche et onctueuse, elle est parfaite pour un dîner rapide entre deux chasses aux créatures magiques.
    ', NULL, 'Moyenne', '25:00', 'Préchauffer le four à 180°C.
    Battre les œufs avec la crème et le fromage.
    Verser sur la pâte brisée et cuire pendant 25 minutes.
    ', 2, 12, NULL),
    
   36 ('Soupe aux Herbes Magiques (4pers)', 'Laissez-vous envoûter par cette soupe aux herbes magiques, une recette qui semble provenir directement d''un grimoire ancien. Chargée de champignons, d''épinards et d''autres délices, elle est aussi nourrissante que mystérieuse.
    ', NULL, 'Facile', '20:00', 'Faire bouillir le bouillon.
    Ajouter les champignons, les carottes et les épinards.
    Laisser mijoter pendant 20 minutes.
    ', 3, 12, NULL),

   37 ('Mochis de Spiriteaux (4 pers)', 'Ces mochis, inspirés par les esprits du bain de Yubaba, sont des douceurs gluant-es et sucrées, fourrées à la pâte de haricot rouge. Leur texture moelleuse et leur goût délicat rappellent l’atmosphère magique et apaisante du monde des esprits de Chihiro.', NULL, 'Facile', '23:00', 'Dans un bol, mélanger la farine de riz gluant et le sucre. Ajouter l''eau progressivement tout en remuant jusqu''à obtenir une pâte lisse.
    Couvrir le bol d’un film plastique et cuire au micro-ondes pendant 2 minutes. Mélanger, puis cuire à nouveau pendant 1 minute. La pâte doit être collante et bien cuite.
    Saupoudrer un plan de travail avec de la fécule de maïs pour éviter que la pâte ne colle. Étaler la pâte chaude sur le plan de travail et couper en morceaux de la taille d''une balle de ping-pong.
    Aplatir chaque morceau de pâte, déposer une petite cuillerée de pâte de haricot rouge au centre, puis refermer délicatement en formant une boule.
    Rouler les mochis dans la fécule de maïs pour les rendre moins collants.
    Servir frais et déguster ces douceurs qui rappellent le calme des esprits de la forêt.
', 3, 13, NULL),

   38 ('Tempura de Légumes (4pers)', 'Évoquant les marchés animés et les plats rapides du Voyage de Chihiro, ce tempura léger et croustillant est parfait pour grignoter tout en découvrant des mondes fantastiques. Frais et croquant, il capture l''essence de la cuisine japonaise.', NULL, 'Facile', '15:00', 'Mélanger la farine et l''eau gazeuse pour faire une pâte.
    Tremper les légumes coupés en bâtonnets dans la pâte.
    Faire frire jusqu''à ce que ce soit doré.
', 1, 13, NULL),

  39  ('Soupe Miso (4pers)', 'Embarquez dans une aventure gustative avec cette soupe miso, une entrée simple et délicieuse directement inspirée par les mets traditionnels du Japon. Avec son bouillon dashi parfumé et ses morceaux de tofu, c''est le plat réconfortant par excellence.', NULL, 'Facile', '15:00', 'Chauffer le bouillon et y dissoudre le miso.
    Ajouter le tofu et la ciboulette, puis servir chaud.
', 2, 13, NULL),


   40 ('Soupe Verte de Brocoli (4 pers)', 'Cette soupe verte de brocoli, aussi vive que le Grinch lui-même, apportera une touche festive et saine à votre table. Légèrement veloutée et pleine de saveurs, c’est l’entrée parfaite pour ceux qui veulent se mettre dans l''esprit de Noël sans excès !
    ', NULL, 'Difficile', '20:00', 'Faire revenir l''oignon avec la pomme de terre et le brocoli.
    Ajouter le bouillon et cuire jusqu''à tendreté.
    Mixer jusqu''à obtention d''une texture lisse.
    ', 1, 14, NULL),

   41 ('Rôti de Noël du Grinch( 6-8 pers)', 'Ce rôti de Noël, inspiré par le célèbre festin des Whos dans "Le Grinch", est un plat principal généreux et savoureux. Farci aux herbes et accompagné de légumes rôtis, il apportera un esprit festif à votre table, même pour les cœurs les plus grincheux !
    ', NULL, 'Difficile', '1:30:00', 2, 14, NULL),

   42 ('Biscuits de Noël (4 pers) ', 'Des biscuits de Noël verts aussi charmants que farceurs ! Inspirés par le célèbre personnage du Grinch, ces petits sablés au beurre colorés égayeront vos fêtes tout en ajoutant une touche de malice sucrée.', NULL, '20:00', ''Moyenne'', 'Mélanger la farine, le sucre, le beurre et l''œuf pour former une pâte.
    Ajouter le colorant vert.
    Découper en forme de sapin et cuire à 180°C pendant 12 minutes.
', 3, 14, NULL),

   43 ('Soupe à l’oignon du Chapelier Fou (4pers)', 'Cette soupe à l''oignon classique, revisitée à la manière du Chapelier Fou, est parfaite pour commencer votre aventure culinaire dans le Pays des Merveilles. Avec des oignons caramélisés lentement, un bouillon riche au vin blanc, et un gratiné de gruyère fondant sur des tranches de baguette croustillante, cette entrée est un hommage au festin décalé du Chapelier. Servez-la lors de votre propre tea party farfelue, et laissez-vous emporter par la douce folie d''Alice et ses compagnons.', NULL, 'Moyenne', '1:10:00', 'Émincer les oignons et les faire revenir dans le beurre à feu doux jusqu''à ce qu''ils deviennent dorés et fondants.
    Ajouter le sucre et laisser caraméliser légèrement.
    Incorporer la farine et bien mélanger.
    Verser le bouillon de bœuf et le vin blanc, porter à ébullition, puis laisser mijoter 30 minutes. Assaisonner avec du sel et du poivre.
    Préchauffer le four à 200°C.
    Découper la baguette en tranches, les griller légèrement, puis les déposer sur la soupe.
    Parsemer de gruyère râpé et gratiner au four jusqu''à ce que le fromage soit fondu et doré.
', 1, 15, NULL),

   44 ('Ragoût de lapin à la bière (6 pers)', 'Plongez dans l''univers merveilleux d''Alice avec ce ragoût de lapin à la bière. Un plat riche en saveurs et en mystère, qui vous transportera directement dans un festin digne du Chapelier Fou. Préparez-vous à une aventure culinaire où chaque bouchée révèle un soupçon de magie.', NULL, 'Difficile', '2:00:00', 'Préparation des légumes :
    Émincer l’oignon et l’ail, couper les carottes en rondelles.
    Faire revenir le tout dans une cocotte avec un peu d’huile.
    Cuisson du lapin :
    Ajouter les morceaux de lapin, les faire dorer de tous les côtés.
    Ajouter la moutarde, la bière, le bouillon, les feuilles de laurier et le thym. Mélanger.
    Couvrir et laisser mijoter à feu doux pendant 1h30.
    Service :
    Servir le ragoût de lapin avec des pommes de terre vapeur ou du pain croustillant, pour un plat digne de la table du Lapin Blanc.
    ', 2, 15, NULL),

   45 ('Chapeau du Chapelier (6pers)
    ', ' Entrez dans l''univers excentrique du Chapelier Fou avec ce gâteau en forme de chapeau. Inspiré par les aventures d''Alice au Pays des Merveilles, ce dessert fantaisiste est un véritable chef-d''œuvre de pâtisserie. Avec ses couches de génoise moelleuse, son glaçage coloré et ses détails délicieusement loufoques, ce gâteau ne manquera pas de faire tourner toutes les têtes lors de votre prochain goûter.', NULL, 'Difficile', '1:15:00', 'Préparation du gâteau :
    Préchauffer le four à 180°C.
    Mélanger le sucre et le beurre fondu, ajouter les œufs un par un.
    Ajouter la farine, la levure et le lait. Bien mélanger.
    Diviser la pâte en deux, colorer une partie en vert et l’autre en violet.
    Verser les pâtes colorées dans un moule en les alternant pour un effet marbré.
    Cuire pendant 25-30 minutes.
    Décoration :
    Une fois le gâteau refroidi, le recouvrir de crème au beurre colorée en vert.
    Utiliser la pâte à sucre pour créer les détails du chapeau : une bande violette, une étiquette "10/6", et quelques décorations folles et asymétriques.
    Servir ce gâteau fantaisiste pour une fête des non-anniversaires aussi colorée que dans l’univers d’Alice.
', 3, 15, NULL);

-- Insertion des ingrédients

INSERT INTO "ingredient" 
    ("id", "name", "picture")
VALUES 
    (1, 'Oignon', NULL),
    (2, 'Beurre', NULL),
    (3, 'Huile d''olive', NULL),
    (4, 'Bouillon de boeuf', NULL),
    (5, 'Vin blanc', NULL),
    (6, 'Pain', NULL),
    (7, 'Fromage râpé', NULL),
    (8, 'Herbes de Provence', NULL),
    (9, 'Sel', NULL),
    (10, 'Poivre', NULL),
    (11, 'Aubergine', NULL),
    (12, 'Courgette', NULL),
    (13, 'Poivron', NULL),
    (14, 'Tomates', NULL),
    (15, 'Ail', NULL),
    (16, 'Pâte brisée', NULL),
    (17, 'Pommes', NULL),
    (18, 'Sucre', NULL),
    (19, 'Pâte feuilletée', NULL),
    (20, 'Cannelle', NULL),
    (21, 'Farine', NULL),
    (22, 'Sucre glace', NULL),
    (23, 'Jaune d''oeuf', NULL),
    (24, 'Extrait de vanille', NULL),
    (25, 'Viande hachée', NULL),
    (26, 'Carottes', NULL),
    (27, 'Pommes de terre', NULL),
    (28, 'Champignons', NULL),
    (29, 'Bouillon de boeuf', NULL),
    (30, 'Vin rouge', NULL),
    (31, 'Pâte sablée', NULL),
    (32, 'Jus de citron', NULL),
    (33, 'Chips de tortilla', NULL),
    (34, 'Fromage cheddar râpé', NULL),
    (35, 'Fromage Monterey Jack râpé', NULL),
    (36, 'Haricots noirs', NULL),
    (37, 'Oignon rouge', NULL),
    (38, 'Poivron rouge', NULL),
    (39, 'Poivron vert', NULL),
    (40, 'Haricots rouges', NULL),
    (41, 'Maïs', NULL),
    (42, 'Poudre de chili', NULL),
    (43, 'Cumin', NULL),
    (44, 'Paprika', NULL),
    (45, 'Crème aigre et coriandre', NULL),
    (46, 'Poudre d''amandes', NULL),
    (47, 'Blanc d''oeuf', NULL),
    (48, 'Colorant alimentaire bleu', NULL),
    (49, 'Chocolat noir', NULL),
    (50, 'Filet de boeuf', NULL),
    (51, 'Steak de boeuf', NULL),
    (52, 'Echalote', NULL),
    (53, 'Cognac', NULL),
    (54, 'Crème liquide', NULL),
    (55, 'Moutarde de Dijon', NULL),
    (56, 'Parmesan', NULL),
    (57, 'Roquette', NULL),
    (58, 'Câpres', NULL),
    (59, 'Crème chantilly', NULL),
    (60, 'Cerises au marasquin', NULL),
    (61, 'Avocat', NULL),
    (62, 'Tomate', NULL),
    (63, 'Jalapeño', NULL),
    (64, 'Coriandre', NULL),
    (65, 'Lait', NULL),
    (66, 'Piment', NULL),
    (67, 'Sauce piquante', NULL),
    (68, 'Framboises fraîches', NULL),
    (69, 'Pain hamburger', NULL),
    (70, 'Laitue', NULL),
    (71, 'Sauce barbecue', NULL),
    (72, 'Mayonnaise', NULL),
    (73, 'Huile', NULL),
    (74, 'Crème chantilly', NULL),
    (75, 'Chapelure', NULL),
    (76, 'Bière noire', NULL),
    (77, 'Persil', NULL),
    (78, 'Ciboulette', NULL),
    (79, 'Épaule d''agneau', NULL),
    (80, 'Miel', NULL),
    (81, 'Levure chimique', NULL),
    (82, 'Algues wakame séchées', NULL),
    (83, 'Vinaigre de riz', NULL),
    (84, 'Sauce soja', NULL),
    (85, 'Huile de sésame', NULL),
    (86, 'Graines de sésame grillées', NULL),
    (87, 'Concombre', NULL),
    (88, 'Poulet', NULL),
    (89, 'Pâte de curry japonais', NULL),
    (90, 'Riz blanc', NULL),
    (91, 'Farine de riz gluant', NULL),
    (92, 'Eau', NULL),
    (93, 'Fécule de maïs', NULL),
    (94, 'Boules de glace', NULL),
    (95, 'Saumon', NULL),
    (96, 'Feuille de nori', NULL),
    (97, 'Nouilles ramen', NULL),
    (98, 'Bouillon de poulet', NULL),
    (99, 'Miso', NULL),
    (100, 'Porc', NULL),
    (101, 'Narutomaki', NULL),
    (102, 'Oignons verts', NULL),
    (103, 'Germes de soja', NULL),
    (104, 'Pâte de haricot rouge', NULL),
    (105, 'Farine de blé', NULL),
    (106, 'Farine d''avoine', NULL),
    (107, 'Muscade', NULL),
    (108, 'Bouillon de légumes', NULL),
    (109, 'Crème épaisse', NULL),
    (110, 'Baies sauvages', NULL),
    (111, 'Essence de rose', NULL),
    (112, 'Noix', NULL),
    (113, 'Chèvre', NULL),
    (114, 'Vinaigre balsamique', NULL),
    (115, 'Lapin', NULL),
    (116, 'Épinard', NULL),
    (117, 'Bouillon dashi', NULL),
    (118, 'Tofu', NULL),
    (119, 'Ciboulette', NULL),
    (120, 'Brocoli', NULL),
    (121, 'Vin blanc', NULL),
    (122, 'Bière blonde', NULL),
    (123, 'Bouillon de volaille', NULL),
    (124, 'Feuille de Laurier', NULL),
    (125, 'Pâte à sucre', NULL);
    (126, 'Basilic', NULL),

INSERT INTO 
    "recipe_has_ingredient" ("recipe_id", "ingredient_id", "quantity")
VALUES
    (1, 1, '4 gros oignons émincés'),
    (1, 2, '2 cuillère à soupe de beurre'),
    (1, 3, '1 cuillère à soupe d''huile d''olive'),
    (1, 29, '1 litre de bouillon de boeuf'),
    (1, 121, '1 verre de vin blanc sec'), 
    (1, 6, '4 tranches de pain baguette'),
    (1, 7, '200g de fromage gruyère râpé'),
    (1, 8, '1 bouquet garni'),
    (1, 9, 'Sel'),
    (1, 10, 'Poivre'),
    
    (2, 11, '1 aubergine'),
    (2, 12, '1 courgette'),
    (2, 38, '1 poivron rouge'),
    (2, 39, '1 poivron jaune'),
    (2, 14, '2 tomates'),
    (2, 1, '1 oignon'),
    (2, 15, '2 gousses d''ail'),
    (2, 3, '4 cuillères à soupe d''huile d''olive'),
    (2, 8, '1 cuillère à café d''herbes de Provence'),
    (2, 9, 'Sel'),
    (2, 10, 'Poivre'),

    (3, 17, '5-6 pommes de type Golden ou Granny Smith'),
    (3, 2, '100 g de beurre'),
    (3, 18, '100 g de sucre'),
    (3, 16, '1 pâte brisée ou feuilletée'),
    (3, 20, '1 cuillère à café de cannelle (optionnel)'),

    (4, 21, '200 g de farine'),
    (4, 2, '100 g de beurre, froid et coupé en morceaux'),
    (4, 18, '50 g de sucre'),
    (4, 23, '1 jaune d''oeuf'),
    (4, 24, '1 cuillère à café d''extrait de vanille'),
    (4, 9, '1 pincée de sel'),
    (4, 22, 'Sucre glace pour saupoudrer (optionnel)'),

    (5, 25, '500 g de viande de bœuf, coupée en morceaux'),
    (5, 1, '1 oignon, émincé'),
    (5, 26, '2 carottes, coupées en rondelles'),
    (5, 27, '2 pommes de terre, coupées en dés'),
    (5, 28, '200 g de champignons, tranchés'),
    (5, 15, '2 gousses d''ail, hachées'),
    (5, 29, '500 ml de bouillon de boeuf'),
    (5, 30, '200 ml de vin rouge (optionnel)'),
    (5, 3, '2 cuillères à soupe d''huile d''olive'),
    (5, 9, 'sel'),
    (5, 10,'poivre'),

    (6, 31, '1 pâte sablée (prête à l''emploi)'),
    (6, 17, '300 g de compote de pommes'),
    (6, 18, '50 g de sucre'),
    (6, 20, '1 cuillère à café de cannelle'),
    (6, 32, '1 cuillère à soupe de jus de citron'),
    (6, 23, '1 oeuf, battu (pour la dorure)'),
    (6, 22, 'Sucre glace pour saupoudrer'),
    

    (7, 33, '200 g de chips de tortilla'),
    (7, 34, '200 g de fromage cheddar râpé'),
    (7, 35, '100 g de Monterey Jack râpé'),
    (7, 36, '1 boîte de haricots noirs (400g), rincés et égouttés'),
    (7, 61, '1 avocat, coupé en dés'),
    (7, 62, '1 tomate, coupée en dés'),
    (7, 37, '1 oignon rouge, haché'),
    (7, 63, '1 jalapeño, émincé (facultatif)'),
    (7, 64, '1 cuillère à soupe de coriandre fraîche et hachée'),
    (7, 32, '2 cuillère à soupe de jus de citron'),
    (7, 9, 'Sel'),
    (7, 10, 'Poivre'),

    (8, 25, '500 g de viande hachée (bœuf)'),
    (8, 1, '1 oignon, émincé'),
    (8, 15, '2 gousses d''ail, hachées'),
    (8, 38, '1 poivron rouge, coupé en dés'),
    (8, 39, '1 poivron vert, coupé en dés'),
    (8, 14, '2 boîtes de tomates concassées (400 g chacune)'),
    (8, 40, '1 boîte de haricots rouges (400 g), rincés et égouttés'),
    (8, 41, '1 boîte de maïs (300 g), égoutté'),
    (8, 42, '2 cuillères à soupe de poudre de chili'),
    (8, 43, '1 cuillère à café de cumin moulu'),
    (8, 44, '1 cuillère à café de paprika'),
    (8, 3, '1 cuillère à soupe d''huile d''olive'),
    

    (9, 46, '125 g de poudre d''amandes'),
    (9, 22, '125 g de sucre glace'),
    (9, 47, '110 g de blancs d''oeufs (environ 4 blancs)'),
    (9, 18, '30 g de sucre en poudre'),
    (9, 48, 'Colorant alimentaire bleu (optionnel)'),
    (9, 49, '150 g de chocolat noir'),
    (9, 54, '100 ml de crème liquide'),
    (9, 2, '25 g de beurre'),

    (10, 50, '200 g de filet de bœuf, bien frais'),
    (10, 3, '2 cuillères à soupe d’''huile d''olive'),
    (10, 32, '1 cuillère à soupe de jus de citron'),
    (10, 58, '1 cuillère à soupe de câpres, égouttées'),
    (10, 56, '30 g de parmesan en copeaux'),
    (10, 57, '1 poignée de roquette'),
    (10, 126, 'Quelques feuilles de basilic frais (facultatif)'),

    (11, ),
    (11, ),
    (11, ),
    (11, ),
    (11, ),
    (11, ),
    (11, ),
    (11, ),

    (12, ),
    (12, ),
    (12, ),
    (12, ),
    (12, ),
    (12, ),
    (12, ),
    (12, ),
    (12, ),

    (13, ),
    (13, ),
    (13, ),
    (13, ),
    (13, ),
    (13, ),
    (13, ),
    (13, ),
    (13, ),
    (13, ),

    (14, ),
    (14, ),
    (14, ),
    (14, ),
    (14, ),
    (14, ),
    (14, ),
    (14, ),
    (14, ),
    (14, ),
    (14, ),
    (14, ),
    
    (15, ),
    (15, ),
    (15, ),
    (15, ),
    (15, ),
    
    (16, ),
    (16, ),
    (16, ),
    (16, ),
    (16, ),
    (16, ),
    (16, ),
    (16, ),
    (16, ),

    (17, ),
    (17, ),
    (17, ),
    (17, ),
    (17, ),
    (17, ),
    (17, ),
    (17, ),
    (17, ),

    (18, ),
    (18, ),
    (18, ),
    (18, ),
    (18, ),
    (18, ),
    (18, ),
    (18, ),
    
    (19, ),
    (19, ),
    (19, ),
    (19, ),
    (19, ),
    (19, ),
    
    (20, ),
    (20, ),
    (20, ),
    (20, ),
    (20, ),
    (20, ),
    (20, ),
    (20, ),
    (20, ),
    (20, ),

    (21, ),
    (21, ),
    (21, ),
    (21, ),
    (21, ),
    (21, ),
    (21, ),
    (21, ),
    (21, ),

    (22, ),
    (22, ),
    (22, ),
    (22, ),
    (22, ),
    (22, ),
    (22, ),
    (22, ),

    (23, ),
    (23, ),
    (23, ),
    (23, ),
    (23, ),
    (23, ),
    (23, ),
    (23, ),
    (23, ),

    (24, ),
    (24, ),
    (24, ),
    (24, ),
    (24, ),

    (25, ),
    (25, ),
    (25, ),
    (25, ),
    
    (26, ),
    (26, ),
    (26, ),
    (26, ),
    (26, ),
    (26, ),
    (26, ),
    (26, ),
    (26, ),
    (26, ),
    
    (27, ),
    (27, ),
    (27, ),
    (27, ),
    (27, ),
    (27, ),
    
    (28, ),
    (28, ),
    (28, ),
    (28, ),
    (28, ),
    (28, ),
    (28, ),
    (28, ),
    
    (29, ),
    (29, ),
    (29, ),
    (29, ),
    (29, ),
    (29, ),
    (29, ),
    
    (30, ),
    (30, ),
    (30, ),
    (30, ),
    (30, ),
    (30, ),
    (30, ),

    (31, ),
    (31, ),
    (31, ),
    (31, ),
    (31, ),

    (32, ),
    (32, ),
    (32, ),
    (32, ),
    (32, ),
    (32, ),
    (32, ),
    (32, ),

    (33, ),
    (33, ),
    (33, ),
    (33, ),
    (33, ),
    
    (34, ),
    (34, ),
    (34, ),

    (35, ),
    (35, ),
    (35, ),
    (35, ),

    (36, ),
    (36, ),
    (36, ),
    (36, ),
    (36, ),
    
    (37, ),
    (37, ),
    (37, ),
    (37, ),

    (38, ),
    (38, ),
    (38, ),
    (38, ),

    (39, ),
    (39, ),
    (39, ),
    (39, ),


    (40, ),
    (40, ),
    (40, ),
    (40, ),
    (40, ),

    (41, ),
    (41, ),
    (41, ),
    (41, ),
    (41, ),

    (42, ),
    (42, ),
    (42, ),
    (42, ),

    (43, ),
    (43, ),
    (43, ),
    (43, ),

    (44, ),
    (44, ),
    (44, ),
    (44, ),
    (44, ),

    (45, ),
    (45, ),
    (45, ),
    (45, ),
    (45, ),
    (45, ),
    (45, ),
    (45, ),
    