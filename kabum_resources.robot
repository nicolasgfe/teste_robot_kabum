*** Settings ***
Library    SeleniumLibrary
Library     Screenshot

*** Variables ***
${URL}    https://www.kabum.com.br/

*** Keywords ***
Abrir navegador 
    Open Browser     browser=chrome
    Maximize Browser Window

Acessar a home page do site do Mercado Livre
    Go To    url=${URL}


Digitar na barra de pesquisa por "${NOME_PRODUTO}"
    Input Text    locator=input-busca    text=${NOME_PRODUTO}
    Click Element    locator=//button[contains(@aria-label,'Buscar')]
Verificar se aparece a frase "${NOME_PRODUTO}"
    Wait Until Element Is Visible    locator=//span[@height='54'][contains(.,'${NOME_PRODUTO}')]
Clicar no resultado para abrir produto "${NOME_PRODUTO}"
    Click Element    locator=//span[@height='54'][contains(.,'${NOME_PRODUTO}')]
Verificar se o produto "${NOME_PRODUTO}" é o correto 
    Element Should Be Visible    locator=//h1[@class='sc-58b2114e-6 brTtKt'][contains(.,'${NOME_PRODUTO}')]
Adicionar produto ao carrinho
    Click Element    locator=//div[contains(@class,'sc-607b01d6-4 Fsffc')]
Clicar no carrinho
    Click Element    locator=linkCarrinhoHeader
Verificar se o produto "${NOME_PRODUTO}" está adicionado ao carrinho
    Wait Until Element Is Visible    locator=//a[@href='/produto/486266/iphone-15-pro-apple-128gb-c-mera-tripla-48mp-tela-6-1-azul-tit-nio'][contains(.,'${NOME_PRODUTO}')]
Digitar o cep de entrega "${CEP}"
    Input Text    locator=address-zipcode-r:00    text=${CEP}
Clicar em ir paga pagamento 
    Click Element    locator=(//button[@class='styles__Button-sc-888987f0-0 hXqMbE Navigation-styles__NavigationButton-sc-ad20850a-1 Navigation-styles__PrimaryButton-sc-ad20850a-2 bkFnqM hmfpcZ'][contains(.,'Ir para o pagamento')])[1]