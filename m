X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2622" "Thursday" "9" "December" "2021" "13:02:18" "+0100" "Fabian Keil" "freebsd-listen@fabiankeil.de" nil "69" "[oss-security] Multiple issues fixed in Privoxy 3.0.33 stable" nil nil nil "12" nil nil (number mark "U       freebsd-list Dec  9   69/2622  " thread-indent "\"[oss-security] Multiple issues fixed in Privoxy 3.0.33 stable\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple issues fixed in Privoxy 3.0.33 stable" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28668 invoked by uid 550); 9 Dec 2021 12:03:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28631 invoked from network); 9 Dec 2021 12:03:37 -0000
Date: Thu, 9 Dec 2021 13:02:18 +0100
From: Fabian Keil <freebsd-listen@fabiankeil.de>
To: oss-security@lists.openwall.com
Message-ID: <20211209130218.6d96ea6c@fabiankeil.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/84.+wZJy3Sba.UV8OBpOCPc";
 protocol="application/pgp-signature"; micalg=pgp-sha1
X-Df-Sender: Nzc1MDY3
Subject: [oss-security] Multiple issues fixed in Privoxy 3.0.33 stable

--Sig_/84.+wZJy3Sba.UV8OBpOCPc
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

               Announcing Privoxy 3.0.33 stable
--------------------------------------------------------------------

Privoxy 3.0.33 fixes an XSS issue, multiple DoS issues and a
couple of other bugs. The issues also affect earlier Privoxy releases.
Privoxy 3.0.33 also comes with a couple of general improvements and
new features.

--------------------------------------------------------------------
ChangeLog for Privoxy 3.0.33
--------------------------------------------------------------------
- Security/Reliability:
  - cgi_error_no_template(): Encode the template name to prevent
    XSS (cross-site scripting) when Privoxy is configured to servce
    the user-manual itself.
    Commit 0e668e9409c. OVE-20211102-0001. CVE-2021-44543.
    Reported by: Artem Ivanov
  - get_url_spec_param(): Free memory of compiled pattern spec
    before bailing.
    Reported by Joshua Rogers (Opera) who also provided the fix.
    Commit 652b4b7cb0. OVE-20211201-0003. CVE-2021-44540.
  - process_encrypted_request_headers(): Free header memory when
    failing to get the request destination.
    Reported by Joshua Rogers (Opera) who also provided the fix.
    Commit 0509c58045. OVE-20211201-0002. CVE-2021-44541.
  - send_http_request(): Prevent memory leaks when handling errors
    Reported by Joshua Rogers (Opera) who also provided the fix.
    Commit c48d1d6d08. OVE-20211201-0001. CVE-2021-44542.

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
   https://lists.privoxy.org/pipermail/privoxy-announce/2021-December/00000=
9.html

--Sig_/84.+wZJy3Sba.UV8OBpOCPc
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iFwEARECAB0WIQTKUNd6H/m3+ByGULIFiohV/3dUnQUCYbHwSgAKCRAFiohV/3dU
nTT6AJdL2/8nm7A1Orgi48Cbo+BPZaErAJ94xr5Xpprq9S6FQSjbFYLLqiZz0g==
=BobL
-----END PGP SIGNATURE-----

--Sig_/84.+wZJy3Sba.UV8OBpOCPc--
