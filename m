X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1527" "Thursday" "7" "May" "2015" "10:15:49" "+0200" "Sven Kieske" "s.kieske@mittwald.de" "<554B1F35.9080600@mittwald.de>" "44" "Re: [oss-security] CVE request: Dovecot remote DoS on TLS connections" nil nil nil "5" "2015050708:15:49" "[oss-security] CVE request: Dovecot remote DoS on TLS connections" (number mark "        s.kieske@mit May  7   44/1527  " thread-indent "\"Re: [oss-security] CVE request: Dovecot remote DoS on TLS connections\"\n") "<20150426203114.7f951c77@pc1.fritz.box>" ("<20150426203114.7f951c77@pc1.fritz.box>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22339 invoked by uid 550); 7 May 2015 08:16:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22318 invoked from network); 7 May 2015 08:16:01 -0000
X-Virus-Scanned: Debian amavisd-new at ac02.mittwald.de
Message-ID: <554B1F35.9080600@mittwald.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
X-Authenticated-mymxserver.com: Yes
References: <20150426203114.7f951c77@pc1.fritz.box>
In-Reply-To: <20150426203114.7f951c77@pc1.fritz.box>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [192.168.111.70]
Date: Thu, 7 May 2015 10:15:49 +0200
From: Sven Kieske <s.kieske@mittwald.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: Dovecot remote DoS on TLS connections
To: <oss-security@lists.openwall.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 26/04/15 20:31, Hanno Böck wrote:
> The current Dovecot (2.2.16) imap/pop3 server has an issue that 
> handshake failures will lead to a crash of the login process.

Do you happen to know in which version this vulnerability got
introduced?

- -- 
Mit freundlichen Grüßen / Regards

Sven Kieske

Systemadministrator
Mittwald CM Service GmbH & Co. KG
Königsberger Straße 6
32339 Espelkamp
T: +49-5772-293-100
F: +49-5772-293-333
https://www.mittwald.de
Geschäftsführer: Robert Meyer
St.Nr.: 331/5721/1033, USt-IdNr.: DE814773217, HRA 6640, AG Bad Oeynhaus
en
Komplementärin: Robert Meyer Verwaltungs GmbH, HRB 13260, AG Bad
Oeynhausen
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVSx81AAoJEMby9TMDAbQRBLAP/jhwqHR9VBZ0skgmYDEULwl5
aov5Y8ZZo+cDpWlC9cbn9lSav+cJFRfnCppX92W57d7hR/A7JhqFHvm69SFq3gBt
HWlBZ2olY9BFvYBDaPt+cde1P2CCiNr7ehNwa6/Pj0LIsfb8cBjLZKRw2pcxDx6Q
cAHbltVEMCbn0zCbSI9LJCpnCOVIiURLGW7o2PSyBELSi6uij08kmpiqpB+W99nw
SpRNAbLcWCmq4O+53b2SLocxx/2K6N2EmZA8F7SfxNWZmx0q5uhcXdQr/Q70KZwg
JVPbx5YjcqvvEJME0N3rrFUMnb4c7nUzeA1Ak5Esyf0h+WnXdAFArcgs9Fckn+qF
FQ0NafhiEsUQuUo4CvYaJt28PtQJkhBv3dUxM/6HodrVx7bRCGnkOVpyEBoHSQsU
jzVS1jRnTCuQiPAZmAnJZ2y1de3Oa59NVcCYEjcf0cfrQsvn719lPR1Hs+uxwpi9
2siXIq4KLZEVMM1UNtNFoZ/ncb4K/k7QdiQwvdJOrjRgWOv6/KmPuBfg0H8aekj9
ThwdxNScLUDGhp0cepZ/BVm9WOkIrDwx6FJf7FQy0DcukplqverOG1+o/J89Soou
I17KsSADZ1l/YpVKMYOHsUjpS3PUey4hEfrGwEpDv9qZ+agSPn10EPL4boVKnycE
aejxFxnblpr6gI6jKSr1
=bi65
-----END PGP SIGNATURE-----
