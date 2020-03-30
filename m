X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2103" "Monday" "30" "March" "2020" "09:36:24" "-0700" "Steve Beattie" "steve@nxnw.org" "<20200330163624.GA1550193@nxnw.org>" "55" "[oss-security] CVE-2020-8835: Linux kernel bpf incorrect verifier vulnerability" nil nil nil "3" "2020033016:36:24" "[oss-security] CVE-2020-8835: Linux kernel bpf incorrect verifier vulnerability" (number mark "U       steve@nxnw.o Mar 30   55/2103  " thread-indent "\"[oss-security] CVE-2020-8835: Linux kernel bpf incorrect verifier vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-8835: Linux kernel bpf incorrect verifier vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28203 invoked by uid 550); 30 Mar 2020 17:27:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11294 invoked from network); 30 Mar 2020 16:36:49 -0000
X-Originating-IP: 75.164.161.108
Date: Mon, 30 Mar 2020 09:36:24 -0700
From: Steve Beattie <steve@nxnw.org>
To: oss-security@lists.openwall.com
Message-ID: <20200330163624.GA1550193@nxnw.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline
Subject: [oss-security] CVE-2020-8835: Linux kernel bpf incorrect verifier vulnerability

--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[re-sending, apologies if a prior version makes it to the list.]

Manfred Paul, as part of the ZDI pwn2own competition, demonstrated
that a flaw existed in the bpf verifier for 32bit operations. This
was introduced in commit:

  581738a681b6 ("bpf: Provide better register bounds after jmp32 instructio=
ns")

The result is that register bounds were improperly calculated,
allowing out-of-bounds reads and writes to occur.

This issue affects 5.5 kernels, and was backported to 5.4-stable
as b4de258dede528f88f401259aab3147fb6da1ddf. The Linux kernel bpf
maintainers recommend reverting the patch for stable releases:

  https://lore.kernel.org/bpf/20200330160324.15259-1-daniel@iogearbox.net/T/

This bpf functionality is available to unprivileged users unless the
kernel.unprivileged_bpf_disabled sysctl is set to 1.

This issue has been identified as CVE-2020-8835 (and ZDI-CAN-10780).
https://people.canonical.com/~ubuntu-security/cve/2020/CVE-2020-8835.html

--=20
Steve Beattie
<sbeattie@ubuntu.com>
http://NxNW.org/~steve/

--ZPt4rx8FFjLCG7dd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEpgY7tWAjCaQ8jrvULwmejQBegfQFAl6CIAYACgkQLwmejQBe
gfQTow/+Pr5EjrWHhW5ciHaVuxeHUeyAc38MwIRg+OpTnYUNTS8TMUTLMjChNUnq
K3iRbv/PMgrQb8iPuJCHB8LlAeg1ztdbXhwIr61tol/Lo9xttJ7BvG70a6rHrCme
vXP68ZhEAep8yde++pyHfQgqdBtWALUugYnWqvxq7xF1hsffItMkbJhLatSNFjEw
TLshWfbqQicK+byVBCdZea7hriQqJ3PoYQoG33TH1B5iWyrOPsIpKf6HYVr4q7HI
ydtcMEiepKMEdbU7F4gFIBE9v+aloIJRa+UWSBaPC8D3j396Te9tvMMKwSkjI7nv
sMZ7B+s7xs2FoxWM90cwGcjeUomvLPTSDPCKMVKbmLQ2fIJ7KAfOuL2x7AHYbQai
SswqbiCsH3EHW4wQwpWhBWTHud8Ta2r9q5DYWBjkEN8noWzI4/TTPAVs+WIItJ6I
r3t9gSopeEhlIh3o2+dhHq3Zigoq2fLU9b7jdg8jImDUOryA9PH+pOwXPdyErpb9
zdwv7ymNwYpF9673FER4uK6084IOxcaxv041nWv/KltNrBb2lcevDum6vmOdN8vw
iOJI625UoDvOgxKurjR733bE6B6lV+T059AcEN9zkmAwcnSJ1zFWuLEq82sAZ5RV
kiabrCcYkR+PqZydeiZ/9jVFDTv8FME5WizreKOV4eL+s97TsL8=
=FVWe
-----END PGP SIGNATURE-----

--ZPt4rx8FFjLCG7dd--
