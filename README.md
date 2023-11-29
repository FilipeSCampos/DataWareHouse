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

## Contribuições e Desenvolvimento

Este projeto está aberto a contribuições. Seja você um desenvolvedor, analista de dados ou entusiasta de tecnologia, sua colaboração é bem-vinda. Sinta-se à vontade para explorar o código, abrir issues ou propor melhorias.


---
