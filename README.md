# 🐾 Banco de Dados - Clínica Veterinária Vida Animal

Este projeto contém o modelo relacional e os scripts SQL para criação e povoamento do banco de dados da Clínica Veterinária "Vida Animal".

---

## Sobre o banco de dados

O sistema registra informações de:

- Animais de estimação (nome, espécie, raça, data de nascimento)
- Donos (que podem ter vários animais)
- Veterinários com suas especializações
- Consultas realizadas (data, hora, sintomas, diagnóstico, tratamento)
- Vacinas aplicadas (nome, fabricante, validade, data da aplicação)

---

## Desafios solucionados

- Relacionamento N:N entre veterinários e consultas
- Histórico detalhado de consultas por animal
- Controle das vacinas com datas específicas

---

## Consultas obrigatórias implementadas

1. Listar todos os animais de um determinado dono (nome, espécie, data de nascimento)  
2. Exibir o histórico de consultas de um animal (data, sintomas, veterinário)  
3. Contar o número de atendimentos por veterinário  
4. Listar animais que receberam determinada vacina, ordenados por data de aplicação  
5. Mostrar donos com mais de um animal cadastrado  

---

## Como usar

1. Clone o repositório:  
   ```bash
   git clone https://github.com/SidneyLobato/banco-ClinicaAnimal.git
