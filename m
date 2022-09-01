Received: (qmail 1377 invoked by uid 550); 1 Sep 2022 10:36:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18106 invoked from network); 1 Sep 2022 03:01:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:in-reply-to:to:references:date:subject:mime-version:from
         :from:to:cc;
        bh=qiLW2AnqSbBSZ3KqzsqLJ7AT3Bt3Fa3yIHDvr0wbG4M=;
        b=Ph+cL7PqTVjKwuF5NblIogXZUxu7GW+P9f8/+xwzuKLreGnKW4fLIasb4/f3kqzoyi
         4aybWCTWzPnP86u3Bt+djUVkxGP8PSrJMCpRKJkG1NYHH0bQ3I9V4k4bokWSu06sCxHY
         ZahKexIy9E+PQrdv16FAuzWm1zAOqNORQHlAGiy6PyzD1/gWDvAz23TNq/swQ21fqViC
         wBVoQBGhoCkGWfT6nQd8+NO+Mep08S1sK74crouPlv5asS23WNcLEo/NlWsX+cXdiXMq
         86bkzHGsMMb7HEizmdqy4sY7VEIWQo4wS5i1ZLMexUzRcH9SioVFG4Pc+Ugv2AhmDWxX
         Jy0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:in-reply-to:to:references:date:subject:mime-version:from
         :x-gm-message-state:from:to:cc;
        bh=qiLW2AnqSbBSZ3KqzsqLJ7AT3Bt3Fa3yIHDvr0wbG4M=;
        b=4+wj1AjMtL66NxF6l/J/clzExgq9mdbTquPM/ntDS1yMs4qss95dEr/K9f5ct31cic
         nuWHobVB10p3bBV4m1FTyrQx+WQhl46QuKRkey8zgzyffKXVXeo7hjpaISvK0TdhNBPH
         rTBO8vYvMRvT9LhKShD+OZVh5HjTXJXIrbdct3oguErEibxFf4wEstUSIhS5PPL3AWYM
         MhJChirMDaqC4Jso/+u2Ary4T8aQqdI5WBv08Xu6xF8kwmmDduYWXhqeCXE4HN8D3mzT
         KDQHyHiIDQ2ebi2lZ9T+ewpJHieUG5JxH7QYFqeOceF+NTTtSER+OhTH27zbZIWaCJmt
         2btg==
X-Gm-Message-State: ACgBeo1h8rn+jMQkhjiyCmz3sq6Hi52187MVcsgaIekeDnVJsU7CWLBF
	+k1xTnJE6CYSoyd12hMMpTFRIQgX2Gk=
X-Google-Smtp-Source: AA6agR6rQorUoWSb5cFRcuxrAqMh7M6g0zQCpRgkAQ3t42Hke86U5HFs+wW3h+RLINW6oz28ev4PTA==
X-Received: by 2002:a63:5c42:0:b0:42b:452f:8e66 with SMTP id n2-20020a635c42000000b0042b452f8e66mr24656885pgm.323.1662001300661;
        Wed, 31 Aug 2022 20:01:40 -0700 (PDT)
From: Roxana Bradescu <roxxbee@gmail.com>
X-Google-Original-From: Roxana Bradescu <roxabee@chromium.org>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_EA8F1001-C3E3-413F-9803-6BBE777BE362";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Date: Wed, 31 Aug 2022 20:01:38 -0700
References: <7378c405-5150-ebea-b81d-74f32cff7516@lexfo.fr>
 <Yw5cq12s590/JbIJ@pisco.westfalen.local>
To: oss-security@lists.openwall.com
In-Reply-To: <Yw5cq12s590/JbIJ@pisco.westfalen.local>
Message-Id: <269D4AA0-E239-4314-ABD4-0DDCF71CEE35@chromium.org>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
Subject: Re: [oss-security] CVE-2022-31790 CVE-2022-31789: Watchguard
 XTM/Firebox firewalls: Multiple vulnerabilities

--Apple-Mail=_EA8F1001-C3E3-413F-9803-6BBE777BE362
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_82848D95-AF52-47B5-AC39-6E2FE9381723"


