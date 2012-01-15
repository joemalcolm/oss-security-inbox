X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/15/1
Message-ID: <1326586554.7887.512.camel@new-desktop>
Date: Sun, 15 Jan 2012 01:15:54 +0100
From: Nicolas Grégoire <nicolas.gregoire@...rri.fr>
To: oss-security@...ts.openwall.com
Subject: Re: CVE affected for PHP 5.3.9 ?
Content-Type: text/plain; charset=utf-8


> Right but the script has to have the line
> <sax:output href="0wn3d.php" method="text">

Wrong.

The PHP code only has to call transformToXML() after having loaded the
malicious XSLT code via importStylesheet(). The XML data itself is
irrelevant for this bug and the "sax:output" tag isn't in the PHP script
but in the XSLT stylesheet provided by the attacker.

# LOAD XML FILE 
$XML = new DOMDocument(); 
$XML->loadXML( $sXml ); 

# LOAD XSLT FILE 
$XSL = new DOMDocument(); 
$XSL->loadXML( $sXsl ); // Content of $xXsl may be untrusted !

# START XSLT 
$xslt = new XSLTProcessor(); 
$xslt->importStylesheet( $XSL );

# TRASNFORM & PRINT 
print $xslt->transformToXML( $XML ); // File creation !

Nicolas

