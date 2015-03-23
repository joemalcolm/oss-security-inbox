X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6216" "Sunday" "22" "March" "2015" "22:09:51" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<550F920F.10007@redhat.com>" "122" "[oss-security] Re: CVE for Kali Linux" nil nil nil "3" "2015032304:09:51" "[oss-security] Re: CVE for Kali Linux" (number mark "        kseifried@re Mar 22  122/6216  " thread-indent "\"[oss-security] Re: CVE for Kali Linux\"\n") "<20150323012924.0F2336C0018@smtpvmsrv1.mitre.org>" ("<20150323012924.0F2336C0018@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20472 invoked by uid 550); 23 Mar 2015 04:10:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20454 invoked from network); 23 Mar 2015 04:10:04 -0000
Message-ID: <550F920F.10007@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
References: <20150323012924.0F2336C0018@smtpvmsrv1.mitre.org>
In-Reply-To: <20150323012924.0F2336C0018@smtpvmsrv1.mitre.org>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="VnIMTJJtPtek7rOpJITuhdJHEBE7OoI45"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
CC: oss-security@lists.openwall.com
Date: Sun, 22 Mar 2015 22:09:51 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE for Kali Linux
To: cve-assign@mitre.org

--VnIMTJJtPtek7rOpJITuhdJHEBE7OoI45
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

My understanding was for software that downloads updates or other
executable components over HTTP instead of HTTPS, AND there is no other
protection (e.g. signed RPMs), so in effect there is nothing to protect
it, then it gets a CVE since the user is essentially up the creek at
that point.

On 03/22/2015 07:29 PM, cve-assign@mitre.org wrote:
> We've read the "CVE for Kali Linux" messages and haven't yet found a
> real case that can have a CVE assignment. We also believe it's
> infeasible to make a comprehensive statement about every hypothetical
> case and whether a CVE assignment would occur.
>=20
> A few general comments:
>=20
> 1. http://openwall.com/lists/oss-security/2015/03/22/20 says:
>=20
>   it's only recently (e.g. the last 6 months or so?)
>   that we've moved the security bar to:
>=20
>   downloads of updates via HTTP with no other protection =3D=3D CVE
>=20
> We didn't understand this. The last paragraph of
> http://openwall.com/lists/oss-security/2015/03/03/10 suggests that
> "=3D=3D" isn't the case. Some issues of this type will receive CVE IDs but
> others will not. For example,
> http://openwall.com/lists/oss-security/2015/03/03/10 is about an
> unusual case where people interested in file integrity had the option
> of paying $10 for https.
>=20
> 2. For Kali Linux, users are apparently supposed to start at
> https://www.kali.org/downloads/ to obtain their initial set of
> software, including the package signing key. Packages apparently are
> later updated using http://security.kali.org with automatic signature
> verification before any installed software is replaced. The
> https://security.kali.org site doesn't exist and therefore there isn't
> an opportunity to "fix" anything with a one-character change. Even if
> there were widespread agreement that https://security.kali.org is
> required to meet their users' reasonable expectations, there still
> would not be a CVE because the issue is site-specific (a missing
> security property on a vendor-controlled server). Somewhat similarly,
> there could not be a CVE for the http://cygwin.com/setup-x86.exe case.
> Finally, if there is a need for extra security properties on
> https://www.kali.org (e.g., HSTS if it doesn't yet have it), there
> would again be no associated CVE or CVEs.
>=20
> 3. We're typically uninterested in assigning CVE IDs based on a
> likelihood that users don't follow instructions. For example, suppose
> a community Linux distribution publishes complete open-source software
> for generating and operating a mirror site. These mirror sites offer
> an ISO with only an http URL, but with clear instructions to verify
> the ISO checksum against a sufficiently reliable checksum listing. One
> might argue that an https .iso URL would be better because many users
> actually won't ever visit that checksum listing. However, a
> counterargument is that the community Linux distribution might be
> trying to emphasize the concept that endpoint security on the mirror
> sites is unknown and unsupported. A person doing a download may not
> realize that the mirror sites are completely untrusted and some might
> be controlled by attackers. There might be persons who would have
> verified the checksum after an http download, but wouldn't bother to
> verify the checksum after an https download. In other words, depending
> on the psychological model of the users, http might be better if https
> provided a false sense of security.
>=20
> 4. The Debian case is perhaps interesting:
> https://www.debian.org/distrib/ explicitly uses the http scheme in a
> link to a .iso file, and
> https://www.debian.org/releases/stable/amd64/ch03s01.html.en perhaps
> has a missing step "3a. Verify (somehow?) the file integrity of the
> installer software." If this actually is a security problem, it is
> site-specific and can't have a CVE ID. At the time that the
> documentation is used, the documentation isn't a file that has been
> distributed to the customer's system.
>=20
> 5. http://openwall.com/lists/oss-security/2015/03/22/22 asks 'if a
> vendor explicitly tells people not to check them ("download over http
> and check sums published over http") is that CVE worthy?' The general
> answer is that there can be a CVE ID for a missing
> integrity-verification step, either a step that is missing in
> distributed documentation or a step that is missing in distributed
> code. As an example, if an integrity-verification step goes to an http
> checksum page but was intended to go to an https checksum page, and
> the root cause is that the author's keyboard had a bad 's' key, then
> that's a vulnerability and can have a CVE ID. If there's a new product
> and the root cause of skipping an integrity-verification step is that
> checksum generation is still being debugged and won't be live until
> the next release, then typically that would not have a CVE ID.
>=20
>=20

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--VnIMTJJtPtek7rOpJITuhdJHEBE7OoI45
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVD5IPAAoJEBYNRVNeJnmTqZAQANUTqys2aHbvbvmoEjPeDt0A
L0rn7a+l+AL5YJ6Do+WiVNCd39tC6hBz3p364j1G+79L9IzrmWj44OJUh2oaABpl
f0HQ9g8TwREq4hsApdcnhwnC0zDwe0SFnFMEqTVCsrAP3adR8/3PnBzBtgjEVp90
lDDT5a0VY9YfTUN4uk+6y9MKK7mog5uGJsbpJBReDPFllkTjf2oX80noFCVZRqT0
OYihsqLqLJN013sarXyn3DzYrgsE2WmIVu/dy/LNsMkemAt11voJzc2scUOCFT1+
cNcigs4XocA2VbfjnlyEDG0Efv53rbUB9qB3UvLj98fn4kKWYSm8L6LjtuOT39vw
hp2EBqOXp0/LnUE2pdi7BZWAr+hIk+n2jYLV2fpFzRfsli15iFS/y1ZVmEjdiMEU
Tu8roBnTl/DEkNqfY2rgqQy8hQrjMI4K5w1h8zllNCeXujaQUmM7E8ekbIHVDXqz
odMP1v4PI+nJvNJDbqBIqxhFEtx5Kl7+zHTDbD54yw81HOKWy+6jys9w0O0M9m9+
StgFBAd714jSrfeU9SJsgnnqlvPxR4jmcMxA38y+gfYT47vAm1fTe8AqRHDUzScb
dmOqxGC1m5VZ3P4JiMy9fcGe8giIu2sy0iUNtn1QYqKeAMWr+GNqcDnGxhXuKg7R
JTAS9U3lI3cNFdn+T+Dy
=QX3A
-----END PGP SIGNATURE-----

--VnIMTJJtPtek7rOpJITuhdJHEBE7OoI45--
