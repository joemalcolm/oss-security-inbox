X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6001" "Monday" "5" "March" "2018" "20:19:10" "-0500" "Jesse Hertz" "jesse_hertz@apple.com" "<BFC07C08-D41E-4F1B-BB18-A08B640458E6@apple.com>" "159" "Re: [oss-security] Terminal Control Chars" nil nil nil "3" "2018030601:19:10" "[oss-security] Terminal Control Chars" (number mark "U       jesse_hertz@ Mar  5  159/6001  " thread-indent "\"Re: [oss-security] Terminal Control Chars\"\n") "<20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>" ("<20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27744 invoked by uid 550); 6 Mar 2018 04:19:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28103 invoked from network); 6 Mar 2018 01:19:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s; c=relaxed/simple;
	q=dns/txt; i=@apple.com; t=1520299155; x=2384212755;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=FT+KMOH+kfuptJty9uGO4c6l5XkcmNnLmDZ/EouazhE=;
	b=X/K1nlBsnAelz4rVx/UMxgiQztsoK+19rvoe5mBsLHo9wxzmtFasTTWyXVszLHg+
	1zguTrdMZXU8yzDiqPxGyquzrXBnpnvXm8iRdHaERCKfXfJ5d68+rTBiDrF9tFCk
	Nhplix1uWqIS5u/Vn2k7pUL/et1f653itRe1KbwWeD6SbV+m/WblGg5NplBF9MDW
	HcoXsLQmeM8XfquzzFVmW/sZ2bfc7rnZjsK/y74ugn1c2mTXtabJCZkPoa9h/N7K
	Gl9F9FmOWHTS2LvNo2LB/e9metbOhy+VZvWVahcKe2UoUmBHcWZX6ZCu+w3TAldQ
	PhEUlR5CQyRVWSqwhPdlWg==;
X-AuditID: 1148940d-84fff700000017f6-ec-5a9dec93d4b7
MIME-version: 1.0
Sender: jesse_hertz@apple.com
From: Jesse Hertz <jesse_hertz@apple.com>
Content-type: multipart/signed;
 boundary="Apple-Mail=_849DC363-2093-46D5-81FB-BE93B7549629";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Date: Mon, 05 Mar 2018 20:19:10 -0500
References: <20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>
To: oss-security@lists.openwall.com
In-reply-to: <20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>
Message-id: <BFC07C08-D41E-4F1B-BB18-A08B640458E6@apple.com>
X-Mailer: Apple Mail (2.3445.5.20)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrHLMWRmVeSWpSXmKPExsUi6GTOrTv5zdwog2/bpC2W/XdzYPRY2fmY
	LYAxissmJTUnsyy1SN8ugSvj8awdzAUzDSpubgtvYOzQ6GLk4JAQMJF4eri+i5GLQ0hgMZPE
	qgOX2WDifd0lEPFrjBKfH+9k7mLk5OAVEJT4MfkeC0RiP5PEy0tTwRLCArISr3c8ZQGx2QQ0
	JaaufMcOYjMLzGCUaGxNgKgxkli57CETiM0ioCpx+sgMsF4hAU+JKVu/gtkiAsoSN3ZfBKvh
	FPCSuPRrPgvEYhuJK4+Ws4HYEgJKEtO/32YDOUJCYAObxPSlt9kmMArOQnLgLCS7IWxtiWUL
	XzPPAnqOWUBHYvJCRoiwvMT2t3OYIWxLicUzb0C12krc6lvABGEbSMxpnsy0gJFjFaN4bmJm
	jm5mnrFeamlRvl5iQUFOql5yfu4mRlBMeEzh3cF4/aDhIUYBDkYlHl4O77lRQqyJZcWVuYcY
	VYAmPdqw+gKjFEtefl6qkgjv9QagNG9KYmVValF+fFFpTmrxIUZpDhYlcd6Ux35RQgLpiSWp
	2ampBalFMFkmDk6pBsbugByxWgUx3h3H2y5KHFL6aXpC3FfTd/pTz+dMd7YHStnobSyefU34
	gOHy7LmTHUQPnyp9nbnn/sOJc6PPSx440P6js+HH+wmJd8JlHp5Uf62/9ePbrtuzVcSLjvvF
	HzMw/3H16T7HZdlRMk9y7nEa6s09FRBxKHvSl1QXna9vPtx39uMRFmlVYinOSDTUYi4qTgQA
	e8ezZ5ECAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOLMWRmVeSWpSXmKPExsUi6MSzQnfym7lRBm2TxC2W/XdzYPRY2fmY
	LYAxissmJTUnsyy1SN8ugSvj8awdzAUzDSpubgtvYOzQ6GLk4JAQMJHo6y7pYuTiEBK4xijx
	+fFO5i5GTg5eAUGJH5PvsUAk9jNJvLw0FSwhLCAr8XrHUxYQm01AU2LqynfsIDazwAxGicbW
	BIgaI4mVyx4ygdgsAqoSp4/MAOsVEvCUmLL1K5gtIqAscWP3RbAaTgEviUu/5rNALLaRuPJo
	ORuILSGgJDH9+222CYx8s5DcNAvJOghbW2LZwtfMs4D+YRbQkZi8kBEiLC+x/e0cZgjbUmLx
	zBtQrbYSt/oWMEHYBhJzmiczLWDkWMUoWpSak1hpqJdaWpSvl1hQkJOql5yfu4kRHMTm3DsY
	j+82PMQowMGoxMPLd3FulBBrYllxZe4hRhWgOY82rL7AKMWSl5+XqiTCe70BKM2bklhZlVqU
	H19UmpNafIhRmoNFSZzX1pc/SkggPbEkNTs1tSC1CCbLxMEp1cAY4Bu74IiL5CrvXVcfr7or
	5TfJpzgy++/+PPeMgstBj1N3yXySnq6xzlozsnvVnYfOc40r6/Iu5/1KT/695pqGrEUv49kk
	Kbl9m2WlRLtZN5gWdptmabUv+vfvmk3I7QnGmrkxZmbXt68QVruoE7K/+5gFcyRfYGWv6kyz
	uQZHnh010td7YaPEUpyRaKjFXFScCABrFaEyagIAAA==
Subject: Re: [oss-security] Terminal Control Chars

--Apple-Mail=_849DC363-2093-46D5-81FB-BE93B7549629
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

I looked into this on OSX, and confirmed Terminal.app is vulnerable, but iT=
erm.app is not vulnerable.

Cheers,
-jh

*this is not an official apple email and is not representative of Apple pro=
dsec. I just happened to be poking around*

> On Mar 5, 2018, at 11:50 AM, up201407890@alunos.dcc.fc.up.pt wrote:
>=20
> Hello,
>=20
> When pasting characters into several terminal emulators, control characte=
rs are allowed.
> This turns to be a security problem, due to the fact that when pasting th=
ese characters into terminal text editors, such as vi/vim, emacs, nano, etc=
., remote code execution is possible.
>=20
> This is supposed to be fixed in recent versions of VTE [3], which means V=
TE-based terminal emulators should be safe, but the problem is that most di=
stros are shipping older versions and remain vulnerable.
>=20
> Here's a list of terminal emulators I tested this where it worked. Some c=
ame by default in my distro (debian), others were installed via apt-get. Th=
is should also work on other distros:
>=20
> LXTerminal
> rxvt
> urxvt
> putty
> gnome-terminal
> Konsole
> Guake
> Yakuake
> tilda
> Terminator
> xfce4-terminal
> Terminology
> ROXTerm
> sakura
> lilyterm
> Eterm
> aterm
> mrxvt
> pterm
>=20
>=20
> Please, update VTE and check if the below still works. For the others tha=
t aren't based on VTE, CVEs should be assigned to each of them. Can someone=
 help me figure out which ones are based on VTE and those that aren't?
>=20
>=20
> To reproduce using vi/vim, create an html with the following command:
>=20
> $ printf '<html>something;&#27;:!id<br>a</html>' > poc.html
>=20
> Open the poc.html in a browser, select and copy the text that is presente=
d, and paste it into vi/vim in insert mode. The command "id" should then be=
 executed.
>=20
> This works because pasting "&#27;" is allowed, wich is the "escape". By p=
ressing "escape" in insert mode, it is possible to go back to default mode,=
 and by using the exclamation mark (!) it is possible to execute arbitrary =
commands.
>=20
>=20
> To reproduce using nano, create an html with the following command:
>=20
> $ printf '<html>something<br>something\x18y\b\b\b\bfile<br>y<br>a</html>'=
 > poc.html
>=20
> Open the poc.html in a browser, select and copy the text that is presente=
d, start nano with "nano test", and paste the contents in nano. This should=
 quit you from nano, but instead of saving the contents into the file "test=
", it saves them into "file".
>=20
> This works because '\x18' is ^X (Control-X), which exits nano. On exit, i=
t asks if you want to "Save modified buffer", so you press 'y'. This is why=
 there's an 'y' after '\x18'. Once you press 'y', it asks the "File Name to=
 Write". If you started nano with an argument, such as "nano test", then it=
 will appear as the default "File Name to Write". In order to specify an ar=
bitrary file name, and overwriting an existing one, we can use multiple '\b=
' to delete this file name, and then specify our target file name. To get r=
emote command execution, an interesting target would be ".bashrc". However,=
 as a PoC I used "file" as can be seen after the 4 '\b'. Since "test" is 4 =
characters, I used 4 \b. You should use "nano test" to try the above. As a =
remote attacker, you don't know how many characters your target used for th=
e file name, but you can input an arbitrary number of \b. We could use 255 =
\b since that's the file name limit in most filesystems.
>=20
>=20
> To reproduce using emacs, create an html with the following command:
>=20
> $ printf '<html>something;&#27;!id<br>a</html>' > poc.html
>=20
> Open the poc.html in a browser, select and copy the text that is presente=
d, startemacs with "emacs -nw file", and paste the contents into it. This s=
hould execute the command "id".
>=20
> This works because pasting "&#27;" is allowed, wich is the "escape". By p=
ressing "escape" and then "!" (M-!) it is possible to execute arbitrary com=
mands in emacs.
> The command "id" will be executed, but you may not see the output in emac=
s.
> Use something like "touch file" and see that "file" was created.
>=20
>=20
> One could argue that an user could see that what is being copied from the=
 browser
> is malicious, but it is easy fool the user. [1]
>=20
> The correct solution would be to disallow the pasting of certain control =
characters.
>=20
> See:
> [1] https://thejh.net/misc/website-terminal-copy-paste
> [2] http://invisible-island.net/xterm/xterm.log.html#xterm_292
> [3] https://bugzilla.gnome.org/show_bug.cgi?id=3D753197
>=20
> Thanks,
> Federico Bento.
>=20
> ----------------------------------------------------------------
> This message was sent using IMP, the Internet Messaging Program.
>=20


--Apple-Mail=_849DC363-2093-46D5-81FB-BE93B7549629
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEJCUu1wHJ257uIf2m6taIDlQY/ugFAlqd7I8ACgkQ6taIDlQY
/uilGA//dQHOY/xBRxp3y1gq85vSW+qmuEI858G+RTFDeMpU5t00clTm0tet+tAy
/fuGmJsa1xYKhlFks97YZg9XZMh3UkxR2hTyFWXFcKww6f9Lj/amafP2CAmBxv3f
viOEoI81H3zoRC/gpIRuP113xMaHQC4DBe4ymtcdfrj5892nFD1PNwwgNoB1Hkdc
4Aft2a1YDjJIvKPlGXzGmuj7nHt+k4U6nU483aDG99fVdtc2Vzqq407Xes5ozdNP
kiOFlHHQDNjYWAiEnHr80DdxhVRupifkqPs8huxjmXq0t2xGEO40FUwHbRByLLwc
p7xaH+H/6+JEi9FUc9VLbKrFW3cEUVDyHd02p5HaZ6k7LOwhMBIJPvw1EjsIvE6F
12/06Pg7u7MBHRNuD5p4I5E6j4lTrHQ9KG31kKIWxsVGl2s/YXn8QMwNBDpmIt4D
Cg8aAo4zO9zwNNsZAsgzlmM53aW201Cd8m9uMtLLpmsIPajOK/qOMl+wJqstwCTi
4Gv+lVLgV+kUIZLPx66w+EwK1Ltrn9LE26zBqkMYchtwOnMQ1OoVTaXKx28V2o3U
IhWkzhUuN0hVYnd5UMvn0RKctJrlA29PQdYemErbOU7DWciJAGwZK1Tlb0lv+bea
TVyppCEmHkzCJTR2NPFs/xvQK2pfiu7/2kl1+th68FvvrnXckaI=
=KUEN
-----END PGP SIGNATURE-----

--Apple-Mail=_849DC363-2093-46D5-81FB-BE93B7549629--
