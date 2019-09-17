X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1439" "Tuesday" "17" "September" "2019" "18:20:21" "+0000" "Alyssa Ross" "hi@alyssa.is" nil "37" nil "^Date:" nil nil "9" nil nil (number mark "        hi@alyssa.is Sep 17   37/1439  " thread-indent "\"Re: [oss-security] OpenDMARC buffer overflows\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] OpenDMARC buffer overflows" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19584 invoked by uid 550); 17 Sep 2019 18:36:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13491 invoked from network); 17 Sep 2019 18:20:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alyssa.is; h=
	from:to:subject:in-reply-to:references:date:message-id
	:mime-version:content-type; s=fm1; bh=I2dHyeTtlZm/kxUAA3F6JIe5vG
	/7AT4JpeKFp3/zGsg=; b=N1CWvtvAozWHu29WdntE5lIYTQ2sZGkp7VFOk/knQ3
	6sKXxYprhtRZ7t+DfHeufeO+UqFznuV/u2+DjOlg4Jqh15vnrGLLa/CZHDiZn5zs
	qu/kPS52T3f2LvPCsHqX/UhlzGUBBu4uRVBRfxNHKO71k+G50BgTpyyO5LA3vDSs
	PDBdUrQlTrZMO+85qNkioYTIypUwRbrblXAfjhNIHHERrFMEH06aDz0WdTWDEYE1
	m3oaPzJHSsaEC/6389zE7LKyrnwaf/OmFhG0/VTnmu5GZlE3Ct3fU69CimSZw6ZH
	ihbK14iqgoaskSbJtvzz8gQP0BVFt4Ttmo8SexM6JKNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=I2dHye
	TtlZm/kxUAA3F6JIe5vG/7AT4JpeKFp3/zGsg=; b=Ddb6IULjEj24fpJOggwlZ+
	9cbbUZayZgbpOq+TELhK/t2KH+wdo2yTYt27SnkueoBmhJ+H6Gv36UiFvVDoVYG/
	8KJFhhLCHKEMzdJUZhsdz3aeg4xVKt3xGQcNHNghuccJzIYF3/jyGbfxsDMR5rXt
	+MtzxGEQeUys4KvorKk4xx75tPpM/0UlERbYUYYjGXrBWZZagd5H0Ed4lMuD61gr
	k2syGBYmjtnIoLrBjYZHuNMndf6idRsBVN9+tbwGRrhuI1BIHbYI76ix8RJs/3+m
	wKXZ6XJTyh6f6IbzpTW5kGmJdvG9H9bV/rAbWMhpAILX2tzoQYIItjwrSekgV8Og
	==
X-ME-Sender: <xms:6yOBXf-9ZhJtMAHpXcSEnO8MeyEm-4ub0ac7hq8sojwvqoG_bmcWGg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeigdeliecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffujghffffkgggtsehgtderredttdejnecuhfhrohhmpeetlhihshhsrgcu
    tfhoshhsuceohhhisegrlhihshhsrgdrihhsqeenucffohhmrghinhepghhithhhuhgsrd
    gtohhmnecukfhppeekuddrudekjedrvddvgedrudeftdenucfrrghrrghmpehmrghilhhf
    rhhomhephhhisegrlhihshhsrgdrihhsnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:6yOBXSOf89KpaRQ-xWeQzBlAhR40aj1lkjf0F2WluwUxCLJrXsvYuw>
    <xmx:6yOBXbA-4llut1OGA54c4o6CtSMK-X6qgxm0l-F8rSCZTyVQeSCq2Q>
    <xmx:6yOBXeMckQFiKElyS4akufqHQws_9NrlZYDjd6T7c9hQgRVV9PcFPw>
    <xmx:6yOBXYF8WbNHM27QDQFUYyq-dTeL-hSPA4Ps7IzZRri2Pzg-wcBh7Q>
In-Reply-To: <20190917195826.1cdb3e39@computer>
References: <20190917195826.1cdb3e39@computer>
Message-ID: <87ftkuaioq.fsf@alyssa.is>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Tue, 17 Sep 2019 18:20:21 +0000
From: Alyssa Ross <hi@alyssa.is>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] OpenDMARC buffer overflows
To: Hanno =?utf-8?Q?B=C3=B6ck?= <hanno@hboeck.de>,
 oss-security@lists.openwall.com

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hanno B=C3=B6ck <hanno@hboeck.de> writes:

> In light of the recent OpenDMARC issue I had a look at their Github PR
> tracker. This one
> https://github.com/trusteddomainproject/OpenDMARC/pull/45
> caught my attention.

So a signature bypass, a buffer overflow, and no activity in years
despite vulnerabilities having been reported months ago?

Certainly doesn't look like software that people should be relying on
for security...

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEH9wgcxqlHM/ARR3h+dvtSFmyccAFAl2BI+YACgkQ+dvtSFmy
ccBdxRAAhV0jlIREWU1+ue5+J/sVnRq1HgG4J/buFzBELBK2v74dhf+u1jbahzoj
ucANHr0VRSb51HzAuiiWqIv0SNJFXpA2lyn5pzDabAS7Kwdcz0xg+1nZ0KdsK6Iw
sRIB5YpCGiY3heuNlwMD3DiXF/u3CpvSQsQ38MnUrcNp+7dWiUp0XXiLO2857Er4
sfc0aNwaHsu7Sqa4IetD1Fo/NL3Oa/Hsc1x7XQjKvC/dd3UVCrevU2lewjJUwmvx
peX6KzRecS80Dpl3f38EC0b/LJ5J+bxn3v48GCp8vDlAaic5dMzqcxuYW7gfajLr
t+mkWqAbINt2jEK3HIcp/1I6RtcyKb4dMCwTSEV0mId7ZT22xP9UTnQTxWn9j5+o
9fu/aManRwtsvX/BOu/dx3o5PZo0lGBFJEj76UiCyelfSbVodLrKt32jAmz+546D
B4jpvJsL5prYJiTyBDnD1PeFkIO2V5Pax/KJXf8iYwKAkVj0h8NgGVtqO4Gz+WjB
d8OSemXURqa4qRXOogYa9EeJMavxwSsCbvjIZ7gqjvFzuxEdUED6KFSVPsbQNxWm
CD9spgEbiS/j48+0TFTpXM1d33o7605IkRi+uinxI1myZy5oqoPwN2n9DLnWwu7Q
ATaaz/g6vnP0+F9QqQc1iaOXbMfDDfhC3kkmOHJfhSX6yCfx05A=
=nASm
-----END PGP SIGNATURE-----
--=-=-=--
