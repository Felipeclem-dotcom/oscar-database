USE oscar_database;

-- 1.1 Quantos registros existem na tabela de indicados ao Oscar?
-- R: 11134 registros
SELECT COUNT(*) FROM indicados_ao_oscar;

-- 1.2.1 Quais são as diferentes categorias de premiação que existem no banco de dados? Liste todas as categorias únicas.
-- R:
SELECT DISTINCT categoria FROM indicados_ao_oscar;

-- 1.2.2 Quantas categorias únicas existem?
-- R: 121 categorias
SELECT categoria, COUNT(*) FROM indicados_ao_oscar GROUP BY categoria ORDER BY COUNT(*);

-- 1.3 Qual foi o primeiro ano de cerimônia do Oscar registrado na base?
-- R: a primeira cerimônia foi em 1928
SELECT ano_cerimonia FROM indicados_ao_oscar ORDER BY ano_cerimonia LIMIT 1;	

-- 1.4 Qual foi o último ano de cerimônia registrado na base?
-- R: a ultima cerimônia foi em 2026
SELECT DISTINCT ano_cerimonia FROM indicados_ao_oscar ORDER BY ano_cerimonia DESC LIMIT 1;

-- 1.5 Quantas cerimônias do Oscar estão registradas no total?
-- R: são 98 cerimônias registradas no total
SELECT COUNT(DISTINCT ano_cerimonia) FROM indicados_ao_oscar;

-- 1.6 Atualize os registros da tabela com os dados do Oscar 2025 e 2026 (pesquise os vencedores e adicione-os).
-- R:
-- ============================================================
--  97ª CERIMÔNIA – ANO DE FILMAGEM 2024 – OSCAR 2025
-- ============================================================

-- MELHOR FILME
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST PICTURE', 'Alex Coco, Samantha Quan, Sean Baker', 'Anora', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST PICTURE', 'Nick Gordon, Brian Young, Andrew Morrison, D.J. Gugenheim, Brady Corbet', 'The Brutalist', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST PICTURE', 'Fred Berger, James Mangold, Alex Heineman', 'A Complete Unknown', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST PICTURE', 'Tessa Ross, Juliette Howell, Michael A. Jackman', 'Conclave', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST PICTURE', 'Andrew Lauren, Osnat Shurer, Ron Clements, John Musker', 'Dune: Part Two', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST PICTURE', 'Jacques Audiard', 'Emilia Pérez', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST PICTURE', 'Walter Salles, Rodrigo Teixeira, Maria Carlota de Carvalho Coutinho', 'Ainda Estou Aqui', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST PICTURE', 'Jon Kilik, Martin Scorsese', 'Nickel Boys', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST PICTURE', 'David Greenbaum, Marc Platt, Jared LeBoff', 'The Substance', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST PICTURE', 'David Heyman, Jeff Kirschenbaum, Marc Platt', 'Wicked', FALSE);

-- MELHOR DIREÇÃO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST DIRECTOR', 'Sean Baker', 'Anora', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST DIRECTOR', 'Brady Corbet', 'The Brutalist', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST DIRECTOR', 'James Mangold', 'A Complete Unknown', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST DIRECTOR', 'Jacques Audiard', 'Emilia Pérez', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST DIRECTOR', 'Coralie Fargeat', 'The Substance', FALSE);

-- MELHOR ATOR
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST ACTOR', 'Adrien Brody', 'The Brutalist', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST ACTOR', 'Timothée Chalamet', 'A Complete Unknown', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST ACTOR', 'Colman Domingo', 'Sing Sing', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST ACTOR', 'Ralph Fiennes', 'Conclave', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST ACTOR', 'Sebastian Stan', 'The Apprentice', FALSE);

-- MELHOR ATRIZ
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST ACTRESS', 'Mikey Madison', 'Anora', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST ACTRESS', 'Cynthia Erivo', 'Wicked', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST ACTRESS', 'Karla Sofía Gascón', 'Emilia Pérez', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST ACTRESS', 'Demi Moore', 'The Substance', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST ACTRESS', 'Fernanda Torres', 'Ainda Estou Aqui', FALSE);

-- MELHOR ATOR COADJUVANTE
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST SUPPORTING ACTOR', 'Kieran Culkin', 'A Real Pain', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST SUPPORTING ACTOR', 'Yura Borisov', 'Anora', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST SUPPORTING ACTOR', 'Jeremy Strong', 'The Apprentice', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST SUPPORTING ACTOR', 'Zach Galifianakis', 'A Complete Unknown', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST SUPPORTING ACTOR', 'Edward Norton', 'A Complete Unknown', FALSE);

