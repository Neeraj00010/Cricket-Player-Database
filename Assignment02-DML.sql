--Inventory-DMl.sql file
--Name- Neeraj Kumar Bansal, Akshit Sabharwal, Varsha Sundernath
--Class- CST8215_301
--Date- 31-07-2021


INSERT INTO Manager VALUES (23432,'Netaji');
INSERT INTO Manager VALUES (19877,'Bahubali');
INSERT INTO Manager VALUES (21430,'Amit_Shah');
INSERT INTO Manager VALUES (29800,'Preety_Zinta');
INSERT INTO Manager VALUES (28977,'Mukesh_Ambani');
INSERT INTO Manager VALUES (28801, 'Ramdev');
INSERT INTO Manager VALUES (20010,'Bahubali');
INSERT INTO Manager VALUES (21987,'Rahul_Ghandhi');
INSERT INTO Manager VALUES (30001,'Rahul_Dravid');
INSERT INTO Manager VALUES (29776,'Shahrukh_Khan');

INSERT INTO Province VALUES ('BLU','Bengaluru');
INSERT INTO Province VALUES ('CHN','Chennai');
INSERT INTO Province VALUES ('MUM','Mumbai');
INSERT INTO Province VALUES ('PB','Punjab');
INSERT INTO Province VALUES ('PN','Pune');
INSERT INTO Province VALUES ('JP','Jaipur');
INSERT INTO Province VALUES ('AHD','Ahmedabad');
INSERT INTO Province VALUES ('HYD','Hyderabad');
INSERT INTO Province VALUES ('DL','Delhi');
INSERT INTO Province VALUES ('KL','Kolkata');

INSERT INTO Role VALUES ('Right_Hand_Batsman');
INSERT INTO Role VALUES ('Keeper_Batsman');
INSERT INTO Role VALUES ('Left_Hand_Batsman');
INSERT INTO Role VALUES ('Keeper_Right_Batsman');
INSERT INTO Role VALUES ('All_Rounder');
INSERT INTO Role VALUES ('Seam_Bowler');
INSERT INTO Role VALUES ('Bowler_Batsman');
INSERT INTO Role VALUES ('Seam_Spin_Bowler');
INSERT INTO Role VALUES ('Fielder_Batsman');
INSERT INTO Role VALUES ('Spin_Bowler');

INSERT INTO Team VALUES ('RCB','Royal_Challengers_Banglore',23432,'BLU');
INSERT INTO Team VALUES ('CSK','Chennai_Super_Kings',19877,'CHN');
INSERT INTO Team VALUES ('MI','Mumbai_Indians',21430,'MUM');
INSERT INTO Team VALUES ('PBK','Punjab_Kings',29800,'PB');
INSERT INTO Team VALUES ('RPS','Rising_Pune',28977,'PN');
INSERT INTO Team VALUES ('RR','Rajasthan_Royals',28801,'JP');
INSERT INTO Team VALUES ('GL','Gujarat_Lions',20010,'AHD');
INSERT INTO Team VALUES ('SRH','Sunrises_Hyderabad',21987,'HYD');
INSERT INTO Team VALUES ('DC','Delhi_Capitals',30001,'DL');
INSERT INTO Team VALUES ('KKR','Kolkata_Knight_Riders',29776,'KL');

INSERT INTO Player VALUES (70,'Virat','Kohli',32,'Delhi','RCB',23432,'Right_Hand_Batsman');
INSERT INTO Player VALUES (07,'Mahendra Singh','Dhoni',40,'Ranchi','CSK',19877,'Keeper_Batsman');
INSERT INTO Player VALUES (13,'Rohit','Sharma',34,'Nagpur','MI',21430,'Left_Hand_Batsman');
INSERT INTO Player VALUES (01,'KL','Rahul',29,'Bengaluru','PBK',29800,'Keeper_Right_Batsman');
INSERT INTO Player VALUES (33,'Hardik','Pandya',27,'Surat','MI',21430,'All_Rounder');
INSERT INTO Player VALUES (57,'Jaspreet','Bumrah',27,'Ahmdabad','MI',21430,'Seam_Bowler');
INSERT INTO Player VALUES (27,'Suresh','Raina',34,'Ghaziabad','CSK',20010,'Bowler_Batsman');
INSERT INTO Player VALUES (40,'Yuvraj','Singh',39,'Chandigarh','SRH',21987,'Seam_Spin_Bowler');
INSERT INTO Player VALUES (100,'Prithvi','Shaw',21,'Palgarh','DC',30001,'Fielder_Batsman');
INSERT INTO Player VALUES (50,'Kuldeep','Yadav',26,'Kanpur','KKR',29776,'Spin_Bowler');






