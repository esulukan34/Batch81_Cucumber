package stepDefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.checkerframework.checker.units.qual.C;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import pages.BrcPages;
import utilities.ConfigReader;
import utilities.Driver;

public class BlueRentACarStepDefinition {
    BrcPages brc = new BrcPages();
    @Given("kullanici bluerentacar ana sayfasinda")
    public void kullaniciBluerentacarAnaSayfasinda() {
        Driver.getDriver().get(ConfigReader.getProperty("brcUrl"));
    }

    @Then("Login yazisina tiklar")
    public void loginYazisinaTiklar() {
        brc.login.click();
    }

    @And("gecersiz username girer")
    public void gecersizUsernameGirer() {
        brc.email.sendKeys(ConfigReader.getProperty("fbWrongEmail"));
    }

    @And("gecersiz password girer")
    public void gecersizPasswordGirer() {
        brc.password.sendKeys(ConfigReader.getProperty("fbWrongPassword"));

    }

    @And("Login butonuna basar")
    public void loginButonunaBasar() {
        brc.login2.click();


    }

    @Then("sayfaya giris yapilamadigini kontrol eder")
    public void sayfayaGirisYapilamadiginiKontrolEder() {
        Assert.assertTrue(brc.hataliGiris.isDisplayed());

    }

    @And("kulllanici sayfayi kapatir")
    public void kulllaniciSayfayiKapatir() {
        Driver.closeDriver();
    }
}
