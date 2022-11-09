select * from item order by idx desc;

delete from item;
drop sequence item_idx_seq;
create sequence item_idx_seq;

commit;

insert into item (idx, category, itemname, itemprice) values (item_idx_seq.nextval, '과자', '새우깡', 1000);
insert into item (idx, category, itemname, itemprice) values (item_idx_seq.nextval, '라면', '신라면', 900);
insert into item (idx, category, itemname, itemprice) values (item_idx_seq.nextval, '음료', '포카리', 1500);
insert into item (idx, category, itemname, itemprice) values (item_idx_seq.nextval, '생필', '볼펜', 2000);
