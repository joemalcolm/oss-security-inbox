X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2353" "Friday" "19" "February" "2016" "16:13:23" "-0500" "Daniel Micay" "danielmicay@gmail.com" "<1455916403.769.9.camel@gmail.com>" "51" "Re: [oss-security] Address Sanitizer local root" "^Date:" nil nil "2" "2016021921:13:23" "[oss-security] Address Sanitizer local root" (number mark "        danielmicay@ Feb 19   51/2353  " thread-indent "\"Re: [oss-security] Address Sanitizer local root\"\n") "<20160219201103.GI9349@brightrain.aerifal.cx>" ("<20160217221921.GB24130@port70.net>" "<CAGQ9bdw_kcv84s+mzevpBnNfhTN9idGRf_JJM7Tw8jk5Jsji_Q@mail.gmail.com>" "<1455764639.23773.4.camel@gmail.com>" "<20160219201103.GI9349@brightrain.aerifal.cx>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27943 invoked by uid 550); 19 Feb 2016 21:13:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27921 invoked from network); 19 Feb 2016 21:13:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:date:in-reply-to:references:content-type
         :mime-version;
        bh=3ryEdEEw5yzLKfCu3h3cpxHfSN9+Mw0Cxznn+JC3UEQ=;
        b=HracHfBZaDz9fjY2yUw2L8RFBSyh8NjtjkqhTkEmlhvkDrbNnklH9J/0oO5Yqtkw2c
         QqbjrGuoGAQ/zSQl42m7jw/gbUMj4IXk25J6oD/euw/Vn7P0saZ0hhV882dgXgY34Phn
         hlriN0MY9Sjt7RHtXt99C3+Bv88s+Fg4EA8RPr6RO2MaGWKkVaQESTkX/WOZKHpl1FSt
         B7+4lH8xgPe4uFSsS4VNyc0eRaUQIoaJZW55gwHh4xr/hk5nrLksWqiIFAs3W2ZgEQBh
         LsWhX0GF3kSEsY90xnBGZVRzLUfKPXy+gprPebzqBdUl4zdD+fBPJMdTPq1dWWo4n0Vr
         1X0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-type:mime-version;
        bh=3ryEdEEw5yzLKfCu3h3cpxHfSN9+Mw0Cxznn+JC3UEQ=;
        b=jrlsZx0cLjt0UIIvxFRdzG8FHiIiAwGtKxKMj3+P2wp07ErctrUHKsZJRmhAUHtOt9
         7wTDv077qdaiOgMxljt4xRJEm9cr1XKD3XSMpV05BWVR2NOTPgW7bGA3wjf0gIzhQIAy
         pInXNf7Wch3meMMnw2GXx0z/TJYvu5t9Dp9ol0nVXylLRjfL/5GhCEFbpOKfXYEMwkfN
         rORWQl+gdpa6GlVbmDmDrQJnE92DDEiE3oPSvzfuVekoikaZwTr0zYQ8B7QwV5CRoLby
         VX6mdfGfpSdZzfu0Uln08BFilPATv6Y0tfrqqYhGgBbaJqxYNLGyaw2TwWeksyw3dzNT
         WNrw==
X-Gm-Message-State: AG10YOT7vEIaSzLsM1oveIBz/i0m6P/HsLbATbFlII0VOZDZcq6kbJxUouJ/acD2pVNWAA==
X-Received: by 10.55.201.84 with SMTP id q81mr18375044qki.99.1455916410040;
        Fri, 19 Feb 2016 13:13:30 -0800 (PST)
Message-ID: <1455916403.769.9.camel@gmail.com>
In-Reply-To: <20160219201103.GI9349@brightrain.aerifal.cx>
References: <20160217221921.GB24130@port70.net>
	 <CAGQ9bdw_kcv84s+mzevpBnNfhTN9idGRf_JJM7Tw8jk5Jsji_Q@mail.gmail.com>
	 <1455764639.23773.4.camel@gmail.com>
	 <20160219201103.GI9349@brightrain.aerifal.cx>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-WSrusPdXethXks0UYZiP"
X-Mailer: Evolution 3.18.5 
Mime-Version: 1.0
Date: Fri, 19 Feb 2016 16:13:23 -0500
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Address Sanitizer local root
To: oss-security@lists.openwall.com

--=-WSrusPdXethXks0UYZiP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> As long as the aborts/faults happen at the earliest point where the
> wrong program behavior can be detected, I see no way they are "more
> painful to debug" than having ASan or similar introspectively print
> crash info. Attaching a debugger should get you equally useful
> information.

The aborts and faults tend to happen later than the ASan detection would
kick in though, other than the double-free case. For example, writes to
freed memory only get detected when the junk data is validated later on
(i.e. when an allocation is flushed from the FIFO quarantine), and it
can be quite hard to debug from there. Use of freed memory often crashes
right away with junk filling (pointer accesses) but it can end up
causing subtler issues or crashes far away from the source.

It's much easier to find the bugs than it would be without this, but if
your goal is implementing hardening features, it's not very fun to need
hundreds of fixes for use-after-frees across common software. It makes
sense to go at it with ASan or Valgrind first to clear out the obvious
problems and then worry about exploit mitigations. A surprising amount
of software has all kinds of memory corruption in the *common* code
paths.=

--=-WSrusPdXethXks0UYZiP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWx4V0AAoJEPnnEuWa9fIqbF0P/3xDUDUdJkneEWQD6m0DII79
pjnd8TlLzIw7ZEiRekmHek7J8UIpU/whxOo5NIIkeKP+vgNeEHd/JDDFZL74eAWV
lwT8OddmFIHqhVzHaK8vN4BDjSz/JmLYFQd9qRa0mDaZjbgVNWCUsDTVbCAoL1/j
nCZuN2qQMw1bAbZ6C7jEm9eZ67m6kdd4cv7Guy2vvfQu9sdJKmS87zoJD2jcGjzH
EZW5FJLVAFE/Lc5Kc2cDvadlCIp+hHB+Sb+yAEyBestqXdesuaq3xFgABZXrXun8
+0mtnx7W7/DbKH0SKcvPGqbKCYTjtMiHPt4N31JMA6vDvB5pbK1zPJOEuTjzbWLl
GgV0hOtf/VvvS9IVWEazUJYAvDubpKLrl7d5JwxhehXna0SFxJsZgGTkfM0SKspE
jmE4XLtYtwpCAkDIetR6sg5mkZo9amBkyuR612SRa9BFsIakpNQZU109PZgWLy+O
i+Fu2ivJk8/9kxbMpLRa1zUJTfdpy7QUtZtAoCvMMGUl5XgTnhXCNJZICTEKiNYw
+fjd+4ld3PSZL3eKQO+NU19MnGWJkKXQ93f6geJYTJJWCf0TrdDDnybHHj2fRXMO
/CeOQg/s8oY4DqwUpeY1FDdEEyFolPw2Q5iX+eV5g9zRSmYqF7SiDpLjtwOW8TRU
DY3Gb67KY+9rRd5zQyD5
=L/QU
-----END PGP SIGNATURE-----

--=-WSrusPdXethXks0UYZiP--

