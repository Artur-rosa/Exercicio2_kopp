CREATE TABLE infracao(
	id_infracao int NOT NULL,
    hora_data datetime, 
    vel_media int,
    val_perm int,
    equipamento VARCHAR(20),
    validacao boolean,
    
	CONSTRAINT pk_infracao PRIMARY KEY(id_infracao),
    CONSTRAINT fk_remessa FOREIGN KEY(id_remessa) REFERENCES remessa (id_remessa)
);

CREATE TABLE remessa(
	id_remessa int(10) NOT NULL,
	situacao VARCHAR(15) NOT NULL,
    total_infracoes int NOT NULL,
    id_infracao int NOT NULL,
    
    CONSTRAINT pk_remessa PRIMARY KEY(id_remessa)
);


INSERT INTO infracao 
(id_infracao, hora_data, vel_media, val_perm, equipamento, validacao, id_remessa)
VALUES
(65,"2020/03/10 16:35:20",110,80,"pardal",true,1),
(32,"2020/02/18 15:20:36",50,60,"pardal",false,1),
(10,"2019/10/5 02:30:50",200,110,"pardal",true,2),
(1,"2020/6/5 12:45:36",89,90,"controlador",false,2),
(6,"2018/12/25 07:45:12",75,50,"pardal",true,3),
(429,"2018/06/17 10:25:13",110,90,"pardal",true,4),
(326,"2018/09/15 14:36:54",66,80,"controlador",false,5),
(236,"2017/11/9 13:28:34",169,110,"pardal",true,5),
(25,"2020/09/13 23:35:20",120,80,"pardal",true,6),
(19,"2018/08/4 12:20:36",60,60,"pardal",false,7),
(55,"2018/09/19 04:35:50",100,110,"controlador",true,7),
(67,"2020/05/12 14:55:50",5,110,"pardal",false,8),
(33,"2016/11/19 04:39:50",50,110,"controlador",true,8),
(128,"2020/07/01 06:35:50",20,110,"pardal",false,9),
(99,"2020/12/10 17:00:30",15,110,"controlador",false,10);


INSERT INTO remessa
(id_remessa, situacao, total_infracoes)
values
(1,"Criada",2),
(2,"Expedida",2),
(3,"Criada",1),
(4,"Criada",1),
(5,"Aceita",2),
(6,"Nao aceita",1),
(7,"Não aceita",2),
(8,"Expedida",2),
(9,"Criada",1),
(10,"Aceita",1);


SELECT * FROM infracao
WHERE vel_media >= val_perm * 20/100
ORDER BY hora_data; 

SELECT * FROM remessa
ORDER BY situacao;





