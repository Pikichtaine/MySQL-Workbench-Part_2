-- utiliser la base de données mi_blog

use mi_blog;



-- Insérer des utilisateurs et des articles

insert into utilisateur (id, nom, email, mot_de_passe)
values
	(NULL, 'Élodie', 'elodie@test.com', 'passelodie'),
	(NULL, 'François', 'francois@test.com', 'passfrancois'),
	(NULL, 'Camille', 'camille@test.com', 'passcamille');

insert into article (id, titre, contenu, date_pub, id_utilisateur)
values
	(NULL, 'Découverte de SQL', 'Un article pour apprendre les bases de SQL.', '2026-01-02', 1),
	(NULL, 'Les joies de la programmation', 'Pourquoi coder peut être amusant et créatif.', '2026-01-02', 2),
	(NULL, 'Voyage en France', 'Récit d''un voyage à Paris et Lyon.', '2026-01-02', 3);



-- Vérifier les insertions

select * from utilisateur;
select * from article;


