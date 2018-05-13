#language: pt
Funcionalidade: Criar um cadastro no site TOOLS QA
	Eu quero criar uma registro válido no site Tools QA.

Cenário: criando conta no Tools QA
	Dado o site do Tools QA
	Quando o usuário preencher todos os campos com valores válidos no Formulario
	E clicar no botão Submit 
	Então é exibida a mensagem de cadastro com sucesso

Cenário: validar limite de caractere no campo Senha e Confirmar Senha
	Dado o site do Tools QA
	Quando o usuário preencher os campos do Formulario
	E preencher no campo senha e Confirmar Senha menos de 8 caracteres
	E clicar no botão Submit 
	Então é exibida a mensagem no campo Senha da quantidade de caracteres permitida no campo

Cenário: validar informações inseridas no campo Senha e Confirmar Senha
	Dado o site do Tools QA
	Quando o usuário preencher os campos do Formulario
	E preencher o campo Confirmar Senha com valor diferente do campo Senha
	E clicar no botão Submit
	Então é exibida mensagem no campo Senha  
