Received: (qmail 30673 invoked by uid 550); 3 Nov 2022 20:31:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25980 invoked from network); 3 Nov 2022 20:24:01 -0000
Content-Type: multipart/signed;
	boundary="Apple-Mail=_EF1E2CC5-4BCB-4A01-9CB0-E310E72A51EF";
	protocol="application/pgp-signature";
	micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.200.110.1.12\))
From: Sam James <sam@gentoo.org>
In-Reply-To: <CANm5x_MaPRcY8B6WdNM40xj8kaeqqfX2Z=EZk36MohfSk9KYNA@mail.gmail.com>
Date: Thu, 3 Nov 2022 20:23:32 +0000
Cc: nic.tuv@gmail.com,
 =?utf-8?Q?Hanno_B=C3=B6ck?= <hanno@gentoo.org>
Message-Id: <FFA5687C-C618-4896-A2C0-5CE992FEF632@gentoo.org>
References: <20221101170833.GA10470@openwall.com>
 <20221102150921.3ab3f2d0@computer> <Y2K1yOB7748iGI2P@wopr>
 <tk0n6j$10pr$1@ciao.gmane.io>
 <CANm5x_MaPRcY8B6WdNM40xj8kaeqqfX2Z=EZk36MohfSk9KYNA@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3731.200.110.1.12)
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer Overflow
 (CVE-2022-3602), X.509 Email Address Variable Length Buffer Overflow
 (CVE-2022-3786)

--Apple-Mail=_EF1E2CC5-4BCB-4A01-9CB0-E310E72A51EF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 3 Nov 2022, at 16:32, Nicola Tuveri <nic.tuv@gmail.com> wrote:
>=20
> I can also add that at least this member of the OpenSSL Technical
> Committee is following the discussion, and I believe I am not the only
> one.
>=20
> The feedback shared here on oss-security is read and carefully
> considered, and I know it will be discussed within OTC to continue the
> ongoing process of improving the OpenSSL project and its procedures.

I'd like to thank the OpenSSL developers for being open to the
CI improvements I've been making lately.

>=20
> I totally concur with Tavis Ormandy:
>> this is active prolific opensource security researchers discussing their=
 opensource security work on the opensource security mailing list :)
>=20
> Personally, I'd like to thank you all for the feedback so far, as it
> is in itself a contribution to the project, even when it is harsh and
> reminds us of our mistakes.
> As long as it is kept polite and constructive, as it has been so far
> here, all feedback is very welcome and valuable.

Something I think that should be revisited is the priority
of undefined behaviour in the codebase.

Undefined behaviour can - and has [0][1] - led to misbehaviour
at runtime.

Part of living with "Modern C" is embracing the
techniques we have available to enhance compiler diagnostics
and detect problems. That includes LTO, as well, which
generally leads to _far_ better compiler warnings.

The OpenSSL codebase isn't strict aliasing clean, and in
Gentoo, we've built with -fno-strict-aliasing since ~2005
(note that -fstrict-aliasing is enabled by default with -O2
in GCC since at least 10 years ago).

If at all possible, I'd ask that the OpenSSL team revisit
its assessment of the severity of strict aliasing bugs
as well as the value of LTO in enhancing diagnostics
and finding bugs.

And if it's deemed to not be a priority at this time,
the build should enforce disabling them both.

Again, this isn't about performance - it's about:
1. Distributions inadvertently enabling something
which is unsafe/insufficiently tested (LTO), or
2. Not realising an option enabled by default
in standard configurations can lead to miscompiled
OpenSSL.

(For my part, I've been trying to improve CI but I've
also got some patches for aliasing bits which I'm
playing with.)

[0] https://github.com/llvm/llvm-project/issues/55255
[1] https://github.com/openssl/openssl/issues/18225
[2] https://github.com/openssl/openssl/issues/18663#issuecomment-1181478057

Best,
sam

--Apple-Mail=_EF1E2CC5-4BCB-4A01-9CB0-E310E72A51EF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iNUEARYKAH0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCY2QjRF8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MAAKCRBzhAn1IN+R
kHKgAQDbK01qvxMmxWXsWSLh4b1CMVQyhmld1DJ7xN+tRU+IxwEA7WkWztY13k8/
jlt/99t8/ZuxInT+NL4EnbM3bwMZ5gw=
=HkZI
-----END PGP SIGNATURE-----

--Apple-Mail=_EF1E2CC5-4BCB-4A01-9CB0-E310E72A51EF--
