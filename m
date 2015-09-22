X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3202" "Tuesday" "22" "September" "2015" "17:31:03" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<5601C897.3080002@gmail.com>" "72" "Re: [oss-security] Samsung S4 (GT-I9500) multiple kernel vulnerabilities" nil nil nil "9" "2015092221:31:03" "[oss-security] Samsung S4 (GT-I9500) multiple kernel vulnerabilities" (number mark "        danielmicay@ Sep 22   72/3202  " thread-indent "\"Re: [oss-security] Samsung S4 (GT-I9500) multiple kernel vulnerabilities\"\n") "<56011463.9060705@redhat.com>" ("<55FFC9BD.6030503@quarkslab.com>" "<5600451D.5060404@gmail.com>" "<56005039.1040701@gmail.com>" "<56011463.9060705@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22341 invoked by uid 550); 22 Sep 2015 21:31:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22320 invoked from network); 22 Sep 2015 21:31:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type;
        bh=9cL3ggpfAaLrrXjmo86bxNjXnJzPKQ+N29GMKdDVvuI=;
        b=BwRuCTN0cBzciYcpyiJrI05THMhPOrqZ4BzqBHmdUed8jQJpntkUOm0aA6tbXDC43R
         0k65YCXj+KTqsxxdnRoEpeKxb9HLMyAyGHNDewG1fCReAScm1iR+Sp2lS3pbLUslXlmS
         lkrPivFJh4pp6/hl2Qe4RyVUV8BVeB+CosHa364WsK4S4PPylaUbbKhg/mc5gYXqmpUz
         CeqN+zXPaBnJZ9Tkoli4L0e6PoJs6Aji5gkTfCU3rL+2AZF3a6g0uzy0m4ZDSbKLFgRm
         hYEzNcw5bsdaH8iNNa6wdSZRqcTXIpQR7z5iTZXrSeo7xfMo+QqXjjkKERCTS8ARqtYr
         ljhw==
X-Received: by 10.50.134.69 with SMTP id pi5mr20065917igb.69.1442957467718;
        Tue, 22 Sep 2015 14:31:07 -0700 (PDT)
References: <55FFC9BD.6030503@quarkslab.com> <5600451D.5060404@gmail.com>
 <56005039.1040701@gmail.com> <56011463.9060705@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <5601C897.3080002@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <56011463.9060705@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Uustd3PXnuteliCjJrQDm04t8I1BHnu5h"
Date: Tue, 22 Sep 2015 17:31:03 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Samsung S4 (GT-I9500) multiple kernel
 vulnerabilities
To: oss-security@lists.openwall.com

--Uustd3PXnuteliCjJrQDm04t8I1BHnu5h
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 22/09/15 04:42 AM, Florian Weimer wrote:
> On 09/21/2015 08:45 PM, Daniel Micay wrote:
>>> CVE-2015-1800 is prevented by the STRUCTLEAK GCC plugin.
>>
>> So I'm wrong about this part, as pipacs pointed out the __user marking
>> is missing here, so it won't memset it in this case.
>>
>> The missing __user would be found by upstream's sparse tool or the PaX
>> checker plugin though.
>>
>> The STRUCTLEAK plugin could also be extended to zero based on the
>> copy_*_user calls, but that's probably not very useful since the missing
>> __user markings could just be found via the existing tooling and fixed.
>=20
> Did you measure the performance impact of initializing *all* local
> variables to zero?  If the variable is not addressible (that is, if it
> is an SSA_NAME), this is essentially free.
>=20
> In our testing, we only saw a performance loss in socket address
> handling, where a large placeholder struct is allocated, and the
> performance loss is quite noticeable when processing small packets.
> Unfortunately, this is were information disclosure happens in the past,
> so excluding this very spot for performance reasons is not very satisfyin=
g.
>=20
> The GCC patch we used is here:
>=20
> <https://gcc.gnu.org/ml/gcc-patches/2014-06/msg00615.html>

I haven't measured it, but I've considered trying it. The kernel tries
to keep stack usage very low so it seems like it wouldn't usually hurt
performance much, but that doesn't really hold up when functions are
called repeatedly. It can probably optimize out the zeroing in many
cases where it's not just an SSA value as long as everything is
initialized but padding will mess with that.

FWIW, spender posted a tiny patch extending the STRUCTLEAK plugin to
cover all structs declared in headers with 'uapi' in the name, which
should be most of the ones passed to userspace, although not in this 3.4
kernel for the S4 because it predates the uapi split. Might still be
useful to have the plugin trace back from copy_*_user but that's more
effort.


--Uustd3PXnuteliCjJrQDm04t8I1BHnu5h
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWAciaAAoJEPnnEuWa9fIqFYIP/izGbPr+p5+37I6U3meNGulY
J+qhqpFll0tBoAL1xC6thpV+JROGwRIoJGG0nlyizg1ONqOOSkELiOi5ksFhd/ZC
qUa1VbIYClhICvgWuIST00/vlwu1ojcIN2FncFxyuGYtuki5TPUoaldjFeLCJUNz
FDGyOmCtS9oGDdfgGgl2xr3HwwUB3pRgWsL6QFkGQarF0gDEmfHgCR5aItZH3uTu
9kx8OAZcdcWUm9ppHThsQZpwPmXDd8oFP9SjsVdnoWTT2ONpG1T9E9FIX1Adlsyh
NVY+DpLhC+GoFgcPqrkVUAxUQpTAqQeHqcVanmTDe1/1QgqVQtTbqP4/gwBU8w1r
/rgi0M73Z+Ww6cZ3GixYw1gjWoJ82Ibs3Vi9sWdIHcrK8WaBAgqqr98ytIpXuok1
vvSOGoBRX6DD+xpjNU+Borb9eQrxDr6R7l+1O+/kbzSyGgtAXS8tSaj3qiaPYEi+
g3XQAIrGIyQ5Q3EgibjGBywFLRMaDxyF3dYBYQNhXenOQAo6UEkhgRTe8gbKBRMm
/tXVtkB+4tQeZbQUJSR7456JdmrYRLAkcYt+oSGX/uGjKqqUy9edsiT9lWeE4f9z
77wYFNLh8eWcjmRG/jtiAdI/6lwnTxlnCgOvnTfF9jDyr5eiBrZUxinVRkKL0P10
v4x+5wV25k0ERxCbT9+a
=k5f5
-----END PGP SIGNATURE-----

--Uustd3PXnuteliCjJrQDm04t8I1BHnu5h--
