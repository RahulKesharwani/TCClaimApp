CREATE TABLE random_city (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  name varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE app_role (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  description varchar(255) DEFAULT NULL,
  role_name varchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE app_user (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  name varchar(60) NOT NULL,
  emailId varchar(100) NOT NULL,
  password varchar(255) NOT NULL,
  mobileNumber varchar(20) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY emailId_uniqe_cons  (emailId),
  --UNIQUE KEY mobileNum_uniqe_cons  (mobileNumber)
);


CREATE TABLE user_role (
  user_id bigint(20) NOT NULL,
  role_id bigint(20) NOT NULL,
  CONSTRAINT FK859n2jvi8ivhui0rl0esws6o FOREIGN KEY (user_id) REFERENCES app_user (id),
  CONSTRAINT FKa68196081fvovjhkek5m97n3y FOREIGN KEY (role_id) REFERENCES app_role (id)
);