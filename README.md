# Data Warehouse e ETL 

## Visão Geral

Este projeto representa uma iniciativa para estabelecer uma arquitetura robusta de Data Warehouse e realizar processos de Extração, Transformação e Carga (ETL). A empresa, focada em tecnologia de ponta, busca unificar dados provenientes de diferentes fontes, incluindo desenvolvimento de software, gestão de projetos, suporte ao cliente, recursos humanos e finanças.

A arquitetura proposta visa otimizar o ciclo de vida do produto, aprimorar o suporte ao cliente, facilitar a gestão de talentos e embasar decisões estratégicas de inovação. Utilizando tecnologias como Python, Apache Spark, PostgreSQL, S3 Bucket, MongoDB, PowerBI, Streamlit e Apache Airflow, a estrutura é pensada para proporcionar flexibilidade, escalabilidade e eficiência.

## Componentes Principais

## Arquitetura
![Arquitetura-1](https://github.com/FilipeSCampos/DataWareHouse/assets/113521439/8bb918ab-e6b8-462d-833b-0708eecf1a46)


### 1. Fontes Externas

As fontes externas representam a base de dados brutos provenientes de diversas áreas da empresa. Esses dados são heterogêneos e distribuídos, exigindo uma estratégia eficaz para centralizá-los.

### 2. Camada de Ingestão (Python)

A camada de ingestão atua como a porta de entrada dos dados. Utilizando Python, os dados são recebidos das fontes externas, passando por processos de limpeza e transformação inicial.

### 3. Camada de Processamento (Python, Apache Spark, Jupyter Hub)

Nesta camada, os dados passam por transformações mais elaboradas. O Apache Spark é empregado para processamento distribuído, enquanto o Jupyter Hub possibilita a exploração interativa, fornecendo insights valiosos.

### 4. Camada de Persistência (PostgreSQL, S3 Bucket, MongoDB)

Os dados processados são armazenados em diferentes sistemas, escolhidos de acordo com as características específicas de cada tipo de dado. Isso permite a fácil recuperação e consulta posterior.

### 5. Camada de Consumo (PowerBI, Streamlit)

A camada de consumo oferece interfaces visuais para explorar e analisar os dados consolidados. Ferramentas como PowerBI e Streamlit possibilitam a criação de dashboards interativos e relatórios personalizados.

### 6. Camada de Orquestração (Airflow)

A orquestração dos fluxos de trabalho de ETL é gerenciada pelo Apache Airflow. Esse componente permite agendar, monitorar e executar tarefas de forma eficiente, garantindo a integridade do processo.

## Modelo de Dados

O modelo de dados adotado neste projeto é o Modelo de Estrela, uma abordagem que oferece simplicidade e desempenho para análise de dados. Esse modelo consiste em uma tabela de fatos central, ligada a tabelas de dimensões que fornecem contextos detalhados.
![MER-2](https://github.com/FilipeSCampos/DataWareHouse/assets/113521439/4d4a3ea4-f023-4b9a-b055-290e07b52e55)


### Tabelas Principais

1. **Departamentos:**
   - **DepartamentoID:** Identificador único do departamento.
   - **Nome_Departamento:** Nome descritivo do departamento.

2. **Projetos:**
   - **ProjetoID:** Identificador único do projeto.
   - **Nome_Projeto:** Nome descritivo do projeto.
   - **Data_Inicio:** Data de início do projeto.
   - **Data_Conclusao:** Data de conclusão do projeto.

3. **Tarefas:**
   - **TarefaID:** Identificador único da tarefa.
   - **Descricao:** Descrição da tarefa.
   - **ProjetoID:** Chave estrangeira para relacionamento com projetos.
   - **Estado:** Estado atual da tarefa.

4. **Tickets_Suporte:**
   - **TicketID:** Identificador único do ticket de suporte.
   - **Descricao:** Descrição do ticket.
   - **Data_Criacao:** Data de criação do ticket.
   - **Estado:** Estado atual do ticket.

5. **Transacoes_Financeiras:**
   - **TransacaoID:** Identificador único da transação financeira.
   - **Descricao:** Descrição da transação.
   - **Valor:** Valor da transação.
   - **Data_Transacao:** Data da transação.

6. **Funcionarios:**
   - **FuncionarioID:** Identificador único do funcionário.
   - **Nome:** Nome do funcionário.
   - **Cargo:** Cargo do funcionário.
   - **DepartamentoID:** Chave estrangeira para relacionamento com departamentos.

7. **Fato_Funcionarios:**
   - **FatoID:** Identificador único da tabela de fatos.
   - **FuncionarioID:** Chave estrangeira para relacionamento com funcionários.
   - **DepartamentoID:** Chave estrangeira para relacionamento com departamentos.
   - **ProjetoID:** Chave estrangeira para relacionamento com projetos.
   - **TarefaID:** Chave estrangeira para relacionamento com tarefas.
   - **TicketID:** Chave estrangeira para relacionamento com tickets de suporte.
   - **TransacaoID:** Chave estrangeira para relacionamento com transações financeiras.
   - **DataInicio:** Data de início da atividade.
   - **DataFim:** Data de conclusão da atividade.

## Próximos Passos

O projeto está em constante evolução, e os próximos passos incluem:

- Implementar testes automatizados para garantir a integridade e qualidade do código.
- Explorar a possibilidade de adicionar novas fontes de dados para enriquecer o Data Warehouse.
- Aperfeiçoar os dashboards no PowerBI e Streamlit para melhorar a experiência de usuário.

## Contribuições e Feedback

Contribuições e feedbacks são essenciais para o sucesso deste projeto. Sinta-se à vontade para abrir issues relatando problemas, sugerir melhorias ou contribuir diretamente para o código-fonte.

---
