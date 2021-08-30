CREATE DEFINER=`root`@`%` PROCEDURE `new_p1`()
BEGIN
    declare v_u varchar(64);
    declare v_a tinyint;
    declare v_g char(1);
    declare v_t char(11);
    
    select substr('qwertyuiopasdfghjklzxcvbnm', 1+floor(rand()*21), 6) into v_u;
    select 18+floor(rand()*8) into v_a;
    select substr('MF', 1+floor(rand()*2), 1) into v_g;
    select concat('1', 3+floor(rand()*7), lpad(floor(rand()*1000000000), 9, '0')) into v_t;
    
    insert into test.t2(uname, age, gender, telnum) values(v_u, v_a, v_g, v_t);
END
