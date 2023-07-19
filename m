Received: (qmail 7331 invoked by uid 550); 19 Jul 2023 13:05:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3259 invoked from network); 19 Jul 2023 12:58:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689771505;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=C1Pkb8vX1z8qVr6rI1Zjxdh/RTCoPvMhDGDBj4u9uB4=;
	b=gI2cEuqfyrnFzsjMYLU5nxT1o7KDOKQh3GZTbq9MG7AGqGJPl99fYUhtpG/c5fC6N1SkKG
	dDJOPUOVGxRc1RH1Q3lSESUBb8yzn3IRJec5A5xc1BZmCX3V7uHlo+s+aW1v9DaxI+8Ilu
	Ivm44S/U5mp661tu+LrG6ZKZwnOru5o=
X-MC-Unique: a6dZ9dUXMBSIpTa-IGEQrg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689771502; x=1692363502;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C1Pkb8vX1z8qVr6rI1Zjxdh/RTCoPvMhDGDBj4u9uB4=;
        b=PbfN4GqQVI3S8Nr4C2OT0G3jG0RqXEIUtY6xznsly49wSeY+OaKYcPXv1z3miB5FkB
         oi6zaq7hSPCqdPJM3zs8mwTq1mXxjamR4iCYVgmJnmJ4i4CH1f1IYQdN6E/3HYOan/Lg
         4XAyuUyfXoBVoFGZfikwhVGmJP2LfssP7ST7dCoTnvt8Nguf8JrmBcVs800hQ8M6uHLg
         cvavztGzq8hRVi/tCaPqhIGtsH13yOTMZCSlCWwrIeIvGjm5nrhITA5VU3/zff1/hEkR
         Zqe2fbO6EJ01JU93Ih9mv5s37PfS9QibBIaE0WzEtjLdz+mWwKcoaNEwEZW2XWlCOt/x
         Wqhg==
X-Gm-Message-State: ABy/qLZzkseVlMICjwcR3/WUFtClElVtWLNuenrlLLbuZ22BGLmfevlr
	z+z/v5ak4iVjKZ0utn5a55E7orfBahHX8HmsATVQ3IQJMJ2A7R1ngNQquz3BVWUJvth8J7Y++a1
	hpC8mcpDC6UmbpoqKY3DVQ9UPWii9dFg6KZeWRgue9Y9jy5x51w//E7c=
X-Received: by 2002:a67:bd04:0:b0:446:9cc3:ccf with SMTP id y4-20020a67bd04000000b004469cc30ccfmr765585vsq.28.1689771501961;
        Wed, 19 Jul 2023 05:58:21 -0700 (PDT)
X-Google-Smtp-Source: APBJJlGHAaVW/9qlybdUEuahh6YgdZF+QC5EobQO0M8KMFaIrMrkoSoXUGs4oMy8gDNVf9PxF3rt8HmseUSJGZOa7oo=
X-Received: by 2002:a67:bd04:0:b0:446:9cc3:ccf with SMTP id
 y4-20020a67bd04000000b004469cc30ccfmr765578vsq.28.1689771501460; Wed, 19 Jul
 2023 05:58:21 -0700 (PDT)
MIME-Version: 1.0
References: <ZLfKifcpS49KPOWy@openssl.org>
In-Reply-To: <ZLfKifcpS49KPOWy@openssl.org>
From: Sandipan Roy <saroy@redhat.com>
Date: Wed, 19 Jul 2023 18:28:10 +0530
Message-ID: <CAJ33NAWcjFPKG-6p2dzjJoO0MZjTCu3xx7U40YumQfW9pPyg0w@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000018b3300600d6968d"
Subject: Re: [oss-security] OpenSSL Security Advisory

--00000000000018b3300600d6968d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Tomas,

I guess the Advisory URL is wrong here, it's redirected to CVE-2023-2975
advisory.


