X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2667" "Thursday" "9" "February" "2017" "14:26:01" "+0000" "Jeremy Stanley" "jeremy@openstack.org" "<20170209142600.GJ12842@openstack.org>" "59" "Re: [oss-security] MITRE is adding data intake to its CVE ID process" "^Cc:" nil nil "2" "2017020914:26:01" "[oss-security] MITRE is adding data intake to its CVE ID process" (number mark "        jeremy@opens Feb  9   59/2667  " thread-indent "\"Re: [oss-security] MITRE is adding data intake to its CVE ID process\"\n") "<20170209091023.vrhpgjbhbzaqmaez@perpetual.pseudorandom.co.uk>" ("<e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>" "<20170209091023.vrhpgjbhbzaqmaez@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9770 invoked by uid 550); 9 Feb 2017 14:36:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1477 invoked from network); 9 Feb 2017 14:26:14 -0000
X-Auth-ID: jeremy@openstack.org
X-Sender-Id: jeremy@openstack.org
Message-ID: <20170209142600.GJ12842@openstack.org>
References: <e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>
 <20170209091023.vrhpgjbhbzaqmaez@perpetual.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="O3WNCzIuUImKerqE"
Content-Disposition: inline
In-Reply-To: <20170209091023.vrhpgjbhbzaqmaez@perpetual.pseudorandom.co.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: cve-assign@mitre.org
Date: Thu, 9 Feb 2017 14:26:01 +0000
From: Jeremy Stanley <jeremy@openstack.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] MITRE is adding data intake to its CVE ID process
To: oss-security@lists.openwall.com

--O3WNCzIuUImKerqE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2017-02-09 09:10:23 +0000 (+0000), Simon McVittie wrote:
[...]
> The CVE form requires specifying a vendor on the "products and
> sources list". I'm sure this works fine for proprietary software,
> where everyone obtains Microsoft Office from Microsoft. For open
> source it seems impractical: for instance, I'm a maintainer of both
> D-Bus and ikiwiki, neither of which has any particular allegiance
> to any larger legal entity than the individual maintainers.
[...]

Agreed, having tried to figure out the form it seems geared toward
requesting CVE IDs for vulnerabilities you've found in someone
else's software, and not for maintainers of software to request CVE
IDs for vulnerabilities which have been disclosed to them. The
little detail callout icons for the vendor and product fields link
to the CNA coverage list[0] which in turn instructs, "For open
source software products not listed below, request a CVE ID through
the Distributed Weakness Filing Project[1] CNA." So I guess that's
what our project will be using in the future, or maybe just stop
bothering to obtain CVEs on our own and let the various downstream
redistributors of our software who are themselves CNAs issue them as
needed and then fight over whose is the correct one.

[0] http://cve.mitre.org/cve/request_id.html#cna_coverage
[1] https://docs.google.com/forms/d/e/1FAIpQLSeiY7ldJAx-fjU6eSnXDaX5TB--L1u=
jCQpmGAKnqBSJOcBShw/viewform
--=20
Jeremy Stanley

--O3WNCzIuUImKerqE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQJ8BAEBCgBmBQJYnHv4XxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQ5N0FFNDk2RkMwMkRFQzlGQzM1M0IyRTc0
OEY5OTYxMTQzNDk1ODI5AAoJEEj5lhFDSVgpxxwP/RkaiXSkyK9K/EYA1ZtBlJHy
2mkz7nWAtShuXrsRs7bFM2vQOt0SfhW1eY0DmbZNRcgeHuTlbsswvH7iXg2PdRyf
35KqX3eF/Rg2CP/M0kAU1DkG3n+AWH+ilbDGaETNbD27jwEA8tImihACVRX5KEv1
2c9u4WyfGxcQGjE7ZEW2Z9TYZjq9IMiR8f85omAbcVeH+lUd0m+CLssCMXx5aLRD
8wRyJzz5vKqb8Wa75/3wv9iWFcOS5SeCu0a729p6g9v+nPALrYocRDYXaGpDP2Ci
UkFkCrfJ93DWyJ4gzfMVmQ2UP/vz5jATGpEdRpQ5ZML/TYOymigL47OEN0Bk8NpJ
P4hPMbN386Zq5ixNjp7aoLVY5vRYJe5YSnVr0s8Tk0Ft5B30NBRturNLWhS+GDtH
9H2UGJLRs/sROV7nQDkS7wYSFeJnWBlWiMZzarziBs1WDqNiq+hAFEr8WGRAU5eC
5rZea7m3NGb1r2CPmnxZ/d3+lXxmnVQm+3cxPRu/3pik6/ur9CpJARCn85/oievJ
VKYzgq9Jw8xSFH/GeKvreIDVqpjEnzc+lcuJs+/067+kyH3v2osf8QHUDmdJsJ9l
GSqt9VAwthRKse9iy434WODJ1D1SkC6LWup5YNSAmhWk5rcYY1N2g2PrwPr3SQzw
FJdZo+Y3y4w41pAbI5Ld
=RmgO
-----END PGP SIGNATURE-----

--O3WNCzIuUImKerqE--
