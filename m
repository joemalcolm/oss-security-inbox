X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1647" "Friday" "2" "October" "2015" "13:14:48" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151002171448.077C752E0B4@smtpvbsrv1.mitre.org>" "39" "[oss-security] Re: CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1" nil nil nil "10" "2015100217:14:48" "[oss-security] Re: CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1" (number mark "        cve-assign@m Oct  2   39/1647  " thread-indent "\"[oss-security] Re: CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1\"\n") "<CACn5sdTCA42QQcgRzw4u6jSVAyXovch8qgG4oAgMm3G0in=hPQ@mail.gmail.com>" ("<CACn5sdTCA42QQcgRzw4u6jSVAyXovch8qgG4oAgMm3G0in=hPQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20244 invoked by uid 550); 2 Oct 2015 17:15:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20210 invoked from network); 2 Oct 2015 17:15:01 -0000
In-Reply-To: <CACn5sdTCA42QQcgRzw4u6jSVAyXovch8qgG4oAgMm3G0in=hPQ@mail.gmail.com>
Message-Id: <20151002171448.077C752E0B4@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri,  2 Oct 2015 13:14:48 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1
To: gustavo.grieco@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> We found a heap overflow in the gdk-pixbuf implementation triggered by the
> scaling of gif file. These issues are only fixed in the recent release of
> gdk-pixbuf 2.32.1
> 
> fixed in 2.32.1 with this commit:
> https://git.gnome.org/browse/gdk-pixbuf/commit/?id=e9a5704edaa9aee9498f1fbf6e1b70fcce2e55aa

Use CVE-2015-7674. Apparently the cause of the issue was that the
integer data type was incompatible with the details of how bitwise
shifts were used.

The entry in the 2.32.1 changelog is shown in:
https://git.gnome.org/browse/gdk-pixbuf/commit/?id=044bdb059a26608fa8178e16a8505eb7ef56dfd0

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWDro8AAoJEL54rhJi8gl5Y90P/3Bn9Ju1jDuWjFyI0icQQKH+
17XiOgVKl58CZ35G28g7lp5lhvF+QbuFNenS/bZFKl4/6NN3ODs2x9pnO/horMNQ
pIY5WhJS8z50VfS2Kr6EWlWsUgiB7N/+FPn4F/1mcH+Gg+P6OupZaF/76MmxECVU
/YXo0OOgN6qkbvy+Z4l9ZL+htV3ojTU8+Q8k0JxWGTmMp8rfHKIfJ6b/J1yMzWhN
Ljjf+7F55yL/YwyICf3Ww7D2vjXesTS90EE9+kNA3w0qcaoQuooYaSdl5CIwFXtm
iIFbWDJIzRbZsmjEf6v9E9DyOt20jI2zShiBoDs697WHrcguNAJIKKTPWChkm0GV
EGh8qm2RxZnjXnAcHYX6qNcs2kWerQ9gLWmMCyZaSqq4opSDekEosM+pTUmWJyV4
cLEIEFsMeKD4+aIRckNa958LUeuEbN2TjluSJ6NsA6PTXDAefGMctoyG/aFSLOQu
qkpkreA7gm0oC96y4E6kF+ltcc3HeUmNbMGMqDNk9/sv05NeKd+YB6u/VcNeuxmF
Mi6yMNviVGmMr4wW1QvUlnA2skhTkd0Jx2IRm74Mb8IqRGxQ6EUJ6abDFDl0fKx6
IoRzKBtcLRGHLRumpMMh9Cqq88c6rMzMkNjmynr3DE5svuK/JE+2QwSQs5u1btz0
JyGSFmwiUakdpxmydN2X
=h2vy
-----END PGP SIGNATURE-----
