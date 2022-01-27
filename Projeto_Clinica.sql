
CREATE DATABASE  Clinica;

USE Clinica;




CREATE TABLE IF NOT EXISTS Bairros (
  Cod_bairro INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(45) NOT NULL,
  Cidade VARCHAR(45) NOT NULL

  );
  

CREATE TABLE IF NOT EXISTS Enderecos (
  Cod_endereco INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(45) NOT NULL,
  Cep_rua VARCHAR(45) NOT NULL,
  Tipo_endereco VARCHAR(45) NOT NULL,
  Complemento VARCHAR(45) NOT NULL,
  Cod_bairro INT NOT NULL,
  FOREIGN KEY (Cod_bairro)
  REFERENCES Bairros (Cod_bairro)
);

 
CREATE TABLE IF NOT EXISTS Planos (
  Cod_plano INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(45) NOT NULL,
  CNPJ VARCHAR(45) NOT NULL
  
  );



CREATE TABLE IF NOT EXISTS Cartao (
  Id_cartao INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(45) NOT NULL,
  Numero_do_cartão VARCHAR(45) NOT NULL,
  Cod_segurança INT NOT NULL
  
  );




CREATE TABLE IF NOT EXISTS Pagamentos (
  Cod_pagamento INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(45) NOT NULL,
  Outra_forma VARCHAR(45),
  Id_cartao INT,
  Cod_plano INT,
  FOREIGN KEY (Id_cartao)
  REFERENCES Cartao (Id_cartao),
  
  FOREIGN KEY (Cod_plano)
  REFERENCES Planos (Cod_plano)
);



CREATE TABLE IF NOT EXISTS Clientes (
  Cod_cliente INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(45) NOT NULL,
  Cpf VARCHAR(45) NOT NULL,
  Idade VARCHAR(45) NOT NULL,
  Telefone VARCHAR(45) NOT NULL,
  Cod_pagamento INT NOT NULL,
  Cod_endereco INT NOT NULL,
  FOREIGN KEY (Cod_endereco)
  REFERENCES Enderecos (Cod_endereco),
  
  FOREIGN KEY (Cod_pagamento)
  REFERENCES Pagamentos (Cod_pagamento)
    
);



CREATE TABLE IF NOT EXISTS Usuarios (
  Cod_usuario INT AUTO_INCREMENT PRIMARY KEY,
  login VARCHAR(45) NOT NULL,
  senha VARCHAR(45) NOT NULL,
  Cod_cliente INT NOT NULL,
  
  FOREIGN KEY (Cod_cliente)
  REFERENCES Clientes (Cod_cliente)
    
);



CREATE TABLE IF NOT EXISTS Exames (
  Cod_exame INT AUTO_INCREMENT PRIMARY KEY,
  Nome_exame VARCHAR(45) NOT NULL,
  Tipo_Material VARCHAR(45) NOT NULL

);



CREATE TABLE IF NOT EXISTS Area_de_trabalho (
  Cod_area INT AUTO_INCREMENT PRIMARY KEY,
  Nome_setor VARCHAR(45)NOT NULL,
  Chefe_setor VARCHAR(45) NOT NULL

);




CREATE TABLE IF NOT EXISTS Enfermeiros (
  Cip_enfermeiro INT AUTO_INCREMENT PRIMARY KEY,
  Nivel VARCHAR(45) NOT NULL,
  Tempo_carreira VARCHAR(45) NOT NULL,
  Cod_area INT NOT NULL,
  
  FOREIGN KEY (Cod_area)
  REFERENCES Area_de_trabalho (Cod_area)
    
);

CREATE TABLE IF NOT EXISTS Funcionarios (
  Cod_funcionario INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(45) NOT NULL,
  Telefone VARCHAR(45) NOT NULL,
  Cod_area INT NOT NULL,
  Cod_endereco INT NOT NULL,
  FOREIGN KEY (Cod_area)
  REFERENCES Area_de_trabalho (Cod_area),
  
  FOREIGN KEY (Cod_endereco)
  REFERENCES Enderecos (Cod_endereco)
    
); 




CREATE TABLE IF NOT EXISTS Folha_de_pagamentos (
  Cod_contrato INT AUTO_INCREMENT PRIMARY KEY,
  Data_contratacao DATE NOT NULL,
  Data_renovacao DATE NOT NULL,
  Salario INT NOT NULL,
  Cod_funcionario INT NOT NULL,
  FOREIGN KEY (Cod_funcionario)
  REFERENCES Funcionarios (Cod_funcionario)
    
); 



CREATE TABLE IF NOT EXISTS Fornecedores (
  Cod_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(45) NOT NULL,
  CNPJ VARCHAR(45) NOT NULL,
  Telefone VARCHAR(45) NOT NULL,
  Valor INT NOT NULL,
  Cod_endereco INT NOT NULL,
  FOREIGN KEY (Cod_endereco)
  REFERENCES Enderecos (Cod_endereco)
    
); 



CREATE TABLE IF NOT EXISTS Instrumentos (
  Cod_instrumento INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(45)NOT NULL,
  Tipo VARCHAR(45) NOT NULL,
  Tamanho VARCHAR(45) NOT NULL,
  Quantidade INT NOT NULL,
  Cod_exame INT NOT NULL,
  Cod_fornecedor INT NOT NULL,
  FOREIGN KEY (Cod_fornecedor)
  REFERENCES Fornecedores (Cod_fornecedor),
  
  FOREIGN KEY (Cod_exame)
  REFERENCES Exames (Cod_exame)
    
); 

 
CREATE TABLE IF NOT EXISTS Pagamento_has_Exames(
Cod_pagamento INT NOT NULL,
Cod_exame INT NOT NULL,
PRIMARY KEY(Cod_pagamento, Cod_exame),
valor  INT NOT NULL,

  FOREIGN KEY  (Cod_pagamento)   REFERENCES Pagamentos (Cod_pagamento),
  FOREIGN KEY (Cod_exame)   REFERENCES Exames (Cod_exame)
);




CREATE TABLE IF NOT EXISTS Consultas (
  Cod_consulta INT AUTO_INCREMENT PRIMARY KEY,
  Horario_consulta DATETIME NOT NULL,
  Cod_usuario INT NOT NULL,
  Cod_pagamento INT NOT NULL,
  Cod_exame INT NOT NULL,
  Cip_enfermeiro INT NULL,
  
  FOREIGN KEY (Cod_usuario)
  REFERENCES Usuarios (Cod_usuario),
  
 FOREIGN KEY (Cod_pagamento)   REFERENCES Pagamento_has_Exames (Cod_pagamento),
 FOREIGN KEY (Cod_exame)   REFERENCES Pagamento_has_Exames (Cod_exame),
  
  FOREIGN KEY (Cip_enfermeiro)
  REFERENCES Enfermeiros (Cip_enfermeiro)
  
    
);


CREATE TABLE IF NOT EXISTS Doc (
  Cod_Doc INT AUTO_INCREMENT PRIMARY KEY,
  Nome_substancia_encontrada VARCHAR(45) NOT NULL,
  Quantidade_subs_encontrada VARCHAR(45) NOT NULL,
  Quantidade_recomendada VARCHAR(45) NOT NULL
 
);



CREATE TABLE IF NOT EXISTS Resultados (
  Cod_consulta INT NOT NULL,
  Cod_doc INT NOT NULL,
  primary key(Cod_consulta, Cod_doc),
  
 FOREIGN KEY (Cod_consulta) REFERENCES Consultas (Cod_consulta),
 FOREIGN KEY(Cod_Doc) REFERENCES Doc (Cod_Doc)
    
);


