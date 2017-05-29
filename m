X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2502" "Monday" "29" "May" "2017" "16:40:49" "+0200" "Pavel Kankovsky" "peak@argo.troja.mff.cuni.cz" "<alpine.LRH.2.02.1705291635300.17002@argo.troja.mff.cuni.cz>" "84" "[oss-security] CVE-2017-9148 FreeRADIUS TLS resumption authentication bypass" "^Date:" nil nil "5" "2017052914:40:49" "[oss-security] CVE-2017-9148 FreeRADIUS TLS resumption authentication bypass" (number mark "U       peak@argo.tr May 29   84/2502  " thread-indent "\"[oss-security] CVE-2017-9148 FreeRADIUS TLS resumption authentication bypass\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27848 invoked by uid 550); 29 May 2017 14:54:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19610 invoked from network); 29 May 2017 14:41:02 -0000
Message-ID: <alpine.LRH.2.02.1705291635300.17002@argo.troja.mff.cuni.cz>
User-Agent: Alpine 2.02 (LRH 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="1908607772-1327566800-1496068849=:17002"
Date: Mon, 29 May 2017 16:40:49 +0200 (CEST)
From: Pavel Kankovsky <peak@argo.troja.mff.cuni.cz>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-9148 FreeRADIUS TLS resumption authentication bypass
To: oss-security@lists.openwall.com

--1908607772-1327566800-1496068849=:17002
Content-Type: TEXT/PLAIN; format=flowed; charset=iso-8859-2
Content-Transfer-Encoding: QUOTED-PRINTABLE

Vendor: The FreeRADIUS Project

Product: FreeRADIUS server


Affected Versions:

2.2.x (EOL but still found in some Linux distros): All versions.

3.0.x (stable): All versions before 3.0.14.

3.1.x and 4.0.x (development): All versions before 2017-02-04.


Description:

The implementation of TTLS and PEAP in FreeRADIUS skips inner
authentication when it handles a resumed TLS connection. This is a feature
but there is a critical catch: the server must never allow resumption of a
TLS session until its initial connection gets to the point where inner
authentication has been finished successfully.

Unfortunately, affected versions of FreeRADIUS fail to reliably prevent
resumption of unauthenticated sessions unless the TLS session cache is
disabled completely and allow an attacker (e.g. a malicious supplicant)=20
to elicit EAP Success without sending any valid credentials.


Mitigation:

(a) Disable TLS session caching. Set enabled =3D no in the cache subsection=
=20
of eap module settings (raddb/mods-enabled/eap in the standard=20
v3.0.x-style layout).

(b) Upgrade to version 3.0.14.


Credits:

Stefan Winter of the RESTENA Foundation (initial discovery)

Lubo=B9 Pavl=ED=E8ek of the University of Economics, Prague (independent=20
rediscovery)


Timeline:

"a few months" ago: Vulnerability discovered and reported by Stefan Winter.

2017-02-03: The first (and mostly ineffective) attempt to fix the
vulnerability in v3.0.x branch (commits 5aabc3b1 and 6b909d0c).

2017-02-04 Vulnerability fixed in v3.1.x and v4.0.x branches (commits
813a93a7 and c703ad96, respectively).

2017-03-06 Version 3.0.13 released without any explicit indication that it
was supposed to fix a serious vulnerability (but it was probably better
that way because the vulnerability was not really fixed).

2017-04-24 Vulnerability rediscovered by Lubo=B9 Pavl=ED=E8ek.

2017-04-25 PoC exploit developed and used to confirm 3.0.13 is still
vulnerable. Vulnerability reported... again.

2017-05-08 The second (and hopefuly final) attempt to fix the vulnerability
in v3.0.x (commits af030bd4 and 8f53382c).

2017-05-26 Version 3.0.14 released.


References:

[1] <http://freeradius.org/security.html>
[2] <http://freeradius.org/press/index.html#3.0.14>

--=20
Pavel Kankovsky aka Peak                      "Que s=E7ay-je?"=

--1908607772-1327566800-1496068849=:17002--
