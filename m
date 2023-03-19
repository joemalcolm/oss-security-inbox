Received: (qmail 20330 invoked by uid 550); 19 Mar 2023 08:18:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20304 invoked from network); 19 Mar 2023 08:18:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1679213903; bh=CjzHHAcY9jH3v6AYMjPa67o8izuyonfDgsNq7dPt64A=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=Qr31FltmSvsWd2w384d8y3++iQcofdqoWe2vi13Lgu7ne3lT+ygyGvfJiSiwCD4Tg
	 mRGoKCKn/uaBZ8GD0zMNtKsS7D9nxE2xYY2JkwvM9uK89DfCwzqqeS5Ad+M13dWVD9
	 NuUEnl0I8RZaIraSPoNFRV9ay9jDs/i74Asi1cah84P/VqvY79VhJEeaiZjvxHFUmb
	 IA7Xcc6aG3Pep3MGpgMcm0NgRQE1vKx64VCneqoUEFUj5H5HwZFqpq2/WSSY6NQOk3
	 VuFRnS3R7RS7ru/tm/PpvXcQaq/PutQkZVEJtun2GKbapW9Sy5FlLSqXv6VrXqCSIM
	 xT1FH600ntUaw==
Original-Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI
Author: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Date: Sun, 19 Mar 2023 09:18:21 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: oss-security@lists.openwall.com
Message-ID: <20230319091821.6f2073fb.hanno@hboeck.de>
In-Reply-To: <20230317194102.wvso2ex65fuwbukg@jwilk.net>
References: <20230314095103.1ed76cc0.hanno@hboeck.de>
	<20230314103626.3ucbt2rjdfhjbe6t@jwilk.net>
	<20230317114844.21563d9a.hanno@hboeck.de>
	<20230317194102.wvso2ex65fuwbukg@jwilk.net>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

On Fri, 17 Mar 2023 20:41:02 +0100
Jakub Wilk <jwilk@jwilk.net> wrote:

> TIOCLINUX implements also functionality unrelated to copying and=20
> pasting. See the ioctl_console(2) man page:
> https://manpages.debian.org/unstable/manpages-dev/ioctl_console.2.en.html=
#TIOCLINUX
>=20
> For example, apparently some of this stuff is used by systemd:

Ok, good point. So disabling TIOCLINUX isn't an option.

Looking into it, maybe restricting any TIOCLINUX sub features that
implement anything related to selection would be a good option. The gpm
daemon runs as root anyway.

Do you see any risk left if
TIOCL_SETSEL
TIOCL_PASTESEL
TIOCL_SELLOADLUT
are no longer accessible to non-privileged processes?

--=20
Hanno B=C3=B6ck
https://hboeck.de/
