X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3046" "Monday" "6" "July" "2015" "14:17:53" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<559AC651.1010605@gmail.com>" "68" "Re: [oss-security] How serious is undefined behavior?" nil nil nil "7" "2015070618:17:53" "[oss-security] How serious is undefined behavior?" (number mark "        danielmicay@ Jul  6   68/3046  " thread-indent "\"Re: [oss-security] How serious is undefined behavior?\"\n") "<20150706181734.2b0288ca@pc1>" ("<20150706181734.2b0288ca@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5246 invoked by uid 550); 6 Jul 2015 18:18:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5173 invoked from network); 6 Jul 2015 18:18:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type;
        bh=Xq6Ld03+GoiT0vPSbGhybzrZ6rVS6VEopTq5674yLpk=;
        b=ND961qvNl6i+cTj9Jj/QUmQqVMMSUqeNCZ2my25X+qEnHEnjDfdK+NhaT4A1Mpbn2z
         AO/mAZ7SJvy+spoJHQ7aAZKBluQB+P1mk4UzSVb6L9MIIwZYNJAUBT5mA6e5xYISWktK
         HWCLE/nyDXuuK9hsu8Sj18Atdz+sDDEAGGHt9Nk3rsyYG5Uj456Ruv+t/b5FCFKns64i
         XfZsjQqVHwWZEzJnwXYCRWK7LKBxCh9G7LwY3rMZeXv3iV6yioSgGLutMjLbnxi3dLVh
         ZKop4VKvF6VIjRqn/jmKyDYXEVdvM8J1gOznq+77CGBhH53lT72vwS3RpseoUuL+NTEM
         ZgNw==
X-Received: by 10.107.41.146 with SMTP id p140mr303656iop.58.1436206680716;
        Mon, 06 Jul 2015 11:18:00 -0700 (PDT)
References: <20150706181734.2b0288ca@pc1>
X-Enigmail-Draft-Status: N1110
Message-ID: <559AC651.1010605@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <20150706181734.2b0288ca@pc1>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="f44I501hL2XB7NQkfSM8g0GqueIIWd116"
Date: Mon, 6 Jul 2015 14:17:53 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How serious is undefined behavior?
To: oss-security@lists.openwall.com

--f44I501hL2XB7NQkfSM8g0GqueIIWd116
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

It's a problem from a practical point of view too.

It can and does end up triggering dangerous compiler optimizations like
removing array bounds checks that are deemed impossible. It hasn't been
a huge problem in the past because compilers sucked at optimization and
it will usually slip by unnoticed.

A compiler removing a check like this would be correct, but it's a
trivial case so it will warn:

    if (index >=3D length) {
        INT_MAX + 1; // can be considered to be __builtin_unreachable()
        abort();
    }

It's a security bug even if it doesn't happen with a compiler today as
theoretical examples become practical ones when optimization passes get
smarter. The -fwrapv switch offers sane signed integer semantics as a
language extension so it's a lot less bad than most of the issues.

The consequences of signed integer overflow usually only mess around
with loops today because that's one of the few places where integer
range analysis is used (iteration count, etc.). It can assume loops will
terminate where it couldn't with -fwrapv and so on. It will cause more
problems as the optimization passes get better.

It's possible to make lots of concrete, scary examples that already
happen today but most are going to involve pointers: strict aliasing,
pointer arithmetic rules, NULL dereferences, __attribute__((nonnull)),
memcpy non-overlap guarantee, etc. There are -fno-strict-aliasing and
-fno-delete-null-pointer-checks, but nothing to deal with some of the
issues like pointer arithmetic.

I think it's important to note that ubsan / asan / tsan only catch a
subset of UB. There are lots of issues that will slip by but can
actually cause real world problems. For example, I don't think any of
the sanitizers will catch out-of-bounds pointer arithmetic even though
they perform LOTS of common optimizations based on the guarantee.


--f44I501hL2XB7NQkfSM8g0GqueIIWd116
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVmsZRAAoJEPnnEuWa9fIqWwsP/imOghjZn5rMJdzzqYOC0BJg
lDqQch4bPFFCDgvg25MwSuaS/sW5XmhlWBBJA0HBYuZrS1SRJY0kZicT4HNV7gp5
i1/AipQilIOA0vhDLbtWANWEhsDoiyP1w7NSE6nUwQzHLQQ2ow/rtzkVf1GOaCWt
JjlbtcQ3P0m266RLF74J/z6EBQXEVDyiqpA2Yv5QM0yG/FdcfPrixHYSwyu+tDck
pFK4I3q3rq3fgxbcz1r7AODU89PFkByNV5aXK6Rw4FxvrQh6T6+1fL6D3ZDPVP5V
7N+Vq6UKsWVjRsHllE24+GEjlVO78PUEKuyHjrwbzBkLjJKo1gVYO+/LlMpXhXKa
t3KYDQuE8+sovD7nBJx6ZX+3vKe2UcdskCdsgfVUZKrYLmA7FBbdmqtki+TIg9ci
AlHQyXM09gn/J5L8mLPljyLDJ6IchjET6XcWP2Ke/J5t5aGY11ENumedbKb27T7i
yeACJk3KgUB0WKfIOAq9jNlPdJJSeaxCsybet9BqDjnlDFobKmlUUiUpXcCqKUWD
yDZ8WLhmtTuv6ug+5dC/XnxUoZgYG9i+wJ//+2wpHlNUBQi5GPi8IbSKJPhqECD3
GvKKJicINUf66TtttVIANoU5hQJ2b6ofGJugYe8Ve/0mxWZ1meRQqCQbjF+Hsq5x
YG9aJi7ZfYSqrwXIWgDW
=LQ+6
-----END PGP SIGNATURE-----

--f44I501hL2XB7NQkfSM8g0GqueIIWd116--
