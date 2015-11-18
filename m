X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2566" "Tuesday" "17" "November" "2015" "21:17:59" "-0500" "Daniel Micay" "danielmicay@gmail.com" "<564BDFD7.90702@gmail.com>" "61" "Re: [oss-security] Re: Fwd: x86 ROP mitigation" nil nil nil "11" "2015111802:17:59" "[oss-security] Re: Fwd: x86 ROP mitigation" (number mark "U       danielmicay@ Nov 17   61/2566  " thread-indent "\"Re: [oss-security] Re: Fwd: x86 ROP mitigation\"\n") "<1637491389.15428660.1447791367866.JavaMail.zimbra@redhat.com>" ("<20151117153951.GA28672@openwall.com>" "<564B52D6.9090205@t-online.de>" "<564B54BA.6090203@redhat.com>" "<564B6536.2030908@redhat.com>" "<564B7757.6080100@gmail.com>" "<365956254.15394397.1447786639162.JavaMail.zimbra@redhat.com>" "<564B7B6C.7090503@gmail.com>" "<1637491389.15428660.1447791367866.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28548 invoked by uid 550); 18 Nov 2015 02:18:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28530 invoked from network); 18 Nov 2015 02:18:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type;
        bh=TNiZif3Jtf/gbbjpDrXZArW2u4HNejZpvx8Xbp/Le7g=;
        b=BQ5Oknz1daotfMxNpDmZF7aJAjawmZFm3fbH+oFMsiTmVTHmDAyEMKaHLkP9Pf5j1o
         lqjl661neMYQ5OGkVnOH8qNJZCYHJvT/BZ4rpy3x88zH0qSAfP82kQfqJyPxtTAmTxb3
         5B6hT/HIvkaynqOE5pTZT3z0s2Za95kxypm55JTqnYYQVJcm0YBZ0YewOyAEfu3mvkMw
         wi7T/EUaP43o3vr/b0KRkbT65MA5+4AH+oeTBD28EBN8KD/XkmhKrkdv8X69PmYR5nxe
         Ya5xBeTZFOMDKuaBj5JkoNcrwY3Udp0I4w/IsPj+6G9IcLYJuiZzl0S3aRCLWJiRqbLr
         Jrug==
X-Received: by 10.55.207.3 with SMTP id e3mr45120500qkj.32.1447813083931;
        Tue, 17 Nov 2015 18:18:03 -0800 (PST)
To: oss-security@lists.openwall.com
References: <20151117153951.GA28672@openwall.com>
 <564B52D6.9090205@t-online.de> <564B54BA.6090203@redhat.com>
 <564B6536.2030908@redhat.com> <564B7757.6080100@gmail.com>
 <365956254.15394397.1447786639162.JavaMail.zimbra@redhat.com>
 <564B7B6C.7090503@gmail.com>
 <1637491389.15428660.1447791367866.JavaMail.zimbra@redhat.com>
From: Daniel Micay <danielmicay@gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <564BDFD7.90702@gmail.com>
Date: Tue, 17 Nov 2015 21:17:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1637491389.15428660.1447791367866.JavaMail.zimbra@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="5X7FokgAlluRiptxb82NwxDleP6jpLnTK"
Subject: Re: [oss-security] Re: Fwd: x86 ROP mitigation

--5X7FokgAlluRiptxb82NwxDleP6jpLnTK
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

> It's the first step of a very long road.
>=20
> This attitude is quite pervasive across security people, and it's not a
> very good one. Just because the first iteration of a technology isn't
> perfect, or the ideas have room for improvement is no reason to go all
> negative.

It's not that it's not perfect. Rather, it's not useful yet. Perhaps it
will be useful down the road.

> Sometimes great ideas start out like this. If it's a bad idea, it won't
> stick around for long.

Sure, it might turn out well. But it would be one component in a much
larger set of changes and it's not clear what those would need to be.

It's not simply a matter of piling on more and more work until it is
actually useful. The problem and the scope of the solution actually
needs to be defined beforehand.

> There are few instances where doing nothing is better than doing
something.

Nothing is certainly better than something that's not useful... less
complexity means more easily maintained code and avoiding distractions
from meaningful features (which this could be, but there isn't a plan
laid out to make it one right now). There are existing examples of the
security features in GCC causing security issues. It's pretty scary that
-fstack-check could cause subtle memory corruption on ARM until recently
(fix is not in a release yet). That feature at least has a clear purpose
though.


--5X7FokgAlluRiptxb82NwxDleP6jpLnTK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWS9/aAAoJEPnnEuWa9fIqr60P/jDVZIqlqGdbAZOmbabI2Ad+
HDEefqgT8nrqNep7yzWa0vtMdZPAeCy+azTWsE3t6bFZbKWw/HA04DrlDV6ZA0VN
9Uqtl13Q3KGGSPMWdjajbYUO65nT743AV+6iJ88+ABz+2scRevK6Sy0uaQ1F0PT7
bKQkyZOpnyJXw4apd+B3BRaJLn+Byk9GUeEZ6nqr8wuWtEKMqT2CcYNVIu9Z8irb
d/BDtJPixyz9/f3Y0Qy+meErPSgXA60JDhpDPK6OMjdDVpjjdGxgiozlM+sZIJsf
+ztx7pExqsWOFoLB/Xrqy7P7f7HZU60DWLFGJSuX54Gir/tK6kPM6NmekCLqhj9L
xPeGu7MGAO0l00QCxoFUzICPovyasuyqirGBOzkbzN/pql5RKzFEX/ro+YZ9FCtD
0RtkinwxXHc9YLlrdh3QfbAZDugQg/9ezQNw63WlxIOHAvoFcgHojUZlHox/2Oof
o+m+kDVrdN0K48C31R8cpFvNOWG63/zapM80RxGGLrM4B8FkbnY3MdW/NUC4rCJL
5MJ1+56MTcdNx/cPmq0Bf/QHImEpqY11kYudBF+IzDYPD81x0k0MzV77NKrJAwTp
B5np4G9EeE5pmofeLYgporb4wDJqAWz43o/40N1RDKJain3YRh5y4JlYrmU8NNaj
H0nVsjIQ9eME+khYcPnV
=1kau
-----END PGP SIGNATURE-----

--5X7FokgAlluRiptxb82NwxDleP6jpLnTK--
