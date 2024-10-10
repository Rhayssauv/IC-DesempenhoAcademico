insert into Aluno (matricula, nome) values (1, 'lily'), 
(2, 'arthur'), (3, 'dani'), (4, 'diogo'), (5, 'andre'), (6, 'rhay');

insert into Professor values (21, 'susi'), (22, 'abrantes'),
(23, 'jean'), (24, 'cassio'), (25, 'vinicius'), (26, 'gustavo');

insert into Disciplina values (11, 'ES'), (12, 'BDII'),
(13, 'CI'), (14, 'DG'), (15, 'POOI'), (16, 'ED');

-- matricula, d_cod, p_cod
insert into Matricula values (1, 12, 23), (4, 11, 25), (2, 11, 24),
(1, 11, 24), (2, 12, 23), (5, 11, 24), (5, 15, 25);

update Aluno
set ender_linkedin = 'https:1289137'
where matricula = 1;


