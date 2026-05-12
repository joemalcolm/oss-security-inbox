Received: (qmail 32090 invoked by uid 550); 12 May 2026 23:49:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5925 invoked from network); 12 May 2026 23:17:54 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
In-Reply-To: <124550bc-4540-451a-9c0a-d1d0aa951a2d@oracle.com>
Organization: Gentoo
References: <124550bc-4540-451a-9c0a-d1d0aa951a2d@oracle.com>
User-Agent: mu4e 1.14.1; emacs 31.0.60
Date: Wed, 13 May 2026 00:17:40 +0100
Message-ID: <87jyt8fca3.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] dnsmasq vulnerabilities, including attacker DNS
 redirect, privilege escalation, and heap manipulation

--=-=-=
Content-Type: text/plain

Alan Coopersmith <alan.coopersmith@oracle.com> writes:

> https://lists.thekelleys.org.uk/pipermail/dnsmasq-discuss/2026q2/018471.html
> announces:
>> Today, 11th May 2026 CERT is releasing a set of six CVEs for serious
>> security vulnerabilities in dnsmasq. These are all long-standing
>> bugs which apply to pretty much all non-ancient versions. The CVE
>> has been pre-disclosed to vendors, so hopefully they will be
>> releasing patched versions of their dnsmasq packages in a timely
>> manner.
>> Details and patches are available on the website at
>> https://thekelleys.org.uk/dnsmasq/CVE/
>> and I have made "2.92rel2" release of the current 2.92 dnsmasq
>> stable release which is downloadable from the usual place and has
>> had these patches applied.
>>
>> [...]
>>
>> Thank you to the reporters for discovering these vulnerabilities:
>> * Hugo Martinez (hugomray@gmail.com) - CVE-2026-5172, CVE-2026-2291
>> * Andrew Fasano (NIST) - CVE-2026-2291
>> * Royce M (royce@xchglabs.com) - CVE-2026-4893, CVE-2026-4892, CVE-2026-4891,
>>   CVE-2026-4890, CVE-2026-2291

Writeup for these 5 is available at https://xchglabs.com/blog/dnsmasq-five-cves.html

>> * Asim Viladi Oglu Manizada - CVE-2026-4892
>> * Mattia Ricciardi (mindless) - CVE-2026-2291

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmoDtRQbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkJbr
AQCPu7hdosgitbxBVPTOi6VS1ZcpreYZ1S3b1hOJTlwiuwEAuUxZmEkG10bbZewO
kFPZlWZ5Hqc93jQMEREm/UJGTQE=
=eO7I
-----END PGP SIGNATURE-----
--=-=-=--
