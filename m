X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1701" "Thursday" "23" "July" "2015" "22:28:32" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<55B1BEF0.30002@redhat.com>" "47" "[oss-security] CVE-2015-3208 hornetq: XXE/SSRF in XPath selector" nil nil nil "7" "2015072404:28:32" "[oss-security] CVE-2015-3208 hornetq: XXE/SSRF in XPath selector" (number mark "U       kseifried@re Jul 23   47/1701  " thread-indent "\"[oss-security] CVE-2015-3208 hornetq: XXE/SSRF in XPath selector\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5409 invoked by uid 550); 24 Jul 2015 04:28:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5380 invoked from network); 24 Jul 2015 04:28:46 -0000
Message-ID: <55B1BEF0.30002@redhat.com>
Date: Thu, 23 Jul 2015 22:28:32 -0600
From: Kurt Seifried <kseifried@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="vnucC9B78BHLdeCs3C0RS6FWLGqmN3u4p"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Subject: [oss-security] CVE-2015-3208 hornetq: XXE/SSRF in XPath selector

--vnucC9B78BHLdeCs3C0RS6FWLGqmN3u4p
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

CVE-2015-3208 hornetq: XXE/SSRF in XPath selector

Discovered by David Jorm

TL;DR: An XXE vulnerability was reported in the XPath component of HornetQ.

https://bugzilla.redhat.com/show_bug.cgi?id=3DCVE-2015-3208

This patch fixes it:

https://github.com/apache/activemq-artemis/commit/48d9951d879e0c8cbb59d4b64=
ab59d53ef88310d

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com


--vnucC9B78BHLdeCs3C0RS6FWLGqmN3u4p
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVsb7wAAoJEBYNRVNeJnmTloUP/A0Ewt0qxyAu890bmQh0k85x
Kqcph2zPoZUBySNCXxPiiWMVxspjlkqM3qhF6NjXibLCMfAZivZHTupjnQq2lt96
033US2mkkEgqjd9PI5RtWGGcVwQwTZ0eea1rqzNc8XL4cHih1PK6xFIJoisjaV0P
Y0nN7lZ2enhwfzieB8+bBTEVO0x+Fyww2LLffKWDAM3aRgu+rCAYeHlftnPA85j9
mj4habuY7aTfDq5TZ0NXxOR25ijxV46NcpFBiZFOUA+vqaVFRJeg7z7PSxFlgc+C
kEKFWOjABaAZBCfvwl3SPCi8tNEA7ve/fb+q6lYkIudSYQfN/KTLcjKVu5c7ga/k
2fmLC8oP2zxxzHelFJXAUA/+3z8GTxvZVLk9wXWZdXUzorW2A0vTEThyRzM5qxxx
PN0Fne3YfVdMN+aGccxHZyjgXQYFbdTj9qCvQGRTlsM+I4xr52hOIlFZ27zEq+A8
wZNtgi1ilB7aa9x4P+DOJopEuq9ukTzttFCa0uD8fE1qjORx3dRoNWQB9Ts3ePTe
6xcVUn6N7glNSiA7NbqvGSGUd2MKX9uaWPbnpi0Aqrco+vQI1ilMfcYi3jRvgctp
4ODrgVFPse+tyVCFtfeXWE62CL06cUsFUb/TbRHVFHudoikPnU0j0PCdhNerF3mE
27XkPTu7s+Tkv5PTTOvj
=Kd8d
-----END PGP SIGNATURE-----

--vnucC9B78BHLdeCs3C0RS6FWLGqmN3u4p--
