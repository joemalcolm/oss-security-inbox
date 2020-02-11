X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3821" "Tuesday" "11" "February" "2020" "16:34:31" "-0500" "Brad Spengler" "spender@grsecurity.net" nil "92" nil "^Date:" nil nil "2" nil nil (number mark "        spender@grse Feb 11   92/3821  " thread-indent "\"Re: [oss-security] Potential regression and/or incomplete fix for CVE-2017-12762\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Potential regression and/or incomplete fix for CVE-2017-12762" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21716 invoked by uid 550); 11 Feb 2020 21:36:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20158 invoked from network); 11 Feb 2020 21:34:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=grsecurity.net;
	s=mail; t=1581456871;
	bh=Bp8/tOH6Q+wj1ZHScib/CZv+yb8Zy/7MXXw+muFucBg=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=ZZpP3I9ISRih0ErOBq5mAVNyms5duYqgmlx5v9npkHdr50egO8qByf1PgoUzDhDGq
	 GOY84WryNxpfrfa2hLJEvj2RyHzPxQrxJxvkJ3sIBLnwE8u2KcQ5M9sK+81joWUU2N
	 VEjBeD97TVSW5GsDRMlAY82j7WROhp0yC26DVh6g=
Message-ID: <20200211213431.GA26083@grsecurity.net>
References: <CAJvHH_QwWT5HBMXEH8hVgXxm8xCYzhJfRTWAijAr0LLWQn4gdg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Kj7319i9nmIyA2yE"
Content-Disposition: inline
In-Reply-To: <CAJvHH_QwWT5HBMXEH8hVgXxm8xCYzhJfRTWAijAr0LLWQn4gdg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Tue, 11 Feb 2020 16:34:31 -0500
From: Brad Spengler <spender@grsecurity.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Potential regression and/or incomplete fix for
 CVE-2017-12762
To: oss-security@lists.openwall.com

--Kj7319i9nmIyA2yE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ibrahim,

> I think it is incomplete and can lead to reading out of bound since it do=
es
> *not* check if the src buffer (p) in this case has 10 bytes at least. The
> fix assumes p has 10 bytes and copies that into newname. The fix
> uses strscpy (
> https://github.com/torvalds/linux/blob/cc12071ff39060fc2e47c58b43e249fe0d=
0061ee/lib/string.c#L180)
> which
> based on its code it starts copying from count and decrements to zero.

This isn't correct.  There is a 'count' variable that decrements to zero, y=
es,
but that's not what is used to index the strings.  'res' is used for that, =
and
it increments from zero as you'd expect.

Regarding OOB, there is the read-by-word trickery, but it's safe and won't
trip up KASAN for the max 7 bytes it can end up reading past bounds, and wo=
n't
in any instance cross a page boundary.

Since 'param' is guaranteed to be NUL-terminated from the fix (the isdn_com=
mon.c
change), so is 'p', so the strscpy is fine here, especially since the later
use of the buffer (coming from the netdev netname) uses strlen as the length
for the buffer copy to userland here:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/dri=
vers/isdn/i4l/isdn_common.c?id=3D9f5af546e6acc30f075828cb58c7f09665033967#n=
1385
So strscpy_pad() wasn't necessary in this instance, despite it often being
needed for kernel work (and the better defensive choice, unless performance
is critical and you can guarantee the remaining part of the buffer never ge=
ts
copied to userland or used in any way).

> ## Regression
> I looked quickly into latest version for the kernel v3.16.81 and it seems
> that the patch was probably reverted as the code matches exactly to the
> vulnerable version to the CVE (
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/dri=
vers/isdn/i4l/isdn_net.c?id=3Dv3.16.81#n2646
> )
> Not sure if the fix was reworked but wanted to surface that issue as well

This wasn't due to a revert, the fix was just never backported to 3.16.=20
Happens all the time.  There's never a guarantee that just because a=20
security fix is backported to some newer kernel version that it'll be=20
backported to all affected versions.  If the patch doesn't apply cleanly=20
and no one fixes it up, it just never gets fixed.

For this instance, you can confirm it by looking at the git log for that tr=
ee:
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/log/driver=
s/isdn/i4l/isdn_net.c?h=3Dlinux-3.16.y

The 3.16 kernel has a different maintainer than others listed on kernel.org:
https://www.kernel.org/category/releases.html
so there may be different critera for what's selected for backporting there.

Thanks,
-Brad

--Kj7319i9nmIyA2yE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJeQx3fAAoJEETRwPglJf5JSj0P/idJhJGUQl1utvIlYexashQ3
e8smgKGTFUW9j133AFDEb5J3tbw+A5DPe+77exGTs60tuDefp8CAsuTYdSwUsstz
U3FaXA5RyDC7ih60I6EiqTRtZ83askzvg8l0Mt2CKufdY+StWh9R631PJtQv5wRu
out0IHt23zWCfoF7otrc3WlGe07SwEoNWiUpZhgQ0JrZw1QVpzacvl33McnXPlzr
Evn9SNxX8ZYaiXhJkNgqtgEbWDx7XrahdS9LP/n0iV8zqRi5+Cwmyr5jO3m2IFvR
8M2+9nm13UVkegbcYe3dHNXj0k6rRFbKX2TSB9qfObxQ4hMPQz/HP0XdKF7EKxj/
DvL8xrgfAdQYGhxJBtxf3SP/KW0ctwUyVaIRjzDrPQhM1mjU54ZoWNw6tVV3bJjK
V+BzkWnMWnaFtdHYyqRQC+DzS8lPfoCMEbB6/7qsALnkiSwA/tEPo+tMr5yG9iG+
2fhFJ1Bcsdi7kQeRT7yTY7iY7ir3j4SL/uA2tOQ5eMIEQ0z6rQObA3W9KsqN2anG
ud4g4BipFKNexpgFQPf/anF7s0NazVgKFxEp6mZrR8A5N+4GN/l5OKw0erN4WIvD
TN71FeHjnfHNZZiB/xGRvyYYOcT6zqwQJGnTF0givjLunOF01kOV0GH1nT1uhGmo
qskvvun31LtAxno7Fhbx
=Vtqe
-----END PGP SIGNATURE-----

--Kj7319i9nmIyA2yE--
