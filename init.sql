


CREATE TABLE IF NOT EXISTS `user` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `datecreation` DATETIME NOT NULL,
    `email` VARCHAR(255) NOT NULL UNIQUE,
    `mdp` VARCHAR(255) NOT NULL,
    `nom` VARCHAR(255) NOT NULL,
    `prenom` VARCHAR(255) NOT NULL,
    `statut` VARCHAR(50) NOT NULL,
    `role_id` INT NOT NULL,
    PRIMARY KEY (`id`)
);

INSERT INTO `user` (`id`, `datecreation`, `email`, `mdp`, `nom`, `prenom`, `statut`, `role_id`) VALUES
(1, NOW(), 'admin@gmail.com', '$2a$10$zNT0H0YqKHMq7agPPvaeQ.iMcGqhTchqOp5pRZPl3WrHkYeHW5RQa', 'Admin', 'Admin', 'Active', 1);

COMMIT;

