X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2001" "Monday" "25" "September" "2017" "14:06:54" "-0400" "Leo Famulari" "leo@famulari.name" "<20170925180654.GA15007@jasmine.lan>" "46" "Re: [oss-security] Why send bugs embargoed to distros?" "^Date:" nil nil "9" "2017092518:06:54" "[oss-security] Why send bugs embargoed to distros?" (number mark "        leo@famulari Sep 25   46/2001  " thread-indent "\"Re: [oss-security] Why send bugs embargoed to distros?\"\n") "<957f2bdc-6603-3e86-1d63-8e33c8df768a@redhat.com>" ("<20170923134418.6e460656@pc1>" "<957f2bdc-6603-3e86-1d63-8e33c8df768a@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14255 invoked by uid 550); 25 Sep 2017 18:46:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20079 invoked from network); 25 Sep 2017 18:07:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=famulari.name;
	 h=content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=8dPbm6vRuyYDux3Ncu68kTA15ISfE7Lcme/cgN
	BblSM=; b=Ard61CqI7skbl5vmnQgaSD9J8ae47FUpI3pJN5JPbcufDHxMi6O7Tc
	/OF1Bc9S90jiywbKBkWQkihYnudnvYe+HUnssotWNb83f+2ByABjuPiXxQrKnxLC
	gVWfG3hDKpIRq8ceznSnwzJuYZqJ7UluVFJY5y2lmwBeLw6cNkwiE=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=8dPbm6vRuyYDux3Ncu
	68kTA15ISfE7Lcme/cgNBblSM=; b=C36kin36EgEkXoe/FVFYO7ObLoz8Xhmo1v
	FGqlH0OkrpUKaN7tqASNGbW6rnRLjHm1Ix89nA7wmdCuDpw9QLL0rYQlTHga2Gyb
	KURc2RexuXRz57Xpptz4oQW1xo5tjv6cUpx0P7mNUPWvIXVMriV8URI8E+AEe+bR
	M/7OdOXQg0dZKy9FnllV2BRTXFcM37EVfDhstKx9iOoBfb5bBaGbgLJ2GMdhwNOE
	0Mdb4F65bEGD9SUiEty0UjcMbk95RK+hnp81GDcLgBXGoX+Oa0j7J2jkJ0EpKNQF
	MDzITvccJukaam/JNgcR151NU+5l5OznIp+QJfAp734Zg9hTbwRw==
X-ME-Sender: <xms:wEXJWbyrpoleCmJ-IoUPNein3ZRV2izdp2q4_NaT8Gsv69NCc6dR_w>
X-Sasl-enc: /2Aq3zec4qyMc9hjiczXv6uC/mueoKT+Grfrncm3mCeJ 1506362815
Message-ID: <20170925180654.GA15007@jasmine.lan>
References: <20170923134418.6e460656@pc1>
 <957f2bdc-6603-3e86-1d63-8e33c8df768a@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7AUc2qLy4jB3hD7Z"
Content-Disposition: inline
In-Reply-To: <957f2bdc-6603-3e86-1d63-8e33c8df768a@redhat.com>
User-Agent: Mutt/1.8.3 (2017-05-23)
Date: Mon, 25 Sep 2017 14:06:54 -0400
From: Leo Famulari <leo@famulari.name>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Why send bugs embargoed to distros?
To: oss-security@lists.openwall.com

--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 25, 2017 at 02:52:13PM +0100, Cliff Perry wrote:
> On 23/09/17 12:44, Hanno B=F6ck wrote:
> > b) if people think that they'd usually prepare a fixed package, however
> > they didn't consider optionsbleed important enough. (Naturally I
> > probably have a bias seeing my findings as more important as other
> > people, but I could live with that.)

Guix is not on the distros lists, but sometimes upstream projects
contact us privately with pre-release embargoed bug fixes. We will test
and prepare the updated packages during the embargo period whether or
not we thing the bugs warrant an embargo.

> Hi Hanno,
> The detail of your report was good quality and I'm sure appreciated by
> everyone who needed to review it. I know that for Red Hat the
> pre-disclosure was useful.

Agreed, your reports are very useful to us, whether we read them in the
pre-release period, or after they have been disclosed publicly.

--7AUc2qLy4jB3hD7Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAlnJRbsACgkQJkb6MLrK
fwh1sQ//YkWQItJxLF0wVif9Do/tOFfBgzio4LIQ0OQc9D5Rz58lsGThkkpZ+61X
X65aWQxPFmX6qvhB9I+46MAzRB0oncS0oEfGGqurFQzo4CwJfVESZ1WGj0BWedLB
Md/Dm3PfGa+I3liw3Fy+P60NcfTtivHFju14UEGyMkbsTvxSHDSgQqw0hLBLXODu
LO1KD6OHJL5ZMVp4Mi86GZUhC1rjlY0tVYF/3u+a3q5AQXupiW3blyH98Spb5RY+
AxO/vrV7zitvdK4TlZP1HWFdwJuvekQ1Gd8sj7jHC7gVM4MkyGFCWqMyuseCQwtW
fG26VcqqL8va4QfrsnyiWo/10KVnJKyBeYZhJDL05b2U+F3iYjgFGnXeNNnUiZJL
dPjdRFPLIYx+4Ei0ZmzFGGZlBbZS4UrF5QqVGRKr03mSFo9TRkLcZL0J33twjYqC
pns8b7YHXCZYEp3fCeUYM+wir4H4oenLsepPQicDVR44KwFljj/jjHlJvpT6CrAL
MRquHoWFGAuUXUvdxoR4NqPJOk4c1ebm4VUd2v0PnJUHhZI7pagBtkDReqj9JDS2
zrpmOxG5164Ov3LALUul5ka3MVOmjDrNNIyNSeQoQFIuitVSSbkoSuu81jtkKyXE
7Tq/2agsn2z1FiFfTcEXn9VPQWZM1E2FXz7j3zXdmzH5LkAVLic=
=NDFW
-----END PGP SIGNATURE-----

--7AUc2qLy4jB3hD7Z--