-- MELHOR ATRIZ COADJUVANTE
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST SUPPORTING ACTRESS', 'Zoe Saldaña', 'Emilia Pérez', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST SUPPORTING ACTRESS', 'Monica Barbaro', 'A Complete Unknown', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST SUPPORTING ACTRESS', 'Ariana Grande', 'Wicked', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST SUPPORTING ACTRESS', 'Felicity Jones', 'The Brutalist', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'BEST SUPPORTING ACTRESS', 'Isabella Rossellini', 'Conclave', FALSE);

-- MELHOR ROTEIRO ORIGINAL
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'WRITING (Original Screenplay)', 'Sean Baker', 'Anora', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'WRITING (Original Screenplay)', 'Brady Corbet, Mona Fastvold', 'The Brutalist', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'WRITING (Original Screenplay)', 'Moritz Binder, Tim Fehlbaum, Alex David', 'September 5', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'WRITING (Original Screenplay)', 'Coralie Fargeat', 'The Substance', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'WRITING (Original Screenplay)', 'Jesse Eisenberg', 'A Real Pain', FALSE);

-- MELHOR ROTEIRO ADAPTADO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'WRITING (Adapted Screenplay)', 'Peter Straughan', 'Conclave', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'WRITING (Adapted Screenplay)', 'Jacques Audiard', 'Emilia Pérez', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'WRITING (Adapted Screenplay)', 'James Mangold, Jay Cocks', 'A Complete Unknown', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'WRITING (Adapted Screenplay)', 'Ramell Ross', 'Nickel Boys', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'WRITING (Adapted Screenplay)', 'RaMell Ross, Joslyn Barnes', 'Sing Sing', FALSE);

-- MELHOR FILME DE ANIMAÇÃO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'ANIMATED FEATURE FILM', 'Gints Zilbalodis, Matīss Kaža, Ron Dyens, Gregory Zalcman', 'Flow', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'ANIMATED FEATURE FILM', NULL, 'Inside Out 2', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'ANIMATED FEATURE FILM', NULL, 'Memoir of a Snail', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'ANIMATED FEATURE FILM', NULL, 'Wallace & Gromit: Vengeance Most Fowl', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'ANIMATED FEATURE FILM', NULL, 'The Wild Robot', FALSE);

-- MELHOR FILME INTERNACIONAL
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'INTERNATIONAL FEATURE FILM', 'Walter Salles', 'Ainda Estou Aqui', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'INTERNATIONAL FEATURE FILM', 'Jacques Audiard', 'Emilia Pérez', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'INTERNATIONAL FEATURE FILM', NULL, 'The Girl with the Needle', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'INTERNATIONAL FEATURE FILM', NULL, 'Grand Tour', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'INTERNATIONAL FEATURE FILM', NULL, 'The Seed of the Sacred Fig', FALSE);

-- MELHOR DOCUMENTÁRIO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'DOCUMENTARY FEATURE FILM', 'Basel Adra, Rachel Szor, Hamdan Ballal, Yuval Abraham', 'No Other Land', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'DOCUMENTARY FEATURE FILM', NULL, 'Black Box Diaries', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'DOCUMENTARY FEATURE FILM', NULL, 'Porcelain War', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'DOCUMENTARY FEATURE FILM', NULL, 'Soundtrack to a Coup d''Etat', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'DOCUMENTARY FEATURE FILM', NULL, 'Sugarcane', FALSE);

-- MELHOR TRILHA SONORA ORIGINAL
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'MUSIC (Original Score)', 'Daniel Blumberg', 'The Brutalist', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'MUSIC (Original Score)', 'Volker Bertelmann', 'Conclave', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'MUSIC (Original Score)', 'Kris Bowers', 'The Wild Robot', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'MUSIC (Original Score)', 'Clément Ducol, Camille', 'Emilia Pérez', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'MUSIC (Original Score)', 'Trent Reznor, Atticus Ross', 'Queer', FALSE);

-- MELHOR CANÇÃO ORIGINAL
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'MUSIC (Original Song)', 'Clément Ducol, Camille, Jacques Audiard', 'Emilia Pérez', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'MUSIC (Original Song)', 'Diane Warren', 'The Six Triple Eight', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'MUSIC (Original Song)', 'Rza, Osric Chau', 'The Alto Knights', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'MUSIC (Original Song)', 'Luca Guadagnino', 'Queer', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'MUSIC (Original Song)', NULL, 'Emilia Pérez', FALSE);

-- MELHOR FOTOGRAFIA
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'CINEMATOGRAPHY', 'Lol Crawley', 'The Brutalist', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'CINEMATOGRAPHY', 'Greig Fraser', 'Dune: Part Two', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'CINEMATOGRAPHY', 'Edward Lachman', 'Maria', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'CINEMATOGRAPHY', 'Stéphane Fontaine', 'The Nickel Boys', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'CINEMATOGRAPHY', 'Robbie Ryan', 'Nosferatu', FALSE);

