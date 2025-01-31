DROP SCHEMA IF EXISTS WeJeux CASCADE;
CREATE SCHEMA WeJeux;

CREATE TABLE WeJeux.Joueur(
                       Pseudo Varchar  (20) PRIMARY KEY ,
                       Nom    Varchar  ,
                       Prenom Varchar  ,
                       EMail  Varchar  ,
                       CB     DECIMAL
);

CREATE TABLE WeJeux.Jeu(
                    Titre      Varchar  PRIMARY KEY,
                    Descriptif Varchar
);

CREATE TABLE WeJeux.Solo(
                     Duree_PrevuH Int
    ,CONSTRAINT pk_solo PRIMARY KEY (Titre)
)INHERITS (WeJeux.Jeu);


CREATE TABLE WeJeux.Multi(
                      NB_Extension Int
    ,CONSTRAINT pk_Multi PRIMARY KEY (Titre)
)INHERITS (WeJeux.Jeu);


CREATE TABLE WeJeux.Serveur(
                        IP        Varchar  PRIMARY KEY ,
                        Nom        Varchar  ,
                        Capacite   Int  ,
                        Titre      Varchar
    ,CONSTRAINT Serveur_Multi_FK FOREIGN KEY (Titre) REFERENCES WeJeux.Multi(Titre)
);

CREATE TABLE WeJeux.Sauvegarde(
                           Titre      Varchar  ,
                           Pseudo     Varchar  ,
                           Vie        Int  ,
                           Point      Int  ,
                           Niveau     Int
    ,CONSTRAINT Sauvegarde_PK PRIMARY KEY (Titre,Pseudo)
    ,CONSTRAINT Sauvegarde_Solo_FK FOREIGN KEY (Titre) REFERENCES WeJeux.Solo(Titre)
    ,CONSTRAINT Sauvegarde_Joueur0_FK FOREIGN KEY (Pseudo) REFERENCES WeJeux.Joueur(Pseudo)
);


CREATE TABLE WeJeux.Duel(
                    IDcombat    Serial,
                     Gagnant    Varchar  ,
                     Adversaire Varchar  ,
                     IP         Varchar
    ,CONSTRAINT Duel_PK PRIMARY KEY (IDcombat)
    ,CONSTRAINT Duel_Joueur_FK FOREIGN KEY (Gagnant) REFERENCES WeJeux.Joueur(Pseudo)
    ,CONSTRAINT Duel_Joueur0_FK FOREIGN KEY (Adversaire) REFERENCES WeJeux.Joueur(Pseudo)
    ,CONSTRAINT Duel_Serveur1_FK FOREIGN KEY (IP) REFERENCES WeJeux.Serveur(IP)
);





