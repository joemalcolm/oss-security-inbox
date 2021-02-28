X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2758" "Sunday" "28" "February" "2021" "10:23:46" "+0100" "Fabian Keil" "freebsd-listen@fabiankeil.de" nil "73" "[oss-security] Multiple DoS issues fixed in Privoxy 3.0.32 stable" nil nil nil "2" nil nil (number mark "U       freebsd-list Feb 28   73/2758  " thread-indent "\"[oss-security] Multiple DoS issues fixed in Privoxy 3.0.32 stable\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple DoS issues fixed in Privoxy 3.0.32 stable" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22180 invoked by uid 550); 28 Feb 2021 11:05:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11878 invoked from network); 28 Feb 2021 09:26:48 -0000
Date: Sun, 28 Feb 2021 10:23:46 +0100
From: Fabian Keil <freebsd-listen@fabiankeil.de>
To: oss-security@lists.openwall.com
Message-ID: <20210228102346.65e49420@fabiankeil.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/RCSyHhiXw=.+/Vtg7AS0M2J";
 protocol="application/pgp-signature"; micalg=pgp-sha1
X-Df-Sender: Nzc1MDY3
Subject: [oss-security] Multiple DoS issues fixed in Privoxy 3.0.32 stable

--Sig_/RCSyHhiXw=.+/Vtg7AS0M2J
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

               Announcing Privoxy 3.0.32 stable
--------------------------------------------------------------------

Privoxy 3.0.32 fixes multiple DoS issues and a couple of other bugs.
The issues also affect earlier Privoxy releases.

--------------------------------------------------------------------
ChangeLog for Privoxy 3.0.32
--------------------------------------------------------------------
- Security/Reliability:
  - ssplit(): Remove an assertion that could be triggered with a
    crafted CGI request.
    Commit 2256d7b4d67. OVE-20210203-0001.
    Reported by: Joshua Rogers (Opera)
  - cgi_send_banner(): Overrule invalid image types. Prevents a
    crash with a crafted CGI request if Privoxy is toggled off.
    Commit e711c505c48. OVE-20210206-0001.
    Reported by: Joshua Rogers (Opera)
  - socks5_connect(): Don't try to send credentials when none are
    configured. Fixes a crash due to a NULL-pointer dereference
    when the socks server misbehaves.
    Commit 85817cc55b9. OVE-20210207-0001.
    Reported by: Joshua Rogers (Opera)
  - chunked_body_is_complete(): Prevent an invalid read of size two.
    Commit a912ba7bc9c. OVE-20210205-0001.
    Reported by: Joshua Rogers (Opera)
  - Obsolete pcre: Prevent invalid memory accesses with an invalid
    pattern passed to pcre_compile(). Note that the obsolete pcre code
    is scheduled to be removed before the 3.0.33 release. There has been
    a warning since 2008 already.
    Commit 28512e5b624. OVE-20210222-0001.
    Reported by: Joshua Rogers (Opera)

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

Complete announcement:
   https://lists.privoxy.org/pipermail/privoxy-announce/2021-February/00000=
7.html

--Sig_/RCSyHhiXw=.+/Vtg7AS0M2J
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTKUNd6H/m3+ByGULIFiohV/3dUnQUCYDthIwAKCRAFiohV/3dU
nSn1AJ48xW6Px2AZ+HM3gOynPKBvdR86TQCeO0nLigdgt5rrqVB7eAzSDPsF/kQ=
=FMEa
-----END PGP SIGNATURE-----

--Sig_/RCSyHhiXw=.+/Vtg7AS0M2J--
