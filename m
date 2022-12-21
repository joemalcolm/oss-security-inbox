Received: (qmail 26168 invoked by uid 550); 21 Dec 2022 20:05:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11308 invoked from network); 21 Dec 2022 19:15:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hardenedbsd.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9O3SlkjiLpWA2ZW3Mh0DNI/g/5cbvuYt8iqdIwbp8so=;
        b=WKFqmhhhUWKputmFrLsLveT3J1Sipdt0yrVnV9o/JhI90KipFotZ8qNemCBzr1BzeY
         qdIMVEw9f+2Sc9vi+hyhEMosqW6z3QIF7ZjEgS8hsw3UkDLCdsfUaZOpPvtg2WxW9Nu/
         ar/Y8SXgveTQd37GlGF7S7MDQ6woJPmo/Lt/NrIlQP6zZ7tFND4HCfjGqr7LAOCefAg8
         g4IxPQBarwtOyCulV5Uz9o+KVTo+bH9xjHGsbEYkw0bUt98aTxVIgPuNG09iW0nY2F+P
         +9/KYqIlk7KsTeCWUZWquvkExPj3BK+tKcUuMBaSF3AEILCn56Vw/TH7cO/M/VLSFIuJ
         2y2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9O3SlkjiLpWA2ZW3Mh0DNI/g/5cbvuYt8iqdIwbp8so=;
        b=sB2yP+jfyQN5F0mHxFS7GEGb16wnL+Won0xhs+P6nQ0xsQwe7iHa8MsB2+zNPWgkWC
         0Or46Ad8PAnjfpHrKvUT5f/86qAe/qDXJrVNl3pmKof5ngfHi9+N5tIK2K7WVL/XcND+
         V9jIZb1aeLoeJBNA+wLgrI5BoPU7hlcjDgvzhqIL//+zXpmN1o03VwtILxZ9/Q2iVBkv
         uA/UVt6VrucYehEpwY+Q92SyxahxTv7vFLIkwbUQ6XwxbYsc7blGtCtxozevJpR3hndW
         msfDNmtd8u9QDdbV0siPjRVvEUpuva61ZqTOcCnPGkHqHQlojMeBMuDnoekuwQ/4KkAj
         TQxQ==
X-Gm-Message-State: AFqh2kq/gXdL0TOHhrGTGT6WLOZB+R14lTWkiUhwzrFtDwigx7fyZp3s
	OzlCsVGscnsnFFnzmr/690g91Bezqs6b5DnXpcd0x3OsLVbXvDl/TtlDzI7EsRbD9fnPf484qDe
	byJ3TXOCsuobH9eQ1SmLOYECMA9HEUNeGahL0uSoSS1y74BPjuwyl9Pvz2evUlenRd8LGvgsdq2
	mqcPKbzRNzpT3VcqW7Iw==
X-Google-Smtp-Source: AMrXdXtkiXG4RyatD9VUOae7HbdsIm/VIqqA6d47qfrzTcZ/Zd6gTLyBb3G/Rn2Aw1LYG/pHvJx2FA==
X-Received: by 2002:a05:6102:30bb:b0:3b1:16f3:71c1 with SMTP id y27-20020a05610230bb00b003b116f371c1mr1295811vsd.5.1671650111936;
        Wed, 21 Dec 2022 11:15:11 -0800 (PST)
Date: Wed, 21 Dec 2022 14:15:10 -0500
From: Shawn Webb <shawn.webb@hardenedbsd.org>
To: oss-security@lists.openwall.com
Message-ID: <20221221191510.3rqbrzu7oiyidlbt@mutt-hbsd>
X-Operating-System: FreeBSD mutt-hbsd 14.0-CURRENT-HBSD FreeBSD
 14.0-CURRENT-HBSD 
X-PGP-Key: https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/blob/master/Shawn_Webb/03A4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc
References: <CACT4Y+aqb9V=WO0gsN1DgqimrjHiY3x+KvKGiz7b95jh9gubhw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mpfvj4fe6qjwng6q"
Content-Disposition: inline
In-Reply-To: <CACT4Y+aqb9V=WO0gsN1DgqimrjHiY3x+KvKGiz7b95jh9gubhw@mail.gmail.com>
Subject: Re: [oss-security] [Linux] /proc/pid/stat parsing bugs

--mpfvj4fe6qjwng6q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

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

What is old is new again. Perhaps it's a good time to reflect on the
security of relying on VFS-based gadgets for process and system
instrumentation.

Long live sysctl.

--=20
Shawn Webb
Cofounder / Security Engineer
HardenedBSD

https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/raw/master/Shawn_Webb/03A=
4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc

--mpfvj4fe6qjwng6q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEA6TL67gupaZ9nzhT/y5nonf44foFAmOjWysACgkQ/y5nonf4
4frshRAAoNPsR2HZSEXaBlRNBCRr6NeAGIawedqZ77yaabKvC76wrFpfNssYh3gZ
YTKKgL8ek6UTr1QnsG65raEYir6MAB3xzhWkDTiIaSuTbpNSI+0qNqGgI9kzUq1N
95JcpMSDbr8fvsK3NDn/7mr9PIX+aig6P1bJjJo/J6rbywvG2owO6Clw3lp671fW
1lpa4iuYbD8OibtguKbz49FEwmm6Fob4TXW24/J3k8kHCgvsT1kSXzZc7vRCUkQ7
+jZFFsKw+zEKo2Mr7bpGlEovf7qPGKGSNg8Q6xs6I37w93IAJk+HfTkoUtWRvb84
+qVvOEZ3XfI+v1OBCBJWdoyWfKaYADvnIb9yVLYeURpqPWSp+ZU9uwY7eTZjh25r
s6Okpe2rV5AR8DMv9vdwCQTCGlsumAi4v4ua0QgBFfZ/zH3yfiBsvx3TxdHaOv9H
iRsLN3AaIXufVT59GjSBU4GnuoWqDro5ufnUbQI/VT1cvAuKMxM/8S6M05ZDh3gX
fbVbkap3K3MmGi54EttM2T7BD2EADdkTulL2lL80cF3/zGdOX4zBB+RNI+43lkb5
OTgujfB/xw34LH9n/2xPLJyAAt9aaqhjsFJkx0nJ//IhZ1E93EI6ju7RaF8jV7gs
uF6kpYoyyrOPJq7k5TygPGHj8ce7S6T9sztKR7QoN4sKNnRe4xk=
=/4F5
-----END PGP SIGNATURE-----

--mpfvj4fe6qjwng6q--
