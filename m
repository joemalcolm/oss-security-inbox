X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4143" "Thursday" "21" "April" "2016" "02:29:26" "+1200" "Amos Jeffries" "squid3@treenet.co.nz" "<57179246.30207@treenet.co.nz>" "107" "[oss-security] CVE Request: Squid HTTP Caching Proxy multiple issues" nil nil nil "4" "2016042014:29:26" "[oss-security] CVE Request: Squid HTTP Caching Proxy multiple issues" (number mark "U       squid3@treen Apr 21  107/4143  " thread-indent "\"[oss-security] CVE Request: Squid HTTP Caching Proxy multiple issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22027 invoked by uid 550); 20 Apr 2016 14:30:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22006 invoked from network); 20 Apr 2016 14:30:18 -0000
From: Amos Jeffries <squid3@treenet.co.nz>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Message-ID: <57179246.30207@treenet.co.nz>
Date: Thu, 21 Apr 2016 02:29:26 +1200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.2
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="IwAwhr1WLMen7urnSOSIWcRLCMjcLGtLc"
Subject: [oss-security] CVE Request: Squid HTTP Caching Proxy multiple issues

--IwAwhr1WLMen7urnSOSIWcRLCMjcLGtLc
Content-Type: multipart/mixed; boundary="1jPaXmGeoLlAf6dgMBD2ewxs0PjHqsdcc"
From: Amos Jeffries <squid3@treenet.co.nz>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Message-ID: <57179246.30207@treenet.co.nz>
Subject: CVE Request: Squid HTTP Caching Proxy multiple issues

--1jPaXmGeoLlAf6dgMBD2ewxs0PjHqsdcc
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,
 several vulnerabilities have been reported in Squid proxy.


A buffer overflow in the cachemgr.cgi tool reported by CESG (CESG REF:
56397140 / VULNERABILITY ID: 394201) allows remote clients to perform an
indirect denial of service attack on the proxy administrator. It could
be used trivially to hide other activities from inspection. Or be used
to perform remote code execution on systems without overflow protection.

This bug was also independently reported by Yuriy M. Kaminskiy.

The cachemgr.cgi tool is vulnerable when built from;
Squid-3.x up to and including 3.5.16,
Squid-4.x up to and including 4.0.8, and
Squid-2.x all versions.

Upstream report will be at:
 <http://www.squid-cache.org/Advisories/SQUID-2016_5.txt>

Patches at:
 <http://www.squid-cache.org/Versions/v4/changesets/squid-4-14643.patch>
 <http://www.squid-cache.org/Versions/v3/3.5/changesets/SQUID-2016_5.patch>
 <http://www.squid-cache.org/Versions/v3/3.4/changesets/SQUID-2016_5.patch>
 <http://www.squid-cache.org/Versions/v3/3.3/changesets/SQUID-2016_5.patch>
 <http://www.squid-cache.org/Versions/v3/3.2/changesets/SQUID-2016_5.patch>



Multiple on-stack buffer overflow from incorrect bounds calculation in
Squid ESI processing has been reported by CESG (CESG REF: 56284998 /
VULNERABILITY ID: 393536) which allows remote code execution or denial
of service if depending on the OS overflow protections which are active.

Further investigation has found that when compiler optimization is
applied incorrect use of assert() leads to information disclosure of
stack contents to remote clients and a second buffer overflow leads to
further remote code execution possibilities.

Squid-2.x are not vulnerable.
Squid-3.x up to and including 3.5.16,
Squid-4.x up to and including 4.0.8,
 when built with --enable-esi and used for either CDN reverse-proxy or
TLS MITM are vulnerable.

Upstream report will be at:
 <http://www.squid-cache.org/Advisories/SQUID-2016_6.txt>

Patches at:
 <http://www.squid-cache.org/Versions/v4/changesets/squid-4-14648.patch>
 <http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-14034.pat=
ch>
 <http://www.squid-cache.org/Versions/v3/3.4/changesets/squid-3.4-13235.pat=
ch>
 <http://www.squid-cache.org/Versions/v3/3.3/changesets/squid-3.3-12697.pat=
ch>
 <http://www.squid-cache.org/Versions/v3/3.2/changesets/squid-3.2-11841.pat=
ch>



PS. Some of our mirrors may not be updated for up to 24hrs. The "www."
in URLs can be replaced with "west." to fetch from a more up to date
mirror directly if one has trouble.


Amos Jeffries
Squid Software Foundation


--1jPaXmGeoLlAf6dgMBD2ewxs0PjHqsdcc--

--IwAwhr1WLMen7urnSOSIWcRLCMjcLGtLc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (MingW32)

iQIcBAEBAgAGBQJXF5JnAAoJEGvSOzfXE+nL2YwP/3qepFQFNzSJeIgtIqxgU5a9
Pl82wqKzi7ITOmfU73iY6uBBaolwE17d3XK9Pw82SU41bgQSpAzjY7cg97CeGCjQ
uk+mW2/5uyZFdyl6nprDrthb9a+WC6Hy/BUNzERS6L+7HrezQaqYtuJN5mDUiDZd
j31E2jO1GhmugkKGvcjr7CoxSsIom29Rrruq+NhCQOqYCBOAeYJHqzPgleAk0JKZ
HEbFAdz2ZlR7o/AuWlFs82HEtvXRHQpd+CNgSzXuOXffPzHnPuHnXnbMReUV2V5z
SQp9HE4LFEwIRNJYukMnZE0qv50164NLnJzrC4z76YqM+WTlX9TjMioTfL2IjbIo
HkEufBPnQHUqK5TeuQ3Vq/6nqpr0uj70XR2Yllnv4S/QL65DLDSZPdOYyV16v29j
Qz/XVDYI5CqU+eY28gTXo8bl+RrF39PVszA1uJhM8SyVy32xhUDZYu2hKVP9AhRE
rOmGjnv5eap8PK24RP+kXZgwDseS1GCbSBOMi9OGzH+1lWgY4sLvN7oVEGywWLaD
kxkpJHOOMYBmUdDsu/7oYAr7b1lYiFOIo46gKB6uHXtOD8WHcB1ppUMXY4I+CJR+
1hZfG4P+Vxi4qEorKxpzmoB5adLjhLBMM2FFMINPBrW/IBLJ3RFVFWR9LaC50W/l
+GjXtO2gOB06Sz82oMLA
=fMT3
-----END PGP SIGNATURE-----

--IwAwhr1WLMen7urnSOSIWcRLCMjcLGtLc--
