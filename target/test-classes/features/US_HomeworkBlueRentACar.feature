Feature:
 Scenario Outline: TC11 kullanici gecersiz bilgilerle giris yapar
    Given kullanici "<arananUrl>" sayfasina gider
    Then Log in yazisina tiklar
    And gecersiz username girer  And gecersiz password girer  And Login butonuna basar
    Then sayfaya giris yapilamadigini kontrol eder
    And kulllanici sayfayi kapatir
    Examples:
       | arananUrl |

  #Password  Manager5!  Manager6!  Manager7!  Manager8!  Manager9!
  #Kullanici adi  Manager5@gmail.com  Manager6@gmail.com  Manager7@gmail.com  Manager8@gmail.com  Manager9@gmail.com

