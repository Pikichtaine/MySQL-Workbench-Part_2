


--------------------------------Réalisation-----------------------------



-- Ajout d'un nouvel utilisateur

insert into utilisateur (nom, email, mot_de_passe) values
('LoleritoDanketito','lolerito@gmail.com', 1234);



-- Changer le titre du niveau

update niveau
set titre = 'Marshmellow'
where id= 87;



-- Supprimer une étiquette d'un niveau

DELETE FROM link_deux_tables
WHERE id_niveau = 49
AND id_tags = 11;



-- Ajout de la section « étoiles »

alter table niveau
add stars int not null default 3
check(stars between 1 and 5);



--------------------------------Prototype-----------------------------



--Afficher tous les niveaux créés par un utilisateur

select * from niveau
where id_utilisateur=1;



--Comptez le nombre de niveaux créés par chaque utilisateur

select u.nom, count(*) as total_niveau
from utilisateur u
inner join niveau n on u.id=n.id_utilisateur
group by id_utilisateur;



--Dernier niveau créé par un utilisateur

select * from niveau
where id_utilisateur=1
order by date_pub desc
limit 1;



--Utilisateur ayant publié le plus de niveaux

SELECT u.nom, COUNT(*) AS total_niveles
FROM utilisateur u
inner join niveau n on u.id=n.id_utilisateur
GROUP BY id_utilisateur
ORDER BY total_niveles DESC
LIMIT 1;



--Afficher tous les niveaux

SELECT * from niveau



--Trier les niveaux du plus populaire au moins populaire

SELECT * from niveau
order by total_played desc



--Trier les niveaux du plus récent au plus ancien

SELECT * from niveau
order by date_pub desc



--Niveaux créés ce mois-ci

SELECT * from niveau
where date_pub>='2026-01-01'
and date_pub<='2026-01-31';



--Les 10 niveaux les plus joués

SELECT * from niveau
order by total_played desc
limit 10;



--Niveaux contenant une étiquette spécifique

select n.titre, n.descripcion, n.date_pub, n.total_played, n.total_liked, n.total_dislike, c.tag
from niveau n
inner join link_deux_tables t on t.id_niveau=n.id
and id_tags=1
inner join tags c on c.id=t.id_tags



--Niveaux contenant plusieurs étiquettes

select n.titre
from niveau n
inner join link_deux_tables t on t.id_niveau=n.id
and t.id_tags in (11, 36)
group by t.id_niveau
having count(*) = 2;


--Nombre de niveaux par étiquette

select distinct c.tag, count(*) as total_niveles
from tags c
inner join link_deux_tables t on t.id_tags=c.id
group by t.id_tags
order by total_niveles desc



--Étiquettes utilisées par un niveau spécifique

select n.titre, c.tag
from niveau n
inner join link_deux_tables t on t.id_niveau=n.id
and t.id_niveau=49
inner join tags c on t.id_tags=c.id



--Afficher les commentaires d'un niveau

select contenu
from commentaire
where id_niveau=49;



--Nombre de commentaires par niveau

select n.titre , count(*) as total_commentaire
from niveau n
inner join commentaire c on c.id_niveau=n.id
group by n.titre;


