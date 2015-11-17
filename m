X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2102" "Tuesday" "17" "November" "2015" "14:09:32" "-0500" "Daniel Micay" "danielmicay@gmail.com" "<564B7B6C.7090503@gmail.com>" "47" "Re: [oss-security] Re: Fwd: x86 ROP mitigation" nil nil nil "11" "2015111719:09:32" "[oss-security] Re: Fwd: x86 ROP mitigation" (number mark "U       danielmicay@ Nov 17   47/2102  " thread-indent "\"Re: [oss-security] Re: Fwd: x86 ROP mitigation\"\n") "<365956254.15394397.1447786639162.JavaMail.zimbra@redhat.com>" ("<20151117153951.GA28672@openwall.com>" "<564B52D6.9090205@t-online.de>" "<564B54BA.6090203@redhat.com>" "<564B6536.2030908@redhat.com>" "<564B7757.6080100@gmail.com>" "<365956254.15394397.1447786639162.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15733 invoked by uid 550); 17 Nov 2015 19:09:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15712 invoked from network); 17 Nov 2015 19:09:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type;
        bh=WANKVgcCii01Upg4M3h7PQawiNnNIX9NT09ZGusUEoQ=;
        b=wAG86/ExizpMC+j31ziE1SetCoozCPGS5MtGPUTturcIWyH+rTTJlnboLz9bR0gumh
         Y7vYuWBkHDgcy50K847SwjWCc41Sp2QxZPK06Q3erYBjFErpE5drFmcI42GpLjND6EpC
         3Zv5TxRHPf3y2GzhE95aIIH3px/gHXGAgncQ0OL9tDZFGUq/wNcxa/9PAZVjfAZusQ3W
         A7cG5R0v2PwAJopuZQqbzhBC56vgT2fdhxHvGyVlKTBod3LLt84ij1MdqHob2d/EK62o
         vGT2EVA8MdMYtsOFxOa5dA22JAmjjGZJqP1vNBAilAdf+yw0Nw8ErMj54kCWG9yEYVN1
         FYWA==
X-Received: by 10.141.6.69 with SMTP id i66mr4463211qhd.68.1447787377061;
        Tue, 17 Nov 2015 11:09:37 -0800 (PST)
To: oss-security@lists.openwall.com
References: <20151117153951.GA28672@openwall.com>
 <564B52D6.9090205@t-online.de> <564B54BA.6090203@redhat.com>
 <564B6536.2030908@redhat.com> <564B7757.6080100@gmail.com>
 <365956254.15394397.1447786639162.JavaMail.zimbra@redhat.com>
From: Daniel Micay <danielmicay@gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <564B7B6C.7090503@gmail.com>
Date: Tue, 17 Nov 2015 14:09:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <365956254.15394397.1447786639162.JavaMail.zimbra@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="ouaVgvBuCt6X1eFtiOSTIs8uspF8pOxAm"
Subject: Re: [oss-security] Re: Fwd: x86 ROP mitigation

--ouaVgvBuCt6X1eFtiOSTIs8uspF8pOxAm
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

> Why not both?
>=20
> Security is about layers, this is a nice place for a new security layer.

It needs to provide something meaningful to be a layer. There is a
performance and complexity budget too. Landing a security feature should
involve explaining the threat model and the plan to fully address it. It
can be a very narrow threat model, sure. SSP is an example of a feature
with *very* narrow threat model and a very high performance cost for
what it actually accomplishes and yet it's still quite useful (but it
could be replaced with something much better).

It's not going to be increasing the cost of exploit development if it
only means a script ends up finding different gadgets instead. Maybe it
leads to better tooling being developed if it's far enough along, but
that's one person investing their time once, not every exploit taking
more resources to develop. If it's incomplete, how is it a layer?


--ouaVgvBuCt6X1eFtiOSTIs8uspF8pOxAm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWS3tsAAoJEPnnEuWa9fIqCJcQAJGYYumDsx+n93mCpv9a8SAd
dgXyjLzwGegq9W1BJcVG12/WFk3y7fdcX7p62ZTG9O6RzFyXJ0eFaauSShK2cjT0
KXbScVYtPrMZnq817I4Af8TZZ/31p8F7W0LANGqrV/W8cg9K4T/btVuNRb4wLjAz
TKxVsusFGs1DCh+jyji15a1r1k7ezpzxU9msU1i8cFOhAGLU5kVraN2qfFr7JKJh
yLL5PSrLrAAOcZCsi9MQHNy/kSYyAdmeWjAjjRHFwUy/7NZUbYjSQAI5VMVYQT0X
0WMiVy2RV7MHaACyaspQLwDMjEm7575Oc8Qg/SO0ZLCLxjbmdTbKzEjI0+Kkkckb
kHFu/KJNNWFVnHGJA7EjBoFYMPe0vPbg31u8hvACGfCF6OOwnlMfT7yYr82ov28c
tP2diHU03dxKRnB4Kg1LILzJFoRZD90HgFUorIBLcXLyvXW4EIMsJycAp1SeSzF5
BeLfz0Xd9FVZnoly7WFmGAVEFwucPxSemMQHuRElss8fKh+8cMbwZTtsMCWFyehW
1fh5xmJ+2fldipN7GFASbpv6E5XNgu78kkSEci7/EUUojDNdLSo4ccm+iVA/53cL
fHoO9xlrghX/f/ZfHIfVXmBRBw1nV9/XKudgkA2J8erSMCEgQBmbCNxftlhwmfMf
10N+/gkrjBo9aG8q4Pvu
=D+Bj
-----END PGP SIGNATURE-----

--ouaVgvBuCt6X1eFtiOSTIs8uspF8pOxAm--
