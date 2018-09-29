INSERT INTO app_role (id, role_name, description) VALUES (1, 'STANDARD_USER', 'Standard User - Has no admin rights');
INSERT INTO app_role (id, role_name, description) VALUES (2, 'ADMIN_USER', 'Admin User - Has permission to perform admin tasks');
INSERT INTO app_role (id, role_name, description) VALUES (3, 'HOS_PERSNL', 'Hospital User - Has permission to perform hospital tasks');
INSERT INTO app_role (id, role_name, description) VALUES (4, 'TPA_PERSNL', 'TPA User - Has permission to perform TPA tasks');
INSERT INTO app_role (id, role_name, description) VALUES (5, 'INSURE_PERSNL', 'Insurer User - Has permission to have read only view similar to TPA');
INSERT INTO app_role (id, role_name, description) VALUES (6, 'BANK_PERSNL', 'Bank User - Has permission to perform Banks tasks');

-- USER
-- non-encrypted password : tcpass
INSERT INTO app_user (id, name, emailId, password , mobileNumber) 
	VALUES (1, 'TrueClaim User', 'tcuser@trueclaim.net', '$2a$10$/QX55DGOfRuHpQywWleo3OaJR4j7bj6hq6M7FzXaOKmTB1.3cetDu', '2134567890' );
-- non-encrypted password :adminpass
INSERT INTO app_user (id, name, emailId, password, mobileNumber)  
	VALUES (2, 'Admin', 'tcadmin@trueclaim.net', '$2a$10$2/L7vc2gLeMqoGwo.H189uzjzan0eYzLfDulsztHiNM3MnzwyFiI6','1234567890');
-- non-encrypted password :hospitaladmin
INSERT INTO app_user (id, name, emailId, password, mobileNumber) -- non-encrypted password :
 	VALUES (3, 'Hospital Personnel', 'hospital@trueclaim.net', '$2a$10$SsNqdU5lcW6YsfvKu48RBu5OE/8tONjTbLyldeSCqwuRcG4.9X4Ja','987654321');
-- non-encrypted password :tpaadmin
INSERT INTO app_user (id, name, emailId, password, mobileNumber)
	VALUES (4, 'TPA Personnel', 'tpa@trueclaim.net', '$2a$10$bTSL3nRBT.rYkDIZmcwje.1JIIPsEz2KFSdWABnoiLdQGzVuZ2joy','987654321');
-- non-encrypted password :insureradmin
INSERT INTO app_user (id, name, emailId, password, mobileNumber)
 	VALUES (5, 'Insurer Personnel', 'insurer@trueclaim.net', '$2a$10$WuA6MELezOa9aWOhtUq4JuQ4QppQ.tijoQMv4T5aoT7VM6ZQvPdny','987654321');
-- non-encrypted password :bankadmin
INSERT INTO app_user (id, name, emailId, password, mobileNumber)
 	VALUES (6, 'Bank Personnel', 'bank@trueclaim.net', '$2a$10$jx5ZCkjNlq4GUwpKxglRgeWlkTcS76Dg.i/MBD1LPUXSngW88oRPq','987654321');


INSERT INTO user_role(user_id, role_id) VALUES(1,1);
INSERT INTO user_role(user_id, role_id) VALUES(2,1);
INSERT INTO user_role(user_id, role_id) VALUES(2,2);

INSERT INTO user_role(user_id, role_id) VALUES(3,1);
INSERT INTO user_role(user_id, role_id) VALUES(4,1);
INSERT INTO user_role(user_id, role_id) VALUES(5,1);
INSERT INTO user_role(user_id, role_id) VALUES(6,1);

INSERT INTO user_role(user_id, role_id) VALUES(3,3);
INSERT INTO user_role(user_id, role_id) VALUES(4,4);
INSERT INTO user_role(user_id, role_id) VALUES(5,5);
INSERT INTO user_role(user_id, role_id) VALUES(6,6);


-- Populate random city table

INSERT INTO random_city(id, name) VALUES (1, 'Bamako');
INSERT INTO random_city(id, name) VALUES (2, 'Nonkon');
INSERT INTO random_city(id, name) VALUES (3, 'Houston');
INSERT INTO random_city(id, name) VALUES (4, 'Toronto');
INSERT INTO random_city(id, name) VALUES (5, 'New York City');
INSERT INTO random_city(id, name) VALUES (6, 'Mopti');
INSERT INTO random_city(id, name) VALUES (7, 'Koulikoro');
INSERT INTO random_city(id, name) VALUES (8, 'Moscow');

