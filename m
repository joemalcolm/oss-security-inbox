X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1630" "Thursday" "7" "January" "2016" "11:25:55" "-0800" "Grant Murphy" "grant.murphy@hpe.com" "<20160107192555.GA82350@hpe.com>" "48" "[oss-security] CVE request for vulnerability in OpenStack Nova" nil nil nil "1" "2016010719:25:55" "[oss-security] CVE request for vulnerability in OpenStack Nova" (number mark "U       grant.murphy Jan  7   48/1630  " thread-indent "\"[oss-security] CVE request for vulnerability in OpenStack Nova\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11824 invoked by uid 550); 7 Jan 2016 19:26:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11806 invoked from network); 7 Jan 2016 19:26:11 -0000
Date: Thu, 7 Jan 2016 11:25:55 -0800
From: Grant Murphy <grant.murphy@hpe.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20160107192555.GA82350@hpe.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="h31gzZEtNLTqOjlF"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE request for vulnerability in OpenStack Nova

--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

A vulnerability was discovered in OpenStack (see below). In order to
ensure full traceability, we need a CVE number assigned that we can
attach to further notifications. This issue is already public, although
an advisory was not sent yet.

Title: Xen connection password leak in logs via StorageError
Reporter: Matt Riedemann (IBM)
Products: Nova
Affects: >= 2014.2 <= 2015.1.2, ==12.0.0

Description:
Matt Riedemann from IBM reported an information disclosure vulnerability
in Nova. If a StorageError occurs when attempting to connect a volume
using the Xen API, the connection parameters will be logged. These
parameters may include credentials that are not masked. An attacker
with read access to Nova logs could use these credentials with the
Xen API directly. Only Nova deployments using the Xen backend are
affected by this flaw.

References:
https://launchpad.net/bugs/1516765

Thanks in advance,

--
Grant Murphy
OpenStack Vulnerability Management Team

--h31gzZEtNLTqOjlF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJWjrvAAAoJEJ3kO55VGiJSaA8H/2GaiuJWO62xKN6iZm8bXtVc
A4PDV0i1z1e2NB/0BpEWv7gRuHBRisCAh0bjEzIZ3fEWXrr++iRxe7oSDGeDwGJI
/xM0z7TNIKks1fZ6Gxf/vnVFZafj+BajkQMisXPq4mmZi/e79kB375jum2dyq6M1
p3QHp1t5aCMohv114P7lx3XFRmAfd5RzxPYKt1lVMP4GyYAWVC9ojkSIonoY+8CC
/KUAV11A03jvslCjSck03KQHwMoeXiGWi+7Hl1v7ph4fUFwZJtRe0lUVaEBjkRUu
pcHF8Ld6El3/H3baB3qLMTqI9G+ENaXj5eSJrEZbiJdWOIHcYEa/7VZP2kHFyeg=
=RGYG
-----END PGP SIGNATURE-----

--h31gzZEtNLTqOjlF--