-- MELHOR EDIÇÃO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'FILM EDITING', 'Sean Baker', 'Anora', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'FILM EDITING', 'Dávid Jancsó', 'The Brutalist', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'FILM EDITING', 'Nick Emerson', 'Conclave', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'FILM EDITING', 'Monika Willi', 'Emilia Pérez', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'FILM EDITING', 'Matt Villa, Jonathan Redmond', 'Wicked', FALSE);

-- MELHOR DESIGN DE PRODUÇÃO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'PRODUCTION DESIGN', 'Nathan Crowley, Lee Sandales', 'Wicked', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'PRODUCTION DESIGN', 'Judy Becker, Patricia Cuccia', 'The Brutalist', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'PRODUCTION DESIGN', 'Patrice Vermette, Shane Vieau', 'Dune: Part Two', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'PRODUCTION DESIGN', 'Mark Friedberg, Stephanie Fleischmann', 'Conclave', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'PRODUCTION DESIGN', 'Jim Clay, Zsuzsa Mihalek', 'Nosferatu', FALSE);

-- MELHOR FIGURINO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'COSTUME DESIGN', 'Paul Tazewell', 'Wicked', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'COSTUME DESIGN', 'Arianne Phillips', 'A Complete Unknown', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'COSTUME DESIGN', 'Lisy Christl', 'Conclave', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'COSTUME DESIGN', 'Massimo Cantini Parrini, Costume Parrini', 'Maria', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'COSTUME DESIGN', 'Linda Muir', 'Nosferatu', FALSE);

-- MELHOR MAQUIAGEM E CABELO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'MAKEUP AND HAIRSTYLING', 'Pierre-Olivier Persin, Stéphanie Guillon, Marese Langan', 'The Substance', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'MAKEUP AND HAIRSTYLING', 'Traci Loader, Anna Beghetti', 'A Different Man', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'MAKEUP AND HAIRSTYLING', 'Alexandra Byrne', 'Emilia Pérez', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'MAKEUP AND HAIRSTYLING', 'Nadia Stacey, Mark Coulier, Josh Weston', 'Nosferatu', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'MAKEUP AND HAIRSTYLING', 'Frida Aradóttir, Elín Jónsdóttir', 'Wicked', FALSE);

-- MELHOR SOM
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'SOUND', 'Gareth John, Richard King, Ron Bartlett, Doug Hemphill', 'Dune: Part Two', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'SOUND', NULL, 'A Complete Unknown', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'SOUND', NULL, 'Emilia Pérez', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'SOUND', NULL, 'Wicked', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'SOUND', NULL, 'The Wild Robot', FALSE);

-- MELHORES EFEITOS VISUAIS
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'VISUAL EFFECTS', 'Paul Lambert, Stephen James, Rhys Salcombe, Gerd Nefzer', 'Dune: Part Two', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'VISUAL EFFECTS', NULL, 'Alien: Romulus', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'VISUAL EFFECTS', NULL, 'Better Man', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'VISUAL EFFECTS', NULL, 'Kingdom of the Planet of the Apes', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'VISUAL EFFECTS', NULL, 'Wicked', FALSE);

-- MELHOR CURTA-METRAGEM DE ANIMAÇÃO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'SHORT FILM (Animated)', 'Shirin Sohani, Hossein Molayemi', 'In the Shadow of the Cypress', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'SHORT FILM (Animated)', NULL, 'Beautiful Men', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'SHORT FILM (Animated)', NULL, 'Magic Candies', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'SHORT FILM (Animated)', NULL, 'Wander to Wonder', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'SHORT FILM (Animated)', NULL, 'Yuck!', FALSE);

-- MELHOR CURTA-METRAGEM DE AÇÃO AO VIVO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'SHORT FILM (Live Action)', 'Victoria Warmerdam, Trent', 'I''m Not a Robot', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'SHORT FILM (Live Action)', NULL, 'A Lien', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'SHORT FILM (Live Action)', NULL, 'The Last Ranger', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'SHORT FILM (Live Action)', NULL, 'The Man Who Could Not Remain Silent', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'SHORT FILM (Live Action)', NULL, 'Anuja', FALSE);

-- MELHOR CURTA-METRAGEM DOCUMENTÁRIO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'DOCUMENTARY (Short Subject)', 'Molly O''Brien', 'The Only Girl in the Orchestra', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'DOCUMENTARY (Short Subject)', NULL, 'Death by Numbers', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'DOCUMENTARY (Short Subject)', NULL, 'I Am Ready, Warden', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'DOCUMENTARY (Short Subject)', NULL, 'Incident', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2024, 2025, 97, 'DOCUMENTARY (Short Subject)', NULL, 'Instruments of a Beating Heart', FALSE);


-- ============================================================
--  98ª CERIMÔNIA – ANO DE FILMAGEM 2025 – OSCAR 2026
-- ============================================================

