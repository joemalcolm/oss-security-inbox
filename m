X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3021" "Saturday" "30" "April" "2016" "20:33:59" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdT-4XY61ykApQ8nPBktGJG=9kF040EbqK3G68oqeaVBiQ@mail.gmail.com>" "87" "[oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with circular definitions" "^Cc:" nil nil "4" "2016043018:33:59" "[oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with circular definitions" (number mark "        gustavo.grie Apr 30   87/3021  " thread-indent "\"[oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with circular definitions\"\n") "<20160428164611.B328A3AE1A8@smtpvbsrv1.mitre.org>" ("<CACn5sdQuKknmR6bZHKM2-G0Yb+P7hnJe7NkdRQkFthMpN5thpw@mail.gmail.com>" "<20160428164611.B328A3AE1A8@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7771 invoked by uid 550); 30 Apr 2016 18:34:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7753 invoked from network); 30 Apr 2016 18:34:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=Xgzvjnu15EauFaVsODH93ZzAypXPjgKzGMaPE/dioy4=;
        b=g5VpG47D8Pu1J91QzKvIHKazzXKKX2xkoPQM8ZkZTMEq4WORhHMiZZp1r4tpPLNC4p
         GGoqIkUqej5HCEydUD2tLFhy3M/0Rw8mbVtaHZXLxde38I3yXO9ALkpTYlqJ3k1imw1H
         htTQ671G25NRB2wPc3hsdHS53PoA/Vkk/ZKNNK4W1wFA539WJRoL2pVlzWKnJWUHvqe+
         tA7zco/ihlMv4CwTzYHhh55OkcstjdI1xd3wx6GyuQJtQqkVYDBagIHNJVbukcSvHlSY
         oup4j+mwjSYwgqqmFrlgYHpM3ioJTgWDfqkhphmpD0Hf3Vptlf1MchkPlVyr05M09fnD
         cfog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=Xgzvjnu15EauFaVsODH93ZzAypXPjgKzGMaPE/dioy4=;
        b=IptDLT+uLfTYURRAum9vf4volbQW2OdOFzz54dBTF8wTzUQ4j/P93psrKiopwTo8fR
         eeMc/+jJH0s5b3ARWGx0CTvbVL3B1YgnsXdyk1aP05XIQKTVCo01r4NIYyH+Gyjgc1ol
         Z6leJ9KtM0zyAV/apVRlpmcnYRe5J9DkGTtYZHjYrCd0ZquL9KD7flhGYghTiyb8rSXM
         LzlWRo6TnlReNJElkjwmu8Dc9yRO0m8IwPlryq9uGEN/Lh881WA9VS/fgGteLSoxAupr
         iDe9Zn4P6e44sbIQdH4K7cCFaz6lob+P0LB2Acjrb+VL7FD7NDDGfY3xyML6zxPInumL
         +ptQ==
X-Gm-Message-State: AOPr4FWoVxJraezCtd4/xQZ7wNpwfFFCuSxcKR+9mEAWtMHxmVYOhsFGafpLdiZba2LYsu7x0PHsF7hvazsLpg==
MIME-Version: 1.0
X-Received: by 10.112.49.100 with SMTP id t4mr11651201lbn.105.1462041239825;
 Sat, 30 Apr 2016 11:33:59 -0700 (PDT)
In-Reply-To: <20160428164611.B328A3AE1A8@smtpvbsrv1.mitre.org>
References: <CACn5sdQuKknmR6bZHKM2-G0Yb+P7hnJe7NkdRQkFthMpN5thpw@mail.gmail.com>
	<20160428164611.B328A3AE1A8@smtpvbsrv1.mitre.org>
Message-ID: <CACn5sdT-4XY61ykApQ8nPBktGJG=9kF040EbqK3G68oqeaVBiQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1136c8c8bf32cf0531b80093
Cc: oss-security@lists.openwall.com
Date: Sat, 30 Apr 2016 20:33:59 +0200
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with circular definitions
To: cve-assign@mitre.org

--001a1136c8c8bf32cf0531b80093
Content-Type: text/plain; charset=UTF-8

2016-04-28 18:46 GMT+02:00 <cve-assign@mitre.org>:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > Two DoS in librsvg 2.40.2 parsing SVGs with circular definitions were
> found
> > (they will produce stack exhaustion). Other versions can be vulnerable
> too.
>
> > these issues are solved in the last git revision of librsvg2
>
> Probably the best we can reasonably do here is assign separate CVE IDs
> to the separate reproducers. Are there any other details that might
> enable a wider set of readers to use your report for risk management?
>


This version of librsvg is still deployed in Ubuntu (trusty) and Debian
(wheezy). Imagemagick is using librsvg2 so a vulnerability there can affect
even when you receive an untrusted image.  Also, Evolution was rendering
SVG attached images:

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=361540

(this bug is quite old and it is fixed, hopefully Evolution is not
rendering SVG images using librsvg now)



> 2.40.2 is apparently a version from late 2013. Is this related to
>
> https://git.gnome.org/browse/librsvg/commit/?id=8ee18b22ece0f869cb4e2e021c01138cbb8a0226
> (from 2015-02-06): "If a chain of paint servers, defined through the
> xlink:href attribute, has a cycle, then we would loop infinitely"?
>

Most likely yes. It is also related with CVE-2015-7558, which was fixed
here:

https://git.gnome.org/browse/librsvg/commit/?id=a51919f7e1ca9c535390a746fbf6e28c8402dc61

The only way to know for sure is to use git-bisect. I can only advise to
upgrade to 2.40.15 where all these issues are solved.


>
> > They affect the following functions:
>
> > * rsvg_cairo_pop_discrete_layer - rsvg_cairo_pop_render_stack -
> > rsvg_cairo_generate_mask: reproducible using circular-1.svg
>
> Use CVE-2016-4347.
>
>
> > * _rsvg_css_normalize_font_size: reproducible using circular-2.svg
>
> Use CVE-2016-4348.
>
> - --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJXIj3tAAoJEHb/MwWLVhi28asP/ind5vax8Ln+o2RusWj8E+LS
> Q/R1pAJgj20Duo6s23zx/iWicsyTudMMdeBQwhnpPbnDOvUtVUqn5jjtD2xTZkBG
> zKdKNw3QpJYYC4BSaNp3r+VVEuIlWiNlXYfmWu8hThzgRJL8HjQhQd9sE/WcA6xo
> XX5639p6TRA5leTIXPWHaQ8HxB/9cSufkTZ2nH4WTBJcwh45iKVczsPAh1nuabnF
> FmghWc83c9woO4ImKdDa+/wF/yaO2asrztAedtxCNDQQZTxZRtU7e/IcIbdW9VNU
> VM41OImZG8k8JzO0r7/Bg2XnRuVUvoJdK0pRNnS0LPfzDX38HCWlKZnKKFJkZjTT
> vQ+sErtM+I33NR+hc4o2wsMnzL8L0oln4q1zYepu0SLZaPTwDN6L6X/Gz1gKL4Zi
> Uxowp0OF+8nknnVlhnySHcOGr5tfjT+Q1RdtUmZie0vW+5m9iPubBUHFBLuC6GYF
> 5rp4JqaDFxHUVwX+gXz+jT8+O489ASVlb6NS2bPoC2K/aUl6MYcQygeIZky0GfdP
> 9OKoYWrUq2JUkzQMhI9FML0F64Pt4blZksSQ5tHa24xxMCRl/nkR4OEPIg/eMW1f
> D6hr+/mR9saLzv8pao0Qf+k+Kuig2R+7F8be673J8QXcowJX5/tHYQWbS7Ai0CAI
> v7jIqoYfMx9CP7ccozvg
> =hvLp
> -----END PGP SIGNATURE-----
>

--001a1136c8c8bf32cf0531b80093--
