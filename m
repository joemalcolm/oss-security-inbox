X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4220" "Sunday" "18" "December" "2016" "03:30:26" "+1300" "Amos Jeffries" "squid3@treenet.co.nz" "<7cc09c7a-01f9-de00-5dfd-d022104c66ea@treenet.co.nz>" "115" "[oss-security] CVE Request - squid HTTP proxy multiple Information Disclosure issues" nil nil nil "12" "2016121714:30:26" "[oss-security] CVE Request - squid HTTP proxy multiple Information Disclosure issues" (number mark "U       squid3@treen Dec 18  115/4220  " thread-indent "\"[oss-security] CVE Request - squid HTTP proxy multiple Information Disclosure issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16001 invoked by uid 550); 17 Dec 2016 14:49:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7444 invoked from network); 17 Dec 2016 14:30:58 -0000
From: Amos Jeffries <squid3@treenet.co.nz>
To: oss-security@lists.openwall.com
Message-ID: <7cc09c7a-01f9-de00-5dfd-d022104c66ea@treenet.co.nz>
Date: Sun, 18 Dec 2016 03:30:26 +1300
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.5.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="NLWq8G9sv1SeXFCHjdGKawa8vIItqLHQ5"
Subject: [oss-security] CVE Request - squid HTTP proxy multiple Information Disclosure issues

--NLWq8G9sv1SeXFCHjdGKawa8vIItqLHQ5
Content-Type: multipart/mixed; boundary="Enm3pTrbplNrpvNUS4XOxfIesefS7a2il";
 protected-headers="v1"
From: Amos Jeffries <squid3@treenet.co.nz>
To: oss-security@lists.openwall.com
Message-ID: <7cc09c7a-01f9-de00-5dfd-d022104c66ea@treenet.co.nz>
Subject: CVE Request - squid HTTP proxy multiple Information Disclosure issues

--Enm3pTrbplNrpvNUS4XOxfIesefS7a2il
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

Two issues have been fixed in the latest Squid HTTP Proxy releases, both
result in Cookie headers and other client-specific private information
being delivered on cached responses to the wrong clients. Since Cookie
often carries security credentials or session keys we consider these
issues to have a high severity rating.


Issue #1:

 Incorrect processing of responses to If-None-Modified HTTP conditional
requests leads to client-specific Cookie data being leaked to other
clients. Attack requests can easily be crafted by a client to probe a
cache for this information.

Vulnerable Squid Versions:
 3.1.10 up to and including 3.1.23
 3.2.0.3 up to and including 3.5.22
 4.0.1 up to and including 4.0.16

Reference URLs will be:
 <http://www.squid-cache.org/Advisories/SQUID-2016_11.txt>
 <http://bugs.squid-cache.org/show_bug.cgi?id=3D4169>
 <http://www.squid-cache.org/Versions/v3/3.1/changesets/SQUID-2016_11.patch>
 <http://www.squid-cache.org/Versions/v3/3.2/changesets/SQUID-2016_11.patch>
 <http://www.squid-cache.org/Versions/v3/3.3/changesets/SQUID-2016_11.patch>
 <http://www.squid-cache.org/Versions/v3/3.4/changesets/SQUID-2016_11.patch>
 <http://www.squid-cache.org/Versions/v3/3.5/changesets/SQUID-2016_11.patch>
 <http://www.squid-cache.org/Versions/v4/changesets/SQUID-2016_11.patch>


For Mitre: the CVE critical leak was due to these lines in
src/client_side_reply.cc:

     bool matchedIfNoneMatch =3D false;
     if (r.header.has(HDR_IF_NONE_MATCH)) {
        if (!e->hasIfNoneMatchEtag(r)) {
...
-            http->logType =3D LOG_TCP_MISS;
-            sendMoreData(result);

This last line should have called "  processMiss(result); ". The
remainder of the patch changes are behaviour fixes to ensure other leaks
can not occur in any related HTTP transaction cases.



Issue #2:

 Incorrect HTTP Request header comparison results in Collapsed
Forwarding feature mistakenly identifying some private responses as
being suitable for delivery to multiple clients.

 The current fix is not quite complete. However we believe the remaining
headers leaked are not a serious security issue.

Vulnerable Squid Versions:
 3.5.0.1 up to and including 3.5.22
 4.0.1 up to and including 4.0.16

Reference URLs:
 <http://www.squid-cache.org/Advisories/SQUID-2016_10.txt>
 <http://www.squid-cache.org/Versions/v4/changesets/squid-4-14956.patch>
 for squid-3.5 excluding 3.5.22:
<http://www.squid-cache.org/Versions/v3/3.5/changesets/SQUID-2016_10_a.patc=
h>
 for 3.5.22 only:
 <http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-14127.pat=
ch>



Amos Jeffries
The Squid Software Foundation


--Enm3pTrbplNrpvNUS4XOxfIesefS7a2il--

--NLWq8G9sv1SeXFCHjdGKawa8vIItqLHQ5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (MingW32)

iQIcBAEBAgAGBQJYVUwJAAoJEGvSOzfXE+nLfa4QAKm3N499iUvJlcpRIKFNDLsu
0dBSEKMEk81otnP68Jcul4Iief9jJ//XVzfFnfej3Z9qh8Y8JGlRCmN8eKdZBWbO
Z1DxgY/V/z9WzSkw0a8NNc6yNeQrDF0d7Yr2YkXl4OutSGE58faNBWK8P9BuJUaz
TkAItzeUQPl7lqLR/tnMSwMnF7a3cA3qHWUjjoM8tM8llHQoZio89q4gZW3loFNI
uNHr1/IvVZ/6bBQm7TnX4kXM/TMWs4U3hkuihKgXdx/4Nbb/JD1n3vqObM3Rf5FY
fbuj2Ck8bZti1PpkHcHWIwVLdTRElKZhmyATG7sR4E+5z09HchqYCxjmDSAChSfY
1XrmoB80IX0KtbhTVhJEwWb4Xcm48qLRLpXL4w7wHf0eGRiaWJ4PCnS3jo/Gj8HM
BiyHGJtCAZyta0NpKx07I7BnigGasqOCgDQLu+Tw3s3x0fAlhHBSu6/Xyd5WE2HN
kb+SMdA/RF1D/clbW+mfnyUQpFH7rTSlRBSe5zumr1QrTtT+qEOoxZufQ8+30tEZ
rbF6xh8lNlfRTe8abJujMmiTI9v465RGKuUW9Kipl4eRMa+saF7WHOzQ8fA2DwnV
OgR1MO6FK1BSeJKbBBrpYHEatFmSmHZm9CmNXlK6K2UnpjV9fxudUOKIhQ9nbT51
i3DGD++rT6xC+pzx/g2r
=ItZF
-----END PGP SIGNATURE-----

--NLWq8G9sv1SeXFCHjdGKawa8vIItqLHQ5--
