# Asennus

Aloitin tehtävän asentamalla gitin koneelleni ja tekemällä githubiin repositoryn nimeltä
asennus. Tämän jälkeen kirjoitin terminaaliin komennot sudo git config --global user.email
"sähköposti" ja sudo git config --global user.name "käyttäjänimi" sekä komennon
sudo git config --global credential.helper "cache --timeout=3600" jotta vältän jatkuvan
salansan kirjoittamisen. Siirryin /etc/puppet/modules kansioon ja ajoin komennon 
sudo git clone https://github.com/OGhenu/Asennus joka loi sinne kansion Asennus ja sen
sisälle README.md tiedoston. Lisäsin tänne manifests kansion johon loin init.pp tiedoston
jonka sisältö oli apache2:den asennus. Tämän jälkeen ajoin komennon
sudo git add . && git commit && git pull && git push ja kirjoitin committiin mitä olin
tehnyt jonka jälkeen kaikki kansion sisältö latautui githubiin.

Lähteet:

http://terokarvinen.com/2016/aikataulu-palvelinten-hallinta-ict4tn022-1-5-op-uusi-ops-loppusyksy-2016

https://github.com/jooelnurmi/asennus
