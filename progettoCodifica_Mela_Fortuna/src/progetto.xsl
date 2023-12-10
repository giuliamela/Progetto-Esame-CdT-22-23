<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">

        <html>
            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='main']"/></title>
                <link rel="stylesheet" type="text/css" href="style.css" />
                <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                <script src="script.js"></script>
            </head>
            <body>
                <header>
                   <nav class="menu">
                        <a href="#manoscritto">Diario</a>
                        <a href="#desc-fis">Descrizione fisica</a>
                        <a href="#cod">Codifica</a>
                        <div class="dropdown">
                            <button class="dropbtn">Pagine</button>
                            <div class="elenco_pag">
                                <a href="#pag29">Pagina 29</a>
                                <a href="#pag30">Pagina 30</a>
                                <a href="#pag31">Pagina 31</a>
                                <a href="#pag32">Pagina 32</a>
                                <a href="#pag33">Pagina 33</a>
                            </div>
                        </div>
                        <a href="#bibl">Bibliografia</a>
                        <a href="#about">About</a>
                    </nav>
                </header>

                <main>
                    <div id= "box_titolo">
                        <div id="titolo">
                            <h1 id="tit_princ"> <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='main']"/></h1>
                            <h2><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='sub']"/></h2>
                            <h3 id="autore"> <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:author"/> </h3>
                        </div>
                        <div id="fotoemanuele">
                            <img src="Artom.jpeg" alt="Emanuele_Artom" id="img_emanuele_artom"/>
                         </div>
                    </div>

                
                    <section id="manoscritto">  <!-- descrizione del diario -->
                            <div class="info">
                                <h2> Descrizione del diario </h2>
                                <xsl:apply-templates select="//tei:teiHeader/tei:fileDesc"/> 
                            </div>
                    </section>

                    <section id="desc-fis">  <!-- descrizione fisica -->
                            <div class="info">
                                <h2> Descrizione fisica </h2>
                                <xsl:apply-templates select="//tei:teiHeader/tei:fileDesc//tei:physDesc"/> 
                            </div>
                    </section>

                    <section id="cod">  <!-- Informazioni sulla codifica-->
                            <div class="info">
                                <h2> Informazioni sulla codifica </h2>
                                <ul>
                                    <xsl:apply-templates select="//tei:teiHeader/tei:encodingDesc/tei:editorialDecl//tei:p"/> 
                                </ul>
                            </div>
                    </section>


                    <section class="bottoni">
                        <button id="cancellature" class="buttons">Cancellature</button>
                        <button id="aggiunte" class="buttons"> Aggiunte</button>
                        <button id="normalizzazioni" class="buttons"> Normalizzazioni </button>
                        <button id="abbreviazioni" class="buttons"> Abbreviazioni </button>
                        <button id="correzioni" class="buttons"> Correzioni </button>
                        <button id="nomi" class="buttons"> Persone </button>
                        <button id="luoghi" class="buttons"> Luoghi </button>
                        <button id="organizzazioni" class="buttons"> Organizzazioni </button>
                        <button id="termini" class="buttons"> Termini </button>
                    </section>


                    <!--trascrizione pagine -->
                    <h2 class="p_titolo"> Pagina 29  </h2>
                    <section class="pagine">
                        <div id="pag29">
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                <xsl:value-of select="//tei:surface[@xml:id='p29']/tei:graphic/@url" />
                                </xsl:attribute>
                                <xsl:attribute name="id">Pagina 29</xsl:attribute>
                                </xsl:element>
                        </div>
                        <div class="trascrizione">
                            <xsl:apply-templates select="//tei:body/tei:div[@n='29']" />
                        </div>  
                    </section>
                    

                    <h2 class="p_titolo"> Pagina 30 </h2>
                    <section class="pagine">
                        <div id="pag30" >
                            <xsl:element name="img">
                            <xsl:attribute name="src">
                            <xsl:value-of select="//tei:surface[@xml:id='p30']/tei:graphic/@url" />
                            </xsl:attribute>
                            <xsl:attribute name="id">Pagina 30</xsl:attribute>
                            </xsl:element>
                        </div>
                        <div class="trascrizione">
                            <xsl:apply-templates select="//tei:body/tei:div[@n='30']" />
                        </div>  
                    </section>

                    <h2 class="p_titolo"> Pagina 31 </h2>
                    <section class="pagine">
                        <div id="pag31">
                            <xsl:element name="img">
                            <xsl:attribute name="src">
                            <xsl:value-of select="//tei:surface[@xml:id='p31']/tei:graphic/@url" />
                            </xsl:attribute>
                            <xsl:attribute name="id">Pagina 31</xsl:attribute>
                            </xsl:element>
                        </div>
                        <div class="trascrizione">
                            <xsl:apply-templates select="//tei:body/tei:div[@n='31']" />
                        </div>  
                    </section>
                    
                    <h2 class="p_titolo"> Pagina 32 </h2>
                    <section class="pagine">
                        <div id="pag32" >
                            <xsl:element name="img">
                            <xsl:attribute name="src">
                            <xsl:value-of select="//tei:surface[@xml:id='p32']/tei:graphic/@url" />
                            </xsl:attribute>
                            <xsl:attribute name="id">Pagina 32</xsl:attribute>
                            </xsl:element>
                        </div>
                        <div class="trascrizione">
                            <xsl:apply-templates select="//tei:body/tei:div[@n='32']" />
                        </div>  
                    </section>

                    <h2 class="p_titolo"> Pagina 33 </h2>
                    <section  class="pagine">
                        <div id="pag33"> 
                            <xsl:element name="img">
                            <xsl:attribute name="src">
                            <xsl:value-of select="//tei:surface[@xml:id='p33']/tei:graphic/@url" />
                            </xsl:attribute>
                            <xsl:attribute name="id">Pagina 33</xsl:attribute>
                            </xsl:element>
                        </div>
                        <div class="trascrizione">
                            <xsl:apply-templates select="//tei:body/tei:div[@n='33']" />
                        </div>  
                    </section>


                    <div class="liste">
                        <section id="persone" class="infoback">
                            <h2><xsl:value-of select="//tei:text/tei:back/tei:listPerson/tei:head"/></h2>
                                <ul>
                                    <xsl:apply-templates select="//tei:text/tei:back/tei:listPerson//tei:person" />
                                </ul>
                        </section>


                        <section id="citta" class="infoback">
                            <h2><xsl:value-of select="//tei:text/tei:back/tei:listPlace/tei:head"/></h2>
                            <div class="elenco_liste">
                            <ul><xsl:for-each select="//tei:back//tei:place">
                                <xsl:element name="li">
                                   <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                                    <xsl:apply-templates />
                                </xsl:element>
                            </xsl:for-each>
                            </ul>
                            </div>
                        </section>


                        <section id="org_nomi" class="infoback">
                            <h2><xsl:value-of select="//tei:text/tei:back/tei:listOrg/tei:head"/></h2>
                             <ul><xsl:for-each select="//tei:back//tei:org">
                                <xsl:element name="li">
                                   <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                                    <xsl:apply-templates />
                                </xsl:element>
                            </xsl:for-each>
                            </ul>
                        </section>

                       
                           
                        <section id="terms" class="infoback">
                            <h2><xsl:value-of select="//tei:text/tei:back/tei:list/tei:head"/></h2>
                             <ul><xsl:for-each select="//tei:back//tei:label">
                                <xsl:element name="li">
                                    <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                                    <xsl:apply-templates />
                                    <xsl:element name="p"><xsl:value-of select="./following-sibling::*[1]" /></xsl:element>
                                </xsl:element>
                            </xsl:for-each>
                            </ul>
                        </section>
                    </div>

                    <section id="bibl" class="infoback">
                        <h2><xsl:value-of select="//tei:text/tei:back/tei:listBibl/tei:head"/></h2>
                        <ul>
                            <xsl:apply-templates select="//tei:text/tei:back/tei:listBibl//tei:bibl" />
                        </ul>
                    </section>

                    <footer id="about">
                        <p><xsl:value-of select="//tei:editionStmt/tei:edition"/>
                        <xsl:value-of select="//tei:editionStmt/tei:date"/> <br />
                        Progetto coordinato da:<xsl:value-of select="//tei:editionStmt/tei:respStmt[1]/tei:name"/> <br />
                        Codifica e trascrizione a cura di:<xsl:value-of select="//tei:editionStmt/tei:respStmt[2]/tei:name"/> <br />
                        <xsl:value-of select="//tei:publicationStmt/tei:publisher"/> - 
                        <xsl:value-of select="//tei:publicationStmt/tei:pubPlace"/> <br />
                        <xsl:value-of select="//tei:publicationStmt/tei:availability/tei:p"/></p>
                    </footer>
                </main>
            </body>
        </html>
