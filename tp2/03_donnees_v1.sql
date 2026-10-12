-- =====================================================================
-- TP2 - De l'ERD à la base PostgreSQL avec pgAdmin 4
-- Fichier : 03_donnees_v1.sql  (version 1)
-- Jeu de données de la bibliothèque (partie 4)
-- Prérequis : avoir exécuté 02_ddl_enrichi.sql
-- =====================================================================

INSERT INTO livre (isbn, titre, editeur, annee) VALUES
    ('9782212112818', 'Bases de Données', 'Eyrolles', 1989),
    ('9782225805158', 'Le Langage C',     'Masson',   1985),
    ('9782207257357', 'Fondation',        'Denoël',   2006);

INSERT INTO auteur (id, nom, prenom) VALUES
    (1, 'Gardarin',  'Georges'),
    (2, 'Kernighan', 'Brian'),
    (3, 'Ritchie',   'Dennis'),
    (4, 'Asimov',    'Isaac');

INSERT INTO ecrit (isbn, auteur_id) VALUES
    ('9782212112818', 1),
    ('9782225805158', 2),
    ('9782225805158', 3),
    ('9782207257357', 4);

INSERT INTO abonne (id, nom, prenom, adresse, date_abonnement) VALUES
    (1, 'Dupont',  'Philippe', '12 rue des Lilas',     '2008-06-18'),
    (2, 'Durand',  'Arthur',   '5 avenue de la Gare',  '2009-01-02'),
    (3, 'Dupont',  'Charlie',  '8 place de la Mairie', '2015-05-03'),
    (4, 'Ducros',  'Marie',    NULL,                   '2020-07-04'),
    (5, 'Vernier', 'Alain',    '21 boulevard du Port', '2021-09-15');

INSERT INTO emprunt (id, isbn, abonne_id, date_emprunt, date_retour) VALUES
    (1, '9782225805158', 2, '2021-09-06', '2021-09-20'),
    (2, '9782225805158', 3, '2021-09-25', '2021-10-11'),
    (3, '9782212112818', 1, '2021-10-28', '2021-11-10'),
    (4, '9782212112818', 1, '2021-11-08', NULL);
