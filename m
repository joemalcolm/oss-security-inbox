Received: (qmail 15723 invoked by uid 550); 24 Jan 2024 18:15:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12177 invoked from network); 24 Jan 2024 18:13:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sijanec.eu; s=mail;
	t=1706120149; bh=olo9706kzXfJH30RNZnjB8qTtquk2EDUn/cylgbjF1I=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=dJ5bg0wTq6wSvPaONLBWTQAhpkgACyQeuODdqsRi3BMv01wRZCX0/J5L4zIUWQF10
	 8RBbnQ3rCSzPKCVraOkUtlkGlpMrsdPazUDbyB1KbF2Vb/VW5KeNitoXyLOtIZAZ7M
	 YNjhMT2Pc+P03v8gwWsyou1b+2cmhAfjFj7ylduslmNDXxau3Pz4IeqbXyJgIfSY2D
	 NXh96mviBUWyYut7863hG7IuR04ilAFvT93jY8+r2RJQzN9dAPSKW+zu26sENN3ljf
	 B3j5CLC38Q+6B4O9uKyfyF86mSDytNRB6TD0nyXE7xa+80JwANwjJ9Z+x0IQQT/Y5g
	 N7oSzV4v6AMcw==
Date: Wed, 24 Jan 2024 19:15:49 +0100
From: =?UTF-8?Q?Anton_Luka_=C5=A0ijanec?= <anton@sijanec.eu>
To: oss-security@lists.openwall.com
User-Agent: K-9 Mail for Android
In-Reply-To: <jnc745riho5bck4f24gfjhz755zedqma77hbpdcwn7hchttluu@n6ajzobn5ukx>
References: <Za-XWUEPml2pcATt@kasco.suse.de> <20240124084235.360eb42b.hanno@hboeck.de> <ZbDH9FfiyKDUFv64@suse.com> <jnc745riho5bck4f24gfjhz755zedqma77hbpdcwn7hchttluu@n6ajzobn5ukx>
Message-ID: <99053B65-6161-46F7-A5B2-BB13B2BD6503@sijanec.eu>
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary=----AOO8O5ACMI89THOSE7MBAR0S8TUXT0
Content-Transfer-Encoding: 7bit
Subject: =?US-ASCII?Q?Re=3A_=5Boss-security=5D_Re=3A_darkhttpd=3A_timing_attac?= =?US-ASCII?Q?k_and_local_leak_of_HTTP_basic_auth_credentials?=

------AOO8O5ACMI89THOSE7MBAR0S8TUXT0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

I can see UID numbers in /proc/net/tcp6 as a non-root user even though my p=
rocfs is mounted with hidepid=3Dinvisible (ps aux only shows my processes).=
 My system is Gentoo Linux with kernel 6.1.69. Peeking at the source, it lo=
oks like oidentd indeed reads from /proc/net/tcp6. I run oidentd on a syste=
m with hidepid=3Dinvisible and oidentd runs as a separate oidentd user and =
does work (tested by trying to connect to an IrcNet server).

regards

On 24 January 2024 18:39:38 CET, nightmare.yeah27@aceecat.org wrote:
>Do not the various implementations of the *ident* protocol (example: oiden=
td)
>rely on this interface? They are often, or always, intentionally configured
>to run as nobody or a dedicated UID.
>
>--=20
>Ian

------AOO8O5ACMI89THOSE7MBAR0S8TUXT0--