</xsl:template>

<!--Template-->
    <!--descrizione del diario -->
   <xsl:template match="//tei:teiHeader/tei:fileDesc">
        <div class="descr">
            <div>
                <h3>Titolo:</h3>
                <p><xsl:value-of select=".//tei:msContents/tei:msItem/tei:title"/></p>
            </div>
            <div>
                <h3>Autore:</h3>
                <p><xsl:value-of select=".//tei:msContents/tei:msItem/tei:author"/></p>
            </div>
            <div>
                <h3>Luogo:</h3>
                <p><xsl:value-of select=".//tei:msIdentifier/tei:settlement"/>,
                <xsl:value-of select=".//tei:msIdentifier/tei:country"/></p>
            </div>
            <div>
                <h3>Archivio:</h3>
                <p><xsl:value-of select=".//tei:msIdentifier/tei:repository"/> </p>
            </div>
            <div>
                <h3>Collezione:</h3>
                <p><xsl:value-of select=".//tei:msIdentifier/tei:collection"/> </p>
            </div>
            <div>
                <h3>Id:</h3>
                <p><xsl:value-of select=".//tei:msIdentifier/tei:idno"/> </p>
            </div>
            <div>
                <h3>Storia:</h3>
                <p><xsl:value-of select=".//tei:msDesc/tei:history"/> </p>                
            </div>
        </div>
    </xsl:template>

    <!--descrizione fisica -->
    <xsl:template match="//tei:teiHeader/tei:fileDesc//tei:physDesc">
        <div class="descr"> 
            <div>
                <h3> Supporto:</h3>
                <p><xsl:value-of select="//tei:support"/> </p>
            </div>
            <div>
                <h3> Composizione:</h3>
                <p><xsl:value-of select="//tei:measure"/> </p>
            </div>
            <div>
                <h3> Condizioni:</h3>
                <p><xsl:value-of select="//tei:condition"/> </p>
            </div>
            <div>
                <h3> Layout:</h3>
                <p><xsl:value-of select="//tei:layoutDesc"/> </p>
            </div>
            <div>
                <h3> Stesura:</h3>
                <p><xsl:value-of select="//tei:handDesc"/> </p>
            </div>
            <div>
                <h3> Scrittura:</h3>
                <p><xsl:value-of select="//tei:typeDesc"/> </p>
            </div>
        </div>
    </xsl:template>

    <!--informazioni sulla codifica -->
     <xsl:template match="//tei:teiHeader/tei:encodingDesc/tei:editorialDecl//tei:p"> 
        <div>
            <li><xsl:value-of select="."/></li>
        </div>
    </xsl:template>

    <!--trascrizione pagine --> 
    <xsl:template match="tei:div[@type='page']//tei:lb">
        <p> <xsl:apply-templates /></p>
        <xsl:value-of select="@n"/>
    </xsl:template>


    <!--cancellature -->
    <xsl:template match = "tei:del">
        <span class = "del" hidden = 'hidden'>
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!--aggiunte -->
    <xsl:template match = "tei:add">
        <span class = "add">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!--normalizzazioni -->
    <xsl:template match = "tei:choice/tei:orig">
        <span class = "orig" hidden="hidden">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

   <xsl:template match="tei:choice/tei:reg">
        <span class = "reg">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!--abbreviazioni  ed espansioni-->
    <xsl:template match = "tei:choice/tei:expan">
        <span class = "expan" hidden="hidden">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match="tei:choice/tei:abbr">
        <span class = "abbr">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!--correzioni -->
    <xsl:template match = "tei:sic">
        <span class = "sic" hidden="hidden">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

   <xsl:template match="tei:choice/tei:corr">
        <span class = "corr">
            <xsl:apply-templates/>
        </span>
    </xsl:template>


    <!--nomi persone-->
    <xsl:template match="tei:persName">
        <span class = "persName">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!--nomi luoghi-->
    <xsl:template match="tei:placeName">
        <span class = "placeName">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!--nomi organizzazioni-->
    <xsl:template match="tei:orgName">
        <span class = "orgName">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!--nomi termini-->
    <xsl:template match="tei:term">
        <span class = "term">
            <xsl:apply-templates/>
        </span>
    </xsl:template>


    <!--liste-->
    <xsl:template match = "//tei:text/tei:back/tei:listPerson//tei:person">
        <div>
            <li>
                <h3><xsl:value-of select="tei:persName" /></h3>
                <xsl:value-of select="tei:note"/>
            </li>
        </div>
    </xsl:template>


    <xsl:template match="//tei:text/tei:back/tei:listPlace//tei:placeName">
        <h3>
        <xsl:apply-templates />
        </h3>
    </xsl:template>

    
    <xsl:template match="//tei:text/tei:back/tei:listOrg//tei:orgName">
        <h3>
        <xsl:apply-templates />
        </h3>
    </xsl:template>


    <xsl:template match="//tei:text/tei:back/tei:list//tei:term">
        <h3>
            <xsl:apply-templates/>
        </h3>
      
    </xsl:template>


    <xsl:template match = "//tei:text/tei:back/tei:listBibl//tei:bibl" >
        <div>
            <li>
                <xsl:value-of select="tei:title"/>,
                <xsl:value-of select="tei:author"/>
                <span> a cura di </span><xsl:value-of select="tei:editor"/>
                <xsl:value-of select="tei:pubPlace"/>,
                <xsl:value-of select="tei:date"/>,
                <xsl:value-of select="tei:publisher"/>.
            </li>
        </div>
    </xsl:template>
</xsl:stylesheet>
