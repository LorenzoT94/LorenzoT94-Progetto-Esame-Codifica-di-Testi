<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:tei="http://www.tei-c.org/ns/1.0"
xmlns="http://www.w3.org/1999/xhtml">
	<xsl:output method="html" indent="yes" />
  	<xsl:template match="/">
   		<html>
   			<head>
			   <title>Progetto di Codifica di Testi</title>
			</head>
   			<body>
			    <header>
			   	    <link href="progetto.css" rel="stylesheet" type="text/css" /> 
			   	    <script type="text/javascript" src="progetto.js" />
			   	    <div id="contgenerale">
			   	        <img src="img/francobollo.png" id="imgfranc" alt="francobollo"/>
			            <h1>Lettera di Vincenzo Bellini all'amico Gaetano Cobianchi</h1>
			            <h2>Parigi, 22 Gennaio 1835</h2>
			   		</div>
			   		<nav>
			   			<ul class="menu">
                            <li><a href="#CollLett">Collocazione lettera</a></li>
			   			    <li><a href="#DimLett">Dimensioni lettera</a></li>	
			   			    <li><a href="#LingLett">Lingua lettera</a></li>	
                            <li><a href="#MitDes">Mittente e Destinatario</a></li>
  						    <li><a href="#Img">Immagini lettera</a></li>
  						    <li><a href="#Cod">Codifica lettera</a></li>
                            <li><a href="#Gloss">Glossario</a></li>
                            <li><a href="#Note">Note e Bibliografia</a></li>
                            <li><a href="#CreditiLettera">Crediti</a></li>
				        </ul>
				    </nav>
			    </header>
			    	
			    <div id="cappello_introduttivo">
			    	<p>
			    		Il compositore Vincenzo Bellini scrive questa lettera all'amico ed esule banchiere Gaetano Cobianchi il 22 gennaio 1835. Il motivo della missiva è legato all'invito del suddetto amico a teatro. Qui si sarebbe tenuta la prima rappresentazione dell'opera del compositore catanese. Quest'ultimo ha infatti riservato un posto numerato per Cobianchi.
			        </p>
			    </div>
			    <div id="caratteristiche_lettera">
			    	<h3> Condizioni fisiche della lettera </h3>
			    	<p>
                        <xsl:apply-templates select="//tei:supportDesc/tei:support/tei:p" />
			        </p>
				</div>
				<a name="CollLett"></a>
				<div id="collocazione_lettera">
					<h3> Collocazione della lettera </h3>
					<p> 
                        La lettera si trova nel 
						<xsl:apply-templates select="//tei:msDesc/tei:msIdentifier"/>
					</p>
				</div>
				<a name="DimLett"></a>
				<div id="dimensioni_lettera">
					<h4> Dimensioni della lettera </h4>
					<p> 
                        <xsl:apply-templates select="//tei:supportDesc/tei:extent/tei:dimensions" />
					</p>
				</div>
				<a name="LingLett"></a>
                <div id="lingua_lettera">
					<h4> Lingua </h4>
					<p>
                        <xsl:apply-templates select="//tei:msContents/tei:msItem/tei:textLang" />
					</p>
				</div>
             		<xsl:element name="img">
			    	    <img id="decoro" src="img/decorazione.png" />
			        </xsl:element>
			<a name="MitDes"></a>
				<div id="cont">
			     	<div id="info1">
					    <h5><a name="Bel">Mittente: Vincenzo Bellini</a> </h5>
					        <p id="mit">
					        Vincenzo Bellini è stato un compositore italiano tra i più noti del XIX secolo. Nasce a Catania il 3 novembre 1801 dove studia musica fino a 18 anni, poi si trasferisce a Napoli nel 1819. Sei anni più tardi presenta al teatro del conservatorio la sua prima opera e, solo l'anno successivo con l'opera "Bianca e Fernando" arriva il successo tanto sperato.
					        Nel 1827 Bellini lascia Napoli per recarsi a Milano, al fine di rappresentare un'Opera al Teatro della Scala. Ed è proprio qui che con le opere "Il Pirata" prima, e "La Sonnambula" poi, viene riconosciuto come uno dei più grandi operisti italiani.
					        Dato il grande successo ottenuto nel Bel Paese, Bellini decide di trasferirsi a Parigi: qui entra in contatto con alcuni dei più grandi compositori d'Europa, realizzando un'opera francese per il Teatro dell'Opéra.
					        Muore il 23 settembre 1835, a soli 33 anni.  	
					        </p>
				    </div>
				    <div id="info2">
					    <h5><a name="Cob">Destinatario:Gaetano Cobianchi</a></h5>
					        <p id="des">
					        Gaetano Cobianchi nasce a Intra il 6 agosto 1794; giovanissimo entra nelle Guardie d'Onore del vicerè Eugenio di Beauharnais, rimanendovi fino alla caduta del Regno d'Italia. Successivamente, diviene banchiere. Nel 1820 trovandosi a Napoli per lavoro assiste allo scoppio e al trionfo della rivoluzione. Decide così di arruolarsi volontario nell'esercito costituzionale e, durante la battaglia di Rieti, dopo essere stato ferito viene fatto prigioniero dalle truppe austriache. Dopo un breve periodo di carcere a Napoli, viene liberato e costretto a rifugiarsi a Malta, isola che lascia ben presto dirigendosi prima a Parigi e poi in Svizzera, dove vive in clandestinità. Nel 1832 si sposa a Londra e nel 1848 torna a vivere stabilmente a Parigi, dove lavora per la legazione sabauda in Francia come corrispondente segreto di re Carlo Alberto.
                            Muore a Parigi nel 1866.
                            </p>
                    </div>
                </div>
                <xsl:element name="img">
                    <img id="decoro" src="img/decorazione.png" />
			    </xsl:element>
	            <a name="Img"></a>
                <xsl:for-each select = "//tei:facsimile/tei:surface/tei:graphic">
                	<div id="contimg">
                       <xsl:element name ="img">
             	       <xsl:attribute name = "src">
             		   <xsl:value-of select = "@url" />
             	       </xsl:attribute>
                       </xsl:element>
                    </div>
                </xsl:for-each>
                <button class="button" id="button1"><span>Codifica Fronte</span></button>
			   	<button class="button" id="button2"><span>Codifica Retro</span></button>
                <a name="Cod"></a>
                <div id="numero1">
                	<div id="codificadelfronte" class="conttesto">
                		<div id="numcatalog">
                		<xsl:apply-templates select="//tei:ab/tei:hi/tei:unclear/tei:idno" />
                	    </div>
                	    <div id="testoletterafronte">
                		
                		<xsl:apply-templates select="//tei:div/tei:salute/tei:s[@n='s_01']"/>
                		
               			<xsl:apply-templates select="//tei:div/tei:ab/tei:s[@n='s_02']/tei:seg"/>

               			<xsl:apply-templates select="//tei:div/tei:ab/tei:s[@n='s_03']/tei:seg"/>			

                        <xsl:apply-templates select="//tei:salute/tei:s/tei:hi/tei:w" />
                        </div>
                    </div>
			   	</div>
			   	<div id="numero2">
			   		<div id="codificadelretro" class="conttesto">
			   			<div id="timbro1">
			   				<xsl:apply-templates select="//tei:body/tei:div/tei:div[@type='sent']/tei:ab/tei:stamp/tei:mentioned/tei:date" />
                        </div>
                        <div id="timbro2">
                    	    <xsl:apply-templates select="//tei:body/tei:div/tei:div[@type='destination']/tei:ab/tei:stamp/tei:mentioned"/>
                        </div>

                        <!--TESTO RETRO LETTERA-->
                            <xsl:apply-templates select="//tei:body/tei:div/tei:div/tei:ab/tei:address"/>
                    </div>
                </div>

                <xsl:element name="img">
                    <img id="decoro" src="img/decorazione.png" />
                </xsl:element>

                    <a name="Gloss"></a>
                    <div class="row">
                        <div class="column"> 
                            <p class="glossario">Lista persone</p><br />
                            <div id="persona1">
                                <xsl:apply-templates select="//tei:listPerson/tei:person[@xml:id='VB']"/> 
                            </div>
                            <div id="persona2">
                                <xsl:apply-templates select="//tei:listPerson/tei:person[@xml:id='GCo']"/>
                            </div>
                            <div id="persona3">
                                <xsl:apply-templates select="//tei:listPerson/tei:person[@xml:id='MaryB']"/>
                            </div>
                        </div>    


                        <div class="column">
                            <p class="glossario">Lista luoghi</p> <br />
                            <div id="luogo1">
                                <xsl:apply-templates select="//tei:listPlace/tei:place[@xml:id='Paris']"/>
                            </div>
                            <div id="luogo2">
                                <xsl:apply-templates select="//tei:listPlace/tei:place[@xml:id='PDLMadelaine']"/>
                            </div>
                        </div>

                        <div class="column">
                            <p class="glossario">Lista termini</p> <br />
                            <div id="termini">
                                <xsl:apply-templates select="//tei:list" mode="opera"/>
                                <br/>
                                <xsl:apply-templates select="//tei:list" mode="loggione"/>
                            </div>
                        </div>
                    </div>

                    <xsl:element name="img">
                        <img id="decoro" src="img/decorazione.png" />
                    </xsl:element>

                    <a name="Note"></a>
                    <div class="note">
                        <p class="glossario">Note</p>
                        <xsl:apply-templates select="//tei:back/tei:div/tei:note[@xml:id='LL1_18_note1']" />
                        <xsl:apply-templates select="//tei:back/tei:div/tei:note[@xml:id='LL1_18_note2']" />
                    </div>

                    <div id="bibliografia">
                        <p class="glossario">Bibliografia</p>
                        <xsl:apply-templates select="//tei:bibl[@xml:id='LL1_18_Neri']/tei:ref/tei:bibl" />
                        <xsl:apply-templates select="//tei:bibl[@xml:id='LL1_18_Seminara']/tei:ref/tei:bibl" />
                    </div>

                    <a name="CreditiLettera"></a>  
                    <div id="crediti">
                        <p>
                        Il progetto è stato relizzato per l'esame di <strong>Codifica di Testi</strong> del professore Angelo Mario del Grosso (a.a 2019-2020) da Francesca Moretti e Lorenzo Tafi.
                        </p>
   		            </div>
   			</body>
		</html>
   	</xsl:template>

