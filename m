X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4157" "Tuesday" "6" "June" "2017" "23:56:42" "+0200" "Pavel Kankovsky" "peak@argo.troja.mff.cuni.cz" "<alpine.LRH.2.02.1706061556390.27351@argo.troja.mff.cuni.cz>" "129" "[oss-security] CVE-2017-9148 FreeRADIUS TLS resumption authentication bypass (erratum)" nil nil nil "6" "2017060621:56:42" "[oss-security] CVE-2017-9148 FreeRADIUS TLS resumption authentication bypass (erratum)" (number mark "U       peak@argo.tr Jun  6  129/4157  " thread-indent "\"[oss-security] CVE-2017-9148 FreeRADIUS TLS resumption authentication bypass (erratum)\"\n") "<alpine.LRH.2.02.1705291635300.17002@argo.troja.mff.cuni.cz>" ("<alpine.LRH.2.02.1705291635300.17002@argo.troja.mff.cuni.cz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17901 invoked by uid 550); 6 Jun 2017 22:23:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12182 invoked from network); 6 Jun 2017 22:18:58 -0000
Date: Tue, 6 Jun 2017 23:56:42 +0200 (CEST)
From: Pavel Kankovsky <peak@argo.troja.mff.cuni.cz>
To: oss-security@lists.openwall.com
In-Reply-To: <alpine.LRH.2.02.1705291635300.17002@argo.troja.mff.cuni.cz>
Message-ID: <alpine.LRH.2.02.1706061556390.27351@argo.troja.mff.cuni.cz>
References: <alpine.LRH.2.02.1705291635300.17002@argo.troja.mff.cuni.cz>
User-Agent: Alpine 2.02 (LRH 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="1908607772-1075919167-1496758410=:27351"
Content-ID: <alpine.LRH.2.02.1706061615190.27351@argo.troja.mff.cuni.cz>
Subject: [oss-security] CVE-2017-9148 FreeRADIUS TLS resumption authentication bypass
 (erratum)

--1908607772-1075919167-1496758410=:27351
Content-Type: TEXT/PLAIN; CHARSET=UTF-8; FORMAT=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Content-ID: <alpine.LRH.2.02.1706061615191.27351@argo.troja.mff.cuni.cz>

Due to various unfortunate circumstances, mostly related to my own
sloppiness and stupidity, several "alternative facts" made their way
into the advisory published on May 29:

1. Reports of EOL versions being vulnerable were greatly exaggerated.
Only versions 2.1.1 through 2.1.7 are actually vulnerable. Other versions
allow TLS resumption and skip inner authentication but they change their
mind and refuse access at the last moment. (I accept full responsibility
for this fiasco and as an act of penance I have reexamined and retested
every single FreeRADIUS release since 2.0.0.)

2. The attribution of the discovery to Stefan Winter was wrong. Further
inquiry into this matter has revealed the vulnerability was reported
"back in February" but the true identity of a person who reported it
remains unknown. (Stefan reported a different problem with session
resumption in early March and those two issues might have become
conflated but that is purely my speculation.)

Enclosed below is the corrected advisory. The timeline has been extended
to cover the complete history of the vulnerability.

-----


Vendor: The FreeRADIUS Project

Product: FreeRADIUS server


Affected Versions:

2.x (EOL): 2.1.1 through 2.1.7.

3.0.x (stable): All versions before 3.0.14.

3.1.x and 4.0.x (development): All versions before 2017-02-04.


Description:

The implementation of TTLS and PEAP in FreeRADIUS skips inner
authentication when it handles a resumed TLS connection. This is
a feature but there is a critical catch: the server must never allow
resumption of a TLS session until its initial connection gets to the point
where inner authentication has been finished successfully.

Unfortunately, affected versions of FreeRADIUS fail to reliably prevent
resumption of unauthenticated sessions unless the TLS session cache is
disabled completely and allow an attacker (e.g. a malicious supplicant) to
elicit EAP Success without sending any valid credentials.


Mitigation:

(a) Disable TLS session caching. Set enabled =3D no in the cache subsection=
 of
eap module settings (raddb/mods-enabled/eap in the standard v3.0.x-style
layout).

(b) Upgrade to version 3.0.14.


Credits:

It is not known who was the first to discover this vulnerability.

Lubo=C5=A1 Pavl=C3=AD=C4=8Dek of the University of Economics, Prague indepe=
ndently
rediscovered it in April 2017.


Timeline:

2008-09-05 Version 2.1.0 released. It was the first version supporting
TTLS session resumption/PEAP fast reauthentication.

2008-09-24 Vulnerability introduced (commit c6786c12).

2008-09-25 Version 2.1.1 released.

2009-09-14 Version 2.1.7 released.

2009-09-24 Vulnerability fixed (commit 776cf690).

2009-12-30 Version 2.1.8 released.

2011-05-11 Vulnerability reintroduced in v3.0.x branch (commit a3f08dcb).

2013-10-07 Version 3.0.0 released.

early February 2017: Vulnerability discovered (or rediscovered?) and
reported by an unknown person.

2017-02-03: The first (and mostly ineffective) attempt to fix the
vulnerability in v3.0.x branch (commits 5aabc3b1 and 6b909d0c).

2017-02-04 Vulnerability fixed in v3.1.x and v4.0.x branches (commits
813a93a7 and c703ad96, respectively).

2017-03-06 Version 3.0.13 released without any explicit indication that it
was supposed to fix a serious vulnerability (but it was probably better
that way because the vulnerability was not really fixed).

2017-04-24 Vulnerability rediscovered by Lubo=C5=A1 Pavl=C3=AD=C4=8Dek.

2017-04-25 PoC exploit developed and used to confirm 3.0.13 is still
vulnerable. Vulnerability reported... again.

2017-05-08 The second (and hopefully final) attempt to fix the
vulnerability in v3.0.x (commits af030bd4 and 8f53382c).

2017-05-26 Version 3.0.14 released.


References:

[1] <http://freeradius.org/security.html>
[2] <http://freeradius.org/press/index.html#3.0.14>


--=20
Pavel Kankovsky aka Peak                      "Que s=C3=A7ay-je?"=

--1908607772-1075919167-1496758410=:27351--
