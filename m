X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1902" "Sunday" "31" "January" "2021" "13:13:08" "+0100" "Fabian Keil" "freebsd-listen@fabiankeil.de" "<20210131131308.47c79861@fabiankeil.de>" "55" "[oss-security] Two DoS issues fixed in Privoxy 3.0.31 stable" nil nil nil "1" "2021013112:13:08" "[oss-security] Two DoS issues fixed in Privoxy 3.0.31 stable" (number mark "U       freebsd-list Jan 31   55/1902  " thread-indent "\"[oss-security] Two DoS issues fixed in Privoxy 3.0.31 stable\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Two DoS issues fixed in Privoxy 3.0.31 stable" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20072 invoked by uid 550); 31 Jan 2021 13:55:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24315 invoked from network); 31 Jan 2021 12:17:24 -0000
Date: Sun, 31 Jan 2021 13:13:08 +0100
From: Fabian Keil <freebsd-listen@fabiankeil.de>
To: oss-security@lists.openwall.com
Message-ID: <20210131131308.47c79861@fabiankeil.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/Jcr4WqdZ1u7PVbY/SrW9U7b";
 protocol="application/pgp-signature"; micalg=pgp-sha1
X-Df-Sender: Nzc1MDY3
Subject: [oss-security] Two DoS issues fixed in Privoxy 3.0.31 stable

--Sig_/Jcr4WqdZ1u7PVbY/SrW9U7b
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

               Announcing Privoxy 3.0.31 stable
--------------------------------------------------------------------

Privoxy 3.0.31 fixes two security issues that were discovered while
preparing the 3.0.30 release. The issues also affect earlier Privoxy
releases.

--------------------------------------------------------------------
ChangeLog for Privoxy 3.0.31
--------------------------------------------------------------------

- Security/Reliability:
  - Prevent an assertion from getting triggered by a crafted CGI request.
    Commit 5bba5b89193fa. OVE-20210130-0001.
    Reported by: Joshua Rogers (Opera)
  - Fixed a memory leak when decompression fails "unexpectedly".
    Commit f431d61740cc0. OVE-20210128-0001.
[...]
-----------------------------------------------------------------
About Privoxy:
-----------------------------------------------------------------

Privoxy is a non-caching web proxy with advanced filtering capabilities for
enhancing privacy, modifying web page data and HTTP headers, controlling
access, and removing ads and other obnoxious Internet junk. Privoxy has a
flexible configuration and can be customized to suit individual needs and
tastes. It has application for both stand-alone systems and multi-user
networks.

Privoxy is Free Software and licensed under the GNU GPLv2.

[...]

Home Page:=20
https://www.privoxy.org/

ChangeLog:
https://www.privoxy.org/3.0.31/user-manual/whatsnew.html

--Sig_/Jcr4WqdZ1u7PVbY/SrW9U7b
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTKUNd6H/m3+ByGULIFiohV/3dUnQUCYBae1AAKCRAFiohV/3dU
nSZMAJ0RKNBcaM7qRBPJgSf5sisa2XAsYQCcDYmN0h3I1s0ib2QLcujg4seEyhI=
=2VtP
-----END PGP SIGNATURE-----

--Sig_/Jcr4WqdZ1u7PVbY/SrW9U7b--
