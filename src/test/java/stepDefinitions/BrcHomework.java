package stepDefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import pages.BrcPages;
import utilities.ConfigReader;
import utilities.Driver;

public class BrcHomework {
    BrcPages brc = new BrcPages();

    @Given("kullanici {string} anasayfasina gider")
    public void kullaniciAnasayfasinaGider(String istenenUrl) {
    Driver.getDriver().get(ConfigReader.getProperty("brcUrl"));
    }
    @And("{string} username girer")
    public void usernameGirer(String istenenEmail) {
        brc.email.sendKeys(ConfigReader.getProperty("istenenEmail"));
    }


    @And("{string} password girer")
    public void passwordGirer(String istenenPassword) {
        brc.password.sendKeys(ConfigReader.getProperty("istenenPassword"));
    }

    @And("brc Login butonuna basar")
    public void brcLoginButonunaBasar() {
        brc.login.click();
    }

    @Then("brc sayfasina giris yapilamadigini kontrol eder")
    public void brcSayfasinaGirisYapilamadiginiKontrolEder() {
        Assert.assertTrue(brc.hataliGiris.isDisplayed());
    }
}
