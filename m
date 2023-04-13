Received: (qmail 7239 invoked by uid 550); 13 Apr 2023 12:52:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29780 invoked from network); 13 Apr 2023 01:08:22 -0000
References: <SN6PR00MB044717AE269F0AABB8456C86A89BA@SN6PR00MB0447.namprd00.prod.outlook.com>
User-agent: mu4e 1.10.1; emacs 29.0.90
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Date: Thu, 13 Apr 2023 02:07:48 +0100
In-reply-to: <SN6PR00MB044717AE269F0AABB8456C86A89BA@SN6PR00MB0447.namprd00.prod.outlook.com>
Message-ID: <87y1mwd1xm.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] ncurses fixes upstream

--=-=-=
Content-Type: text/plain


"Jonathan Bar Or (JBO)" <jobaror@microsoft.com> writes:

> Hello oss-security,
>
> Our team has worked with the maintainer of the ncurses library (used by several software packages in Linux) to fix several memory corruption vulnerabilities.
> They are now fixed at commit 20230408 - see details here (https://invisible-island.net/ncurses/NEWS.html#index-t20230408)
> A CVE was assigned (CVE-2023-29491) - it's still under a "reserved" status.
>
> How can we ensure those fixes get deployed upstream, in major Linux distributions?

Try emailing the distributions mailing list at lists.linux.dev too?

> We've reached out to Arch, RedHat, Canonical and other popular distros independently.
>
> Thanks!
>                              JBO


--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOUEARYKAI0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCZDdV9V8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MA8cc2FtQGdlbnRv
by5vcmcACgkQc4QJ9SDfkZB03wEAx/hWLhpsavDN3jOrW4AHGayzYCXiOkKICX1s
AeTJ3b0BAMVgpcAYFI966UIMwwmLYJKXttSGECpk3rkjLyUpxg4J
=y5t9
-----END PGP SIGNATURE-----
--=-=-=--
