X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1735" "Friday" "8" "May" "2020" "19:22:48" "+0300" "Henri Salo" "henri@nerv.fi" "<20200508162248.GA789721@ryzen.bugs.fi>" "37" "Re: [oss-security] Incentives for pre-release reporting" "^Date:" nil nil "5" "2020050816:22:48" "[oss-security] Incentives for pre-release reporting" (number mark "        henri@nerv.f May  8   37/1735  " thread-indent "\"Re: [oss-security] Incentives for pre-release reporting\"\n") "<875zd6o112.fsf@oldenburg2.str.redhat.com>" ("<875zd6o112.fsf@oldenburg2.str.redhat.com>") nil nil nil nil nil nil nil "Re: [oss-security] Incentives for pre-release reporting" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1864 invoked by uid 550); 8 May 2020 16:23:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1793 invoked from network); 8 May 2020 16:23:04 -0000
X-Virus-Scanned: Debian amavisd-new at nerv.fi
Message-ID: <20200508162248.GA789721@ryzen.bugs.fi>
References: <875zd6o112.fsf@oldenburg2.str.redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; x-action=pgp-signed
In-Reply-To: <875zd6o112.fsf@oldenburg2.str.redhat.com>
Date: Fri, 8 May 2020 19:22:48 +0300
From: Henri Salo <henri@nerv.fi>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Incentives for pre-release reporting
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

On Fri, May 08, 2020 at 06:16:09PM +0200, Florian Weimer wrote:
> My recollection (which could be wrong) suggests that vulnerabilities in
> unreleased, not really shipping versions do not usually receive CVE IDs.

At least the process to get CVE is faster nowadays, but you should think if CVE
consumers (persons patching systems, software users etc) find those CVEs
useful. In many cases they won't if there is no released package and if people
are not commonly using the latest version from Git.

> If they waited until after the release, they'd get one, so that is creating
> the wrong incentive. How do projects handle this?

One method is to have a page where you list people and details. Something like:
https://www.mongodb.com/security and some vendors send small payments
(sometimes using bug bounty platforms) or cheap items.

- -- 
Henri Salo
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/aVSDznAZReWTkxKJ633pE6qdXQFAl61h1UACgkQJ633pE6q
dXR7wRAApYSSGspFQi2REuw3SFw1G0Lxoi1wDzY6CsL5jTKST96rF7vPMJNHuIgk
abWxoY2s4ChxPnnroM1cUT6LTaUu1ZbSR6Q4V5mgmwpFfRAlQ/QvRWVxlvhIk50L
Ysuk4aBmNuAzlptBEgm6D4swd/V2kKHk3ewWQGj6GV2k7sYBwo4PT4Nl2viiODsN
Px5i0e/0qnu8naM3GclGzRwGXhQcLx2jPp4dZIL3NmpJsSyaNye5+q7C/K3Wh3fS
eVq73N4QzA/DwKGZWSdJxcBRBqsiP6xY5nkOW7Oe0wRDOW+JerUnzjqLp+xt6ggG
xwgB1qEnprf+d4eLBkvdg43VhrBaD9vTBl3mTTvXiFieNebA6rUUXd7wthFOd5t7
BK5VGbR4u/X27QWH/XXszO692cqF99sGq6ny8qQdqrfc94o2E2r/qqocU0++tYsF
leHH1WKxfHs+eMQhg6JP/tSh2Ci3Oh8cztaC8K8aAweXqj80+UJ9b6ujKl2f97nj
yRYo6s+vPvkNTUy1P+v0zj9LKr7cX0fuF3Z6EN+FYe3e0AEG4TFMSRBWdEKYS5Xa
efPR9LkLWS97EzPdErf7fUQBJoiv8xB03R1Y+g0Otm2nMH8oMIERBW8Q4gTCRlCB
QZ/3hJtGKkZBz/MIKlMyrKQjOFyl89RFtcE9ABIMzYFlyQxfs24=
=3AYf
-----END PGP SIGNATURE-----
