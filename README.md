# Oscar - Exercícios SQL

Bem-vindo à base de dados do Oscar!

O Oscar é a premiação mais prestigiada do cinema mundial, realizada anualmente desde 1929 pela Academia de Artes e Ciências Cinematográficas. Nesta base de dados, você encontrará registros históricos de indicados e vencedores de diversas categorias ao longo de quase 100 anos de história do cinema.

Nestes exercícios, você vai explorar o banco de dados SQL do Oscar e responder perguntas que revelam insights fascinantes sobre a história do cinema, tendências de premiação, e momentos marcantes da indústria cinematográfica.

---

# Avaliação

* Nível 1-4: Operações básicas e queries simples
* Nível 5-8: Agregações e análise de dados
* Nível 9-11: Queries complexas e pensamento analítico
* Nível 12-14: Expertise avançada e pensamento estratégico

Objetivo de aprendizado: Ao completar todos os níveis, você será capaz de trabalhar com bases de dados históricas complexas, realizar análises estatísticas sofisticadas e extrair insights valiosos de grandes volumes de dados.

---

# Nível 1: Primeiros Passos

## Conhecendo a Base de Dados

### 1.1 Quantos registros existem na tabela de indicados ao Oscar?

**R:** 11134 registros

```sql
SELECT COUNT(*) FROM indicados_ao_oscar;
```

---

### 1.2.1 Quais são as diferentes categorias de premiação que existem no banco de dados? Liste todas as categorias únicas.

**R:** Lista de categorias retornadas pela query.

```sql
SELECT DISTINCT categoria FROM indicados_ao_oscar;
```

---

### 1.2.2 Quantas categorias únicas existem?

**R:** 121 categorias

```sql
SELECT categoria, COUNT(*) 
FROM indicados_ao_oscar 
GROUP BY categoria 
ORDER BY COUNT(*);
```

---

### 1.3 Qual foi o primeiro ano de cerimônia do Oscar registrado na base?

**R:** A primeira cerimônia foi em 1928

```sql
SELECT ano_cerimonia 
FROM indicados_ao_oscar 
ORDER BY ano_cerimonia 
LIMIT 1;
```

---

### 1.4 Qual foi o último ano de cerimônia registrado na base?

**R:** A última cerimônia foi em 2026

```sql
SELECT DISTINCT ano_cerimonia 
FROM indicados_ao_oscar 
ORDER BY ano_cerimonia DESC 
LIMIT 1;
```

---

### 1.5 Quantas cerimônias do Oscar estão registradas no total?

**R:** São 98 cerimônias registradas no total

```sql
SELECT COUNT(DISTINCT ano_cerimonia) 
FROM indicados_ao_oscar;
```

---

### 1.6 Atualize os registros da tabela com os dados do Oscar 2025 e 2026.

**R:** Adicionado

---

# Nível 2: Explorando Categorias

### 2.1 Quantas indicações existem para cada categoria? Agrupe por categoria e ordene da mais frequente para a menos frequente.

**R:** Do menos frequente até o mais frequente

```sql
SELECT categoria, COUNT(*) AS total_indicacoes 
FROM indicados_ao_oscar 
GROUP BY categoria 
ORDER BY total_indicacoes DESC;
```

---

### 2.2 Qual categoria teve mais indicações ao longo da história do Oscar?

**R:** DIRECTING com 469 indicações

```sql
SELECT categoria, COUNT(*) AS total_indicacoes 
FROM indicados_ao_oscar 
GROUP BY categoria 
ORDER BY total_indicacoes DESC 
LIMIT 1;
```

---

### 2.3 Qual categoria teve menos indicações ao longo da história?

**R:** SPECIAL ACHIEVEMENT AWARD (Sound Effects)

```sql
SELECT categoria, COUNT(*) AS total_indicacoes 
FROM indicados_ao_oscar 
GROUP BY categoria 
ORDER BY total_indicacoes 
LIMIT 1;
```

---

### 2.4 A partir de que ano a categoria "ACTRESS" deixou de existir?

**R:** A partir do ano de 1977

```sql
SELECT categoria, ano_cerimonia 
FROM indicados_ao_oscar 
WHERE categoria = 'ACTRESS' 
ORDER BY ano_cerimonia DESC 
LIMIT 1;
```

---

### 2.5 Quais categorias existiam na primeira cerimônia (1928) e não existem mais hoje?

**R:** ...

```sql
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
```

---

### 2.6 Liste todas as categorias que contêm a palavra "DIRECTING" no nome.

**R:** DIRECTING, DIRECTING (Comedy Picture), DIRECTING (Dramatic Picture)

```sql
SELECT DISTINCT categoria 
FROM indicados_ao_oscar 
WHERE categoria LIKE '%DIRECTING%';
```

---

# Nível 3: Atores e Atrizes Famosos

## Natalie Portman

### 3.1 Quantas vezes Natalie Portman foi indicada ao Oscar?

**R:** 3 vezes

```sql
SELECT COUNT(*) nome_indicado 
FROM indicados_ao_oscar 
WHERE nome_indicado LIKE '%Natalie Portman%';
```

