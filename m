Received: (qmail 7958 invoked by uid 550); 29 Mar 2024 22:01:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21846 invoked from network); 29 Mar 2024 21:59:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1711749549;
	 x=1711835949; bh=emmqwwswIXqGA8cCvceC2eTwKDCpL/mq8PXl9bJPR+M=; b=
	NQw+YRi0UypxHu1TtRK4TaM0CRzOLwo1fIboXf75odgRwgUkEDe3zO9ZPkD3e6op
	FGJOm3NmssgmXRS5+TBHlg7gVILB7UrrtqchcdLlfuWVAmcrBWXCSIEY1ebxCCHX
	Fw8aDrvRoo3xy8KvBp63resNXjKAbtwyvUXbXpnhq6kVXBABay8mMtHTGQ6qZ3uc
	YmTuHWTYvR1OteEjW0WRchz986HMC6jWDXMnIGJR9+xD8fdjLqC5xDxvh7un3Uue
	/VtoXxXPi31Ut/KVxGUAxsHVEn0ADFYTBQbOGp8yEzI8HgYmdHIzzBdbJPJEq7vq
	XNTZ8KVQ3ULcMrvvA19JgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1711749549; x=1711835949; bh=emmqwwswIXqGA8cCvceC2eTwKDCp
	L/mq8PXl9bJPR+M=; b=YuiFO/FY+lVTsa/uoH31QEKYZXTGx8QWO/NlxmXEL8ws
	5z1gy8SHs0+MYw5fxZx+EUgjyea3Rj4AjjZxYesl5MFrralrbcHLqSZTawX43srZ
	N6YoS1NuT6+0v7+AAiSRqHOCz+aDCJKx42FYqpGROsClty42Mwv4F030dtjJ+nYa
	5Uxv5VXIEbR9M3nFEnb9HqX/Q3Oy2ZALNaO4mMXP5rPQ1UOK9ehgn3eu/ksXpKjS
	PtImAJHzmQeefpbigAxq+jZHEa3jdJyLHFar3jS9DJNcur0vbDyk8pfUz8knrks+
	q9iyQZm+FC1DgH+V36apj0Z7ecEHKS9U5N6iRk+kaw==
X-ME-Sender: <xms:rTkHZjB3JfOOfOfBiKCeuAjh-4EH7Ab8YvB8Jup3VMvqlFl0mNJmYQ>
    <xme:rTkHZpj7PvgTOHsxU2GI4wJJncNiMDGCEx9vwyzMc-xLfqBfuDT32KJztpunYI1cb
    ywhiaGIdxYQGds>
X-ME-Received: <xmr:rTkHZukHXACVydgSCJHMbTlmBWlMIGoRwItL-ma5c3Abd5BRDAzamXat2kbK>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddvvddgudehkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtd
    erredttddvnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghm
    ihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrh
    hnpeeigfdvgeevgefhteejgfdvkeffffeftdefleekvdeggeeggfdtjeetfefgteevkeen
    ucffohhmrghinheprhhotghkhidrphgrghgvnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepuggvmhhisehinhhvihhsihgslhgvthhhihhnghhs
    lhgrsgdrtghomh
X-ME-Proxy: <xmx:rTkHZlwg-nNvCdh-PU4ekXggJBgPmoFjW6o0X4R32Dp_M5yhGLZArA>
    <xmx:rTkHZoQzpvNBRJh9P29mj5aGhs1cusyHi85sEnAkRc0zn8LKMJfzpQ>
    <xmx:rTkHZoYjo4aZdHOGxRakYZBT-W2FPzxmk8-0fy-B_fJb-Epbn69SLA>
    <xmx:rTkHZpQVhku-IMa5LXftz0JPPk-Dd8I-mTr3FbH1aYQYIjunFvVaSg>
    <xmx:rTkHZjJb-jnP6CoLP3u9QOlRIvBTcEI_iykjGPLglh0vwEsjNExHSFjKJXY>
Feedback-ID: iac594737:Fastmail
Date: Fri, 29 Mar 2024 17:58:49 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <Zgc5qW_Q6fXNiPmH@itl-email>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <ZgcL9VUx6CQ5Wx/W@weckbecker.name>
 <20240329191926.rvyvzgtdpfwc256c@awork3.anarazel.de>
 <20240329214615.GA2610@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x53rFxU5ZqRihBql"
