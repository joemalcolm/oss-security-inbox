X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2205" "Monday" "31" "October" "2016" "07:41:04" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1477914064.3558.4.camel@gmail.com>" "55" "[oss-security] Re: [kernel-hardening] Re: Stack guard canary massaging" nil nil nil "10" "2016103111:41:04" "[oss-security] Re: [kernel-hardening] Re: Stack guard canary massaging" (number mark "U       danielmicay@ Oct 31   55/2205  " thread-indent "\"[oss-security] Re: [kernel-hardening] Re: Stack guard canary massaging\"\n") "<20161031112236.GA6816@openwall.com>" ("<14b76703-8185-dadb-7605-10496331452c@redhat.com>" "<20161031112236.GA6816@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9611 invoked by uid 550); 31 Oct 2016 11:41:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9568 invoked from network); 31 Oct 2016 11:41:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version;
        bh=GzycuCNedC+9oq01cnwh/7P++ULxAz1SQJdJrHz+G6M=;
        b=SfIFalbHVZZbhvVgKK43iO685psIC5w6sVr0JLQXQTWvvMNBLCnRzAykFRRcjWQKbd
         2qwnuiMW6RZcjAtnqGVLI0uoVJ1AgdVZ4+IdoFqI8Mshkgi0N5+bECchZuEBEdeZBVcW
         oQUPm9z841ftOtuAbjUbMjIq01nL53XaWaMKGgz2pBAEPCJnf25nB6woX6Fvi2/D8xiG
         X6sFXh6O/Pt0whsS8+cyJRE7BOFhclgyfvDZNTDvRzu8ZlujUfulB7oRdw1PmdWIrnq9
         mCK/2wKbjHhxiTj62ErS5N5Alm9nRglqU+TZgDjACinUEb3TzQxqU+M8wmgSQhmPzcYk
         qFJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version;
        bh=GzycuCNedC+9oq01cnwh/7P++ULxAz1SQJdJrHz+G6M=;
        b=dnWhLSljfhnHJEPMLhIYuvCIwiwI9tODXGQPg14lohCaytrPdKzlZs6ITuz8x95lRs
         PPq9DjK42RlaENH4/TlqEX+elGNzIPacaNrh8K0C8iL3TYo8OekOKydBqUIJ481vct+E
         Rp+Z8cUakHxXjrHwJxh9vTT9dDBc1p5eSB9HK7oJmL5JBbJZUlR+BAIoVy2jJ9BJAn0j
         B7Q4H9YxW3rt90rVIYi/fJjbP2T8UFAp2n66QG+20EyFDaoEp8byfeaFBzFcefhZY7dC
         HWNo1SHuqHs+yILG+ta6oqwXLXmVs92ilooOzl3zJdOBD0Z8QsyidVxJR4h3D5tnzRIK
         Eukg==
X-Gm-Message-State: ABUngvfgBzRYnSdoIKFpg5j8oZMnZ1FwQgLhtduA9Tvh0+GS0fMz5yDFzo4fa8fEWqk1zQ==
X-Received: by 10.233.235.67 with SMTP id b64mr26099592qkg.156.1477914080276;
        Mon, 31 Oct 2016 04:41:20 -0700 (PDT)
Message-ID: <1477914064.3558.4.camel@gmail.com>
From: Daniel Micay <danielmicay@gmail.com>
To: kernel-hardening@lists.openwall.com, oss-security@lists.openwall.com
Date: Mon, 31 Oct 2016 07:41:04 -0400
In-Reply-To: <20161031112236.GA6816@openwall.com>
References: <14b76703-8185-dadb-7605-10496331452c@redhat.com>
	 <20161031112236.GA6816@openwall.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-EUowmpRhJLqBcpEapgT/"
X-Mailer: Evolution 3.22.2 
Mime-Version: 1.0
Subject: [oss-security] Re: [kernel-hardening] Re: Stack guard canary massaging

--=-EUowmpRhJLqBcpEapgT/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2016-10-31 at 12:22 +0100, Solar Designer wrote:
> On Mon, Oct 31, 2016 at 11:48:45AM +0100, Florian Weimer wrote:
> > Sorry for cross-posting.
>=20
> Sorry to bikeshed, but I think this isn't a kernel-hardening topic at
> all, so the thread should continue on oss-security only, please.
>=20
> Florian, if there's a reason why you think it's kernel-hardening
> related, please let me know.=C2=A0=C2=A0To me, it looks like userspace ha=
rdening
> that is not even kernel-assisted (at least not directly in this place,
> even though the kernel may have helped provide the random numbers).
>=20
> If your cross-posting was to reach more of the right people, then you
> have already done so, and they can join oss-security now. ;-)
>=20
> Alexander

The kernel supports SSP but it doesn't appear to do the same thing.

arch/*/include/asm/stackprotector.h

Why do the non-x86 implementations XOR in LINUX_VERSION_CODE though? Is
it supposed to be a placeholder for a random at compile-time value? :\

It's not harmful but that's just... weird.=

--=-EUowmpRhJLqBcpEapgT/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIyBAABCAAdBQJYFy3QFhxkYW5pZWxtaWNheUBnbWFpbC5jb20ACgkQ+ecS5Zr1
8iowhA/1FImN3knrfXylVbN4UblnozoTF3gzNo7zvOLdvF72jQ+0vJS5qvrnYxPX
/JsV9/PM64+V13QmsQblMRc7csMs9hlNhJqsTYJZvsJEmt+ldC5y8OXhlr72Vwr5
rBD7WQoAUS1liywq7KAdOdb09i2a2ft/JlzNcJ4ibSWuypraoBhQa5/icsFlUi2k
/8E9gmuuyPw/NbVPSaR2JIqhA/WACUB3hfvZh5JK0nkVKhxTAbeGydHC1OH15nqa
tqImcH+vAZINNAt4YGaPEpOmj01osnvCGQ4jwM9G24FvuI5i4lTwkX5ROcL2cO2f
NxWFrRibxkeqoS8Iv5nG3t70p3rbblnbzlOdXq53W8ONpNR3YVMOGBub5QC7IMX6
hp8aNrCURXHvdqXLxn/ONNG070vL3iBaoL4lwdxPu3wOIUcfTywbPPe1IHmpfN3f
nii+V2us++PLkvCxOPEwMk/yqnsbwur8xT0rpq+XMqHhkI0dToZ9g9Nld3T9TK31
tVT3l9lVmyLigp/7Lbj4xVRA+CUP1I9k4oPXUDotUlorxQWiaIt+sJHt1x9h2lVM
tUjIACcKmtefSY7gofFM20RfWxIPWq1BC6Yz1ZVG/WTvZvY6HtUKP6CyOGJL5K59
lyD6ol0LbvAiDli7c6wTv7GhWQMKu4rat0NVBPQo/O34KcURzg==
=vSEU
-----END PGP SIGNATURE-----

--=-EUowmpRhJLqBcpEapgT/--