--Apple-Mail=_82848D95-AF52-47B5-AC39-6E2FE9381723
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On Aug 30, 2022, at 11:53 AM, Moritz M=C3=BChlenhoff <jmm@inutil.org> wro=
te:
>=20
> Charles Fol wrote:
>> Hello,
>>=20
>> While performing a red-team assessment we discovered a few vulnerabiliti=
es
>> on Watchguard firewalls of the XTM/Firebox brand:
>=20
> Why was this posted to oss-sec? These are proprietary network
> devices AFAICT?
>=20
> Cheers,
>        Moritz


Might want to post this to fulldisclosure@seclists.org <mailto:fulldisclosu=
re@seclists.org>

=E2=80=94
Regards, Roxana

--Apple-Mail=_82848D95-AF52-47B5-AC39-6E2FE9381723
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; line-break: after-white-space;" class=3D""><br class=3D""><div><br cl=
ass=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On Aug 30, 20=
22, at 11:53 AM, Moritz M=C3=BChlenhoff &lt;<a href=3D"mailto:jmm@inutil.or=
g" class=3D"">jmm@inutil.org</a>&gt; wrote:</div><br class=3D"Apple-interch=
ange-newline"><div class=3D""><div class=3D"">Charles Fol wrote:<br class=
=3D""><blockquote type=3D"cite" class=3D"">Hello,<br class=3D""><br class=
=3D"">While performing a red-team assessment we discovered a few vulnerabil=
ities<br class=3D"">on Watchguard firewalls of the XTM/Firebox brand:<br cl=
ass=3D""></blockquote><br class=3D"">Why was this posted to oss-sec? These =
are proprietary network<br class=3D"">devices AFAICT?<br class=3D""><br cla=
ss=3D"">Cheers,<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mo=
ritz<br class=3D""></div></div></blockquote></div><br class=3D""><div class=
=3D""><br class=3D""></div><div class=3D"">Might want to post this to&nbsp;=
<a href=3D"mailto:fulldisclosure@seclists.org" class=3D"">fulldisclosure@se=
clists.org</a>&nbsp;</div><div class=3D""><br class=3D""></div><div class=
=3D"">=E2=80=94</div><div class=3D"">Regards, Roxana</div></body></html>=

--Apple-Mail=_82848D95-AF52-47B5-AC39-6E2FE9381723--

--Apple-Mail=_EA8F1001-C3E3-413F-9803-6BBE777BE362
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEgZzAKV63cJrecgABXEIiv89pXdUFAmMQIJIACgkQXEIiv89p
XdWJ7w/8Diovq83J1p649IeYERo6Rq2PzTyUBhPN6UDXvHWVGRsvQ6F/s1VKpb3O
BIoYpes3Z+pYIIctalWmFkzPlvh2wCxzXwvmmtTYkYXNsej0tSjdyQkrANua9MW3
bm3EA2GC6nJTM7HXx3AlY+ay4f8aXpE67nGmQj34MxQIh8S+FG9p6Tp5Da26K5aR
A55qKMB0+1XJ3Rr6uqh9eLHCpoK8EhX4IrYJEStNkMxrtNNxMLH4OCuzyvF0DQOS
xJwv1I0j8X4L8yCSGKsEJLJsZKAA2Pp/1ShgjA5QXe13uN6E4Fu1ZEmnTEOKUIaE
dQhT0c3EqaQSGLONScTBY+IOItvLuZ51+IHGZm4/BAx9SQSaP/vv+8vvpZcdr1ZG
ud3mNF9TkGaJMmivoS6iR8A7u0ykKJk9QFmOmXEEnB6rbztt19GxdFK2AhwzQp9t
vGx7geU9xNUtr0W5Zco/1wedVP37QHYoipzShyfwF37HfINpsII7vxvkmcUUar6m
MgUBM/COFiDozINEL3cO/AEaGb4+w9E0BK1uHlk0/YedhcRrH4T5u6eCZABw5Bus
oJGZWF1b9tiLjgAYO3B30G9bA6DZ1ZKAAVhV0ysuvGgenw3FzUuNYDTaguSi7aGp
hlsOK1vPL0349H//79GnZkzadhoIwMM4sHpe9Bufxy3EBBGdSW0=
=5afB
-----END PGP SIGNATURE-----

--Apple-Mail=_EA8F1001-C3E3-413F-9803-6BBE777BE362--
