Received: (qmail 30692 invoked by uid 550); 24 Jul 2022 18:18:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27903 invoked from network); 24 Jul 2022 18:10:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:mime-version:subject:date:references:to:in-reply-to:message-id;
        bh=ITmj1fYMjZin/3yAi5Lb9DzPWPmYeZk6yyhsDS1fLH4=;
        b=Vfa97UeXqQj0K6LMOv+OWB156DqzL9+U/kjT5Z8/vXzHqFKI3Nt9L3ZJUfvquKHXOt
         CvGRJXmQtYjWkRVIEVtTW6JQ9tZWxHDhQDT7VRwA3Rw26zoOWi1KEdRXvhSl2SvzExBb
         iVl2xOmbDUeF39gpTVxJh8xRpqd4Wh4gj/Jn+RYzc8xsED1hNSrVKYyMg/B+Br6c/WYn
         nrXjqKS7xb4JQie1mEF18p4CiTS6wt2uG34KsjCTOGRHddlgJ5OuTsTnc7ZEnfUQL+Vg
         hr/Xl4zvxijG5mwAi4YBjef/YtMtI8fA7O15j/aKFNjMLVKw0zRhLLaoxtue5+MMDgjr
         3o+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:mime-version:subject:date:references:to
         :in-reply-to:message-id;
        bh=ITmj1fYMjZin/3yAi5Lb9DzPWPmYeZk6yyhsDS1fLH4=;
        b=EQIDM7wMXKjsNhNpenkDY965BPn+R/wByCZ7OAG5w3HcbUXIKqCO3TUFfhEAWJwirt
         ZjEqkcErFKuSYL1ent+WppxVku9WT6NdZqzmAcE1YerYjX3SZe/scUHq/udYgeyqPo1R
         stpb6rjtVVmCC3kmH8VaNcYtehqrypaWc/EDoDt2goxvRuqtJqFJLo6jEmwQY0BCJr8G
         ed9DNkIx8EHG0c80VsnnaudLWiHVtv7+aox3Tc4khTKxJDnO4kyq8vBpza/uKnzn/kMZ
         Q6lntlgbZs5SHeFBV9nvQzgkuv6lGpDbRca4TwX4LtHwf/4ZYqFB9T7EwPr1AbqJVTJE
         8xDg==
X-Gm-Message-State: AJIora/48m7usSlUjgk40Bp5nJ+yRqW8wlZyKiYwvzIkjYbbvTSxbTel
	mhRwEfGqONJEVLqZdfm6QdEdTC87KGY=
X-Google-Smtp-Source: AGRyM1sK4v0NSsgY3TXS6Galdkuekkft4VF01/sEBrki2mkDBZ2rUEROchPFBB2ZQYFOW2T6T6NYlA==
X-Received: by 2002:a63:5618:0:b0:419:e1d8:2298 with SMTP id k24-20020a635618000000b00419e1d82298mr7858887pgb.429.1658686238238;
        Sun, 24 Jul 2022 11:10:38 -0700 (PDT)
From: Roxana Bradescu <roxxbee@gmail.com>
X-Google-Original-From: Roxana Bradescu <roxabee@chromium.org>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B37A87D6-4406-4B27-9A74-70825FB10E7D";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Date: Sun, 24 Jul 2022 11:10:35 -0700
References: <20220719001848.GA1516019@millbarge>
To: oss-security@lists.openwall.com
In-Reply-To: <20220719001848.GA1516019@millbarge>
Message-Id: <EEF3C292-40F0-4EF5-A4D8-3731FA2FE428@chromium.org>
X-Mailer: Apple Mail (2.3696.100.31)
Subject: Re: [oss-security] snowflakedb security contacts

--Apple-Mail=_B37A87D6-4406-4B27-9A74-70825FB10E7D
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1EF6E49B-2B54-47C1-88A0-1BC6E41690BA"


--Apple-Mail=_1EF6E49B-2B54-47C1-88A0-1BC6E41690BA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jul 18, 2022, at 5:18 PM, Seth Arnold <seth.arnold@canonical.com> wrot=
e:
>=20
> Hello, if anyone has friends or acquaintances at snowflakedb, please
> direct their attention to:
>=20
> https://github.com/snowflakedb/gosnowflake/issues/619
> "Please add a SECURITY.md file and security policy"
>=20
> I don't know if what I found is actually an issue but I'd like to give
> them a chance to see it privately before telling the whole world. I've
> not had much luck with the Usual Methods so far.
>=20
> Everyone else: *please* take five minutes to write down how you'd like
> people to report security issues. Some people subscribe to the "security
> bugs are just bugs, report them like any other" philosophy. Some people
> want a chance to look at potential security issues privately, first.
>=20
> Whatever you'd like, please just write it down someplace obvious.
>=20
> Thanks

Hi Seth, did you ever get a response from anyone at Snowflake?

Just in case you didn=E2=80=99t, Snowflake uses HackerOne for their vuln mg=
mt program so issues get reported to HackerOne directly (and this informati=
on belongs in a Security.md file)
https://hackerone.com/139c0e4f-5b34-470a-b81e-aa8740c3e66e/embedded_submiss=
ions/new <https://hackerone.com/139c0e4f-5b34-470a-b81e-aa8740c3e66e/embedd=
ed_submissions/new>

