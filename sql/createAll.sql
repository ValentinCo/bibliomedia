#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Comments
#------------------------------------------------------------

CREATE TABLE Comments(
        com_id      int (11) Auto_increment  NOT NULL ,
        com_content Varchar (255) ,
        use_id      Int NOT NULL ,
        boo_id      Int NOT NULL ,
        PRIMARY KEY (com_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Users
#------------------------------------------------------------

CREATE TABLE Users(
        use_id       int (11) Auto_increment  NOT NULL ,
        use_name     Varchar (25) NOT NULL ,
        use_email    Varchar (75) NOT NULL ,
        use_password Varchar (255) NOT NULL ,
        PRIMARY KEY (use_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Books
#------------------------------------------------------------

CREATE TABLE Books(
        boo_id      int (11) Auto_increment  NOT NULL ,
        boo_title   Varchar (25) NOT NULL ,
        boo_date    Date NOT NULL ,
        boo_content Varchar (255) NOT NULL ,
        boo_type    Varchar (25) NOT NULL ,
        PRIMARY KEY (boo_id )
)ENGINE=InnoDB;

ALTER TABLE Comments ADD CONSTRAINT FK_Comments_use_id FOREIGN KEY (use_id) REFERENCES Users(use_id);
ALTER TABLE Comments ADD CONSTRAINT FK_Comments_boo_id FOREIGN KEY (boo_id) REFERENCES Books(boo_id);
