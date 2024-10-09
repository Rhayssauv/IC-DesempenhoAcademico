insert into Aluno (matricula, nome) values (1, 'lily'), 
(2, 'arthur'), (3, 'dani'), (4, 'diogo'), (5, 'andre'), (6, 'rhay');

insert into Professor values (21, 'susi'), (22, 'abrantes'),
(23, 'jean'), (24, 'cassio'), (25, 'vinicius'), (26, 'gustavo');

insert into Disciplina values (11, 'ES'), (12, 'BDII'),
(13, 'CI'), (14, 'DG'), (15, 'POOI'), (16, 'ED');

-- matricula, d_cod, p_cod
insert into Matricula values (1, 12, 23), (4, 11, 25), (2, 11, 24);

select a.nome as Aluno_nome, p.nome as Professor_nome, d.nome as Disciplina_nome 
from Professor p
inner join Matricula m on p.P_cod = m.P_cod
inner join Aluno a on a.matricula = m.matricula
inner join Disciplina d on d.D_cod = m.D_cod;



