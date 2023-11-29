CREATE TABLE "Departamentos" (
  "DepartamentoID" int PRIMARY KEY,
  "Nome_Departamento" varchar(255)
);

CREATE TABLE "Projetos" (
  "ProjetoID" int PRIMARY KEY,
  "Nome_Projeto" varchar(255),
  "Data_Inicio" date,
  "Data_Conclusao" date
);

CREATE TABLE "Tarefas" (
  "TarefaID" int PRIMARY KEY,
  "Descricao" varchar(255),
  "ProjetoID" int,
  "Estado" varchar(50)
);

CREATE TABLE "Tickets_Suporte" (
  "TicketID" int PRIMARY KEY,
  "Descricao" varchar(255),
  "Data_Criacao" date,
  "Estado" varchar(50)
);

CREATE TABLE "Transacoes_Financeiras" (
  "TransacaoID" int PRIMARY KEY,
  "Descricao" varchar(255),
  "Valor" "decimal(10, 2)",
  "Data_Transacao" date
);

CREATE TABLE "Funcionarios" (
  "FuncionarioID" int PRIMARY KEY,
  "Nome" varchar(255),
  "Cargo" varchar(255),
  "DepartamentoID" int
);

CREATE TABLE "Fato_Funcionarios" (
  "FatoID" int PRIMARY KEY,
  "FuncionarioID" int,
  "DepartamentoID" int,
  "ProjetoID" int,
  "TarefaID" int,
  "TicketID" int,
  "TransacaoID" int,
  "DataInicio" date,
  "DataFim" date
);

ALTER TABLE "Tarefas" ADD FOREIGN KEY ("ProjetoID") REFERENCES "Projetos" ("ProjetoID");

ALTER TABLE "Funcionarios" ADD FOREIGN KEY ("DepartamentoID") REFERENCES "Departamentos" ("DepartamentoID");

ALTER TABLE "Fato_Funcionarios" ADD FOREIGN KEY ("FuncionarioID") REFERENCES "Funcionarios" ("FuncionarioID");

ALTER TABLE "Fato_Funcionarios" ADD FOREIGN KEY ("DepartamentoID") REFERENCES "Departamentos" ("DepartamentoID");

ALTER TABLE "Fato_Funcionarios" ADD FOREIGN KEY ("ProjetoID") REFERENCES "Projetos" ("ProjetoID");

ALTER TABLE "Fato_Funcionarios" ADD FOREIGN KEY ("TarefaID") REFERENCES "Tarefas" ("TarefaID");

ALTER TABLE "Fato_Funcionarios" ADD FOREIGN KEY ("TicketID") REFERENCES "Tickets_Suporte" ("TicketID");

ALTER TABLE "Fato_Funcionarios" ADD FOREIGN KEY ("TransacaoID") REFERENCES "Transacoes_Financeiras" ("TransacaoID");
