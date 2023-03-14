Received: (qmail 16098 invoked by uid 550); 14 Mar 2023 11:01:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16069 invoked from network); 14 Mar 2023 11:01:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1678791679; bh=TBJzyIhWP/C7wASgVR2EU1qojiaGI7BC/HikUg4eETo=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=AqdEpYF4Ahi6YdI5JHMX2AsQilGxyuxHQUw9YBH1BazFkNc6rmwhWe07+jmA6SQXV
	 ZlzrWuiYZV5YbzqmxumVWUd4RaCOgOSQeojPyn2PzUozwmLQS2M7bZes8cQmGaamvn
	 SAbInGe08d1IyVVkexlljbbILeXSDOihDyMtiPLRfBddB21os19peC6LoE02IjTHDo
	 aBXMXjCEwPnwV+4iQtL2ToRK7rfOZ2uQqUnNtS46Se8PZeMMqyzjLVk3zNG+qj8eL3
	 jgcze8DUFNTMdk/nwpDsGtksLzDm0kD7XYlAfiWSzpo7Ko516CF0H1tBIsagzlAdAN
	 OZPpW2ZWEEyNA==
Original-Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI
Author: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Date: Tue, 14 Mar 2023 12:01:17 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20230314120117.46a105cc.hanno@hboeck.de>
In-Reply-To: <ZBBQifYr6J8OSNXP@doggett>
References: <20230314095103.1ed76cc0.hanno@hboeck.de>
	<ZBBQifYr6J8OSNXP@doggett>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

On Tue, 14 Mar 2023 11:46:33 +0100
Peter Bex <peter@more-magic.net> wrote:

> Indeed, opendoas (the portable version of OpenBSD's "doas") has this
> exact bug as well: https://github.com/Duncaen/OpenDoas/issues/106

Though some context is relevant here: doas is a tool from OpenBSD.
According to the Linux kernel commit message [1] OpenBSD has fixed this
already 3 years ago by entirely removing TIOCSTI [2][3].

[1]
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3D83efeeeb3d04
[2] https://undeadly.org/cgi?action=3Darticle;sid=3D20170701132619
[3] https://marc.info/?l=3Dopenbsd-cvs&m=3D149870941319610

--=20
Hanno B=C3=B6ck
https://hboeck.de/
