Received: (qmail 11277 invoked by uid 550); 13 May 2025 18:34:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32391 invoked from network); 13 May 2025 16:37:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uni-hamburg.de;
	s=rrzs003; t=1747154265;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8IEHJerVBuE4dmYtZUOi799yJHuZ2bNcG8mjzM4My3M=;
	b=fx6TBXvK0wIp/QNClcQ5S3q/TkslvLMC9kQHIxEEdpuma7k3F1atHNcsRun0QzOtiYtL7w
	qhe490fQBQV2MlZ4NjiMxHrTNi/2hN924JebivrAoR56dNLZmqWSaInrMsEH0e2+d4oCth
	8ftE+Y+ppOuI33LP/Vp8ovf6YEsh1MKZSdz4+lHFJTJiUD8CtN+CbocYPFoX5CFOtUPwWE
	eGI8EYwgxRoCyOGaxxbdslmvUktud6n5DTzujFWW8AlyOFHM6X6Bgd0+HQj6TSXE7PTjKy
	PHv8D6p5xU4QhMxptjxmRipDLEZ8loZMyF6PA/qfrs4nzMcDIN8zZpnN+Mkanw==
Date: Tue, 13 May 2025 18:37:44 +0200
From: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
To: Matthias Gerstner <mgerstner@suse.de>
CC: <oss-security@lists.openwall.com>
Message-ID: <20250513183744.2c187967@plasteblaster>
In-Reply-To: <20250513182106.414b569f@plasteblaster>
References: <aCISrQTbLQjaxBZS@kasco.suse.de>
	<20250513182106.414b569f@plasteblaster>
Organization: =?UTF-8?B?VW5pdmVyc2l0w6R0?= Hamburg
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: EX-S-MR06.uni-hamburg.de (134.100.84.89) To
 EX-S-MR06.uni-hamburg.de (134.100.84.89)
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen
 (mostly affecting release 5.0.0 and setuid-root installations)

Correction about the configure call fix.

Am Tue, 13 May 2025 18:21:06 +0200
schrieb "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>:

>=20
> $ ./configure --with-pty-mode=3D0620 --with-pty-group=3Dtty
> [=E2=80=A6]
> $ grep -e PTYMODE -e PTYGROUP config.h
>  * define PTYMODE if you do not like the default of 0622, which allows=20
>  * define PTYGROUP to some numerical group-id if you do not want the
> #define PTYMODE 0620
> #define PTYGROUP tty

Of course that doesn't compile. A numeric value is expected.

./configure --with-pty-mode=3D0620 --with-pty-group=3D$(getent group tty|cu=
t -f 3 -d :)

is closer to what also the default for screen-5.0.0 configure is.

AC_ARG_WITH(pty-mode, AS_HELP_STRING([--with-pty-mode],
            [set pty mode (default: 0622)]),
            [with_pty_mode=3D$withval],
            [with_pty_mode=3D0622])
AC_ARG_WITH(pty-group, AS_HELP_STRING([--with-pty-group],
            [set pty group (default: 5)]),
            [with_pty_group=3D$withval],
            [with_pty_group=3D5])


Which brings me to the question if it is really smart to hardcode the
numeric group ID. I observe wildly changing system user/group IDs in
distros that create the accounts on the fly when installing packages.
Maybe tty is always present on install images already =E2=80=A6 and happens=
 to
always be numeric ID 5, everywhere?


Alrighty then,

Thomas

--=20
Dr. Thomas Orgis
HPC @ Universit=C3=A4t Hamburg
