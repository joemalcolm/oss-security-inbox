X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6237" "Monday" "22" "January" "2018" "22:41:58" "+1300" "Amos Jeffries" "squid3@treenet.co.nz" "<3b60c584-07f9-2888-448e-854f0e793cf0@treenet.co.nz>" "190" "[oss-security] SQUID-2018:1 Denial of Service issue in ESI Response processing" nil nil nil "1" "2018012209:41:58" "[oss-security] SQUID-2018:1 Denial of Service issue in ESI Response processing" (number mark "U       squid3@treen Jan 22  190/6237  " thread-indent "\"[oss-security] SQUID-2018:1 Denial of Service issue in ESI Response processing\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25790 invoked by uid 550); 22 Jan 2018 11:37:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11403 invoked from network); 22 Jan 2018 09:42:12 -0000
To: oss-security@lists.openwall.com
From: Amos Jeffries <squid3@treenet.co.nz>
Message-ID: <3b60c584-07f9-2888-448e-854f0e793cf0@treenet.co.nz>
Date: Mon, 22 Jan 2018 22:41:58 +1300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="PyBPCn9etvuR2ZjWsWeZMdTflWzv7TPnR"
Subject: [oss-security] SQUID-2018:1 Denial of Service issue in ESI Response processing

--PyBPCn9etvuR2ZjWsWeZMdTflWzv7TPnR
Content-Type: multipart/mixed; boundary="frCxDFFuIyaJxpPSJihK7isSK2gkO5Avz";
 protected-headers="v1"
From: Amos Jeffries <squid3@treenet.co.nz>
To: oss-security@lists.openwall.com
Message-ID: <3b60c584-07f9-2888-448e-854f0e793cf0@treenet.co.nz>
Subject: SQUID-2018:1 Denial of Service issue in ESI Response processing

--frCxDFFuIyaJxpPSJihK7isSK2gkO5Avz
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Notes for OSS-Security people:

* CVE has been requested through DWF, waiting on assignment.

* The patch for Squid-3.5 should also be applicable for most other
Squid-3.x releases.

__________________________________________________________________

    Squid Proxy Cache Security Update Advisory SQUID-2018:1
__________________________________________________________________

Advisory ID:        SQUID-2018:1
Date:               Jan 19, 2018
Summary:            Denial of Service issue
                    in ESI Response processing.
Affected versions:  Squid 3.x -> 3.5.27
                    Squid 4.x -> 4.0.22
Fixed in version:   Squid 4.0.23
__________________________________________________________________

    http://www.squid-cache.org/Advisories/SQUID-2018_1.txt
__________________________________________________________________

Problem Description:

 Due to incorrect pointer handling Squid is vulnerable to denial
 of service attack when processing ESI responses.

__________________________________________________________________

Severity:

 This problem allows a remote server delivering certain ESI
 response syntax to trigger a denial of service for all clients
 accessing the Squid service.

 This problem is limited to the Squid custom ESI parser.
 Squid built to use libxml2 or libexpat XML parsers do not have
 this problem.

__________________________________________________________________

Updated Packages:

 This bug is fixed by Squid version 4.0.23.

 In addition, patches addressing this problem for the stable
 releases can be found in our patch archives:

Squid 3.5:
 <http://www.squid-cache.org/Versions/v3/3.5/changesets/SQUID-2018_1.patch>

Squid 4:
 <http://www.squid-cache.org/Versions/v4/changesets/SQUID-2018_1.patch>

 If you are using a prepackaged version of Squid then please refer
 to the package vendor for availability information on updated
 packages.

__________________________________________________________________

Determining if your version is vulnerable:

 All Squid-2.x are not vulnerable.

 All Squid built with --disable-esi are not vulnerable.

 All Squid configured with "esi_parser expat" are not vulnerable.

 All Squid configured with "esi_parser libxml2" are not
 vulnerable.

 All Squid-3.0 versions built without --enable-esi are not
 vulnerable.

 All Squid-3.0 versions built with --enable-esi and using
 custom ESI parser for reverse-proxy are vulnerable.

 All Squid-3.1 and later versions up to and including
 Squid-3.5.27 being used for reverse-proxy are vulnerable.

 All Squid-3.1 and later versions up to and including
 Squid-3.5.27 being used for TLS / HTTPS interception are
 vulnerable.

 All unpatched Squid-4 up to and including Squid-4.0.22 being
 used as reverse-proxy are vulnerable.

 All unpatched Squid-4 up to and including Squid-4.0.22 being
 used as TLS/HTTPS intercept proxy are vulnerable.

