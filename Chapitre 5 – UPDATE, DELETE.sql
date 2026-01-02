-- utilisation de la base de données mi_blog

use mi_blog;



-- modifier mon e-mail et mon mot de passe

update utilisateur
set email='createwithziko@gmail.com', mot_de_passe='Lolito2.0'
where id=1;



-- supprimer tous mes articles

delete from article
where id_utilisateur=1;



-- vérifier les modifications

select * from utilisateur;
select * from article;


