select * from item order by idx desc;

delete from item;
drop sequence item_idx_seq;
create sequence item_idx_seq;

commit;

insert into item (idx, category, itemname, itemprice) values (item_idx_seq.nextval, '����', '�����', 1000);
insert into item (idx, category, itemname, itemprice) values (item_idx_seq.nextval, '���', '�Ŷ��', 900);
insert into item (idx, category, itemname, itemprice) values (item_idx_seq.nextval, '����', '��ī��', 1500);
insert into item (idx, category, itemname, itemprice) values (item_idx_seq.nextval, '����', '����', 2000);
