X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8597" "Wednesday" "10" "May" "2017" "10:59:34" "-0500" "Brandon Perry" "bperry.volatile@gmail.com" "<F9830DA3-7A0E-494D-B755-C0EDEEBC6132@gmail.com>" "169" "[oss-security] Re: Numerous FreeTDS crashes fixed on master" nil nil nil "5" "2017051015:59:34" "[oss-security] Re: Numerous FreeTDS crashes fixed on master" (number mark "U       bperry.volat May 10  169/8597  " thread-indent "\"[oss-security] Re: Numerous FreeTDS crashes fixed on master\"\n") "<B1C068C5-DD6F-406D-BA2D-C6F685416F7C@gmail.com>" ("<B1C068C5-DD6F-406D-BA2D-C6F685416F7C@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32002 invoked by uid 550); 10 May 2017 15:59:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31972 invoked from network); 10 May 2017 15:59:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:date:references:to:in-reply-to:message-id;
        bh=zjHWENnyq/aFqHoNPunP38o3KXxbPt6k8BE5aheK8Ys=;
        b=X0lJDaSgGquMzoc8EMFpghKBHW1lAGGCJ0Cbrj1W2PtPlkERCTbHFy2EE+zG4WqEW+
         yPSetV3ZkBHeeiVWXVhHHtCrZ4iKjwpy7gC3aEC1Bb+O1sA6klULWJ4T3D+qrWYAYrJa
         pzaG4uPvVhos5gW5JbfkEzOuLxFU9trchswQAjLXE2dqWwDISs5R4Kg/bC71v56Qe6oL
         3CA1iPWG76PTnVaWbbPt//YJVMsQdZxe7Qg9o7zMV8JIeuctbDWm2WyoaC0bQI/dwx82
         002YepJ19U/Htx6y7lOdVFPAEbRTLvIaQbYW/hSBYvRTB5bbKqp1vvnFYH0C12HZCkgs
         1hZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:date:references:to
         :in-reply-to:message-id;
        bh=zjHWENnyq/aFqHoNPunP38o3KXxbPt6k8BE5aheK8Ys=;
        b=Nq2cSD8shD+52LCGsqR9ntRLNgkYe+naAKbOlc5LbaJ+gpNnP+O19CXYrbQxsqez4d
         Z39QVW31OMoc6PlzgxwOAG49VqLZ9zSYPtthki7A6doI+53yEAjslxdMo9zWb2FQlBJK
         Lm8L/NuxWbww0M0C7zDB9g0vSGCQf0nNMzTCJS5O2gI2Gp+gbHcWiIDIPyiixr4ZEoWp
         mULLVauRFsGBVJXr0AgfMlK2TOvUTv1mZ3hJ0NbRHW4ys5QE3pHniOXcO7l2GGuJ+PWX
         JClx0g+TNAYtWavygVyMSElKeLm34dLSv6+nLi3PAMpHpEofu+sxnmlo6H3hzVuXee1b
         QYbw==
X-Gm-Message-State: AODbwcDtDt1aUyxXDkUtlhdZoGmsw15wAYLtBmQpGDI2ESOfGsd1PWUF
	nrUryIWYkrxUlA==
X-Received: by 10.157.82.87 with SMTP id q23mr2666371otg.52.1494431982527;
        Wed, 10 May 2017 08:59:42 -0700 (PDT)
From: Brandon Perry <bperry.volatile@gmail.com>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_12511F7A-B029-40C3-96C2-3A3919E22472";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 10 May 2017 10:59:34 -0500
References: <B1C068C5-DD6F-406D-BA2D-C6F685416F7C@gmail.com>
To: fulldisclosure@seclists.org,
 oss-security@lists.openwall.com
In-Reply-To: <B1C068C5-DD6F-406D-BA2D-C6F685416F7C@gmail.com>
Message-Id: <F9830DA3-7A0E-494D-B755-C0EDEEBC6132@gmail.com>
X-Mailer: Apple Mail (2.3273)
Subject: [oss-security] Re: Numerous FreeTDS crashes fixed on master

--Apple-Mail=_12511F7A-B029-40C3-96C2-3A3919E22472
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_DD563355-1A5B-420E-9E76-3E6CDDB98FEF"


--Apple-Mail=_DD563355-1A5B-420E-9E76-3E6CDDB98FEF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I was asked what software this affects.

PHP - http://www.freetds.org/userguide/php.htm <http://www.freetds.org/user=
guide/php.htm>
Perl DBI - http://www.peppler.org/freeware/dbd-sybase.html <http://www.pepp=
ler.org/freeware/dbd-sybase.html>
Ruby DBI w/ Sybase - http://stackoverflow.com/questions/721960/connecting-t=
o-sql-server-with-activerecord <http://stackoverflow.com/questions/721960/c=
onnecting-to-sql-server-with-activerecord>
Python-Sybase - http://python-sybase.sourceforge.net/index.html <http://pyt=
hon-sybase.sourceforge.net/index.html>

Other languages have less-official bindings.

Go - https://github.com/minus5/gofreetds <https://github.com/minus5/gofreet=
ds>
Erlang - http://arcusfelis.github.io/blog/2012/07/02/odbc/ <http://arcusfel=
is.github.io/blog/2012/07/02/odbc/>
R - http://eriqande.github.io/2014/12/19/setting-up-rodbc.html <http://eriq=
ande.github.io/2014/12/19/setting-up-rodbc.html>


Also, obviously the tsql binary if used to connect to an untrusted MSSQL/Sy=
base server.

> On May 9, 2017, at 9:34 AM, Brandon Perry <bperry.volatile@gmail.com> wro=
te:
>=20
> Attached is a zip file of reported TDS streams that cause segmentation fa=
ults in the FreeTDS library. The =E2=80=98tsql=E2=80=99 binary was used for=
 the fuzzing, so these most likely only affect client-side functionality. T=
hese have been resolved on master and the 1.0 branch.
>=20
> Also included in the zip file is a bucket.txt, a crashwalk db dump detail=
ing the crashes for the files in the zip file.
>=20
> You can find the bucket.txt itself in the following Github gist as well. =
No CVE=E2=80=99s have been requested.
>=20
> https://gist.github.com/brandonprry/bfb0e58682d464e2d2d319644790bdf5 <htt=
ps://gist.github.com/brandonprry/bfb0e58682d464e2d2d319644790bdf5>
>=20
> To test, you can compile FreeTDS, then use preeny to redirect network IO =
to stdin/stdout.
>=20
> export LD_PRELOAD=3D~/preeny/x86_64-linux-gnu/desock.so
> unzip freetds_crashed.zip
> cd rpt
> for i in id*; do valgrind ~/freetds/build/src/apps/tsql -S 127.0.0.1 -U f=
dsa -P fdsa -I ~/tdsconfig < $i; done
>=20
> A simple tdsconfig file can be used to speed things up a bit.
>=20
> [global]
> timeout =3D 1
> connect timeout =3D 1
>=20
>=20
> Many thanks to Frediano Ziglio, the maintainer of FreeTDS, for quick comm=
unication and bug fix turn arounds.
>=20
> <freetds_crashes.zip>


--Apple-Mail=_DD563355-1A5B-420E-9E76-3E6CDDB98FEF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; -webkit-line-break: after-white-space;" class=3D""><div class=3D"">I =
was asked what software this affects.&nbsp;</div><div class=3D""><br class=
=3D""></div><div class=3D"">PHP -&nbsp;<a href=3D"http://www.freetds.org/us=
erguide/php.htm" class=3D"">http://www.freetds.org/userguide/php.htm</a></d=
iv><div class=3D"">Perl DBI -&nbsp;<a href=3D"http://www.peppler.org/freewa=
re/dbd-sybase.html" class=3D"">http://www.peppler.org/freeware/dbd-sybase.h=
tml</a></div><div class=3D"">Ruby DBI w/ Sybase -&nbsp;<a href=3D"http://st=
ackoverflow.com/questions/721960/connecting-to-sql-server-with-activerecord=
" class=3D"">http://stackoverflow.com/questions/721960/connecting-to-sql-se=
rver-with-activerecord</a></div><div class=3D"">Python-Sybase -&nbsp;<a hre=
f=3D"http://python-sybase.sourceforge.net/index.html" class=3D"">http://pyt=
hon-sybase.sourceforge.net/index.html</a></div><div class=3D""><br class=3D=
""></div><div class=3D"">Other languages have less-official bindings.</div>=
<div class=3D""><br class=3D""></div><div class=3D"">Go -&nbsp;<a href=3D"h=
ttps://github.com/minus5/gofreetds" class=3D"">https://github.com/minus5/go=
freetds</a></div><div class=3D"">Erlang -&nbsp;<a href=3D"http://arcusfelis=
.github.io/blog/2012/07/02/odbc/" class=3D"">http://arcusfelis.github.io/bl=
og/2012/07/02/odbc/</a></div><div class=3D"">R -&nbsp;<a href=3D"http://eri=
qande.github.io/2014/12/19/setting-up-rodbc.html" class=3D"">http://eriqand=
e.github.io/2014/12/19/setting-up-rodbc.html</a></div><div class=3D""><br c=
lass=3D""></div><div class=3D""><br class=3D""></div><div class=3D"">Also, =
obviously the tsql binary if used to connect to an untrusted MSSQL/Sybase s=
erver.</div><br class=3D""><div><blockquote type=3D"cite" class=3D""><div c=
lass=3D"">On May 9, 2017, at 9:34 AM, Brandon Perry &lt;<a href=3D"mailto:b=
perry.volatile@gmail.com" class=3D"">bperry.volatile@gmail.com</a>&gt; wrot=
e:</div><br class=3D"Apple-interchange-newline"><div class=3D""><meta http-=
equiv=3D"Content-Type" content=3D"text/html charset=3Dutf-8" class=3D""><di=
v style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-br=
eak: after-white-space;" class=3D"">Attached is a zip file of reported TDS =
streams that cause segmentation faults in the FreeTDS library. The =E2=80=
=98tsql=E2=80=99 binary was used for the fuzzing, so these most likely only=
 affect client-side functionality. These have been resolved on master and t=
he 1.0 branch.<div class=3D""><br class=3D""></div><div class=3D"">Also inc=
luded in the zip file is a bucket.txt, a crashwalk db dump detailing the cr=
ashes for the files in the zip file.</div><div class=3D""><br class=3D""></=
div><div class=3D"">You can find the bucket.txt itself in the following Git=
hub gist as well. No CVE=E2=80=99s have been requested.</div><div class=3D"=
"><br class=3D""></div><div class=3D""><a href=3D"https://gist.github.com/b=
randonprry/bfb0e58682d464e2d2d319644790bdf5" class=3D"">https://gist.github=
.com/brandonprry/bfb0e58682d464e2d2d319644790bdf5</a></div><div class=3D"">=
<br class=3D""></div><div class=3D"">To test, you can compile FreeTDS, then=
 use preeny to redirect network IO to stdin/stdout.</div><div class=3D""><b=
r class=3D""></div><div class=3D"">export LD_PRELOAD=3D~/preeny/x86_64-linu=
x-gnu/desock.so</div><div class=3D"">unzip freetds_crashed.zip</div><div cl=
ass=3D"">cd rpt</div><div class=3D"">for i in id*; do valgrind ~/freetds/bu=
ild/src/apps/tsql -S 127.0.0.1 -U fdsa -P fdsa -I ~/tdsconfig &lt; $i; done=
</div><div class=3D""><br class=3D""></div><div class=3D"">A simple tdsconf=
ig file can be used to speed things up a bit.</div><div class=3D""><br clas=
s=3D""></div><div class=3D"">[global]<br class=3D"">timeout =3D 1<br class=
=3D"">connect timeout =3D 1</div><div class=3D""><br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D"">Many thanks to Frediano Zig=
lio, the maintainer of FreeTDS, for quick communication and bug fix turn ar=
ounds.</div><div class=3D""><br class=3D""></div><div class=3D""></div></di=
v><span id=3D"cid:E7387A98-7521-4239-8E0B-CBF00FACBEA1@amoeba.localdomain">=
&lt;freetds_crashes.zip&gt;</span><meta http-equiv=3D"Content-Type" content=
=3D"text/html charset=3Dus-ascii" class=3D""><div style=3D"word-wrap: break=
-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" cl=
ass=3D""><div class=3D""></div></div></div></blockquote></div><br class=3D"=
"></body></html>=

--Apple-Mail=_DD563355-1A5B-420E-9E76-3E6CDDB98FEF--

--Apple-Mail=_12511F7A-B029-40C3-96C2-3A3919E22472
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJZEzjqAAoJEKJq8VjVbt2pfD8QALIjCvB7lIX1Yku3NPUHsz0+
k3/27nZKAl50kdUNKIFH3auDKTmrCGmTunrU/ZCV6uH2auzby2WGfoibWpvNCKCb
LwRUwuEV3WDzvsmCRCORySoJ4fEf/aaHGdHiKHxKBqQnzVfxDAIM+Mb8/ML/1nO3
HLPZu5ktQ8bmCmig2QFLd0unQYjIsQbU6ZBLqo8DBhH9HKLPZDC8zfumtDdn3Vhd
Djmt+ybu/iMfmKcMfGIwRbpTildylQDahBz+0I8PHzzRvFyov0WaZw0UFQ6HRLDK
I4Jp7yxmb6ISMKZ1D1KsWCVtyeoGvsdWQXZCzhXg8UiD8N2iL1R85XEuiCdBoORW
znHCKDhCs8y38HYdEvQPB8fnPMvU9trgW5PR2dkBrB8f34ZBGp02ibYjVnI72RXM
JWmv6xolPpVZAg527dGkXo6F+YhgP4qvOW0YB83wleYawHW15BFiAb/f9vRa5qpQ
QI55yvLN5mTQEH7uUutDbjY+J6rSNJaIKI2TcT6UelEl3WxiQAIU9JteYJWPAJDn
kQDlAI4mB7jCqcF9asnlujsoZUzstpEsu2/zcMf1Gr062+VwxbVYKSSjM7idXXpd
Ujr3Kh1q0vF5UObOXCyIZtQCfTgJdZry1ZOzdGBpuVn2ivPhjM4Wf9W5Wy4aiYVw
EaMwTi7TErTASxNlgQcO
=QSXG
-----END PGP SIGNATURE-----

--Apple-Mail=_12511F7A-B029-40C3-96C2-3A3919E22472--
