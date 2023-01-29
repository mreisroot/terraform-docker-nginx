# Container NGINX criado pelo Terraform

Neste projeto, há a criação de um container Docker do servidor web NGINX através do Terraform.

## Preparando e executando a automação

1. [Instale o Docker em sua máquina](https://docs.docker.com/get-docker/)

2. [Instale o Terraform em sua máquina](https://developer.hashicorp.com/terraform/downloads)

3. Permissões do Docker

Por padrão, o Docker executa os containers com privilégios de superusuário/administrador, e como pode há a possibilidade de se executar o script Terraform como usuário comum, necessário se faz conceder ao usuário comum permissões para executar o Docker.

Caso esteja utilizando um usuário comum em um sistema operacional UNIX-like, como Linux e Mac, adicione o seu usuário ao grupo docker:

`$ sudo usermod -aG docker <nome_do_seu_usuário>`

[Permissões no Windows](https://docs.docker.com/desktop/windows/permission-requirements/)

4. Siga os passos da seção *Como usar este projeto*

## Resultados

Após a execução do script Terraform, sua máquina terá:

1. A imagem de container do NGINX na versão mais recente

2. Um container do servidor NGINX com redirecionamento de portas 8080:80

## Como usar este projeto

1. Inicialize o Terraform no diretório em que o script está localizado:

`$ terraform init`

Este comando irá configurar o Terraform de acordo com o provider especificado no arquivo **main.tf**.

2. Crie a infraestrutura:

`$ terraform apply`

Digite yes e pressione ENTER quando aparecer um prompt de confirmação do comando.

3. Acesse o servidor NGINX digitando o endereço na barra de pesquisa de um navegador web:

`localhost:8080`

4. Para destruir a infraestrutura criada, digite o comando:

`$ terraform destroy`

Digite yes e pressione ENTER quando aparecer um prompt de confirmação do comando.

## Dica

Caso queira criar e destruir infraestrutura sem precisar interagir com o prompt de confirmação, execute os comandos de criação e destruição do Terraform com o parâmetro -auto-approve:

**Criação**

`$ terraform apply -auto-approve`

**Destruição**

`$ terraform destroy -auto-approve`

O parâmetro -auto-approve faz a aprovação automática das ações do Terraform, prevenindo a necessidade de intervenção por parte do usuário.
