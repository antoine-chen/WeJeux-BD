/* cette requete retourne les serveurs qui ont une capacité de plus de 3000 et classer par ordre croissant */

SELECT Nom, Capacite
FROM WeJeux.Serveur
WHERE Capacite > 3000
ORDER BY (Serveur.Capacite) DESC ;

/* cette requete retourne les pseudos des joueurs qui ont deja joué à un jeu multi ou solo */
SELECT Pseudo
FROM WeJeux.Joueur INNER JOIN WeJeux.Sauvegarde using(Pseudo) INNER JOIN WeJeux.Solo using(Titre)
UNION
SELECT Pseudo
FROM WeJeux.Joueur INNER JOIN WeJeux.Duel on pseudo = Gagnant
UNION
SELECT Pseudo
FROM WeJeux.Joueur INNER JOIN  WeJeux.Duel on pseudo = Adversaire;

/* cette requete retourne les pseudos des joueurs qui ont un niveau superieur ou egal à 5 en solo */

SELECT Titre, Pseudo
FROM WeJeux.Joueur NATURAL JOIN WeJeux.Sauvegarde INNER JOIN WeJeux.Solo using(Titre)
GROUP BY Titre, Pseudo
HAVING Niveau >=30;

/* cette requete retourne toutes les personnes qui ont 100% de wr sur mlbb (qui n'ont jamais perdu un match sur mlbb) */

SELECT DISTINCT Pseudo
FROM WeJeux.Joueur INNER JOIN WeJeux.Duel on Pseudo = Gagnant INNER JOIN WeJeux.Serveur using(IP)
WHERE Titre = 'MLBB'
EXCEPT
SELECT DISTINCT Pseudo
FROM WeJeux.Joueur INNER JOIN WeJeux.Duel on Pseudo = Adversaire INNER JOIN WeJeux.Serveur using(IP)
WHERE Titre = 'MLBB';

/* afficher le nom des jeux multi dont le nombre de serveur est supérieur à 2*/
SELECT Titre
FROM WeJeux.Serveur
GROUP BY Titre
HAVING count(*)> 2;


/* cette requete retourne le nombre de game des joueur de lol du plus grand au plus petit , mais cela n'a pas fonctionné on doit compter le nombre de game gagner et perdu

SELECT Pseudo, COUNT(IDcombat)
FROM WeJeux.Joueur INNER JOIN WeJeux.Duel on Pseudo = Gagnant INNER JOIN WeJeux.Serveur using(IP) INNER JOIN WeJeux.Multi using(Titre)
WHERE Titre = 'LOL' AND Gagnant=Joueur.Pseudo OR Adversaire=Joueur.Pseudo
GROUP BY Pseudo
UNION
SELECT Pseudo, COUNT(IDcombat)
FROM WeJeux.Joueur INNER JOIN WeJeux.Duel on Pseudo = Adversaire INNER JOIN WeJeux.Serveur using(IP) INNER JOIN WeJeux.Multi using(Titre)
WHERE Titre = 'LOL'
GROUP BY Pseudo
ORDER BY DESC;

SELECT Gagnant, Adversaire, count(*)
FROM WeJeux.Serveur NATURAL JOIN WeJeux.Duel
WHERE Titre='LOL'
GROUP BY Gagnant, Adversaire ;
*/