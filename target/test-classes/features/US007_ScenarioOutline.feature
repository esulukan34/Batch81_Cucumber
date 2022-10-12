Feature: US007 Scenario Outline Kullanimi
  @All
  Scenario Outline: TC01 ConfigReader ile Scenario Outline Kullanimi
    Given kullanici "<arananUrl>" sayfasina gider
    Then kullanici 3 saniye bekler
    When url'in "<arananKelime>" icerdigini test edelim
    And sayfayi kapatir
    Examples:
      | arananUrl | arananKelime       |
      | amazonUrl | amazon             |
      | faceUrl   | facebook           |
      | trdyUrl   | trendyol           |
      | autoUrl   | automationexercise |
      | hpsbrdUrl | hepsiburada        |
      | brcUrl    | bluerentalcars     |