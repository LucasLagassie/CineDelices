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
    ('johndoe@example.com', 'JohnDoe', 'hashed_password1', 'avatar1.png')
;

-- Insertion des films

INSERT INTO "movie_and_serie"
    ("name", "synopsis", "director", "actor", "release_date", "picture")
VALUES
    ('Ratatouille', 'Un film qui célèbre la cuisine française avec des plats raffinés et des ingrédients simples.', 'Brad Bird', 'Patton Oswalt', '2007-06-29', 'ratatouille.jpg');('Star Wars', 'Une saga épique de science-fiction qui se déroule dans une galaxie lointaine.', 'George Lucas', 'Mark Hamill', '1977-05-25', NULL),
    ('Breaking Bad', 'Une série qui suit un professeur de chimie devenu fabricant de méthamphétamine.', 'Vince Gilligan', 'Bryan Cranston', '2008-01-20', NULL),
    ('Dexter', 'Une série sur un expert en analyses de sang le jour et un tueur en série la nuit.', 'James Manos Jr.', 'Michael C. Hall', '2006-10-01', NULL),
    ('Pulp Fiction', 'Un film à la narration non linéaire qui entrecroise plusieurs histoires criminelles.', 'Quentin Tarantino', 'John Travolta', '1994-10-14', NULL)
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
    ('Soupe à l''Oignon Gratinée',
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

    ('Ratatouille',
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
    1,
    1,
    NULL),

    ('Tarte Tatin aux Pommes',
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
    1,
    1,
    NULL),

    ('Sablés de Tatooine',
    'Des sablés évoquant les paysages désertiques de Tatooine.',
    NULL, 'Facile',
    '35:00',
    'Préchauffez votre four à 180°C.
    Dans un bol, mélangez la farine, le sucre et le sel. Ajoutez le beurre et travaillez le mélange du bout des doigts jusqu''à obtenir une texture granuleuse.
    Incorporez le jaune d''oeuf et l''extrait de vanille. Mélangez jusqu''à former une pâte homogène.
    Étalez la pâte sur une surface farinée et découpez-la en formes désirées à l''aide d''emporte-pièces.
    Disposez les sablés sur une plaque de cuisson recouverte de papier sulfurisé et faites cuire pendant 12-15 minutes, ou jusqu''à ce qu''ils soient légèrement dorés.
    Laissez refroidir avant de saupoudrer de sucre glace, si désiré.',
    2,
    2,
    NULL),

    ('Ragoût de Wookiee',
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

    ('Tarte aux Étoiles',
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
    2,
    2,
    NULL),

    ('Nachos au Fromage avec "Crystal Blue" Salsa',
    'Des nachos avec une salsa inspirée des cristaux du laboratoire.',
    NULL,
    'Facile',
    '20:00',
    'Préchauffez le four à 180°C.
    Disposez les chips de tortilla sur une plaque de cuisson. Parsemez de fromage cheddar et Monterey Jack.
    Faites chauffer au four jusqu''à ce que le fromage soit fondu et légèrement doré (environ 10 minutes).
    Pendant ce temps, préparez la salsa en mélangeant l''avocat, la tomate, l''oignon, le jalapeño (si utilisé), la coriandre, le jus de citron, le sel et le poivre.
    Sortez les nachos du four et garnissez-les de la salsa fraîche avant de servir.',
    3,
    3,
    NULL),

    ('Chili "Heisenberg" à la Mexicaine',
    'Un chili épicé inspiré par Breaking Bad.',
    NULL,
    'Moyenne',
    '45:00',
    'Faites chauffer l''huile d''olive dans une grande casserole à feu moyen. Ajoutez l''oignon et l''ail, et faites revenir jusqu''à ce qu''ils soient tendres.
    Ajoutez la viande hachée et faites cuire jusqu''à ce qu''elle soit bien dorée.
    Ajoutez les poivrons, les tomates concassées, les haricots rouges, le maïs, la poudre de chili, le cumin, le paprika, le sel et le poivre. Mélangez bien.
    Réduisez le feu et laissez mijoter pendant environ 30 minutes, en remuant de temps en temps.
    Servez chaud avec une cuillerée de crème aigre et de la coriandre fraîche.',
    3,
    3,
    NULL),

    ('Royale with Cheese',
    'Inspiré par la fameuse scène du "Royale with Cheese" où Vincent Vega et Jules Winnfield discutent des différences entre les hamburgers en France et aux États-Unis. Préparez une version élégante et gourmet du célèbre burger pour commencer le repas.',
    NULL,
    'Moyenne',
    '30:00',
    'Formez des galettes de viande hachée, assaisonnez avec du sel et du poivre.
    Faites chauffer l’huile dans une poêle à feu moyen-vif et faites cuire les galettes environ 3-4 minutes de chaque côté, ou jusqu'à ce qu'elles soient cuites à votre goût.
    Pendant la cuisson des galettes, faites griller les pains à hamburger.
    Assemblez les burgers : tartinez les pains de mayonnaise et de sauce barbecue, ajoutez une galette de viande, une tranche de fromage cheddar, des tranches d''oignon, de tomate et des feuilles de laitue.
    Servez immédiatement avec des frites ou une salade.',
    3,
    3,
    NULL),

    ('Carpaccio de Bœuf à la Dexter',
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
    4,
    4,
    NULL),

    ('Plat : Steak au Poivre avec Sauce au Cognac',
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
    4,
    4,
    NULL),

    ('Milkshake à la Vanille',
    'Inspiré par la scène où Vincent et Mia dégustent des milkshakes dans le restaurant. Un dessert classique et crémeux pour conclure le repas avec une touche rétro.',
    NULL,
    'Facile',
    '10:00',
    'Dans un mixeur, combinez la glace à la vanille, le lait et l''extrait de vanille. Mixez jusqu’à obtenir une consistance lisse et crémeuse.
    Versez le milkshake dans des grands verres.
    Garnissez avec de la crème chantilly et une cerise au marasquin si désiré.
    Servez immédiatement avec une paille.',
    4,
    4,
    NULL),

    (' Boulettes de Dragon de Feu',
    'Ces boulettes de viande épicées sont inspirées du Tournoi des Trois Sorciers, avec un clin d''oeil aux dragons cracheurs de feu.',
    NULL,
    'Moyenne',
    '45:00',
    'Préparer les boulettes : Mélanger la viande hachée, l''oeuf, l''oignon, l''ail, la chapelure, le piment, la sauce piquante, le sel et le poivre.
    Former des boulettes : Former des boulettes de la taille d''une noix.
    Cuire les boulettes : Faire chauffer l''huile dans une poêle et faire frire les boulettes jusqu''à ce qu''elles soient bien dorées et cuites à coeur.
    Servir : Servir chaud avec une sauce dip épicée.',
    5,
    5,
    NULL),

    ('Tarte au Citron de Luna Lovegood',
    'Inspirée par la personnalité unique de Luna, cette tarte au citron est acidulée, sucrée, et un peu excentrique avec sa meringue colorée',
    NULL,
    'Moyenne',
    '2:00:00',
    'Cuire la pâte : Étaler la pâte dans un moule à tarte et cuire à blanc à 180°C pendant 20 minutes.
    Préparer la crème citron : Mélanger le jus et le zeste de citron, le sucre, les œufs, et le beurre dans une casserole. Faire épaissir à feu doux.
    Préparer la meringue : Battre les blancs d''oeufs en neige avec le sucre glace. Ajouter quelques gouttes de colorant.
    Assembler et cuire : Verser la crème citron sur la pâte précuite, étaler la meringue colorée par-dessus, et cuire au four à 150°C pendant 15 minutes. Laisser refroidir avant de servir.',
    5,
    5,
    NULL),

    (' Oeufs de Dragon',
    'Une entrée savoureuse de petits œufs en pâte feuilletée, farcis de fromage et d''herbes, rappelant les célèbres oeufs de dragon de Daenerys.',
    NULL,
    'Facile',
    '1:00:00',
    'Préparer la farce : Mélanger le fromage, le persil, la ciboulette, le sel et le poivre.
    Former les œufs : Découper la pâte feuilletée en cercles, ajouter une cuillère de farce au centre et refermer en formant une forme d''oeuf.
    Badigeonner et cuire : Badigeonner avec l''oeuf battu et cuire au four à 180°C pendant 25-30 minutes jusqu''à ce qu''ils soient dorés.
    Servir : Servir chaud en entrée avec une sauce légère.',
    5,
    5,
    NULL);


-- Insertion des ingrédients

INSERT INTO "ingredient"
    ("name", "picture")

VALUES 
    ('Oignon'),
    ('Beurre'),
    ('Huile d''olive'),
    ('Bouillon de boeuf'),
    ('Vin blanc'),
    ('Pain'),
    ('Fromage râpé'),
    ('Herbes de Provence'),
    ('Aubergine'),
    ('Courgette'),
    ('Poivron'),
    ('Tomates'),
    ('Ail'),
    ('Pâte brisée'),
    ('Pommes'),
    ('Sucre'),
    ('Pâte feuilletée'),
    ('Cannelle'),
    ('Farine'),
    ('Sucre glace'),
    ('Jaune d''oeuf'),
    ('Extrait de vanille'),
    ('Viande hachée'),
    ('Carottes'),
    ('Pommes de terre'),
    ('Champignons'),
    ('Cognac'),
    ('Crème liquide'),
    ('Moutarde de Dijon'),
    ('Parmesan'),
    ('Roquette'),
    ('Câpres'),
    ('Crème chantilly'),
    ('Cerises au marasquin'),
    ('Avocat'),
    ('Tomate'),
    ('Jalapeño'),
    ('Coriandre'),
    ('Lait'),
    ('Piment'),
    ('Sauce piquante'),
    ('Pâte sablée'),
    ('Jus de citron'),
    ('Blancs d''oeufs'),
    ('Colorant alimentaire');

;

INSERT INTO 
    "recipe_has_ingredient" ("recipe_id", "ingredient_id,quantity")
VALUES
    (1, 2),
    (1, 3),
    (2, 4);