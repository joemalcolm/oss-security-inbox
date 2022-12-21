Received: (qmail 19622 invoked by uid 550); 21 Dec 2022 17:57:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13960 invoked from network); 21 Dec 2022 17:23:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1671643420; x=
	1671729820; bh=JsUck58+gP+ZuF2K2jlDwl2lfbNJ4jM4mWCVcW31+S0=; b=h
	dtEQNDqxjXYgqA8SpM9bYyerc9NW2/uAjOMTam8JXQuFjemsOVsKJ8JqBcs7gIlI
	pS0oMEY+YkVEdFkA8WrjUhmki1/NshTydU799OwQzKRPrPvNgHeuQ23rZtiPq2dR
	3lo38qKh4oVSNP0C1bDzMVOsdvLFIMcQK27Oa/qppCZCoEsXYJ09DRoZlq3C20qR
	c3WLhNQIiKB2EZX62+Z/B2WCcxqQYEVQ9K3nJAeNeItofknkw5Dknph2fUHltMaY
	IR1h5IRRYlscmi5gsSL+LIApL7fd4uuXoXQzG47iFKqPSEz+XXB7s4vregiVkYI7
	+6lNQkkG9L2Ky4OHCbQXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1671643420; x=1671729820; bh=JsUck58+gP+ZuF2K2jlDwl2lfbNJ
	4jM4mWCVcW31+S0=; b=Aew7Lc+rQb+4mSxfUsN+Zb2SCbAQw4rVmYVuVhM06pGq
	6BbNGzogLVxr0Mgy5JzkhAGwfb3sC+Z+w9nZhtIk0HiT11lhyEq5xMEZ3aDxI7kQ
	dxduZNEZ9Wz0IemxV//d6Gfq5OJYBjuKKMeDYuhdLsKGqMSk/DfXTLIhyZCk6tkK
	3lPFvi2BdQESSCUZEpMN3rVoVZNXKI+ScI6348B//tIEt5a0oay/iRGjlXkqM5s1
	ABJ3z3YAsxJ8xkyTlHnMZt7zpmpumOcusX+KstmNRxQdffRFNvQXiRgI5nUOPcQg
	fWZar7iP7lDMjONFjoEpMfzdabXThh/tbUvNSy5/pw==
X-ME-Sender: <xms:HEGjYxyVzfGgl_NW8P5z5V2xTBJRpVtRuLbJDAhlfI1FdC_ka2hLKQ>
    <xme:HEGjYxTBRa7j08Yx4cxzva6M40rI5Lmf27ELu5KLSyUtmzh5UcG3-_6vItILCjNRt
    i2nkIRtt3B7T4w>
X-ME-Received: <xmr:HEGjY7WF-ywg1d-r_I9EzAhkMTdio6duwQel0raBME4K3CB2H5op8HKgo7Je>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrgeekgddutdduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtvdenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    epvdeijeejfeektdegffelkeekveekueetudevtdejtefhgedvtdefkeffvdeuuedvnecu
    ffhomhgrihhnpehmrghnjedrohhrghdpshhouhhrtggvghhrrghphhdrtghomhdpghhith
    hhuhgsrdgtohhmpdhjughkrdhmrghnrghgvghmvghnthdphihumhdrphihnecuvehluhhs
    thgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggvmhhisehinhhvih
    hsihgslhgvthhhihhnghhslhgrsgdrtghomh
X-ME-Proxy: <xmx:HEGjYzj4954rlfMXU-opbdRzBw66kOvci0K4IKuiGnkw3TRASEbh7A>
    <xmx:HEGjYzDEehhFLIWFSNcq1dI3PjLWzLVYXEEYKPd_0eqwuhX0P7DXSQ>
    <xmx:HEGjY8JEr7WYl_66125BGq8Vor7FVREZpdl1UDVtT819MD9GXg8kbw>
    <xmx:HEGjY2MHeViYY7QEXDkuhlr3MmlULZ0taYRkXa952ebbtawCzzjqmg>
Feedback-ID: iac594737:Fastmail
Date: Wed, 21 Dec 2022 12:23:35 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <Y6NBGsQ+7FAaWuv/@itl-email>
References: <CACT4Y+aqb9V=WO0gsN1DgqimrjHiY3x+KvKGiz7b95jh9gubhw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jRwUJWxnkdn8LnpO"
Content-Disposition: inline
In-Reply-To: <CACT4Y+aqb9V=WO0gsN1DgqimrjHiY3x+KvKGiz7b95jh9gubhw@mail.gmail.com>
Subject: Re: [oss-security] [Linux] /proc/pid/stat parsing bugs

