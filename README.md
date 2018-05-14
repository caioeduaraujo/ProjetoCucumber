# Projeto Cucumber e Selenium

# Exercício

Especificar 2 cenários de teste para o formulário de registro presente em ‘ http://demoqa.com/registration/ ’, a especificação deve ser escrita em ‘Gherkin’. Utilizar os frameworks Selenium e Cucumber, as demais tecnologias são de livre escolha.

# Introdução
Este projeto visa validar o cadastro de usuário no portal Tools QA. Foram criados 3 cenários de testes, são eles:
-	Cadastro válido no portal;
-	Validação de valor limite inserido no campo Senha;
-	Validação de valores correspondentes inseridos nos campos Senha e Confirmar Senha.

# Instalação
 - Firebug.
 - Chrome.
 - Cmder (Console Emulator).
 - Cromedriver
 - Sublime Text.

# Pré-requisitos

 - Instalar e configurar Ruby, Bundler e Cucumber no Cmder
 - Instalar Selenium (gem install selenium-webdriver)
 - Baixar ChromeDriver

Obs: Depois de fazer dowload do ruby e devkit utilizei o Cmder para a instalação destes arquivos e para configuração do ambiente (instalação gems (bundler,cucumber e selenium).
Para escrever os cenários em Gherkin e Selenium utilizei o editor de texto Sublime Text.

# Recursos de execução

 - Após configuração e instalação das ferramentas exigidas para montagem do ambiente:
 - Baixar o projeto;
 - abrir o projeto no Sublime Text. Ir na pasta step_definitions e editar o arquivo ruby cria_conta.rb;
 - Na primeira linha, editar o caminho em que foi instalado o chrome driver na maquina:
   exemplo: Selenium::WebDriver::Chrome.driver_path="C:/code/chromedriver.exe" 

 - Abrir Cmder;
 - Dentro do prompt de comando ir até a pasta raiz do Projeto denominada como \Projeto Cucumber\Projeto Cucumber;
 - Executar o comando 'cucumber' dentro da pasta raiz;
 - O chrome driver vai ser iniciado e todos os cenários de testes automatizados serão executados.
