-- utiliser la base de données mi_blog

use mi_blog;



-- sélectionner tous les articles publiés après le 22 juillet 2022

select * from article
where date_pub >='2022-07-22'



-- trier les résultats par date de publication décroissante

order by date_pub desc



-- limiter les résultats à 200 articles

limit 200;


