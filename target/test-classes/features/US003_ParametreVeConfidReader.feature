@emre
Feature: Parametre Kullanimi

  @gp1
  Scenario: TC01 Parametre kullaniminda ConfigReader Kullanimi
    Given kullanici "amazonUrl" sayfasina gider
    Then kullanici 3 saniye bekler
    When url'in "amazon" icerdigini test edelim
    And sayfayi kapatir

  @gp2
  Scenario: TC02 Parametre kullaniminda ConfigReader Kullanimi
    Given kullanici "faceUrl" sayfasina gider
    Then kullanici 3 saniye bekler
    When url'in "facebook" icerdigini test edelim
    And sayfayi kapatir


  Scenario: TC03 Parametre kullaniminda ConfigReader Kullanimi
    Given kullanici "trdyUrl" sayfasina gider
    Then kullanici 3 saniye bekler
    When url'in "trendyol" icerdigini test edelim
    And sayfayi kapatir

  @gp2
  Scenario: TC04 Parametre kullaniminda ConfigReader Kullanimi
    Given kullanici "autoUrl" sayfasina gider
    Then kullanici 3 saniye bekler
    When url'in "automationexercise" icerdigini test edelim
    And sayfayi kapatir

  @gp1
  Scenario: TC05 Parametre kullaniminda ConfigReader Kullanimi
    Given kullanici "hpsbrdUrl" sayfasina gider
    Then kullanici 3 saniye bekler
    When url'in "hepsiburada" icerdigini test edelim
    And sayfayi kapatir

  @gp2
  Scenario: TC06 Parametre kullaniminda ConfigReader Kullanimi
    Given kullanici "brcUrl" sayfasina gider
    Then kullanici 3 saniye bekler
    When url'in "blue" icerdigini test edelim
    And sayfayi kapatir

