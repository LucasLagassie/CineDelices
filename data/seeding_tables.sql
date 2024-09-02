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
    ('Soupe à l''Oignon Gratinée', 'Une entrée classique et chaleureuse inspirée par la cuisine française.', NULL, 'Facile', '1:00:00', 'Faites fondre le beurre avec l''huile d''olive dans une grande casserole...', 1, 1, NULL),

    ('Ratatouille', 'Un plat principal provençal avec des légumes frais.', NULL, 'Moyenne', '1:00:00', 'Préchauffez le four à 180°C. Coupez les légumes en tranches fines...', 1, 1, NULL),

    ('Tarte Tatin aux Pommes', 'Un dessert classique français avec des pommes caramélisées.', NULL, 'Difficile', '1:30:00', 'Préchauffez votre four à 180°C. Pelez, épépinez et coupez les pommes...', 1, 1, NULL),

    ('Sablés de Tatooine', 'Des sablés évoquant les paysages désertiques de Tatooine.', NULL, 'Facile', '35:00', 'Préchauffez le four à 180°C. Mélangez la farine, le sucre et le sel...', 2, 2, NULL),

    ('Ragoût de Wookiee', 'Un plat copieux inspiré par Chewbacca et sa planète natale.', NULL, 'Moyenne', '1:50:00', 'Faites chauffer l'huile d\'olive dans une grande casserole. Ajoutez la viande...', 2, 2, NULL),

    ('Tarte aux Étoiles', 'Une tarte évoquant les étoiles et constellations.', NULL, 'Facile', '50:00', 'Préchauffez votre four à 180°C. Étalez la pâte sablée et foncez un moule...', 2, 2, NULL),

    ('Nachos au Fromage avec "Crystal Blue" Salsa', 'Des nachos avec une salsa inspirée des cristaux du laboratoire.', NULL, 'Facile', '20:00', 'Préchauffez le four à 180°C. Disposez les chips de tortilla sur une plaque...', 3, 3, NULL),

    ('Chili "Heisenberg" à la Mexicaine', 'Un chili épicé inspiré par Breaking Bad.', NULL, 'Moyenne', '45:00', 'Faites chauffer l\'huile d\'olive dans une grande casserole. Ajoutez l''oignon...', 3, 3, NULL),

    ('Ribs au Barbecue', 'Des ribs tendres avec une sauce barbecue épicée.', NULL, 'Difficile', '2:30:00', 'Faites mariner les ribs dans une sauce barbecue pendant la nuit...', 3, 3, NULL),

    ('Gâteau au Chocolat de Dexter', 'Un gâteau au chocolat intense, parfait pour une soirée de réflexion.', NULL, 'Difficile', '1:15:00', 'Préchauffez le four à 180°C. Faites fondre le chocolat et le beurre...', 4, 4, NULL),

    ('Brunch de Miami', 'Un brunch inspiré par l''ambiance de Miami dans la série.', NULL, 'Facile', '30:00', 'Faites griller les bagels et préparez un assortiment de fruits...', 4, 4, NULL),

    ('Salade César', 'Une salade fraîche et croquante pour accompagner vos repas.', NULL, 'Facile', '20:00', 'Mélangez les feuilles de laitue avec les croûtons et le fromage...', 4, 4, NULL),

    ('Milkshake au Vanille', 'Un milkshake classique comme celui de la scène emblématique.', NULL, 'Facile', '10:00', 'Mixez le lait, la glace à la vanille et l''extrait de vanille jusqu''à obtenir une consistance lisse...', 5, 5, NULL),

    ('Burger Royale avec Fromage', 'Un burger gourmet avec une touche de fromage.', NULL, 'Moyenne', '25:00', 'Formez des galettes de viande et faites-les cuire à la poêle...', 5, 5, NULL),

    ('Pommes de Terre Frites', 'Des frites croustillantes, parfaites pour accompagner les burgers.', NULL, 'Facile', '20:00', 'Coupez les pommes de terre en bâtonnets et faites-les frémir dans de l''huile chaude...', 5, 5, NULL);


-- Insertion des ingrédients

INSERT INTO "ingredient"
    ("name", "picture")

VALUES ('Oignon'),
    ('Beurre'),
    ('Huile d''olive'),
    ('Bouillon de oeuf'),
    ('Vin blanc'),
    ('Pain baguette'),
    ('Fromage gruyère'),
    ('Herbes de Provence'),
    ('Aubergine'),
    ('Courgette'),
    ('Poivron rouge'),
    ('Poivron jaune'),
    ('Tomates'),
    ('Ail'),
    ('Pâte brisée'),
    ('Pommes'),
    ('Sucre'),
    ('Pâte feuilletée'),
    ('Cannelle'),   
    ('Farine'),
    ('Sucre glace'),
    ('Jaune d''œuf'),
    ('Extrait de vanille'),
    ('Viande de bœuf'),
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
    ('Cerises au marasquin')
;

INSERT INTO 
    "recipe_has_ingredient" ("recipe_id", "ingredient_id")
VALUES
    (1, 2),
    (1, 3),
    (2, 4);