-- MELHOR FILME
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST PICTURE', 'Adam Somner, Sara Murphy, Paul Thomas Anderson', 'One Battle After Another', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST PICTURE', 'Zinzi Coogler, Sev Ohanian, Ryan Coogler', 'Sinners', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST PICTURE', 'Ed Guiney, Andrew Lowe, Yorgos Lanthimos, Emma Stone, Lars Knudsen', 'Bugonia', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST PICTURE', 'Chad Oman, Brad Pitt, Dede Gardner, Jeremy Kleiner, Joseph Kosinski, Jerry Bruckheimer', 'F1', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST PICTURE', 'Guillermo del Toro, J. Miles Dale, Scott Stuber', 'Frankenstein', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST PICTURE', 'Liza Marshall, Pippa Harris, Nicolas Gonda, Steven Spielberg, Sam Mendes', 'Hamnet', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST PICTURE', 'Eli Bush, Ronald Bronstein, Josh Safdie, Anthony Katagas, Timothée Chalamet', 'Marty Supreme', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST PICTURE', 'Emilie Lesclaux', 'The Secret Agent', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST PICTURE', 'Maria Ekerhovd, Andrea Berentsen Ottmar', 'Sentimental Value', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST PICTURE', 'Marissa McMahon, Teddy Schwarzman, Will Janowitz, Ashley Schlaifer, Michael Heimler', 'Train Dreams', FALSE);

-- MELHOR DIREÇÃO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST DIRECTOR', 'Paul Thomas Anderson', 'One Battle After Another', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST DIRECTOR', 'Ryan Coogler', 'Sinners', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST DIRECTOR', 'Chloé Zhao', 'Hamnet', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST DIRECTOR', 'Josh Safdie', 'Marty Supreme', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST DIRECTOR', 'Joachim Trier', 'Sentimental Value', FALSE);

-- MELHOR ATOR
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST ACTOR', 'Michael B. Jordan', 'Sinners', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST ACTOR', 'Timothée Chalamet', 'Marty Supreme', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST ACTOR', 'Leonardo DiCaprio', 'One Battle After Another', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST ACTOR', 'Ethan Hawke', 'Blue Moon', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST ACTOR', 'Wagner Moura', 'The Secret Agent', FALSE);

-- MELHOR ATRIZ
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST ACTRESS', 'Jessie Buckley', 'Hamnet', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST ACTRESS', 'Rose Byrne', 'If I Had Legs I''d Kick You', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST ACTRESS', 'Kate Hudson', 'Song Sung Blue', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST ACTRESS', 'Renate Reinsve', 'Sentimental Value', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST ACTRESS', 'Emma Stone', 'Bugonia', FALSE);

-- MELHOR ATOR COADJUVANTE
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST SUPPORTING ACTOR', 'Sean Penn', 'One Battle After Another', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST SUPPORTING ACTOR', 'Benicio del Toro', 'One Battle After Another', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST SUPPORTING ACTOR', 'Jacob Elordi', 'Frankenstein', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST SUPPORTING ACTOR', 'Delroy Lindo', 'Sinners', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST SUPPORTING ACTOR', 'Stellan Skarsgård', 'Sentimental Value', FALSE);

-- MELHOR ATRIZ COADJUVANTE
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST SUPPORTING ACTRESS', 'Amy Madigan', 'Weapons', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST SUPPORTING ACTRESS', 'Elle Fanning', 'Sentimental Value', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST SUPPORTING ACTRESS', 'Inga Ibsdotter Lilleaas', 'Sentimental Value', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST SUPPORTING ACTRESS', 'Wunmi Mosaku', 'Sinners', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'BEST SUPPORTING ACTRESS', 'Teyana Taylor', 'One Battle After Another', FALSE);

-- MELHOR ROTEIRO ORIGINAL
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'WRITING (Original Screenplay)', 'Ryan Coogler', 'Sinners', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'WRITING (Original Screenplay)', 'Robert Kaplow', 'Blue Moon', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'WRITING (Original Screenplay)', 'Jafar Panahi, Nader Saïvar, Shadmehr Rastin, Mehdi Mahmoudian', 'It Was Just an Accident', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'WRITING (Original Screenplay)', 'Ronald Bronstein, Josh Safdie', 'Marty Supreme', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'WRITING (Original Screenplay)', NULL, 'Sentimental Value', FALSE);

-- MELHOR ROTEIRO ADAPTADO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'WRITING (Adapted Screenplay)', 'Paul Thomas Anderson', 'One Battle After Another', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'WRITING (Adapted Screenplay)', 'Will Tracy', 'Bugonia', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'WRITING (Adapted Screenplay)', NULL, 'Frankenstein', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'WRITING (Adapted Screenplay)', NULL, 'Hamnet', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'WRITING (Adapted Screenplay)', NULL, 'Train Dreams', FALSE);

-- MELHOR FILME DE ANIMAÇÃO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'ANIMATED FEATURE FILM', NULL, 'KPop Demon Hunters', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'ANIMATED FEATURE FILM', NULL, 'Arco', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'ANIMATED FEATURE FILM', NULL, 'Elio', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'ANIMATED FEATURE FILM', NULL, 'Little Amélie or The Character of Rain', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'ANIMATED FEATURE FILM', NULL, 'Zootopia 2', FALSE);

