INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_ammu','ammu',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_ammu','ammu',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_ammu', 'ammu', 1)
;

INSERT INTO `jobs` (`name`, `label`) VALUES
('ammu', "Ammunation")
;

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('ammu', 0, 'novice', 'Apprenti', 200, 'null', 'null'),
('ammu', 1, 'expert', 'Vendeur', 400, 'null', 'null'),
('ammu', 2, 'chef', "Expert", 600, 'null', 'null'),
('ammu', 3, 'boss', 'Patron', 1000, 'null', 'null')
;

CREATE TABLE `tikoz_ammuhistoriqueachat` (
  `id` int(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `prix` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE `tikoz_ammuhistoriqueachat`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tikoz_ammuhistoriqueachat`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;