---
Regards, Roxana



--Apple-Mail=_1EF6E49B-2B54-47C1-88A0-1BC6E41690BA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; line-break: after-white-space;" class=3D""><div class=3D""><br class=
=3D""></div><div class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jul 18, 2022, at 5:18 PM, Seth Arnold &lt;<a href=3D"mailto:s=
eth.arnold@canonical.com" class=3D"">seth.arnold@canonical.com</a>&gt; wrot=
e:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div class=
=3D""><div class=3D"content-isolator__container">Hello, if anyone has frien=
ds or acquaintances at snowflakedb, please<br class=3D"">direct their atten=
tion to:<br class=3D""><br class=3D""><a href=3D"https://github.com/snowfla=
kedb/gosnowflake/issues/619" class=3D"">https://github.com/snowflakedb/gosn=
owflake/issues/619</a><br class=3D"">"Please add a SECURITY.md file and sec=
urity policy"<br class=3D""><br class=3D"">I don't know if what I found is =
actually an issue but I'd like to give<br class=3D"">them a chance to see i=
t privately before telling the whole world. I've<br class=3D"">not had much=
 luck with the Usual Methods so far.<br class=3D""><br class=3D"">Everyone =
else: *please* take five minutes to write down how you'd like<br class=3D""=
>people to report security issues. Some people subscribe to the "security<b=
r class=3D"">bugs are just bugs, report them like any other" philosophy. So=
me people<br class=3D"">want a chance to look at potential security issues =
privately, first.<br class=3D""><br class=3D"">Whatever you'd like, please =
just write it down someplace obvious.<br class=3D""><br class=3D"">Thanks<b=
r class=3D""></div></div></div></blockquote><br class=3D""></div><div><span=
 style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D"">Hi Se=
th, did you ever get a response from anyone at Snowflake?</span><div style=
=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D""><br class=
=3D""></div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" =
class=3D"">Just in case you didn=E2=80=99t, Snowflake uses HackerOne for th=
eir vuln mgmt program so issues get reported to HackerOne directly (and thi=
s information belongs in a Security.md file)</div><div style=3D"caret-color=
: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D""><a href=3D"https://hackero=
ne.com/139c0e4f-5b34-470a-b81e-aa8740c3e66e/embedded_submissions/new" class=
=3D"">https://hackerone.com/139c0e4f-5b34-470a-b81e-aa8740c3e66e/embedded_s=
ubmissions/new</a></div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb=
(0, 0, 0);" class=3D""><br class=3D""></div><div style=3D"caret-color: rgb(=
0, 0, 0); color: rgb(0, 0, 0);" class=3D"">---</div><div style=3D"caret-col=
or: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D"">Regards, Roxana</div><di=
v class=3D""><br class=3D""></div></div><br class=3D""></div></body></html>=

--Apple-Mail=_1EF6E49B-2B54-47C1-88A0-1BC6E41690BA--

--Apple-Mail=_B37A87D6-4406-4B27-9A74-70825FB10E7D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEgZzAKV63cJrecgABXEIiv89pXdUFAmLdixsACgkQXEIiv89p
XdXvKQ/+Nosw1J1U7xI63Z2U4kvZOeQPQCCSEW+dKhyicYoNp9WPXTNkbkZU1wsD
bYqzofp5du+SNVYE4/78vZnIWstcMmFAb/WSoo9YZoJlXr8+8Bmpz4kZS2yJiLJa
5oBO9pntSAiFVtMHUj57h8KwF/Sipwymk51QoagNRq0/NaW6/GGFQXgFrvjhiIB2
OUP4zUD4+RYNIwtiibE8U81HYk4LOF5zuSNdptcm8niQMQd/YvyL+MfqsuA6plo6
ApP93A0SbuORPilBnR6b1DIcSwcwnq3a0vLbDXqLWlQvSJ9FejMoAceCJ/yESgoN
PaaWTgthtyP7voWnXpefte+3dwCofV2AcupNfIruep2uyBZi3sOWyD6bdA12lvoG
znH5uJxfnkM1djjnOHiveU3ILWeNQYWD3OwLeVF5c4kkKcnlTX70kcam9AO5UFo3
/F8YokdlO3L93WnDRTrUo6s9caPc6w6EcAPjkfhTbgv/zaiI4EO+rJQB/ebOMLRJ
Q0qJ9J3pKLorTdjMHgQfIo134i/Ct/RorIZbX3M5vet+p99d+OyoF8xxVumQ+Y+Y
SU+fraI9zaR3qum08fkUyfzHMvNi8knSLgyIH0kzL2xsxJSjhsu5R3a5rvcY2tmX
aKLfEca0D2kBIdFrebrOJXAIwAieRUtBKUGA8Z8iMDqUpxZn/P0=
=ng+7
-----END PGP SIGNATURE-----

--Apple-Mail=_B37A87D6-4406-4B27-9A74-70825FB10E7D--