<!--LISTA TEMPLATES-->

   	<xsl:template match="//tei:supportDesc/tei:support/tei:p">
   		<xsl:value-of select="."/>
   	</xsl:template>

   	<xsl:template match="//tei:msDesc/tei:msIdentifier">
   		<xsl:value-of select="tei:repository"/>:<xsl:text> </xsl:text><i>
   	    <xsl:value-of select="tei:altIdentifier"/></i>
   	</xsl:template>

   	<xsl:template match="//tei:supportDesc/tei:extent/tei:dimensions">
   		<xsl:value-of select="tei:height"/><xsl:text> </xsl:text>x
   		<xsl:value-of select="tei:width"/><xsl:text> </xsl:text>mm
   	</xsl:template>

   	<xsl:template match="//tei:msContents/tei:msItem/tei:textLang">
   		<xsl:value-of select="."/>
   	</xsl:template>

   	<xsl:template match="//tei:ab/tei:unclear/tei:idno">
   		<xsl:value-of select="."/>
   	</xsl:template>

   	<xsl:template match="//tei:div/tei:salute/tei:s[@n='s_01']">
   		<xsl:value-of select="."/>
   	</xsl:template>

   	<xsl:template match="//tei:div/tei:ab/tei:s[@n='s_02']/tei:seg">
   		<br/><xsl:value-of select="."/>
   	</xsl:template>

   	<xsl:template match="//tei:div/tei:ab/tei:s[@n='s_03']/tei:seg">
   		<br/><xsl:value-of select="."/>
   	</xsl:template>

   	<xsl:template match="//tei:salute/tei:s/tei:hi/tei:w">
   		<xsl:value-of select="."/>
   	</xsl:template>

    <xsl:template match="//tei:body/tei:div/tei:div[@type='sent']/tei:ab/tei:stamp/tei:mentioned/tei:date">
   		<xsl:value-of select="."/>
   	</xsl:template>

   	<xsl:template match="//tei:body/tei:div/tei:div[@type='destination']/tei:ab/tei:stamp/tei:mentioned">
   	 	<xsl:value-of select="tei:c"/><br/>
   	 	<xsl:value-of select="tei:pc"/>
   	 	<xsl:value-of select="tei:num"/>
   	</xsl:template>

	<xsl:template match="//tei:body/tei:div/tei:div/tei:ab/tei:address">
		<xsl:value-of select="tei:addrLine[@n='1']"/><br/>
		<xsl:value-of select="tei:addrLine[@n='2']"/><br/>
		<xsl:value-of select="tei:addrLine[@n='3']"/>
	</xsl:template>



    <!--template lista persone -->

    <xsl:template match="//tei:listPerson/tei:person[@xml:id='VB']">
        Nome: <a id="link" href="#Bel"><xsl:value-of select="tei:persName/tei:forename" /></a><br />
        Cognome: <a id="link" href="#Bel"><xsl:value-of select="tei:persName/tei:surname" /></a><br />
        Soprannome: <xsl:value-of select="tei:persName/tei:addName" /><br />
        Titolo: <xsl:value-of select="tei:persName/tei:roleName" /><br />
        Sesso: <xsl:value-of select="tei:sex" /> <br />
        Data di nascita: <xsl:value-of select="tei:birth/tei:date"/><br />
        Luogo di nascita: <xsl:value-of select="tei:birth/tei:placeName/tei:settlement[@type='municipaly']"/> ,
                          <xsl:value-of select="tei:birth/tei:placeName/tei:settlement[@type='provincia']"/> ,
                          <xsl:value-of select="tei:birth/tei:placeName/tei:country"/><br />
        Data di morte: <xsl:value-of select="tei:death/tei:date"/><br />
        Luogo di morte: <xsl:value-of select="tei:death/tei:placeName/tei:settlement[@type='municipaly']"/> ,
        <xsl:value-of select="tei:death/tei:placeName/ tei:settlement[@type='department']"/> ,
        <xsl:value-of select="tei:death/tei:placeName/tei:country"/><br />
    </xsl:template>
   
    <xsl:template match="//tei:listPerson/tei:person[@xml:id='GCo']">
        Nome: <a id="link" href="#Cob"> <xsl:value-of select="tei:persName/tei:forename" /></a><br />
        Cognome: <a id="link" href="#Cob"><xsl:value-of select="tei:persName/tei:surname" /></a><br />
        Sesso: <xsl:value-of select="tei:sex" /> <br />
        Data di nascita: <xsl:value-of select="tei:birth/tei:date"/><br />
        Luogo di nascita: <xsl:value-of select="tei:birth/tei:placeName/tei:settlement[@type='municipaly']"/> ,
                          <xsl:value-of select="tei:birth/tei:placeName/tei:settlement[@type='provincia']"/> ,
                          <xsl:value-of select="tei:birth/tei:placeName/tei:country"/> <br />
        Data di morte: <xsl:value-of select="tei:death/tei:date"/> <br />
        Luogo di morte: <xsl:value-of select="tei:death/tei:placeName"/> , 
                        <xsl:value-of select="tei:death/tei:country"/> <br />
    </xsl:template>
     
    <xsl:template match="//tei:listPerson/tei:person[@xml:id='MaryB']">
        Nome: <xsl:value-of select="tei:persName/tei:forename" /><br />
        Cognome: <xsl:value-of select="tei:persName/tei:surname" /><br />
        Sesso: <xsl:value-of select="tei:sex" />
    </xsl:template>


        <!--template lista luoghi -->

    <xsl:template match="//tei:listPlace/tei:place[@xml:id='Paris']">
        Città: <xsl:value-of select="tei:placeName" /><br />
        Nazione: <xsl:value-of select="tei:country" /><br />
    </xsl:template>

    <xsl:template match="//tei:listPlace/tei:place[@xml:id='PDLMadelaine']">
        Piazza: <xsl:value-of select="tei:placeName" /><br />
        Dipartimento: <xsl:value-of select="tei:settlement" /><br />
        Nazione: <xsl:value-of select="tei:country" /><br />
    </xsl:template>


        <!--template lista termini -->

    <xsl:template match="//tei:list" mode="opera">
        <xsl:value-of select="tei:label/tei:term[@xml:id='opera']" /> : <br />
        <xsl:value-of select="tei:item/tei:gloss[@xml:id='def1']" />
    </xsl:template>
    
    <xsl:template match="//tei:list" mode="loggione">
        <xsl:value-of select="tei:label/tei:term[@xml:id='loggione']" /> : <br />
        <xsl:value-of select="tei:item/tei:gloss[@xml:id='def2']" />
    </xsl:template>


        <!--template note -->

    <xsl:template match="//tei:back/tei:div/tei:note[@xml:id='LL1_18_note1']">
        1. <a id="link" href="#Cob">"Mio caro Amico"</a> : <xsl:value-of select= "tei:p" /><br />  
    </xsl:template>

    <xsl:template match="//tei:back/tei:div/tei:note[@xml:id='LL1_18_note2']">
        2. "stalle" : <xsl:value-of select= "tei:p" /><br /> 
    </xsl:template>


      <!--template bibliografia -->

    <xsl:template match="//tei:bibl[@xml:id='LL1_18_Neri']/tei:ref/tei:bibl">
        1. <xsl:value-of select= "tei:author/tei:surname" />,
           <xsl:value-of select= "tei:date" /> <br /> 
    </xsl:template>

    <xsl:template match="//tei:bibl[@xml:id='LL1_18_Seminara']/tei:ref/tei:bibl">
        2. <xsl:value-of select= "tei:author/tei:surname" />,
           <xsl:value-of select= "tei:date" /> 
    </xsl:template>

</xsl:stylesheet>