Received: (qmail 21988 invoked by uid 550); 13 Sep 2022 15:10:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13782 invoked from network); 13 Sep 2022 14:55:44 -0000
Date: Tue, 13 Sep 2022 09:55:29 -0500
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com,
	Carlos Alberto Lopez Perez <clopez@igalia.com>
Message-ID: <YyCZ4ShI4u9yn5qd@gentoo.org>
References: <b2f4c0a2-695c-7744-2397-269a1e588c31@igalia.com>
 <YwhTtN8duEhxo1hY@gentoo.org>
 <8812a292-ecd6-5172-a746-4ca192552882@igalia.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/bl5/5lUPNZ9QdK8"
Content-Disposition: inline
In-Reply-To: <8812a292-ecd6-5172-a746-4ca192552882@igalia.com>
Subject: Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory
 WSA-2022-0008

--/bl5/5lUPNZ9QdK8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 29, 2022 at 01:26:49PM +0200, Carlos Alberto Lopez Perez wrote:
>=20
> On 26/08/2022 07:01, John Helmert III wrote:
> > On Thu, Aug 25, 2022 at 11:34:04PM +0200, Carlos Alberto Lopez Perez wr=
ote:
> >> ----------------------------------------------------------------------=
--
> >> WebKitGTK and WPE WebKit Security Advisory                 WSA-2022-00=
08
> >> ----------------------------------------------------------------------=
--
> >>
> >> Date reported           : August 25, 2022
> >> Advisory ID             : WSA-2022-0008
> >> WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2022-0008=
.html
> >> WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2022-0008=
.html
> >> CVE identifiers         : CVE-2022-32893.
> >>
> >> Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.
> >>
> >> CVE-2022-32893
> >>     Versions affected: WebKitGTK and WPE WebKit before 2.36.7.
> >>     Credit to an anonymous researcher.
> >>     Impact: Processing maliciously crafted web content may lead to
> >>     arbitrary code execution. Apple is aware of a report that this iss=
ue
> >>     may have been actively exploited.
> >=20
> > According to Apple's security advisories for this (e.g. [1]), this
> > issue is tracked on the Webkit Bugzilla as 243557 [2] which was opened
> > on 2022-08-04. A few minutes after that bug was opened, a pull request
> > on GitHub was linked [3] with a patch which also seems to add unit
> > tests. So, it appears to me that this issue was public since at least
> > August 4th, and even more widely publicized with Apple's security
> > advisories on August 17.
> >=20
> > WebKit-2.36.6 was released shortly after the first bug report, on
> > 2022-08-07, and WebKit-2.36.7 was released yesterday, on 2022-08-25.
> >=20
> > With this bug seemingly being publicly known to be an actively
> > exploited code execution issue, why did it take several weeks and 2
> > WebKit releases to get this issue fixed and a WSA released?
> >=20
> > [1] https://support.apple.com/en-us/HT213412
> > [2] https://bugs.webkit.org/show_bug.cgi?id=3D243557
> > [3] https://github.com/WebKit/WebKit/pull/3023
> >=20
>=20
>=20
> We (maintainers of Linux WebKit ports) don't have access to the security
> issues affecting Apple products until those issues are made public by the=
m.
>=20
> So, we didn't knew until August 17th of this issue. Also you can see
> that the bug report itself or the patch doesn't has any indication that
> it fixes a security-related problem.

Apple's released new security advisories yesterday, with 4 WebKit
security fixes, two of which are code execution issues, but all 4 of
which have public bugzilla bugs and public patches, since as early as
late June (https://support.apple.com/en-us/HT213442):

https://bugs.webkit.org/show_bug.cgi?id=3D242278
https://bugs.webkit.org/show_bug.cgi?id=3D241969
https://bugs.webkit.org/show_bug.cgi?id=3D242762
https://bugs.webkit.org/show_bug.cgi?id=3D243236

Is Apple fixing WebKit security issues in public while obfuscating the
impact? This pattern seems to be potentially putting downstream WebKit
users at a lot of risk, now that 2 code execution bugs (with patches!)
are public (and have been for *months*, albeit without knowledge of
security impact), and users need to wait weeks for remediation.

> Therefore, the time it took us to notice the issue, backport the fix and
> do a new release was just 7-8 days (from 17th to 24-25th of August).
> Which, honestely, it is quite good taking into account that: 1)
> back-porting the fix was not straightforward since it required
> back-porting also a few previous patches in order to be able to merge it
> properly and that 2) we are in August and people is usually on holidays.
>=20
> On the other hand, I don't know if this issue was or is exploited on
> Linux WebKit users. All I known is that Apple said they are aware of a
> report that this issue was actively exploited (on Apple/WebKit users).
> So I assume this can also affect Linux WebKit users. But I don't have a
> confirmation that this is actually the case, neither I'm aware of any
> PoC demonstrating the issue.
>=20
> Regards.

--/bl5/5lUPNZ9QdK8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCYyCZ4QAKCRCgXq2+aa/J
tabsAQCuuLDK1U2DIuXwPsLyWt0Ypr36Bi00/eTWpcELVTSm6wEAtYVUTQI3osnj
bg7C0hGgxAZyHYigc10WvVmTSNt9ag0=
=jnDv
-----END PGP SIGNATURE-----

--/bl5/5lUPNZ9QdK8--