-- MELHOR FILME INTERNACIONAL
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'INTERNATIONAL FEATURE FILM', NULL, 'Sentimental Value', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'INTERNATIONAL FEATURE FILM', NULL, 'The Secret Agent', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'INTERNATIONAL FEATURE FILM', 'Jafar Panahi', 'It Was Just an Accident', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'INTERNATIONAL FEATURE FILM', NULL, 'Sirât', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'INTERNATIONAL FEATURE FILM', NULL, 'The Voice of Hind Rajab', FALSE);

-- MELHOR DOCUMENTÁRIO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'DOCUMENTARY FEATURE FILM', NULL, 'Mr. Nobody Against Putin', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'DOCUMENTARY FEATURE FILM', 'Andrew Jarecki, Charlotte Kaufman', 'The Alabama Solution', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'DOCUMENTARY FEATURE FILM', NULL, 'Come See Me in the Good Light', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'DOCUMENTARY FEATURE FILM', NULL, 'Cutting Through Rocks', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'DOCUMENTARY FEATURE FILM', NULL, 'The Perfect Neighbor', FALSE);

-- MELHOR TRILHA SONORA ORIGINAL
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'MUSIC (Original Score)', 'Ludwig Göransson', 'Sinners', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'MUSIC (Original Score)', 'Jerskin Fendrix', 'Bugonia', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'MUSIC (Original Score)', 'Alexandre Desplat', 'Frankenstein', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'MUSIC (Original Score)', NULL, 'Hamnet', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'MUSIC (Original Score)', NULL, 'One Battle After Another', FALSE);

-- MELHOR CANÇÃO ORIGINAL
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'MUSIC (Original Song)', NULL, 'KPop Demon Hunters', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'MUSIC (Original Song)', 'Diane Warren', 'Diane Warren: Relentless', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'MUSIC (Original Song)', NULL, 'Sinners', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'MUSIC (Original Song)', NULL, 'Viva Verdi!', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'MUSIC (Original Song)', NULL, 'Train Dreams', FALSE);

-- MELHOR FOTOGRAFIA
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'CINEMATOGRAPHY', 'Autumn Durald Arkapaw', 'Sinners', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'CINEMATOGRAPHY', 'Dan Laustsen', 'Frankenstein', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'CINEMATOGRAPHY', 'Darius Khondji', 'Marty Supreme', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'CINEMATOGRAPHY', NULL, 'One Battle After Another', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'CINEMATOGRAPHY', NULL, 'Train Dreams', FALSE);

-- MELHOR EDIÇÃO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'FILM EDITING', 'Andy Jurgensen', 'One Battle After Another', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'FILM EDITING', 'Stephen Mirrione', 'F1', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'FILM EDITING', 'Ronald Bronstein, Josh Safdie', 'Marty Supreme', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'FILM EDITING', NULL, 'Sentimental Value', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'FILM EDITING', NULL, 'Sinners', FALSE);

-- MELHOR DESIGN DE PRODUÇÃO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'PRODUCTION DESIGN', 'Tamara Deverell', 'Frankenstein', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'PRODUCTION DESIGN', NULL, 'Hamnet', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'PRODUCTION DESIGN', NULL, 'Marty Supreme', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'PRODUCTION DESIGN', NULL, 'One Battle After Another', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'PRODUCTION DESIGN', NULL, 'Sinners', FALSE);

-- MELHOR FIGURINO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'COSTUME DESIGN', 'Kate Hawley', 'Frankenstein', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'COSTUME DESIGN', 'Deborah L. Scott', 'Avatar: Fire and Ash', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'COSTUME DESIGN', NULL, 'Hamnet', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'COSTUME DESIGN', NULL, 'Marty Supreme', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'COSTUME DESIGN', 'Ruth E. Carter', 'Sinners', FALSE);

-- MELHOR MAQUIAGEM E CABELO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'MAKEUP AND HAIRSTYLING', 'Mike Hill, Jordan Samuel, Cliona Furey', 'Frankenstein', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'MAKEUP AND HAIRSTYLING', NULL, 'Kokuho', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'MAKEUP AND HAIRSTYLING', NULL, 'Sinners', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'MAKEUP AND HAIRSTYLING', NULL, 'The Smashing Machine', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'MAKEUP AND HAIRSTYLING', NULL, 'The Ugly Stepsister', FALSE);

-- MELHOR SOM
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'SOUND', 'Gareth John, Al Nelson, Gwendolyn Yates Whittle, Gary A. Rizzo', 'F1', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'SOUND', NULL, 'Frankenstein', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'SOUND', NULL, 'One Battle After Another', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'SOUND', NULL, 'Sinners', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'SOUND', NULL, 'Sirât', FALSE);

