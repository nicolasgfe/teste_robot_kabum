*** Settings ***
Documentation    Esse é o melhor codigo de teste do mundo
Resource    kabum_resources.robot

*** Test Cases ***
Caso de testes para adicionar produto ao carrinho no Mercado Livre
    [Documentation]
    [Tags]
    Abrir navegador
    Acessar a home page do site do Mercado Livre
    Digitar na barra de pesquisa por "iPhone 15 Pro"
    Verificar se aparece a frase "iPhone 15 Pro Apple 128GB, Câmera Tripla 48MP, Tela 6.1", Azul Titânio"
    Clicar no resultado para abrir produto "iPhone 15 Pro Apple 128GB, Câmera Tripla 48MP, Tela 6.1", Azul Titânio"
    Verificar se o produto "iPhone 15 Pro Apple 128GB, Câmera Tripla 48MP, Tela 6.1", Azul Titânio" é o correto 
    Adicionar produto ao carrinho
    Clicar no carrinho
    Verificar se o produto "Phone 15 Pro Apple 128GB, Câmera Tripla 48MP, Tela 6.1", Azul Titânio" está adicionado ao carrinho
    Digitar o cep de entrega "85635000"
    Clicar em ir paga pagamento 

