DROP DATABASE restaurante;
CREATE DATABASE restaurante;
USE restaurante;
CREATE TABLE gerente(
idGerente INT(8) AUTO_INCREMENT PRIMARY KEY,
rg VARCHAR(12) NOT NULL,
nome VARCHAR(30) NOT NULL,
dataNasc VARCHAR(33) NOT NULL,
telefone VARCHAR(15) NOT NULL,
endereco VARCHAR(100) NOT NULL,
cpf VARCHAR(14) NOT NULL,
login VARCHAR(30) NOT NULL,
senha VARCHAR(30) NOT NULL,
email VARCHAR(70) NOT NULL
);
CREATE TABLE garcom(
codGarcom INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(30) NOT NULL,
dataNasc VARCHAR(30) NOT NULL,
telefone VARCHAR(20) NOT NULL, 
endereco VARCHAR(100) NOT NULL,
cpf VARCHAR(14) NOT NULL,
escolaridade VARCHAR(40) NOT NULL,
senha VARCHAR(30) NOT NULL
);
CREATE TABLE conta(
idConta INT AUTO_INCREMENT PRIMARY KEY,
nomeGarcom VARCHAR(50) NOT NULL,
dataAbertura VARCHAR(50) NOT NULL,
hora VARCHAR(30) NOT NULL,
valorTotal VARCHAR(50) NOT NULL,
estado VARCHAR(1)
);
CREATE TABLE produto(
idProduto INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(30) NOT NULL,
porcao VARCHAR(55) NOT NULL,
valor FLOAT(100,2) NOT NULL,
categoria VARCHAR(40) NOT NULL,
quantidade INT(30) NOT NULL
);
CREATE TABLE mesa(
idMesa INT AUTO_INCREMENT PRIMARY KEY,
numeroMesa int(2) NOT NULL,
idGarcomM INT,
idProduto int,
FOREIGN KEY(idProduto) REFERENCES produto(idProduto),
FOREIGN KEY(idGarcomM) REFERENCES garcom(codGarcom)
);