Content-Disposition: inline
In-Reply-To: <20240329214615.GA2610@openwall.com>
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

--x53rFxU5ZqRihBql
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 Mar 2024 17:58:49 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

On Fri, Mar 29, 2024 at 10:46:15PM +0100, Solar Designer wrote:
> On Fri, Mar 29, 2024 at 12:19:26PM -0700, Andres Freund wrote:
> > On 2024-03-29 19:44:05 +0100, Matthias Weckbecker wrote:
> > > I've attached a yara rule to detect the *.o droplet you attached in t=
he
> > > email (liblzma_la-crc64-fast.o.gz).
> >=20
> > Unfortunately xz 5.61 added further obfuscations, making it harder to
> > detect. Should have made it clearer that the attached .o was from 5.60.=
 Among
> > others 5.61 removed the two symbols you're checking against here.  That=
's why
> > Vegard's script looks for a specific instructions sequence, but obvious=
ly is
> > also more obscure :/
>=20
> Andres, maybe you (or Florian or someone else) can post the .o file from
> 5.61 as well (gzipped just like the previous one, please)?
>=20
> On Fri, Mar 29, 2024 at 08:51:26AM -0700, Andres Freund wrote:
> > openssh does not directly use liblzma. However debian and several other
> > distributions patch openssh to support systemd notification, and libsys=
temd
> > does depend on lzma.
>=20
> It is indeed a security risk that sshd on major distros brings in so
> many libraries.  For example, on RHEL 9.x and its rebuilds, "ldd sshd"
> is 28 lines.  In the Rocky Linux SIG/Security override package, we've so
> far reduced this to 13 lines, which is still a lot:
>=20
> https://sig-security.rocky.page/packages/openssh
>=20
> For systemd notification, I patched it (half a year ago, so not in
> response to these new findings) to dlopen() libsystemd into a new sshd
> child process that's briefly spawned on sshd service startup or restart,
> notifies systemd, and exits.  I could probably also drop privileges in
> that child process, but so far I didn't bother.  I just didn't want
> those libraries to stay in the process address space after startup.
>=20
> Luckily, RHEL is not affected by the xz backdoor anyway, but if it were
> I think these changes would just happen to have prevented the backdoor
> from working.  Indeed, it's still bad code that could run as root (and
> even if not in sshd, then in other services that use libsystemd), so it
> could have as well e.g. modified sshd on disk, but its current way of
> dynamically plugging into sshd authentication wouldn't work.
>=20
> I've attached the patch, which applies on top of Red Hat's patches.  If
> using it in a package, explicit dependency on libsystemd (or the package
> that provides it) should be added to the (sub)package with sshd, e.g.:
>=20
> Requires: systemd-libs
>=20
> That's because the package manager would no longer automatically detect
> the dependency, which is now a soft one.
>=20
> I took this approach back then in order not to drop functionality, but
> I'd re-think it now.  Perhaps systemd notification isn't worth even the
> reduced risk, and should be dropped completely.  For the latter, an edit
> to the systemd unit file is needed, changing "Type=3Dnotify" to
> "Type=3Dsimple", which should fit "sshd -D".
>=20
> Not only Red Hat'ish distros, but also Debian and Ubuntu are similar in
> this respect, and I think should want to make similar changes.
>=20
> Alexander