-- MELHORES EFEITOS VISUAIS
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'VISUAL EFFECTS', 'Joe Letteri, Richard Baneham, Eric Saindon', 'Avatar: Fire and Ash', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'VISUAL EFFECTS', NULL, 'F1', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'VISUAL EFFECTS', NULL, 'Jurassic World Rebirth', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'VISUAL EFFECTS', NULL, 'The Lost Bus', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'VISUAL EFFECTS', NULL, 'Sinners', FALSE);

-- MELHOR CURTA-METRAGEM DE ANIMAÇÃO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'SHORT FILM (Animated)', NULL, 'The Girl Who Cried Pearls', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'SHORT FILM (Animated)', NULL, 'Butterfly', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'SHORT FILM (Animated)', NULL, 'Forevergreen', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'SHORT FILM (Animated)', NULL, 'Retirement Plan', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'SHORT FILM (Animated)', NULL, 'The Three Sisters', FALSE);

-- MELHOR CURTA-METRAGEM DE AÇÃO AO VIVO (EMPATE)
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'SHORT FILM (Live Action)', NULL, 'The Singers', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'SHORT FILM (Live Action)', NULL, 'Two People Exchanging Saliva', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'SHORT FILM (Live Action)', NULL, 'Butcher''s Stain', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'SHORT FILM (Live Action)', NULL, 'A Friend of Dorothy', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'SHORT FILM (Live Action)', NULL, 'Jane Austen''s Period Drama', FALSE);

-- MELHOR CURTA-METRAGEM DOCUMENTÁRIO
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'DOCUMENTARY (Short Subject)', 'Joshua Seftel, Conall Jones', 'All the Empty Rooms', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'DOCUMENTARY (Short Subject)', NULL, 'Armed Only With a Camera: The Life and Death of Brent Renaud', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'DOCUMENTARY (Short Subject)', NULL, 'Children No More: Where and Are Gone', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'DOCUMENTARY (Short Subject)', NULL, 'The Devil Is Busy', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'DOCUMENTARY (Short Subject)', NULL, 'Perfectly a Strangeness', FALSE);

-- MELHOR CASTING (nova categoria, estreia na 98ª cerimônia)
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'Melhor Casting', 'Cassandra Kulukundis', 'One Battle After Another', TRUE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'Melhor Casting', 'Nina Gold', 'Hamnet', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'Melhor Casting', 'Jennifer Venditti', 'Marty Supreme', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'Melhor Casting', 'Gabriel Domingues', 'The Secret Agent', FALSE);

INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES (2025, 2026, 98, 'Melhor Casting', 'Francine Maisler', 'Sinners', FALSE);

-- 2.1 Quantas indicações existem para cada categoria? Agrupe por categoria e ordene da mais frequente para a menos frequente.
-- R: do menos frequente até o mais frequente
SELECT categoria, COUNT(*) AS total_indicacoes FROM indicados_ao_oscar GROUP BY categoria ORDER BY total_indicacoes DESC;

-- 2.2 Qual categoria teve mais indicações ao longo da história do Oscar?
-- R: DIRECTING com 469 indicações
SELECT categoria, COUNT(*) AS total_indicacoes FROM indicados_ao_oscar GROUP BY categoria ORDER BY total_indicacoes DESC LIMIT 1;

-- 2.3 Qual categoria teve menos indicações ao longo da história? 
-- R: SPECIAL ACHIEVEMENT AWARD (Sound Effects)
SELECT categoria, COUNT(*) AS total_indicacoes FROM indicados_ao_oscar GROUP BY categoria ORDER BY total_indicacoes LIMIT 1;

-- 2.4 A partir de que ano a categoria "ACTRESS" deixou de existir? (Dica: procure a última cerimônia com essa categoria)
-- R: a partir do ano de 1977
SELECT categoria, ano_cerimonia FROM indicados_ao_oscar WHERE categoria = 'ACTRESS' ORDER BY ano_cerimonia DESC LIMIT 1;

-- 2.5 Quais categorias existiam na primeira cerimônia (1928) e não existem mais hoje?
-- R: ...
SELECT DISTINCT c1.categoria
FROM indicados_ao_oscar c1
WHERE c1.edicao_cerimonia = 1
  AND c1.categoria NOT IN (
    SELECT DISTINCT c2.categoria
    FROM indicados_ao_oscar c2
    WHERE c2.edicao_cerimonia = (
      SELECT MAX(edicao_cerimonia)
      FROM indicados_ao_oscar
    )
  )
ORDER BY c1.categoria;

-- 2.6 Liste todas as categorias que contêm a palavra "DIRECTING" no nome.
-- R: DIRECTING, DIRECTING (Comedy Picture), DIRECTING (Dramatic Picture)
SELECT DISTINCT categoria FROM indicados_ao_oscar WHERE categoria like '%DIRECTING%';

