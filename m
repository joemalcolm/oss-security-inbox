Received: (qmail 16219 invoked by uid 550); 3 Nov 2022 20:36:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5643 invoked from network); 3 Nov 2022 20:33:03 -0000
Content-Type: multipart/signed;
	boundary="Apple-Mail=_94254F19-0711-4DCB-8304-0791343A870C";
	protocol="application/pgp-signature";
	micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.200.110.1.12\))
From: Sam James <sam@gentoo.org>
In-Reply-To: <FFA5687C-C618-4896-A2C0-5CE992FEF632@gentoo.org>
Date: Thu, 3 Nov 2022 20:32:33 +0000
Cc: nic.tuv@gmail.com,
 =?utf-8?Q?Hanno_B=C3=B6ck?= <hanno@gentoo.org>
Message-Id: <6442A168-FF2E-4CB9-8455-513A9FFC3EB5@gentoo.org>
References: <20221101170833.GA10470@openwall.com>
 <20221102150921.3ab3f2d0@computer> <Y2K1yOB7748iGI2P@wopr>
 <tk0n6j$10pr$1@ciao.gmane.io>
 <CANm5x_MaPRcY8B6WdNM40xj8kaeqqfX2Z=EZk36MohfSk9KYNA@mail.gmail.com>
 <FFA5687C-C618-4896-A2C0-5CE992FEF632@gentoo.org>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3731.200.110.1.12)
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer Overflow
 (CVE-2022-3602), X.509 Email Address Variable Length Buffer Overflow
 (CVE-2022-3786)

--Apple-Mail=_94254F19-0711-4DCB-8304-0791343A870C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 3 Nov 2022, at 20:23, Sam James <sam@gentoo.org> wrote:
> [snip]

> [2] https://github.com/openssl/openssl/issues/18663#issuecomment-11814780=
57

I should add - the LTO warnings with GCC here (-Wfree-nonheap-object) are p=
ossibly
false positives, but Clang doesn't emit them IIRC and I think it's a valuab=
le
resource to dig into.

--Apple-Mail=_94254F19-0711-4DCB-8304-0791343A870C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iNUEARYKAH0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCY2QlY18UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MAAKCRBzhAn1IN+R
kIe+AQDaHTtQdb4TRNKGhRlUGD1ay2Yc3+mFzqXfwJxxSgpYuQEAvu8+LhR0XMoW
d1IaKrGFzAZSL2XI9BZdBoqB/ikAHQA=
=JB1H
-----END PGP SIGNATURE-----

--Apple-Mail=_94254F19-0711-4DCB-8304-0791343A870C--
