# infra-asa

Repositório destinado à atividade avaliativa do 1º bimestre da disciplina de Administração de Sistemas Abertos - Semestre letivo de 2022.1. Curso superior de Tecnologia em Redes de Computadores - [IFRN](https://portal.ifrn.edu.br) - Campus Natal-Central.

Prof. Dr.º [Francisco de Lima Sales Filho](https://github.com/salesfilho)

[Atividade](https://github.com/salesfilho/asa):
```
  Administração de Sistemas Abertos - ASA
  Este repositório tem como principal objetivo ajudar os alunos no aprendizado de gerenciamento de serviços containerizados

  Atvividade - ETAPA 01
    1. Criar um repositório chamado infra-asa
    2. Criar uma pasta (dns) com as configurações da infraestrutura para a zona prova.asa.br
    3. Criar uma pasta com (web1) com as configurações da infraestrutura para um site web usando nginx
    4. Criar uma pasta com (web2) com as configurações da infraestrutura para um site web usando apache
    5. Criar as configurações de DNS para web1 como s1.prova.asa.br
    6. Criar as configurações de DNS para web2 como s2.prova.asa.br
    7. Criar um programa (script) para iniciar e parar os três containers que compõem a estrutura
```
### Para subir a infra:

1. Executar o script control_infra.sh com o parâmetro build para que as imagens sejam construídas:

```sh
  bash control_infra.sh build
```

2. Executar o script control_infra.sh com o parâmetro up para subir os containers:
```sh
  bash control_infra.sh up
```
### Para parar a infra:

Executar o script com o parâmetro down:
```sh
  bash control_infra.sh down
```
