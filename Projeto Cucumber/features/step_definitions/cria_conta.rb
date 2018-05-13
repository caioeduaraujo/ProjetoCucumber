Selenium::WebDriver::Chrome.driver_path="C:/code/chromedriver.exe" 

Dado("o site do Tools QA") do
  #Declarando a variável @Driver atribuindo o Webdriver do Chrome.
  @driver = Selenium::WebDriver.for :chrome
  #Pedindo para ir para o endereço do Tools QA
  @driver.get "http://demoqa.com/registration/"
  sleep 3
end
 
Quando("o usuário preencher todos os campos com valores válidos no Formulario") do

  #campo nome
  @driver.find_element(:id, "name_3_firstname").send_keys (" Teste Qualidade ")
  #campo sobrenome
  @driver.find_element(:id, "name_3_lastname").send_keys ("Lessa Paulo")
  #estado solteira
  @driver.find_element(:xpath, "//*[@id='pie_register']/li[2]/div/div/input[1]").click
  sleep 3
  #hobby leitura
  @driver.find_element(:xpath, "//*[@id='pie_register']/li[3]/div/div/input[2]").click


  #campo pais
  @driver.find_element(:id, "dropdown_7").click
  Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "dropdown_7")).select_by(:text, "Brazil")
  @driver.find_element(:id, "dropdown_7").click

  #campo data
    #mes
    @driver.find_element(:id, "mm_date_8").click
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "mm_date_8")).select_by(:text, "7")
    @driver.find_element(:id, "mm_date_8").click
    sleep 1
    #dia
    @driver.find_element(:id, "dd_date_8").click
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "dd_date_8")).select_by(:text, "31")
    @driver.find_element(:id, "dd_date_8").click
    sleep 4
    #ano
    @driver.find_element(:id, "yy_date_8").click
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "yy_date_8")).select_by(:text, "1991")
    @driver.find_element(:id, "yy_date_8").click
    sleep 4

  #campo telefone
      @driver.find_element(:id, "phone_9").send_keys ("5596123870")
  #campo usuario
      @driver.find_element(:id, "username").send_keys ("teste02neo.moreira")
  #campo email
      @driver.find_element(:id, "email_1").send_keys ("teste023neomoreira@gmail.com")

  #campo descrição
     @driver.find_element(:id, "description").send_keys ("Sou Paula Alicia Lessa, 26 anos e brasileira.")

  #campo senha
      @driver.find_element(:id, "password_2").send_keys ("plessm08732xf10")
      #campo confirme a senha
      @driver.find_element(:id, "confirm_password_password_2").send_keys ("plessm08732xf10")
      wait = Selenium::WebDriver::Wait.new(timeout: 20) # segundos
end

#campo Enviar
Quando("clicar no botão Submit") do
    @driver.find_element(:xpath, "//*[@id='pie_register']/li[14]/div/input").click

end

#exibição de mensagem com sucesso
Então("é exibida a mensagem de cadastro com sucesso") do
    @driver.find_element(:xpath, "//*[@id='post-49']/div/p").displayed?
    wait = Selenium::WebDriver::Wait.new(timeout: 20) # segundos
    @driver.quit
end

#Cenário 2: Validação de limite de caracteres inseridos no campo Senha

Quando("o usuário preencher os campos do Formulario") do

     #campo nome
  @driver.find_element(:id, "name_3_firstname").send_keys (" Teste th ")
  #campo sobrenome
  @driver.find_element(:id, "name_3_lastname").send_keys ("xxxxxx")
  #estado solteira
  @driver.find_element(:xpath, "//*[@id='pie_register']/li[2]/div/div/input[1]").click
  sleep 3
  #hobby leitura
  @driver.find_element(:xpath, "//*[@id='pie_register']/li[3]/div/div/input[2]").click


  #campo pais
  @driver.find_element(:id, "dropdown_7").click
  Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "dropdown_7")).select_by(:text, "Brazil")
  @driver.find_element(:id, "dropdown_7").click

    #campo mes da data
    @driver.find_element(:id, "mm_date_8").click
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "mm_date_8")).select_by(:text, "4")
    @driver.find_element(:id, "mm_date_8").click
    sleep 1
    #campo dia
    @driver.find_element(:id, "dd_date_8").click
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "dd_date_8")).select_by(:text, "5")
    @driver.find_element(:id, "dd_date_8").click
    sleep 4
    #campo ano
    @driver.find_element(:id, "yy_date_8").click
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "yy_date_8")).select_by(:text, "1991")
    @driver.find_element(:id, "yy_date_8").click
    sleep 4

  #campo telefone
      @driver.find_element(:id, "phone_9").send_keys ("5574847120")
  #campo usuario
      @driver.find_element(:id, "username").send_keys ("paula.teste4")
  #campo email
      @driver.find_element(:id, "email_1").send_keys ("plessap8@gmail.com")

  #campo descrição
     @driver.find_element(:id, "description").send_keys ("Paula Alicia, 26 anos, solteira e brasileira.")
end


Quando("preencher no campo senha e Confirmar Senha menos de 8 caracteres") do

  #campo senha
      @driver.find_element(:id, "password_2").send_keys ("123456")
      #campo confirme a senha
      @driver.find_element(:id, "confirm_password_password_2").send_keys ("123456")
      wait = Selenium::WebDriver::Wait.new(timeout: 20) # segundos
end

#exibição de mensagem com erro
Então("é exibida a mensagem no campo Senha da quantidade de caracteres permitida no campo") do
    @driver.find_element(:xpath, "//*[@id='pie_register']/li[11]/div/div/span").displayed?
    wait = Selenium::WebDriver::Wait.new(timeout: 20)
        @driver.quit
end

#Cenario 3 - validar valores correspondentes inseridos no campo Senha e Confirmar Senha

Quando("preencher o campo Confirmar Senha com valor diferente do campo Senha") do
  #campo senha
      @driver.find_element(:id, "password_2").send_keys ("089447aex78")
      #campo confirme a senha
      @driver.find_element(:id, "confirm_password_password_2").send_keys ("089447aex79")
      wait = Selenium::WebDriver::Wait.new(timeout: 20) # segundos
end

#exibição de mensagem com erro
Então("é exibida mensagem no campo Senha") do
    @driver.find_element(:xpath, "//*[@id='pie_register']/li[12]/div/div/span").displayed?
    wait = Selenium::WebDriver::Wait.new(timeout: 20)
    @driver.quit
end
