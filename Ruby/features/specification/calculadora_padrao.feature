# language: pt

@geral
Funcionalidade: Calculadora Padrão
  Como matematico, preciso de ajudar para efetuar calculo

@inicinado_app
  Cenario: Iniciar e finalizar aplicação
    Dado que a aplicação é iniciada
    Entao é exibido o valor "0"

@adicao
  # Encontrar os botoes e efetuar o calculo 1 + 7 = 8
  Cenario: Adição
     Dado que a aplicação é iniciada
     Quando clicar "Um"
     E clicar "Mais"
     E clicar "Sete"
     E clicar "Igual a"
     Então o resultado é exibido "8"

@multiplicacao
  # Encontrar botoes e clicar sequencia 9 x 9 = 81
  Cenario: Multiplicação
    Dado que a aplicação é iniciada
    Quando clicar "Nove"
    E clicar "Multiplicar por"
    E clicar "Nove"
    E clicar "Igual a"
    Então o resultado é exibido "81"

@divisao
@acessibilidade
  # Encontrar botoes por acessibilidade e clicar na sequencia 88 / 11 = 8
  Cenario: Divisão (por acessibilidade ID)
    Dado que a aplicação é iniciada
    Quando clicar "num8Button" por id
    E clicar "num8Button" por id
    E clicar "divideButton" por id
    E clicar "num1Button" por id
    E clicar "num1Button" por id
    E clicar "equalButton" por id
    Então o resultado é exibido "8"

@subtracao
@accessibility
  # Encontrar botoes por acessibilidade e clicar na sequencia 9 - 1 = 8
  Cenario: Subtração (por acessibilidade id)
    Dado que a aplicação é iniciada
    Quando clicar "num9Button" por id
    E clicar "minusButton" por id
    E clicar "num1Button" por id
    E clicar "equalButton" por id
    Então o resultado é exibido "8"

@template
  # Run sequence of button presses specified above and validate the results
  Esquema do Cenario: Calculos subsequentes
    Dado que a aplicação é iniciada
    Quando clicar "<left_operand>"
    E clicar "<operator>"
    E clicar "<right_operand>"
    E clicar "Igual a"
    Então o resultado é exibido "<expected>"

    Exemplos:
    | left_operand | operator    | right_operand | expected |
    | Um           | Mais        | Sete          | 8        |
    | Nove         | Menos       | Um            | 8        |
    | Oito         | Dividir por | Oito          | 1        |
