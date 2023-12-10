# Progetto-Esame-CdT-22-23
Progetto di Codifica dei Testi realizzato da Giulia Mela e Ilenia Fortuna. Dicembre 2023 


Il file codifica.xml è stato validato usando il comando:  java -cp "Xerces-J-bin.2.12.1/xerces-2_12_1/*" dom.Counter -v  src/codifica.xml

Il file out.html è stato generato dal file progetto.xsl utilizzando il comando: java -cp SaxonHE10-3J/saxon-he-10.3.jar net.sf.saxon.Transform src/codifica.xml src/progetto.xsl -o:src/out.html
