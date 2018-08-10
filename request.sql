ADD ADRESSE : 
INSERT INTO `Adresses` (`idAdresses`, `number`, `street`, `zipcode`, `city`, `country`) VALUES (NULL, '23', 'rue marechal leclerc', '97400', 'saint-denis', 'france'), (NULL, '1', 'boulevard saint-françois', '07422', 'saint-marie', 'France');
ADD CUSTOMER : 
INSERT INTO `Customers` (`idCustomers`, `phone number`, `firstname`, `lastname`) VALUES (NULL, '032932019', 'Pascal', 'Ledoux'), (NULL, '099432402', 'Marc', 'Dalton');
LINK ADRESSSE TO CUSTOMER :
INSERT INTO `Customers_has_Adresses` (`Customers_idCustomers`, `Adresses_idAdresses`) VALUES ('1', '2'), ('2', '1');
ADD MODEL :
INSERT INTO `Model` (`idModel`, `name`) VALUES (NULL, 'Ford'), (NULL, 'Mercedes'), (NULL, 'Wolf');
ADD SALESPERSON : 
INSERT INTO `Salesperson` (`idSalesperson`, `phone number`, `firstname`, `lastname`, `status`, `salary`) VALUES (NULL, '093213943', 'Dominique', 'Valgein', 'Vendeur', '1500'), (NULL, '04943240', 'Bernard', 'Minet', 'Chef de vente', '2300');
LINK ADRESSE TO SALESPERSON : 
INSERT INTO `Salesperson_has_Adresses` (`Salesperson_idSalesperson`, `Adresses_idAdresses`) VALUES ('2', '1'), ('1', '2');
ADD STATE OF VEHICLES : 
INSERT INTO `state of vehicles` (`idstate of vehicles`, `state`) VALUES (NULL, 'Neuf'), (NULL, 'Occasion');
ADD TAXE : 
INSERT INTO `Taxes` (`idTaxes`, `amount taxe`) VALUES (NULL, '15'), (NULL, '7');
ADD OPTION :
INSERT INTO `Options` (`idOptions`, `name`, `cost`) VALUES (NULL, 'Phare anti-brouillard', '142'), (NULL, 'Post radio 3000', '350');
ADD OPTION EQUIPEMENT : 
INSERT INTO `Optionnal equipement` (`idOptionnal equipement`, `name`, `brand`, `cost`) VALUES (NULL, 'Micron-onde', 'Moulinex', '90'), (NULL, 'Ventilateur', 'Saturne', '190');
ADD VEHICLES : 
INSERT INTO `Vehicles` (`idVehicles`, `name`, `year`, `cost`, `Model_idModel`, `Options_idOptions`, `state of vehicles_idstate of vehicles`) VALUES (NULL, 'Campir-car 2000', '2011', '189 000', '2', '1', '1'), (NULL, 'The glob-troteur', '2002', '98 900', '1', '2', '2');
ADD RECOVRY VEHICLES : 
INSERT INTO `Recovery vehicle` (`idRecovery vehicle`, `name`, `year`, `cost`, `Model_idModel`, `Options_idOptions`) VALUES (NULL, 'The monster', '1989', '10 000', '3', '1'), (NULL, 'none', '0', '0', '1', '1');
ADD VEHICLES TO WAREHOUSE : 
INSERT INTO `warehouse` (`idtable1`, `Recovery vehicle_idRecovery vehicle`, `Vehicles_idVehicles`) VALUES (NULL, '1', '1'), (NULL, '2', '2');
ADD INVOICE : 
INSERT INTO `Invoices` (`idInvoices`, `date`, `Total amount`, `Salesperson_idSalesperson`, `Customers_idCustomers`, `Recovery vehicle_idRecovery vehicle`, `Taxes_idTaxes`, `Vehicles_idVehicles`) VALUES (NULL, '2018-08-09', '190330', '2', '1', '2', '1', '2');
ADD OPTIONNAL EQUIPEMENT TO VEHICLES : 
INSERT INTO `Optionnal equipement_has_Invoices` (`Optionnal equipement_idOptionnal equipement`, `Invoices_idInvoices`) VALUES ('1', '1'), ('2', '1');