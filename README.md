# Projeto-TIL
Este projeto se trata de uma atividade da faculdade voltado para a construção de um sistema com o foco de oferecer um serviço de contratação de transporte escolar por parte dos pais e responsáveis para seus filhos/crianças.

# Descrição geral
## Usuários do sistema
* Clientes (Responsáveis): utilizam o sistema para solicitar o transporte para seus filhos/crianças
* Motorista: oferece o serviço de transporte que é disponibilizado pelo sistema
* Alunos (filhos): utiliza o serviço oferecido através da ferramenta, podendo acessar no sistema as informações do transporte.

## Requisitos Funcionais
1. Cadastro de serviço: o sistema deve permitir que um motorista cadastre um ou mais seviços que o mesmo ofereça, onde o mesmo deve informar o veículo utilizado considerando que um motorista pode ter mais de um veículo, informar ponto inicial do trajeto e ponto final do mesmo, tempo de trajeto, taxa por km e o total de km do trajeto.
2. Alterar serviço: o sistema deve permitir que um motorista altere as informações de um serviço que foi cadastrado anteriormente.
3. Excluir serviço: o sistema deve permitir ao motorista excluir os serviços já cadastrados (No caso estes serviços serão somente inativados, pois geralmente existirá dependências relacionadas a tabela do serviço)
4. Calcular taxa da rota: o sistema deve ser capaz de calcular a taxa da rota a ser percorrida.
5. Cadastrar cliente: o sistema deve permitir que novos clientes possam se cadastrar preenchendo um formulário.
6. Alterar cliente: o sistema deve permitir que um cliente possa alterar suas próprias informações.
7. Cadastrar crianças: o sistema deve permitir que um cliente possa cadastrar suas crianças para posteriormente vincular a uma solicitação de serviço.
7. Alterar crianças: o sistema deve permitir que um cliente possa alterar os dados suas crianças.
8. Cadastro de veículo: o sistema deve permitir que um motorista cadastre um ou mais veículos que serão vinculados aos serviços.  
9. Cadastro de motorista: o sistema deve permitir que um motorista se cadastre preenchendo um formulário.
10. Imprimir relatório de serviços prestados: o sistema deve permitir que o motorista gere um relatório de serviços prestados a um determinado cliente com suas devidas taxas.

# Execução
1. Criar container docker (caso ainda não tenha sido criado): deve-se rodar no terminal o comando docker run -d --name postgres -p 5432:5432 -e POSTGRES_PASSWORD="1234" postgres
2. Rodar os comando de criação do banco de dados: deve-se conectar ao banco de dados e executar os comandos no arquivo BD.sql
3. Ativar a venv: no terminal basta rodar o comando source .venv/bin/activate
4. Rodar aplicação: no terminal executar o comando flask --app nome_arquivo_principal run