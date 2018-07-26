X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1702" "Thursday" "26" "July" "2018" "09:09:36" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20180726090936.76ac1839@computer>" "58" "[oss-security] Fw: New cabextract 1.7 and libmspack 0.7 release" nil nil nil "7" "2018072607:09:36" "[oss-security] Fw: New cabextract 1.7 and libmspack 0.7 release" (number mark "U       hanno@hboeck Jul 26   58/1702  " thread-indent "\"[oss-security] Fw: New cabextract 1.7 and libmspack 0.7 release\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26271 invoked by uid 550); 26 Jul 2018 07:09:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26238 invoked from network); 26 Jul 2018 07:09:42 -0000
Date: Thu, 26 Jul 2018 09:09:36 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20180726090936.76ac1839@computer>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Fw: New cabextract 1.7 and libmspack 0.7 release

Several memory safety bugs fixed, see below.

Begin forwarded message:

Date: Thu, 26 Jul 2018 00:46:18 +0100
From: Stuart Caie
Subject: New cabextract 1.7 and libmspack 0.7 release


Hello all,

cabextract 1.7 has been released.

It fixes a few bugs, an introduces a new "--encoding" option, which is=20
made available if the iconv() function and/or libiconv library are=20
available on your system. It also now tries calling setlocale() (if=20
present) with several possible locales that have a UTF-8 ctype, to
allow towlower() (if present) to lowercase non-ASCII characters.

cabextract can be downloaded from https://www.cabextract.org.uk/

SHA256 sums:

06d3cdded6519fccff1532f64ab54ce6cc3c7be51bcc6fff0f91092179a9bb26=20
cabextract-1.7-1.i386.rpm
11570d7e5ba0f46f458b88d76d2f0bdcad3a1266055ea5c8229830be2023e16e=20
cabextract-1.7-1.src.rpm
297203c826c004801ea1b17414f568e7bdf56c3ae9bbaca4d8514e8a56e506bd=20
cabextract-1.7.tar.gz

libmspack 0.7alpha has also been released. It fixes several bugs:

* bad KWAJ file header extensions could cause a one or two byte
  overwrite
* The character U+0100 in a CHM filename could cause a one-byte overread
* libmspack now rejects blank CHM filenames.
* Fixed off-by-one error in CHM PMGI/PMGL chunk number validity checks,=20
which could cause a crash by dereferencing uninitialised data beyond
  the end of the fast_find() chunk cache.

libmspack can be downloaded from
https://www.cabextract.org.uk/libmspack/

SHA256 sum:

36e0516cdb60617871d396fb85464f440b4ab76942ce6bdd0438ca8d70f32772=20
libmspack-0.7alpha.tar.gz

Regards
Stuart


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
