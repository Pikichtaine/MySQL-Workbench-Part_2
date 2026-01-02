-- utilisation de la base de données mi_blog

use mi_blog;



-- Afficher uniquement les articles dont le titre ne dépasse pas 15 caractères.

select u.nom, a.titre
from utilisateur u
inner join article a on a.id_utilisateur=u.id
where length(a.titre)<=15;



-- Afficher tous les utilisateurs, même s'ils n'ont aucun article

select u.nom, a.titre
from utilisateur u
left join article a on a.id_utilisateur=u.id;



-- Afficher tout, même s'il n'y a pas de commentaires

select u.nom, a.titre, c.contenu
from utilisateur u
inner join article a on a.id_utilisateur=u.id
left join commentaire c on c.id_article=a.id;