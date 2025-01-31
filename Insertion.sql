INSERT INTO WeJeux.Joueur (Pseudo,Nom,Prenom,EMail,CB) VALUES
    ('FlareKuro','Cai','Luc','lcai@iut.univ-paris8.com','4163099815407851'),
    ('Axel','Nguimgo Nguetsa','Parchemal','pnguimgonguetsa@iut.univ-paris8.com','3891850631920190'),
    ('Antoine','Chen','Antoine','achen@iut.univ-paris8.com','4230032303900845'),
    ('Soussa','Atchane','Safa','satchane@iut.univ-paris8.com','5939275587368756'),
    ('Miamcookie','Chen','Mick','mchen@iut.univ-paris8.com','9764712529869022'),
    ('Daichiden','Zapois','Denis','dzapois@iut.univ-paris8.com','2095934954936738'),
    ('Illumination','Guerreiro-Marques','Fabio','fguerreiromarques@iut.univ-paris8.com','9158184469592104'),
    ('Mangado','Mangado','Diego','dmangado@iut.univ-paris8.com','1983417907592798'),
    ('aymc','Claudio','Aymeric','aclaudio@iut.univ-paris8.com','1918213394099220'),
    ('Kuan','Xiong','Justin','Justin@gmail.com','3683829966356081'),
    ('vubiowo','Xiong','Kexin','kxiong@gmail.com','6774194816426012'),
    ('Kovee','Barra','Akram','abarra@iut.univ-paris8.com','7122443927750122'),
    ('Vinc','Hu','Vincent','vhu@iut.univ-paris8.com','4087320998667549'),
    ('kirito5066','Ung','Christian','cung@iut.univ-paris8.com','4515038621289508'),
    ('Deatsnake','Ngomarié','Thaï-Nam','tngomarie@iut.univ-paris8.com','3495746530579027'),
    ('Cooking','Ausousseau','Teddy','tausousseau@iut.univ-paris8.com','3769934524036658'),
    ('Fab.16','Poirier','Fabien','fpoirier@iut.univ-paris8.com','4672359066222232'),
    ('MC','Cataldi','Mario','mcataldi@iut.univ-paris8.com','3082512782201685'),
    ('MH','Homps','Marc','mhomps@iut.univ-paris8.com','1663498362973893'),
    ('exinferno','Han','Vistor','vhan@iut.univ-paris8.com','3485384814906981'),
    ('Vec','Clement-Comparot','Veronique','vclementcomparot@iut.univ-paris8.com','9298132825229484'),
    ('Melomance','Bastille','Antoine','antoinepur@gmail.com','1630337068292394');

INSERT INTO WeJeux.Multi(Titre, Descriptif, NB_Extension) VALUES
    ('Marvel Rivals','FPS à la 3ème personne en équipe de 5 sur le thème de Marvel','2'),
    ('Wakfu','MMORPG aventure et histoire dans les terres de Dofus','13'),
    ('LOL','Combat en équipe de 5 dans une arène mêlant action et stratégie','23'),
    ('Valorant','Tir à la 3ème personne en équipe de 5 joueurs rapides et précis',' 14'),
    ('MLBB','Combat en équipe de 5 dans une arène mêlant action et stratégie','24');

INSERT INTO WeJeux.Solo(Titre, Descriptif, Duree_PrevuH) VALUES
    ('Genshin Impact','Jeu aventure époustouflant avec ses paysages magnifiques','400'),
    ('Honkai Star Rail','Jeu tour par tour axé histoire et stratégie','300'),
    ('The Witcher 3','Action RPG avec une écriture incroyable et des personnages hauts en couleur','150'),
    ('Subdway Surfer',' aller le plus loin possible sur un parcours dobstacles'),
    ('Red Dead Redemption','Suivez un ancien criminel reconverti chassant ses anciens compères ','75');


INSERT INTO WeJeux.Serveur(IP, Nom, Capacite,Titre) VALUES
    ('41.204.117.181','Metropolis','3000','Marvel Rivals'),
    ('169.144.37.74','Land of Dawn','5000','MLBB'),
    ('150.1.27.232','Rift','7500','LOL'),
    ('91.72.68.91','Bat-City','500','Marvel Rivals'),
    ('3.21.147.252','Shurima','100000','LOL'),
    ('7.90.105.160','Ionia','45000','LOL'),
    ('158.102.175.100','Zaun','94652','LOL'),
    ('198.233.184.113','Europe','80000','MLBB'),
    ('139.243.39.178','Amerique','1205','MLBB'),
    ('152.99.140.148','Paris','10000','Valorant');

INSERT INTO WeJeux.Sauvegarde(Titre, Pseudo, Vie, Point, Niveau) VALUES
    ('The Witcher 3','Antoine','280','14000','13'),
    ('Genshin Impact','Antoine','280','14000','13'),
    ('Red Dead Redemption','Antoine','0','14000','13'),
    ('Red Dead Redemption','Illumination','2','80000','62'),
    ('Genshin Impact','Axel','13','70000000','60'),
    ('Honkai Star Rail','FlareKuro','7500','7124','70'),
    ('Honkai Star Rail','Kuan','652','20156','70'),
    ('Honkai Star Rail','vubiowo','8000','48623','70'),
    ('Honkai Star Rail','Miamcookie','300','516','40'),
    ('Honkai Star Rail','Soussa','450','4888','50'),
    ('Genshin Impact','FlareKuro','1','60000','56');

INSERT INTO WeJeux.Duel(Gagnant, Adversaire, IP) VALUES
    ('Axel','Antoine','169.144.37.74'),
    ('Soussa','Daichiden','152.99.140.148'),
    ('Mangado','FlareKuro','41.204.117.181'),
    ('Antoine','aymc','3.21.147.252'),
    ('Illumination','vubiowo','91.72.68.91'),
    ('Kuan','Antoine','3.21.147.252'),
    ('Axel','Antoine','139.243.39.178'),
    ('FlareKuro','Soussa','198.233.184.113'),
    ('Illumination','aymc','41.204.117.181'),
    ('vubiowo','Mangado','169.144.37.74'),
    ('Miamcookie','Axel','152.99.140.148'),
    ('Soussa','Kuan','139.243.39.178'),
    ('Axel','vubiowo','91.72.68.91'),
    ('Axel','FlareKuro','139.243.39.178'),
    ('vubiowo','Daichiden','198.233.184.113'),
    ('Daichiden','FlareKuro','41.204.117.181');

