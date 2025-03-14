Feature: Добавление автомобиля

  Background: Открываем браузер и переходим на домашнюю страницу
    Given Пользователь запускает браузер
    When Пользователь открывает домашнюю страницу ilcarro
    And Пользователь нажимает на ссылку Login
    And Пользователь вводит валидные данные
    And Пользователь нажимает на кнопку Yalla
    Then Пользователь проверяет отображение сообщения об успешном логине

  @AddCar
  Scenario: Успешное добавление автомобиля
    And Пользователь нажимает кнопку  Let the car work
    When Пользователь вводит данные автомобиля
      | location | manufacture | model  | year | fuel | seats | classCar | price | about        | photo                                      |
      | Haifa    | Opel        | Rekord | 1983 | Gas  | 5     | Sedan    | 500   | The best car | C:\Users\PORTISHEAD\Downloads\unnamed2.png |
    And Пользователь нажимает кнопку Submit
    Then Пользователь проверяет сообщение "Opel Rekord added successful"
    And Пользователь закрывает браузер