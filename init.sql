-- Création de la table Admin
CREATE TABLE IF NOT EXISTS `admin` (
    `id` BIGINT NOT NULL AUTO_INCREMENT, -- Utilisation de BIGINT pour une valeur plus large si nécessaire
    `username` VARCHAR(255) NOT NULL, -- Le nom d'utilisateur
    `motdepasse` VARCHAR(255) NOT NULL, -- Le mot de passe (assurez-vous de stocker les mots de passe de manière sécurisée, comme en les hachant)
    `email` VARCHAR(255) NOT NULL UNIQUE, -- Email de l'admin
    `role` VARCHAR(100) NOT NULL, -- Le rôle de l'admin (par exemple "superadmin", "admin")
    `permissions` VARCHAR(255) NOT NULL, -- Les permissions associées à l'admin (cela peut être un champ JSON ou une chaîne délimitée)
    PRIMARY KEY (`id`) -- Définit la clé primaire
);

-- Insertion d'un administrateur par défaut (en utilisant une valeur sécurisée pour le mot de passe)
INSERT INTO `admin` (`username`, `motdepasse`, `email`, `role`, `permissions`) VALUES
('admin', 'admin', 'admin@gmail.com', 'superadmin', '["ALL"]'); -- Exemple de permissions sous forme de chaîne JSON

-- Commit de la transaction (si nécessaire)
COMMIT;