---

### 3.2 Quantos Oscars Natalie Portman ganhou?

**R:** Ela ganhou 1 vez

```sql
SELECT nome_indicado, vencedor 
FROM indicados_ao_oscar 
WHERE nome_indicado LIKE '%Natalie Portman%' 
AND vencedor = 1;
```

---

### 3.3 Em quais anos e por quais filmes Natalie Portman foi indicada?

**R:** 2004, 2010 e 2016

```sql
SELECT nome_indicado, vencedor, ano_filmagem 
FROM indicados_ao_oscar 
WHERE nome_indicado LIKE '%Natalie Portman%';
```

---

### 3.4 Liste todas as indicações de Natalie Portman mostrando: ano, categoria, filme e se venceu.

**R:** nome, ano, categoria, filme, venceu?

```sql
SELECT nome_indicado, ano_cerimonia, categoria, nome_filme, vencedor 
FROM indicados_ao_oscar 
WHERE nome_indicado LIKE '%Natalie Portman%';
```

---

## Viola Davis

### 3.5 Quantas vezes Viola Davis foi indicada ao Oscar?

**R:** 4 vezes

```sql
SELECT COUNT(*) nome_indicado 
FROM indicados_ao_oscar 
WHERE nome_indicado LIKE '%Viola Davis%';
```

---

### 3.6 Quantos Oscars Viola Davis ganhou?

**R:** Ela ganhou 1 vez

```sql
SELECT nome_indicado, vencedor 
FROM indicados_ao_oscar 
WHERE nome_indicado LIKE '%Viola Davis%';
```

---

### 3.7 Por quais filmes Viola Davis foi indicada?

**R:** Doubt, The Help, Fences e Ma Rainey's Black Bottom

```sql
SELECT nome_indicado, nome_filme 
FROM indicados_ao_oscar 
WHERE nome_indicado LIKE '%Viola Davis%';
```

---

## Amy Adams

### 3.8 Amy Adams já ganhou algum Oscar?

**R:** Ela não ganhou nenhum oscar

```sql
SELECT nome_indicado, vencedor 
FROM indicados_ao_oscar 
WHERE nome_indicado LIKE '%Amy Adams%' 
AND vencedor = 1;
```

---

### 3.9 Quantas vezes Amy Adams foi indicada sem ganhar?

**R:** Ela foi indicada 6 vezes

```sql
SELECT COUNT(*) nome_indicado 
FROM indicados_ao_oscar 
WHERE nome_indicado LIKE '%Amy Adams%' 
AND vencedor = 0;
```

---

## Denzel Washington

### 3.10 Denzel Washington já ganhou algum Oscar?

**R:** Ele ganhou 2 vezes

```sql
SELECT nome_indicado, vencedor 
FROM indicados_ao_oscar 
WHERE nome_indicado LIKE '%Denzel Washington%' 
AND vencedor = 1;
```

---

### 3.11 Quantas vezes Denzel Washington foi indicado ao Oscar?

**R:** Ele foi indicado 10 vezes

```sql
SELECT COUNT(*) nome_indicado 
FROM indicados_ao_oscar 
WHERE nome_indicado LIKE '%Denzel Washington%';
```

---

### 3.12 Liste todos os Oscars que Denzel Washington ganhou (ano, categoria, filme).

**R:** nome, ano, categoria, filme, venceu

```sql
SELECT nome_indicado, ano_cerimonia, categoria, nome_filme, vencedor 
FROM indicados_ao_oscar 
WHERE nome_indicado LIKE '%Denzel Washington%' 
AND vencedor = '1';
```

---

# Nível 4: Vencedores Históricos

### 4.1 Quem ganhou o primeiro Oscar para Melhor Atriz (ACTRESS)? Em que ano e por qual filme?

**R:** Louise Dresser em 1927 pelo filme A Ship Comes In

```sql
SELECT DISTINCT nome_indicado,categoria, ano_filmagem, nome_filme 
FROM indicados_ao_oscar 
WHERE categoria LIKE '%ACTRESS%' 
LIMIT 1;
```

---

### 4.2 Quem ganhou o primeiro Oscar para Melhor Ator (ACTOR)? Em que ano e por qual filme?

**R:** Richard Barthelmess em 1927 pelo filme The Noose

```sql
SELECT DISTINCT nome_indicado, categoria, ano_filmagem, nome_filme 
FROM indicados_ao_oscar 
WHERE categoria LIKE '%ACTOR%' 
LIMIT 1;
```

---

### 4.3 Quantos vencedores existem ao todo na base de dados?

**R:** 2513

```sql
SELECT COUNT(*) nome_indicado 
FROM indicados_ao_oscar 
WHERE vencedor = 1;
```

---

### 4.4 Liste todos os filmes que ganharam o Oscar de Melhor Filme.

**R:** Tá listado

```sql
SELECT DISTINCT nome_filme, categoria, vencedor 
FROM indicados_ao_oscar 
WHERE vencedor = 1 
AND categoria IN ('OUTSTANDING PICTURE', 'BEST PICTURE');
```

