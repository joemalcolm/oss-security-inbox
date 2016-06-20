X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3524" "Monday" "20" "June" "2016" "15:40:53" "+0200" "Marcus Meissner" "meissner@suse.de" "<20160620134053.GG24371@suse.de>" "114" "[oss-security] CVE Request: 2015 squidguard reflected XSS" nil nil nil "6" "2016062013:40:53" "[oss-security] CVE Request: 2015 squidguard reflected XSS" (number mark "U       meissner@sus Jun 20  114/3524  " thread-indent "\"[oss-security] CVE Request: 2015 squidguard reflected XSS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21621 invoked by uid 550); 20 Jun 2016 13:41:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21597 invoked from network); 20 Jun 2016 13:41:06 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 20 Jun 2016 15:40:53 +0200
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20160620134053.GG24371@suse.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sm4nu43k4a2Rpi4c"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] CVE Request: 2015 squidguard reflected XSS

--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Please assign a CVE for:

http://www.squidguard.org/Downloads/CHANGELOG
	2015-02-01	Fixed a cross site vulnerability in squidGuard.cgi

http://www.squidguard.org/Downloads/Patches/1.4/Readme.Patch-20150201

I have attached the diff against 1.4, the relevant part seem to be the two lines replacing tags
in $url.

Unsure why they added another \n to the headers, as there are already two \n.

Ciao, Marcus

--sm4nu43k4a2Rpi4c
Content-Type: text/x-patch; charset=utf-8
Content-Disposition: attachment; filename="squidguard-20150201.patch"
Content-Transfer-Encoding: 8bit

--- squidGuard-1.4/samples/squidGuard.cgi.in	2008-12-23 22:08:35.000000000 +0100
+++ squidGuard-1.4-patch-20150201/squidGuard.cgi	2015-02-01 19:43:27.000000000 +0100
@@ -1,4 +1,4 @@
-#! @PERL@  -w
+#! /usr/bin/perl  -w
 #
 # Explain to the user that the URL is blocked and by which rule set
 #
@@ -6,7 +6,8 @@
 # French texts thanks to Fabrice Prigent (fabrice.prigent@univ-tlse1.fr)
 # Dutch texts thanks to Anneke Sicherer-Roetman (sicherer@sichemsoft.nl)
 # German texts thanks to Buergernetz Pfaffenhofen (http://www.bn-paf.de/filter/)
-# Spanish texts thanks to Samuel GarcÃ­a).
+# Spanish texts thanks to Samuel GarcÃ­a.
+# Russian texts thanks to Vladimir Ipatov.
 # Rewrite by Christine Kronberg, 2008, to enable an easier integration of
 # other languages.
 #
@@ -57,21 +58,22 @@
 #
 # CONFIGURABLE OPTIONS:
 #
-# (Currently: "en", "fr", "de", "es", "nl", "no")
+# (Currently: "en", "fr", "de", "es", "nl", "no", "ru")
 @supported   = (
 		"en (English), ",
-		"fr (Français), ",
+		"fr (Fran&#231;ais), ",
 		"de (Deutsch), ",
-		"es (Español), ",
+		"es (Espa&#241;ol), ",
 		"nl (Nederlands), ",
-		"no (Norsk)."
+		"no (Norsk), ",
+		"ru (Russian)."
 	       );
 #
 # Modifiy the values below to reflect you environment
 # The image you define with "$image" and redirect will be displayed if the unappropriate
 # url is of the type: gif, jpg, jpeg, png, mp3, mpg, mpeg, avi or mov.
 #
-$image       = "/images/blocked.gif";					# RELATIVE TO DOCUMENT_ROOT
+$image       = "/Logos/md5.png";					# RELATIVE TO DOCUMENT_ROOT
 $redirect    = "http://admin.your-domain/images/blocked.gif";		# "" TO AVOID REDIRECTION
 $proxy       = "proxy.your-domain";					# Your proxy server
 $proxymaster = "operator\@your-domain";					# The email of your proxy adminstrator
@@ -142,7 +144,7 @@
 }
 
 #
-# PRINT HTTP STATUS HEARER:
+# PRINT HTTP STATUS HEADER:
 #
 sub status($) {
   my $status = shift;
@@ -150,7 +152,7 @@
 }
 
 #
-# PRINT HTTP LOCATION HEARER:
+# PRINT HTTP LOCATION HEADER:
 #
 sub redirect($) {
   my $location = shift;
@@ -249,7 +251,7 @@
     status("404 Not Found");
   }
   if (@names) {
-    print "Content-type: text/html\n\n";
+    print "Content-type: text/html\n\n\n";
     print "<!DOCTYPE html PUBLIC \"-//W3C//DTD  HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n";
     print "<html><head>\n";
     print "<title>$Babel{Title}</title>\n";
@@ -317,9 +319,12 @@
    showinaddr($targetgroup,$protocol,$address,$port,$path);
 }
 
+$url =~ s/</&lt;/g ;
+$url =~ s/>/&gt;/g ;
+
 status("403 Forbidden");
 expires(0);
-print "Content-type: text/html\n\n";
+print "Content-type: text/html\n\n\n";
 print "<!DOCTYPE html PUBLIC \"-//W3C//DTD  HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n";
 print "<html><head>\n";
 print "<title>$Babel{Title}</title>\n";

--sm4nu43k4a2Rpi4c--
