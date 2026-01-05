-- utilisation de la base de données mi_blog

use mi_blog;



-- début de la transaction

start transaction;

insert into article(titre, contenu, date_pub, id_utilisateur)
values ('Les merveilles de la nature', 'Découverte des plus beaux paysages à travers le monde.', '2025-01-06', 2);

delete from commentaire where id=3;



-- validation de la transaction

commit;


