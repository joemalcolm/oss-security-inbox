X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3029" "Tuesday" "12" "May" "2015" "14:15:22" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150512141522.3ae38635@pc1>" "80" "[oss-security] Two invalid read errors / heap overflows in SQLite (TFPA 006/2015)" nil nil nil "5" "2015051212:15:22" "[oss-security] Two invalid read errors / heap overflows in SQLite (TFPA 006/2015)" (number mark "        hanno@hboeck May 12   80/3029  " thread-indent "\"[oss-security] Two invalid read errors / heap overflows in SQLite (TFPA 006/2015)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30023 invoked by uid 550); 12 May 2015 12:15:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29983 invoked from network); 12 May 2015 12:14:59 -0000
Message-ID: <20150512141522.3ae38635@pc1>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-18227-1431432887-0001-2"
Date: Tue, 12 May 2015 14:15:22 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Two invalid read errors / heap overflows in SQLite (TFPA 006/2015)
To: oss-security@lists.openwall.com, cve-assign@mitre.org,
  fulldisclosure@seclists.org

--=_zucker.schokokeks.org-18227-1431432887-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/10-Two-invalid-read-errors-heap-overflows-=
in-SQLite-TFPA-0062015.html

While fuzzing SQLite I discovered two read heap overflow errors. One is
in the database file parser, one in the sql command parser. Both issues
are present in SQLite 3.8.9 and are fixed in SQLite 3.8.10.1. These
bugs can be seen with either valgrind or address sanitizer.

Passing the command ".\" will cause a one byte heap overflow in the
function resolve_backslashes().

https://crashes.fuzzing-project.org/TFPA-2015-006-sqlite-heapoverflow-resol=
ve_backslashes.sql
Sample input file (test with sqlite3 < [inputfile])

https://www.sqlite.org/cgi/src/info/e018f4bf1f27f783
Upstream commit / patch

Parsing a malformed database file will cause a heap overflow of several
bytes in the function sqlite3VdbeExec(). This only matters if your
attack scenario involves parsing untrusted database files.

https://crashes.fuzzing-project.org/TFPA-2015-006-sqlite-heapoverflow-sqlit=
e3VdbeExec.sqlite
Sample input file (test with sqlite3 [inputfile] .dump)

https://www.sqlite.org/cgi/src/info/f71053cf658b3260
Upstream commit / patch

Please also note:
http://lcamtuf.blogspot.de/2015/04/finding-bugs-in-sqlite-easy-way.html
Finding bugs in SQLite, the easy way - Michal Zalewski fuzzed SQLite
with a dictionary - most of these were already fixed in 3.8.9, the
version I was testing.

https://www.sqlite.org/testing.html#aflfuzz
SQL Fuzz Using The American Fuzzy Lop Fuzzer -
SQLite developers themselve now use regular fuzz testing to find
further bugs.

https://sqlite.org/releaselog/3_8_10_1.html
SQLite 3.8.10.1 release notes mention fixes for "many
obscure problems discovered while SQL fuzzing", so there are likely
more fixes than the two I mentioned above.

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-18227-1431432887-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVUe7aAAoJEKWIAHK7tR5CD4MQAMSjejMbAVa/740E4M6MIjQN
3JfUX+o3ztkmHS+hFK8L3R9j8YgxODeO67Z7DBEMVX1iL1/Qg7E47RBOVpURe9qP
L/ebnJW8jXROGA8kpFsgemnsfbXSyeOD8cTnBP0qv04sI+tLLN2jEMGYX44eC6Cp
AyY7QqWXRmHuKEaZzcgwfDC/d695lN2mIC791nXiZ2ibQHZvVU1m8183BCcRc3fr
bfHCNUZZEaEKzRPQt5sjJbpWP9U3EnAeHCztzEMKXOrLtU5YYsJA7P4RsCAI9cew
Vg9LjYJXqcVvFsVft59o4ZNmMFAQojekNTVwuee4Uta7D2iYApT0egBQyOgINFgY
PKSVLQ902T8hF8tqnFwDz/so6cFAs/Fm5p/NefO7kHRQVbUMO0AR+SINJVa2D1Px
Sacmz5FTbpLtOrxq4/lidrxvlLhit/4shFr+KvvRI0312ujUvJO/gD7sx7VQEfUk
Fj0PnAODGIpdYqvqRZ5hjU5yeTgAk6aXJC3Bbwkjfi9YuiXOxBbEnxkGC1DfPxod
wvxSPVNfjJWdfVoPFnzJAGtUZ6NVFCqJGTUMqYSg3mHN2oNwxO4vdixYtri0bXI9
KccUzzDjMqyADtqzjEgdvt2o7MnzeBaiLuIdJNEjSl3VagSk49kBY8QDPBEKQsEC
EaRoYQeRH1wkrmNn1Hyj
=x/To
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-18227-1431432887-0001-2--