---

### 4.5 Quantos filmes diferentes já ganharam o Oscar?

**R:** 2513

```sql
SELECT DISTINCT COUNT(*) vencedor 
FROM indicados_ao_oscar 
WHERE vencedor = 1;
```

---

# Nível 5: Análise de Indicações

### 5.1 Quais atores/atrizes foram indicados mais de uma vez?

**R:** Timothée Chalamet

```sql
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
```

---

### 5.2 Qual ator ou atriz tem o maior número de indicações na história do Oscar?

**R:** Meryl Streep 21 indicações

```sql
SELECT nome_indicado, COUNT(*) AS total_categoria 
FROM indicados_ao_oscar 
WHERE categoria LIKE '%ACTRESS%' 
OR categoria LIKE '%ACTOR%' 
GROUP BY nome_indicado 
ORDER BY total_categoria DESC 
LIMIT 1;
```

---

### 5.3 Quais atores foram indicados mais de 3 vezes, mas nunca ganharam?

**R:** ...

```sql
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
```

---

### 5.4 Encontre todos os artistas que foram indicados em categorias diferentes.

**R:** ...

```sql
SELECT 
    nome_indicado,
    COUNT(DISTINCT categoria) AS total_categorias
FROM indicados_ao_oscar
WHERE nome_indicado IS NOT NULL
GROUP BY nome_indicado
HAVING COUNT(DISTINCT categoria) > 1
ORDER BY total_categorias DESC, nome_indicado;
```

---

### 5.5 Quantos indicados têm exatamente 1 indicação na história?

**R:** 5670...

```sql
SELECT COUNT(*) AS total_pessoas_com_1_indicacao
FROM (
    SELECT nome_indicado
    FROM indicados_ao_oscar
    WHERE nome_indicado IS NOT NULL
    GROUP BY nome_indicado
    HAVING COUNT(*) = 1
) AS sub;
```

---

### 5.6 Qual o maior números de indicados em um único ano?

**R:** ...

```sql
SELECT 
    edicao_cerimonia,
    ano_cerimonia,
    COUNT(*) AS total_indicados
FROM indicados_ao_oscar
GROUP BY edicao_cerimonia, ano_cerimonia
ORDER BY total_indicados DESC
LIMIT 1;
```

---

# Nível 6: Análise de Filmes

## Toy Story

### 6.1 A série de filmes Toy Story ganhou Oscars em quais anos?

**R:** Ganhou em 2011 duas vezes ganhou novamente em 2020

```sql
SELECT nome_filme, ano_cerimonia, categoria 
FROM indicados_ao_oscar 
WHERE vencedor = 1 
AND nome_filme LIKE '%Toy Story%';
```

---

### 6.2 Quantas indicações a franquia Toy Story recebeu no total?

**R:** 11 indicações

```sql
SELECT COUNT(*) 
FROM indicados_ao_oscar 
WHERE nome_filme LIKE '%Toy Story%';
```

---

### 6.3 Em quais categorias os filmes Toy Story foram indicados?

**R:** MUSIC (Original Musical or Comedy Score), MUSIC (Original Song), WRITING (Screenplay Written Directly for the Screen), MUSIC (Original Song), ANIMATED FEATURE FILM, MUSIC (Original Song), BEST PICTURE, SOUND EDITING, WRITING (Adapted Screenplay), ANIMATED FEATURE FILM, MUSIC (Original Song)

```sql
SELECT DISTINCT nome_filme, categoria 
FROM indicados_ao_oscar 
WHERE nome_filme LIKE '%Toy Story%';
```

---

## Crash

### 6.4 Em qual edição do Oscar o filme "Crash" concorreu?

**R:** Crash concorreu na edição 78

```sql
SELECT nome_filme, edicao_cerimonia 
FROM indicados_ao_oscar 
WHERE nome_filme = 'Crash';
```

---

### 6.5 Quantas indicações o filme "Crash" recebeu?

**R:** Crash recebeu 6 indicações

```sql
SELECT COUNT(*) 
FROM indicados_ao_oscar 
WHERE nome_filme = 'Crash';
```

---

### 6.6 "Crash" ganhou o Oscar de Melhor Filme?

**R:** Crash ganhou 1 vez como melhor filme e outras 2 vezes em outras categorias

```sql
SELECT nome_filme, categoria, vencedor 
FROM indicados_ao_oscar 
WHERE nome_filme = 'Crash' 
AND vencedor = 1;
```

---

## Central do Brasil

### 6.7 O filme "Central do Brasil" aparece no banco de dados?

**R:** Não aparece

```sql
SELECT nome_filme 
FROM indicados_ao_oscar 
WHERE nome_filme LIKE 'Central do Brasil';
```

---

### 6.8 Se sim, quantas indicações "Central do Brasil" recebeu?

**R:** Não aparece

```sql
SELECT COUNT(*) 
FROM indicados_ao_oscar 
WHERE nome_filme LIKE 'Central do Brasil';
```

---