__________________________________________________________________

Workarounds:

Either;

 Build Squid with --disable-esi

Or,

 Build Squid with "--enable-esi --with-libxml2" and in squid.conf
 configure "esi_parser libxml2"

Or,

 Build Squid with "--enable-esi --with-expat" and in squid.conf
 configure "esi_parser expat"

__________________________________________________________________

Contact details for the Squid project:

 For installation / upgrade support on binary packaged versions
 of Squid: Your first point of contact should be your binary
 package vendor.

 If your install and build Squid from the original Squid sources
 then the squid-users@lists.squid-cache.org mailing list is your
 primary support point. For subscription details see
 <http://www.squid-cache.org/Support/mailing-lists.html>.

 For reporting of non-security bugs in the latest STABLE release
 the squid bugzilla database should be used
 <http://bugs.squid-cache.org/>.

 For reporting of security sensitive bugs send an email to the
 squid-bugs@lists.squid-cache.org mailing list. It's a closed
 list (though anyone can post) and security related bug reports
 are treated in confidence until the impact has been established.

__________________________________________________________________

Credits:

 The initial issue was reported by Louis Dion-Marcil on behalf of
 GoSecure.

 Fixed by Amos Jeffries from Treehouse Networks Ltd.

__________________________________________________________________

Revision history:

 2017-12-13 20:09:30 UTC Initial Report
 2018-01-18 23:10:00 UTC Patches Released
 2018-01-21 07:45:00 UTC Advisory and fixed packages released
__________________________________________________________________
END


--frCxDFFuIyaJxpPSJihK7isSK2gkO5Avz--

--PyBPCn9etvuR2ZjWsWeZMdTflWzv7TPnR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEAimzwkzOwlQSfJUyANhjZ5QgvdMFAlplseYACgkQANhjZ5Qg
vdNLHw/9HA1dHMZYe0/sYnbP5Trc9Np3BKltEuGzDmx6hfwR7qmOtIhXURlNxP1m
Hw2j5ebzA4LtnUVbiozkz1TqLDIp7Uwgsb9QCMdbOUjWHQlXTC0HlfsSvDLe3d1k
5DxdrmP2kOANZBkj9aStgkC5fAIUxmM405TSG5zZGEQ/CjKDxfqdJnEkSeb1XBvE
9Mpp7dIu8K/fLXqZ02or7hYVQJAMDQb55p6LypbXjLZb8zBxZeRxyogEA1YaeZKX
A4CAGcd7X9GMbP00A3phTvS6MRYKUzahfEhVWBfLgNchQzNZ/vtiJ8Cw4o2r9pfo
SGxRSlK/g6YopVZ9W+PwyN0ChJwdLSHwhV6P6YJzp5Agl8dvfhGLKVH9EMlhKl+r
pHXWkDDSsSdKBjf1gX0Ay4czMbUY70WYLJfzW7VRH0S+/GLnnauf3xskYlpjEBcS
40jB30keQLrrY/vtUkf4T72tXJJiMCUwdIp909ZAplF58PJybZ4RrqFBl2w+iUD5
rf8Adi1W+9CPvY8O7L1zqSpgOfmPnqLzfNxsWf1PMWCxnyV3/wnXr37df6h91zTq
WBmwR6beztvt9pkwwggx88kYYu6807PTXQtAzvMR4LEeiT7+GPKm4jH5xKg/nAkm
OHWTF99m9Fuff4fq/l+iXDbW+qzMYSGKmXONl6FZhyhv5ihkUow=
=kC8G
-----END PGP SIGNATURE-----

--PyBPCn9etvuR2ZjWsWeZMdTflWzv7TPnR--