> diff -urpx '*.m4' -x '*.in' -x configure openssh-8.7p1-rh-systemd/configu=
re.ac openssh-8.7p1/configure.ac
> --- openssh-8.7p1-rh-systemd/configure.ac	2023-08-28 11:56:19.955892400 +=
0000
> +++ openssh-8.7p1/configure.ac	2023-08-28 12:29:38.678775780 +0000
> @@ -4758,21 +4758,9 @@ SYSTEMD_MSG=3D"no"
>  AC_ARG_WITH(systemd,
>  	[  --with-systemd          Enable systemd support],
>  	[ if test "x$withval" !=3D "xno" ; then
> -		AC_PATH_TOOL([PKGCONFIG], [pkg-config], [no])
> -		if test "$PKGCONFIG" !=3D "no"; then
> -			AC_MSG_CHECKING([for libsystemd])
> -			if $PKGCONFIG --exists libsystemd; then
> -				SYSTEMD_CFLAGS=3D`$PKGCONFIG --cflags libsystemd`
> -				SYSTEMD_LIBS=3D`$PKGCONFIG --libs libsystemd`
> -				CPPFLAGS=3D"$CPPFLAGS $SYSTEMD_CFLAGS"
> -				SSHDLIBS=3D"$SSHDLIBS $SYSTEMD_LIBS"
> -				AC_MSG_RESULT([yes])
> -				AC_DEFINE(HAVE_SYSTEMD, 1, [Define if you want systemd support.])
> -				SYSTEMD_MSG=3D"yes"
> -			else
> -				AC_MSG_RESULT([no])
> -			fi
> -		fi
> +		AC_MSG_RESULT([yes])
> +		AC_DEFINE(HAVE_SYSTEMD, 1, [Define if you want systemd support.])
> +		SYSTEMD_MSG=3D"yes"
>  	fi ]
>  )
>=20=20
> diff -urpx '*.m4' -x '*.in' -x configure openssh-8.7p1-rh-systemd/sshd.c =
openssh-8.7p1/sshd.c
> --- openssh-8.7p1-rh-systemd/sshd.c	2023-08-28 11:56:19.957892327 +0000
> +++ openssh-8.7p1/sshd.c	2023-08-28 12:53:52.070538125 +0000
> @@ -86,7 +86,7 @@
>  #endif
>=20=20
>  #ifdef HAVE_SYSTEMD
> -#include <systemd/sd-daemon.h>
> +#include <dlfcn.h>
>  #endif
>=20=20
>  #include "xmalloc.h"
> @@ -2076,7 +2076,20 @@ main(int ac, char **av)
>=20=20
>  #ifdef HAVE_SYSTEMD
>  		/* Signal systemd that we are ready to accept connections */
> -		sd_notify(0, "READY=3D1");
> +		if (!fork()) {
> +			void *handle =3D dlopen("libsystemd.so.0", RTLD_LAZY);
> +			if (handle) {
> +				int (*sd_pid_notify)(pid_t pid, int unset_environment, const char *s=
tate);
> +				*(void **)&sd_pid_notify =3D dlsym(handle, "sd_pid_notify");
> +				if (sd_pid_notify)
> +					sd_pid_notify(getppid(), 0, "READY=3D1");
> +#if 0
> +				/* Unnecessary due to fork/exit */
> +				dlclose(handle);
> +#endif
> +			}
> +			_exit(0);
> +		}
>  #endif
>=20=20
>  		/* Accept a connection and return in a forked child */

What about simply open-coding sd_notify()?  sd_notify() just sends a
message over a Unix socket, and the protocol it uses to do that is
both documented and very simple.  sshd could simply implement the
protocol itself.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--x53rFxU5ZqRihBql
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmYHOagACgkQsoi1X/+c
IsHHfQ//XHtAcJS8Vv7vkyhpirQX76IcVq56Xjk1nw7CQ5xygc6a0oRo5yelOVEN
YP+8JKhHO9+ipLKjYXPztWfiGFuhmxyQhtsGV3e10dG5nHnoMqBSqypyHKCLw7BU
ACP34GXSJeCvtA0jglxT1oM0DsAa2G5qY/F5AbJ+75lUiji/dnbcqx/nDYcgygE1
pJCfNLeFJTWDeD//4Su4K2akp56ANnWsoI2o5kr14DhZJrCCVE8TMJbs2Thke77v
gzVRUDQX0Ky3CRUD3+CrtaAjzR+7NgBpwQXpAkCSGC/U2vGgrkO/aOOwiXFfEG3h
wBxhRB5SIxC9T0HwHke/MtIcCLcFlYN3DD6eQhIGd4/EsqdGmdtiXsNrXK+csDEn
lnPA2ZT73imZgaPurT5k1lYvUgWfHRInmZDp7hYnzheB4OI8OUEhBT4/YAich8p9
+JBYA6KEWaEplA7W1oQXIbhFvj5jko/nJDDv7SrGQarWeboyDFKSuBy6FXxe48sA
BTN0qvz9DYoc5WDh/Lq2InRPNSB0HRuYfrWpAK93ohM/HiiCYYA/E/8+wsbPnQs6
kc9aag57okiRFJKetL2MHpxpZ+aUf7uKGFmDi6Eo6Po62QcrqVEpSs5LC+y7IEkX
8mwN5zZfszKsPtphN00n2u4CkRLPUYn6tZJUlk5WNl46K3237kE=
=gsBV
-----END PGP SIGNATURE-----

--x53rFxU5ZqRihBql--