-- 3.1 Quantas vezes Natalie Portman foi indicada ao Oscar?
-- R: 3 vezes
SELECT COUNT(*) nome_indicado FROM indicados_ao_oscar WHERE nome_indicado like '%Natalie Portman%';

-- 3.2 Quantos Oscars Natalie Portman ganhou?
-- R: Ela ganhou 1 vez
SELECT nome_indicado, vencedor FROM indicados_ao_oscar WHERE nome_indicado like '%Natalie Portman%' AND vencedor = 1;

-- 3.3 Em quais anos e por quais filmes Natalie Portman foi indicada?
-- R: 2004, 2010 e 2016
SELECT nome_indicado, vencedor, ano_filmagem FROM indicados_ao_oscar WHERE nome_indicado like '%Natalie Portman%';

-- 3.4 Liste todas as indicações de Natalie Portman mostrando: ano, categoria, filme e se venceu.
-- R: nome, ano, categoria, filme, venceu?
SELECT nome_indicado, ano_cerimonia, categoria, nome_filme, vencedor FROM indicados_ao_oscar WHERE nome_indicado like '%Natalie Portman%';

-- 3.5 Quantas vezes Viola Davis foi indicada ao Oscar?
-- R: 4 vezes
SELECT COUNT(*) nome_indicado FROM indicados_ao_oscar WHERE nome_indicado like '%Viola Davis%';

-- 3.6 Quantos Oscars Viola Davis ganhou?
-- R: Ela ganhou 1 vez
SELECT nome_indicado, vencedor FROM indicados_ao_oscar WHERE nome_indicado like '%Viola Davis%';

-- 3.7 Por quais filmes Viola Davis foi indicada?
-- R: Doubt, The Help, Fences e Ma Rainey's Black Bottom
SELECT nome_indicado, nome_filme FROM indicados_ao_oscar WHERE nome_indicado like '%Viola Davis%';

-- 3.8 Amy Adams já ganhou algum Oscar?
-- R: Ela não ganhou nenhum oscar
SELECT nome_indicado, vencedor FROM indicados_ao_oscar WHERE nome_indicado like '%Amy Adams%' AND vencedor = 1;

-- 3.9 Quantas vezes Amy Adams foi indicada sem ganhar?
-- R: Ela foi indicada 6 vezes
SELECT COUNT(*) nome_indicado FROM indicados_ao_oscar WHERE nome_indicado like '%Amy Adams%' AND vencedor = 0;

-- 3.10 Denzel Washington já ganhou algum Oscar?
-- R: Ele ganhou 2 vezes
SELECT nome_indicado, vencedor FROM indicados_ao_oscar WHERE nome_indicado like '%Denzel Washington%' AND vencedor = 1;

-- 3.11 Quantas vezes Denzel Washington foi indicado ao Oscar?
-- R: Ele foi indicado 10 vezes
SELECT COUNT(*) nome_indicado FROM indicados_ao_oscar WHERE nome_indicado like '%Denzel Washington%';

-- 3.12 Liste todos os Oscars que Denzel Washington ganhou (ano, categoria, filme).
-- R: nome, ano, categoria, filme, venceu
SELECT nome_indicado, ano_cerimonia, categoria, nome_filme, vencedor FROM indicados_ao_oscar WHERE nome_indicado like '%Denzel Washington%' AND vencedor = '1';

-- 4.1 Quem ganhou o primeiro Oscar para Melhor Atriz (ACTRESS)? Em que ano e por qual filme?
-- R: Louise Dresser em 1927 pelo filme A Ship Comes In
SELECT DISTINCT nome_indicado,categoria, ano_filmagem, nome_filme FROM indicados_ao_oscar WHERE categoria like '%ACTRESS%' LIMIT 1;

-- 4.2 Quem ganhou o primeiro Oscar para Melhor Ator (ACTOR)? Em que ano e por qual filme?
-- R: Richard Barthelmess em 1927 pelo filme The Noose
SELECT DISTINCT nome_indicado, categoria, ano_filmagem, nome_filme FROM indicados_ao_oscar WHERE categoria like '%ACTOR%' LIMIT 1;

-- 4.3 Quantos vencedores existem ao todo na base de dados?
-- R: 2513
SELECT COUNT(*) nome_indicado FROM indicados_ao_oscar WHERE vencedor = 1;

-- 4.4 
-- R: Ta listado
SELECT DISTINCT nome_filme, categoria, vencedor FROM indicados_ao_oscar WHERE vencedor = 1 AND categoria IN ('OUTSTANDING PICTURE', 'BEST PICTURE');

-- 4.5 Quantos filmes diferentes já ganharam o Oscar?
-- R: 2513
SELECT DISTINCT COUNT(*) vencedor FROM indicados_ao_oscar WHERE vencedor = 1;

