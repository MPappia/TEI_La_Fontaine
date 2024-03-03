<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs tei"
    version="2.0">
 
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>
    <xsl:strip-space elements="*"/> <!-- pour éviter les espaces non voulus -->
    
    <!-- configurer les sorties dans les règles XSL -->
    
    <xsl:template match="/">
        <xsl:variable name="witfile">
            <xsl:value-of select="replace(base-uri(.), '.xml', '')"/>
            <!-- récupération du nom et du chemin du fichier courant -->
        </xsl:variable>
        <!--  Chemins d'accès -->
        <xsl:variable name="pathFable2">
            <xsl:value-of select="concat($witfile,'Fable2','.html')"/>
        </xsl:variable>
        <xsl:variable name="pathFable3">
            <xsl:value-of select="concat($witfile,'Fable3','.html')"/>
        </xsl:variable>
        <xsl:variable name="pathFable1">
            <xsl:value-of select="concat($witfile,'Fable1','.html')"/>
        </xsl:variable>
        <xsl:variable name="pathAccueil">
            <xsl:value-of select="concat($witfile, 'accueil','.html')"/>
        </xsl:variable>
        <xsl:variable name="distributorLink" select="/teiCorpus/teiHeader//tei:distributor/@facs" />
        
        
        <xsl:result-document href="{$pathAccueil}" method="html" indent="yes">
            <html lang="fr" xml:lang="fr">
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <title>
                        <xsl:value-of select=".//titleStmt/title"/>
                    </title>
                    <link rel="stylesheet" type="text/css" href="style.css"/>
                </head>
                <body>
                    <span>
                        <a href="{$distributorLink}">[lien vers le document source]</a>
                    </span>
                    <ul>
                        <li><a href="{$pathAccueil}">Accueil</a></li>
                        <li><a href="{$pathFable1}">Transcription de la Fable XVII</a></li>
                        <li><a href="{$pathFable2}">Transcription de la Fable XVIII</a></li>
                        <li><a href="{$pathFable3}">Transcription de la Fable XIX</a></li>
                    </ul>
                    
                    <h2> Bienvenue !</h2>
                    <p> Ce site est un devoir réalisé dans le cadre de l'évalutation du cours XSLT de l'École des Chartes pour le master 2 Technologies Numériques Appliquées à l'Histoire (TNAH).
                        Il présente un encodage XML-TEI des fables XVII XVIII et XIX du livre "Fables choisies" de Jean de La Fontaine.
                    </p>      
                    <p> Promo 2023-2024
                        <br></br>
                        <br></br>
                        -- Elliot Fabert. </p>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document href="{$pathFable1}" method="html" indent="yes">
            <html lang="fr" xml:lang="fr">
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <title>
                        <xsl:value-of select=".//titleStmt/title"/>
                    </title>
                    <link rel="stylesheet" type="text/css" href="style.css"/>
                </head>
                <body>
                    <span>
                        <a href="{$distributorLink}">[lien vers le document source]</a>
                    </span>
                    <ul>
                        <li><a href="{$pathAccueil}">Accueil</a></li>
                        <li><a href="{$pathFable1}">Transcription de la Fable XVII</a></li>
                        <li><a href="{$pathFable2}">Transcription de la Fable XVIII</a></li>
                        <li><a href="{$pathFable3}">Transcription de la Fable XIX</a></li>
                    </ul>
                    <div>
                        <h1>FABLE DIX-SEPTIESME</h1>
                        <h2>L'Homme entre deux âges, &amp; ses deux Maistresses</h2>
                        <xsl:apply-templates select=".//figure[graphic/@url='images/fable17r.png']"/>
                        <!-- Vers de la fable 17 -->
                        <div id="corpsFable">
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@type='page']/lg[@type='quatrain']"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@type='page']/lg[@type='quintil']"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@type='page']/lg[@type='sizain']"/>
                            </div>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document href="{$pathFable2}" method="html" indent="yes">
            <html lang="fr" xml:lang="fr">
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <title>
                        <xsl:value-of select=".//titleStmt/title"/>
                    </title>
                    <script src="script.js"></script>
                    <link rel="stylesheet" type="text/css" href="style.css"/>
                </head>
                <body>
                    <span>
                        <a href="{$distributorLink}">[lien vers le document source]</a>
                    </span>
                    <ul>
                        <li><a href="{$pathAccueil}">Accueil</a></li>
                        <li><a href="{$pathFable1}">Transcription de la Fable XVII</a></li>
                        <li><a href="{$pathFable2}">Transcription de la Fable XVIII</a></li>
                        <li><a href="{$pathFable3}">Transcription de la Fable XIX</a></li>
                    </ul>
                    <div>
                        <h1>FABLE DIX-HUITIESME</h1>
                        <h2>Le Renard &amp; la Cigogne</h2>
                        <xsl:apply-templates select=".//figure[graphic/@url='images/fable18r.png']"/>
                        <!-- Vers de la fable 18 -->
                        <div id="corpsFable">
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2r']/lg[@type='quatrain']"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2r']/lg[@type='quintil']"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2r']/lg[@type='sizain']"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2r']/lg[not(@type)]"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2r']/lg"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2v']/lg[@type='quatrain']"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2v']/lg[@type='quintil']"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2v']/lg[@type='sizain']"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2v']/lg[not(@type)]"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2v']/lg"/>
                            </div>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document href="{$pathFable3}" method="html" indent="yes">
            <html lang="fr" xml:lang="fr">
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <title>
                        <xsl:value-of select=".//titleStmt/title"/>
                    </title>
                    <script src="script.js"></script>
                    <link rel="stylesheet" type="text/css" href="style.css"/>
                </head>
                <body>
                    <span>
                        <a href="{$distributorLink}">[lien vers le document source]</a>
                    </span>
                    <ul>
                        <li><a href="{$pathAccueil}">Accueil</a></li>
                        <li><a href="{$pathFable1}">Transcription de la Fable XVII</a></li>
                        <li><a href="{$pathFable2}">Transcription de la Fable XVIII</a></li>
                        <li><a href="{$pathFable3}">Transcription de la Fable XIX</a></li>
                    </ul>
                    <div>
                        <h1>FABLE DIX-NEUVIESME</h1>
                        <h2>L'Enfant &amp; le Maître d'Ecole.</h2>
                        <xsl:apply-templates select=".//figure[graphic/@url='images/fable19r.png']"/>
                        <div id="corpsFable">
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2r']/lg[@type='quatrain']"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2r']/lg[@type='quintil']"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2r']/lg[@type='sizain']"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2r']/lg[not(@type)]"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2r']/lg"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2v']/lg[@type='quatrain']"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2v']/lg[@type='quintil']"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2v']/lg[@type='sizain']"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2v']/lg[not(@type)]"/>
                            </div>
                            <div class="vers">
                                <xsl:apply-templates select=".//div[@xml:id='fable2v']/lg"/>
                            </div>
                        </div>
                    </div>                    
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    
    <!-- Règles de présentation du texte -->
    
    <xsl:template match="teiCorpus/TEI[@xml:id='fable17']">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="teiCorpus/TEI[@xml:id='fable18']">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="teiCorpus/TEI[@xml:id='fable19']">
        <xsl:apply-templates/>
    </xsl:template>
    
    <!-- Modèle de correspondance pour les groupes de vers -->
    <xsl:template match="lg[@type='quatrain']">
        <div class="quatrain">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="lg[@type='quintil']">
        <div class="quintil">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="lg[@type='sizain']">
        <div class="sizain">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <!-- Modèle de correspondance pour les vers -->
    <xsl:template match="l">
        <p>
            <xsl:value-of select="."/>
        </p>
    </xsl:template>
        
    <!-- Modèle de correspondance pour l'image fable17r -->
    <xsl:template match="figure[graphic/@url='images/fable17r.png']">
        <img src="{graphic/@url}" alt="Illustration de la fable"/>
    </xsl:template>
    
    <!-- Modèle de correspondance pour l'image fable18r -->
    <xsl:template match="figure[graphic/@url='images/fable18r.png']">
        <img src="{graphic/@url}" alt="Illustration de la fable"/>
    </xsl:template>
    
    <!-- Modèle de correspondance pour l'image fable19r -->
    <xsl:template match="figure[graphic/@url='images/fable19r.png']">
        <img src="{graphic/@url}" alt="Illustration de la fable"/>
    </xsl:template>
    
    <!-- Modèle de correspondance pour les figures -->
    <xsl:template match="graphic">
        <img src="{@url}" alt="Illustration de la fable"/>
    </xsl:template>
    

    <!-- Modèle de correspondance pour l'élément <l> dans teiCorpus/TEI/text/body/div/lg -->
    <xsl:template match="tei:teiCorpus/tei:TEI/tei:text/tei:body/tei:div/tei:lg/tei:l">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <!-- Modèle de correspondance pour l'élément <choice> dans un <l> -->
    <xsl:template match="tei:choice">
        <span class="orig" title="{tei:reg}" data-reg="{tei:reg}">
            <xsl:value-of select="tei:orig"/>
        </span>
    </xsl:template>

</xsl:stylesheet>
