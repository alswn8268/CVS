select * from itemcomment order by idx desc;

delete from itemcomment;
drop sequence itemcomment_idx_seq;
create sequence itemcomment_idx_seq;

commit;

insert into itemcomment (idx, gup, nickname, content) values (itemcomment_idx_seq.nextval, 294, '�Ӳ���', '����');