--jRwUJWxnkdn8LnpO
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 21 Dec 2022 12:23:35 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [Linux] /proc/pid/stat parsing bugs

On Wed, Dec 21, 2022 at 06:13:17PM +0100, Dmitry Vyukov wrote:
> Hello,
>=20
> This is not a single vulnerability, the list of affected software is
> large, but it's not a security issue for all of it.
>=20
> It occurred to me that most of the Linux procfs /proc/pid/stat and
> /proc/pid/task/tid/stat parsing code out there is buggy. The fine
> contains a set of numbers about the task:
> https://man7.org/linux/man-pages/man5/proc.5.html
>=20
> e.g. $ cat /proc/self/stat
> 1715376 (cat) R 1544883 1715376 1544883 34819 1715376 4194304 106 0 0
> 0 0 0 0 0 20 0 1 0 42505561 9207808 237 18446744073709551615
> 93955355631616 93955355651497 140737444557056 0 0 0 0 0 0 0 0 0 17 36
> 0 0 0 0 0 93955355667504 93955355669120 93955385581568 140737444559745
> 140737444559765 140737444559765 140737444564971 0
>=20
> Most of the code splits it by space and takes an N-th field.
> The problem is that the process name "(cat)" can contain spaces (and
> brackets). Potentially some important software (containers/sandboxes)
> can be tricked into getting wrong data, and I've seen cases close to
> stack overflows (buffer for a fixed number of fields is allocated on
> stack).
>=20
> Some examples:
> OpenJDK:
> https://sourcegraph.com/github.com/openjdk/jdk/-/blob/src/jdk.management/=
unix/native/libmanagement_ext/OperatingSystemImpl.c?L133-139
> https://sourcegraph.com/github.com/openjdk/jdk8u/-/blob/jdk/src/solaris/n=
ative/sun/management/OperatingSystemImpl.c?L223-229
>=20
> Ansible:
> https://sourcegraph.com/github.com/ansible/ansible/-/blob/lib/ansible/mod=
ules/yum.py?L507-510
>=20
> Libuv:
> https://sourcegraph.com/github.com/libuv/libuv/-/blob/src/unix/linux.c?L6=
74-701
>=20
> bdwgc:
> https://sourcegraph.com/github.com/mono/linux-packaging-mono/-/blob/exter=
nal/bdwgc/os_dep.c?L1138-1155
>=20
> But really most of the code that does it:
> https://sourcegraph.com/search?q=3Dcontext:global+/%5C%22%5C/proc%5C/.*%5=
C/stat%5C%22/
>=20
> The only way to parse it is to do strrchr(')') first (fortunately it
> contains just one unescaped string).
>=20
> Thanks

Should Linux be patched to somehow escape the spaces, or replace them
with something else?  /proc/pid/status is even harder to parse robustly.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--jRwUJWxnkdn8LnpO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmOjQRkACgkQsoi1X/+c
IsFZBg/9FlEWUJjrAW5MABlXEB74NOymFIk22ggxbDaDrhTob/0HuE+EoIGJ/tvR
rLsCqlrpiw0H1TU3+jvMJIXCKazxIMyeVcSmcdlL3foJjb9z9AH5j6Ueu0YqEmZZ
N8W6yIVvSHZNMM+2DWc48vIiODTFEKGuAfSLcc1DzSrsOPGqIVGf0EzGh+ayDaal
XerqhRveOBaHIkbwmvYJOWXY5VdAXqDCpzPKJHN8h9FUyTQPeZ5kDBzgKt5NkSRz
IWZQa8JCBD/P3XQo0iNUJTk25Jj0XmdkGNuU8BdYurx7Z/tkTVqPpT6XYTKUcvqp
dx/lgJSds7pTzMKgt4AEkLN5Pu7KvWUYplfJgFJpKE8qDqi/ydq4RX2XjLI2+mz6
vEPpAKT7a07ZQqla18CNojXQclm8Qs04I7os6x77hBHUix1YaLnWNUfB8FG//05G
ZodsFiuNl/ftrkSCagOsYgdavEzBxZUkJphMUt0DTyZahpVjZGHBLfcg+Dfdpemo
TgISHSq+Vcm2Dm/3QNCREEQMnBgX1CH87frg0hxFkCz7DG72fbrrFUEx97Oovn2N
rRbF9aYjrRbl6xZtNAbXn65YoY0Try9vLCc3lvs+NbMHuASS7zDgKHZdkgh1Mkz/
217C8bbaxPInboKuz7DsekOQ/+0A1docRTQR8MMB6dXmZ0AGbkw=
=4HrH
-----END PGP SIGNATURE-----

--jRwUJWxnkdn8LnpO--
