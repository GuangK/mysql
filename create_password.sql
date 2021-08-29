select concat(substr('ABCEDFGHIJKLMNOPQRSTUVWXYZ', 1+floor(rand()*26), 1), 
substr(replace(uuid(), '-', ''), 1+floor(rand()*22), 11),
substr("_*$%#", 1+floor(rand()*5), 1) 
) as test;