On Wed, Jul 19, 2023 at 5:09=E2=80=AFPM Tomas Mraz <tomas@openssl.org> wrot=
e:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> OpenSSL Security Advisory [19th July 2023]
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Excessive time spent checking DH keys and parameters (CVE-2023-3446)
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Severity: Low
>
> Issue summary: Checking excessively long DH keys or parameters may be very
> slow.
>
> Impact summary: Applications that use the functions DH_check(),
> DH_check_ex()
> or EVP_PKEY_param_check() to check a DH key or DH parameters may
> experience long
> delays. Where the key or parameters that are being checked have been
> obtained
> from an untrusted source this may lead to a Denial of Service.
>
> The function DH_check() performs various checks on DH parameters. One of
> those
> checks confirms that the modulus ("p" parameter) is not too large. Trying
> to use
> a very large modulus is slow and OpenSSL will not normally use a modulus
> which
> is over 10,000 bits in length.
>
> However the DH_check() function checks numerous aspects of the key or
> parameters
> that have been supplied. Some of those checks use the supplied modulus
> value
> even if it has already been found to be too large.
>
> An application that calls DH_check() and supplies a key or parameters
> obtained
> from an untrusted source could be vulernable to a Denial of Service attac=
k.
>
> The function DH_check() is itself called by a number of other OpenSSL
> functions.
> An application calling any of those other functions may similarly be
> affected.
> The other functions affected by this are DH_check_ex() and
> EVP_PKEY_param_check().
>
> Also vulnerable are the OpenSSL dhparam and pkeyparam command line
> applications
> when using the "-check" option.
>
> The OpenSSL SSL/TLS implementation is not affected by this issue.
>
> The OpenSSL 3.0 and 3.1 FIPS providers are not affected by this issue.
>
> OpenSSL 3.1, 3.0, 1.1.1 and 1.0.2 are vulnerable to this issue.
>
> Due to the low severity of this issue we are not issuing new releases of
> OpenSSL at this time. The fix will be included in the next releases when
> they
> become available. The fix is also available in commit fc9867c1 (for 3.1),
> commit 1fa20cf2 (for 3.0) and commit 8780a896 (for 1.1.1) in the OpenSSL
> git
> repository. It is available to premium support customer in commit 9a0a4d3c
> (for
> 1.0.2).
>
> OSSfuzz first detected and automatically reported this issue on 25th June
> 2023 using a fuzzer recently added to OpenSSL written by Kurt Roeckx. The
> fix
> was developed by Matt Caswell.
>
> General Advisory Notes
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> URL for this Security Advisory:
> https://www.openssl.org/news/secadv/20230714.txt
>
> Note: the online version of the advisory may be updated with additional
> details
> over time.
>
> For details of OpenSSL severity classifications please see:
> https://www.openssl.org/policies/secpolicy.html
>
> OpenSSL 1.1.1 will reach end-of-life on 2023-09-11. After that date
> security
> fixes for 1.1.1 will only be available to premium support customers.
> -----BEGIN PGP SIGNATURE-----
>
> iQJGBAEBCAAwFiEE3HAyZir4heL0fyQ/UnRmohynnm0FAmS3yhISHHRvbWFzQG9w
> ZW5zc2wub3JnAAoJEFJ0ZqIcp55tn1MP/3rGGOFg5XqhMW5hjzdH/u7wbZSQIBGr
> PwGCCYm8McrgHsmqvE5efo5QIxjNj09xS/6+h+WsWeXkAvuL37idzQ5FC8oAlop2
> XvjI0bJfCNQA8NcEFecWROHv9G7XEX7g+yV/yBUkT1CnuzqNjdnNeqBCIYafTE/x
> X4mZKaj/dJZTB/c8XI5foGZ9RklsO3QqrPt2DGhusP/u57ayghWLqv/7EyogDyeS
> 2FfB1yYsM0pmO7TjzrSlVhwPqAmsNGwOYVH8ggHGr9pRIbRQhrfKKVqn+o/5JLeR
> XXIXQGTiXhs0eDcO3N+kgWf0PXpuA5x03EZlrGOJoJLf0Gw6Mds8mjMD8s1RWJbD
> pogwwfGEavedW5WUH1f1W1cpoHqmSNwGrFIJJfZ0t1X4/z8/U6CipF6bCCjfEiFS
> ROzOkj44O8rXNwU4+ACxBx/E+PLpP0zhn9uJNTzBfMTonFNyWxuFwpVv3EIHrrq+
> YB/ccvbWXapejxIRHhrI41eA7tflZAPBNw8CwBfBRfQbJ+BOveKjGhaGfe3JUDiO
> Ry97AGuRGlSCkhUrW9Iy5qrNTnT6AFbdUDpip77UUQDn1eYusW5YtHsLiJpouFq+
> MPMn0B7mJypHjvDm4QeaUuJMaYHvcJtpRN684MXfBkcMsAldeYuwO0dl3E3HB5Dr
> uP4KAxS6q91M
> =3DsghT
> -----END PGP SIGNATURE-----
>
>

--=20
*Sandipan Roy*

Product Security Engineer, Product Security

Secure Engineering - Incident Response

Email: sandipan@redhat.com

PGP:0x4B5C7470051BB332 <https://bytehackr.fedorapeople.org/saroy.asc>

*secalert@redhat.com <secalert@redhat.com>* For Urgent Response.
<https://www.redhat.com/>

--00000000000018b3300600d6968d--

