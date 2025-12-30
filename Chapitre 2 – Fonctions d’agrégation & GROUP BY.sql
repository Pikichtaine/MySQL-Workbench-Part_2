
-- Utilisation de la base de données mi_blog

use mi_blog;



-- Insertion de données dans les tables utilisateur

insert into utilisateur (nom, email, mot_de_passe) values 
('Alice Dupont', 'alice.dupont@example.com', 'motdepasse1'),
('Bob Martin', 'bob.martin@example.com', 'motdepasse2'),
('Charlie Bernard', 'charlie.bernard@example.com', 'motdepasse3'),
('Diane Moreau', 'diane.moreau@example.com', 'motdepasse4'),
('Éric Petit', 'eric.petit@example.com', 'motdepasse5'),
('Françoise Leroy', 'francoise.leroy@example.com', 'motdepasse6'),
('Gilles Dubois', 'gilles.dubois@example.com', 'motdepasse7'),
('Hélène Robert', 'helene.robert@example.com', 'motdepasse8'),
('Isabelle Fournier', 'isabelle.fournier@example.com', 'motdepasse9'),
('Jacques Lambert', 'jacques.lambert@example.com', 'motdepasse10');



-- Insertion de données dans les tables article

insert into article (titre, contenu, date_pub, id_utilisateur) values 
('Premier article', 'Ceci est le contenu du premier article.', '2025-12-01', 1),
('Actualités du jour', 'Voici les nouvelles les plus importantes du jour.', '2025-12-02', 2),
('Tutoriel SQL', 'Apprenez à utiliser SQL avec ce tutoriel simple.', '2025-12-03', 1),
('Voyage à la montagne', 'Récit de mon aventure dans les montagnes.', '2025-12-04', 3),
('Recette de cuisine', 'Comment préparer un délicieux lasagne étape par étape.', '2025-12-05', 2),
('Critique de livre', 'Avis sur le livre "Le Petit Prince".', '2025-12-06', 1),
('Conseils d''étude', '5 astuces pour mieux étudier et plus rapidement.', '2025-12-07', 3),
('Musique préférée', 'Liste des chansons que j''adore en 2025.', '2025-12-08', 2),
('Technologie actuelle', 'Dernières nouveautés en technologie et gadgets.', '2025-12-09', 1),
('Films recommandés', 'Les meilleurs films à voir ce mois-ci.', '2025-12-10', 3);



-- Nombre total d’articles et date de publication la plus récente

select 
count(*) as total_articles,
max(date_pub) as le_plus_récent
from article;



-- Nombre d’articles par utilisateur

select id_utilisateur, count(*) as total_des_articles
from article
group by id_utilisateur;


