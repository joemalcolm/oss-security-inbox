X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2282" "Wednesday" "17" "February" "2016" "22:03:59" "-0500" "Daniel Micay" "danielmicay@gmail.com" "<1455764639.23773.4.camel@gmail.com>" "54" "Re: [oss-security] Address Sanitizer local root" "^Date:" nil nil "2" "2016021803:03:59" "[oss-security] Address Sanitizer local root" (number mark "        danielmicay@ Feb 17   54/2282  " thread-indent "\"Re: [oss-security] Address Sanitizer local root\"\n") "<CAGQ9bdw_kcv84s+mzevpBnNfhTN9idGRf_JJM7Tw8jk5Jsji_Q@mail.gmail.com>" ("<20160217221921.GB24130@port70.net>" "<CAGQ9bdw_kcv84s+mzevpBnNfhTN9idGRf_JJM7Tw8jk5Jsji_Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19834 invoked by uid 550); 18 Feb 2016 03:04:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19813 invoked from network); 18 Feb 2016 03:04:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:date:in-reply-to:references:content-type
         :mime-version;
        bh=g9ETvpDoxzV4LKVYbIa18lPAUmq2WZVxMQyXLcaAqpg=;
        b=qyufhp46TzlEgF7iQL8Td3NIVyRCZD2DKY8d3hEVcaltZ7Li/iEvM4Y6xRJb9o9Dce
         opoKjETUrEi9Zfjox5P/Kb7JI3Vx1lkOqtTUBNScvJ4RQk7uc/eCwFl5MbS+MXDcAJiR
         jLE/R6BjSDrNlQ3K4n89/S1MWcCsdimroXphIgMwlK3cP5SocBypDb/nou0OS9qDeStn
         KcShQDuNhESQmYRy8lL/8Ja+enK+QHt0WWqkH9yfZ0cMJ3xDDQkxzfWIhXOCmZGuPQX8
         IqKLRxRzN4XJ1BdT+BusI52L/KWMF7813cEzAtaL3FBja1V8kPY3T2xRrGXjHifD4GCc
         2z7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-type:mime-version;
        bh=g9ETvpDoxzV4LKVYbIa18lPAUmq2WZVxMQyXLcaAqpg=;
        b=HuugSdGuej/evDAclSU4sfs0jlEW9Sv3eVKPqo2cszl5RjZyLLc6BRKBbOdp/F8b2b
         rqzChMXl2SJ/0K4SpNx4xDagcxWzO1MAyTzPldrN2wPtxaeb5PP+P+ljCe+SlXJIKjPM
         UFRqT9/jlMY29OASRFUk4lGRhclQrP7sXNddhnHXDkL+K2pjbjB3Cf1RkUYJzNLIZvM3
         A9sEFRF1VB0plLM6nIccQR/eXbw6iqDX7/MG9EFZwvbTqBi0FsQ6eQgu1eW6Djefv2Vj
         USZ6uvXuquETKI50j429vFBY+sR31GMCgeE93XymWQ7SiaMWHwlNdd6wqM2K/8YQ7w/W
         D14A==
X-Gm-Message-State: AG10YORUisPt3g3571ocHdc9D/QOx3tXQGxf1vkh9xOMitaRTc4+qZY7nrwWxXiaJWiATw==
X-Received: by 10.140.232.211 with SMTP id d202mr6512042qhc.27.1455764647571;
        Wed, 17 Feb 2016 19:04:07 -0800 (PST)
Message-ID: <1455764639.23773.4.camel@gmail.com>
In-Reply-To: <CAGQ9bdw_kcv84s+mzevpBnNfhTN9idGRf_JJM7Tw8jk5Jsji_Q@mail.gmail.com>
References: <20160217221921.GB24130@port70.net>
	 <CAGQ9bdw_kcv84s+mzevpBnNfhTN9idGRf_JJM7Tw8jk5Jsji_Q@mail.gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-jBUrwNKKjx5Ixs4MBbsS"
X-Mailer: Evolution 3.18.5 
Mime-Version: 1.0
Date: Wed, 17 Feb 2016 22:03:59 -0500
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Address Sanitizer local root
To: oss-security@lists.openwall.com

--=-jBUrwNKKjx5Ixs4MBbsS
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2016-02-17 at 17:24 -0800, Konstantin Serebryany wrote:
> Sadly MPX is too slow, too memory-hungry, and does not protect from
> use-after-free at all.

MPX is definitely problematic (performance, memory usage, false
positives with some atomic data structures, false positives without
using it everywhere - essentially a new ABI) but I don't think the lack
of coverage for lifetime issues is a major issue.

The malloc implementation can do a good job at mitigating lifetime
issues though. It can't detect 100% of UAF issues, but it can force
usage of pointers to fault (via proper junk filling) and detect write
after free via a comparable quarantine technique + validating that the
junk data is unaltered when allocations leave the quarantine. It can be
just as good at detecting double-free.

See the follow-up email:

http://www.openwall.com/lists/oss-security/2016/02/18/3

It's extremely painful to actually debug the aborts and faults produced
from this kind of hardening, so it doesn't really displace ASan at all
even for the bits where it can be as reliable, and it doesn't cover the
read-after-free case in the same way.=

--=-jBUrwNKKjx5Ixs4MBbsS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWxTSfAAoJEPnnEuWa9fIqFkAP/3soKwiBsanRSJKP0lxJqk0A
ZI1hPDuzqUoVMf9jUaX9zpJpFNskwmwaeaPoV9Ul5SzWc5jaX8Cy5AOBPqYazxF/
QMtOQQEEIVFTkPqQt2usJ1r1aT/BF2AyMNa3SqpWu/Y/JuDHnhtQVOgpsHKLq2px
AeC0d3EQ4haV268wEwLWfXHdS/oKcRq/w7EnNhv1A0tPaz6Amo8Me7+sjjmBRkLd
4zVxqvahT2iYva3DzGiHoMT5QeCne2h1MB6tdFfwBoWvlGpePfqg0isk6jYRxpN4
U3LB4TGYP2MDx3deoPZdoq39CB38Z9a9f5fRxHyejiGhdhuMmwjmILjZgGIuaGR8
0c2CL2De1lNVrD4vxl/MmvM78adsCq+9HSP7onIDCtfu2fEV4QbV8U6vwabDvJes
T5CaWQ5onA6+QMHSXc1WABN+ZhpaBHAaxVok9yeJ+l1btWqFPA4awqcqjIqT0F1E
FQ8o2PHY5CNVkXs7Lq6sYFzyYQjeDDeRvmrNj+PoqW0FZTk2eVCEk9NKToBLqSBg
F+6tsN8ggWF9okBXCF/bmw7Y92ub1lIhA19B6hKdwpgJsfo6RsbCvHpFBNROLHqE
tt2A+QHqXlSald5BCnQ78fT4nNou8kkY0hl1hSr769XI5br4b5x/61/cxQQpPzUn
iEQpRiylTHV6zJJNM69R
=fHk4
-----END PGP SIGNATURE-----

--=-jBUrwNKKjx5Ixs4MBbsS--