-- 5.1 Quais atores/atrizes foram indicados mais de uma vez? Liste o nome e o número de indicações.
-- R:Timothée Chalamet
SELECT 
    nome_indicado,
    COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE categoria IN (
    'BEST ACTOR',
    'BEST ACTRESS',
    'BEST SUPPORTING ACTOR',
    'BEST SUPPORTING ACTRESS'
)
GROUP BY nome_indicado
HAVING COUNT(*) > 1
ORDER BY total_indicacoes DESC, nome_indicado;

-- 5.2 Qual ator ou atriz tem o maior número de indicações na história do Oscar?
-- R: Meryl Streep 21 indicacoes
SELECT nome_indicado, COUNT(*) AS total_categoria FROM indicados_ao_oscar WHERE categoria LIKE '%ACTRESS%' OR categoria LIKE '%ACTOR%' GROUP BY nome_indicado ORDER BY total_categoria DESC LIMIT 1;

-- 5.3 Quais atores foram indicados mais de 3 vezes, mas nunca ganharam?
-- R: ...
SELECT 
    nome_indicado,
    COUNT(*) AS total_indicacoes,
    SUM(CASE WHEN vencedor = TRUE THEN 1 ELSE 0 END) AS total_vitorias
FROM indicados_ao_oscar
WHERE nome_indicado IS NOT NULL
  AND categoria LIKE '%ACTOR%'
GROUP BY nome_indicado
HAVING COUNT(*) > 3
   AND SUM(CASE WHEN vencedor = TRUE THEN 1 ELSE 0 END) = 0;

-- 5.4 Encontre todos os artistas que foram indicados em categorias diferentes (ex: ator e diretor).
-- R: ...
SELECT 
    nome_indicado,
    COUNT(DISTINCT categoria) AS total_categorias
FROM indicados_ao_oscar
WHERE nome_indicado IS NOT NULL
GROUP BY nome_indicado
HAVING COUNT(DISTINCT categoria) > 1
ORDER BY total_categorias DESC, nome_indicado;

-- 5.5 Quantos indicados têm exatamente 1 indicação na história?
-- R: 5670...
SELECT COUNT(*) AS total_pessoas_com_1_indicacao
FROM (
    SELECT nome_indicado
    FROM indicados_ao_oscar
    WHERE nome_indicado IS NOT NULL
    GROUP BY nome_indicado
    HAVING COUNT(*) = 1
) AS sub;

-- 5.6 Qual o maior números de indicados em um único ano? Essa é uma pergunta franca.
-- R: ...
SELECT 
    edicao_cerimonia,
    ano_cerimonia,
    COUNT(*) AS total_indicados
FROM indicados_ao_oscar
GROUP BY edicao_cerimonia, ano_cerimonia
ORDER BY total_indicados DESC
LIMIT 1;

-- 6.1 A série de filmes Toy Story ganhou Oscars em quais anos?
-- R: Ganhou em 2011 duas vezes ganhou novamente em 2020
SELECT nome_filme, ano_cerimonia, categoria FROM indicados_ao_oscar WHERE vencedor = 1 AND nome_filme like '%Toy Story%';

-- 6.2 Quantas indicações a franquia Toy Story recebeu no total?
-- R: 11 indicações
SELECT COUNT(*) FROM indicados_ao_oscar WHERE nome_filme like '%Toy Story%';

-- 6.3 Em quais categorias os filmes Toy Story foram indicados?
-- R: MUSIC (Original Musical or Comedy Score), MUSIC (Original Song), WRITING (Screenplay Written Directly for the Screen), MUSIC (Original Song), ANIMATED FEATURE FILM, MUSIC (Original Song), BEST PICTURE, SOUND EDITING, WRITING (Adapted Screenplay), ANIMATED FEATURE FILM, MUSIC (Original Song)
SELECT DISTINCT nome_filme, categoria FROM indicados_ao_oscar WHERE nome_filme like '%Toy Story%';

-- 6.4 Em qual edição do Oscar o filme "Crash" concorreu?
-- R: Crash concorreu na edição 78
SELECT nome_filme, edicao_cerimonia FROM indicados_ao_oscar WHERE nome_filme = 'Crash';

-- 6.5 Quantas indicações o filme "Crash" recebeu?
-- R: Crash recebeu 6 indicações
SELECT COUNT(*) FROM indicados_ao_oscar WHERE nome_filme = 'Crash';

-- 6.6 "Crash" ganhou o Oscar de Melhor Filme?
-- R: Crash ganhou 1 vez como melhor filme e outras 2 vezes em outras categorias
SELECT nome_filme, categoria, vencedor FROM indicados_ao_oscar WHERE nome_filme = 'Crash' AND vencedor = 1;

-- 6.7 O filme "Central do Brasil" aparece no banco de dados?
-- R: Não aparece
SELECT nome_filme FROM indicados_ao_oscar WHERE nome_filme like 'Central do Brasil';

-- 6.8 Se sim, quantas indicações "Central do Brasil" recebeu?
-- R: Não aparece
SELECT COUNT(*) FROM indicados_ao_oscar WHERE nome_filme like 'Central do Brasil';