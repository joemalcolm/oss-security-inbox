Received: (qmail 29830 invoked by uid 550); 16 Apr 2024 13:44:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11523 invoked from network); 15 Apr 2024 23:33:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=protonmail3; t=1713224028; x=1713483228;
	bh=/BW76e1ew0smlLEjbQgRLFgXSeVV0Wa1qYp0JbQe+Uk=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=b9kkcg+0HJdrLdLjMB7TJYY6KVQqQSyW4e8h6ljPz5YSykAkEcuHWixuLuitLM6ez
	 ZhtcST8JQUjMMfGUAYccz4cTctTXzICs58u8nT6KDAcBRprjxUdNVUMZR9Q0TK57tl
	 HYAkH7ZbOkp9QwEWCow7sk/x7ssa5VrfmXgjG0/MZlkqZvujS31bWJgAfLvPEhi9+F
	 B8Hjq26phJKCPCAg+hdJoG+tBm+4iirNnF6X5SxXgpx+OZuBwKdqFwQqjk3zUL2Kog
	 CSDW6BXgwgDaT4YysK9YwCrUYrJMiA1Y99gA+jzljAmlR8G10kteialV7yHQo8r2gI
	 WbO2dbCNyuyiQ==
Date: Mon, 15 Apr 2024 23:33:32 +0000
To: oss-security@lists.openwall.com
From: Jordan Glover <Golden_Miller83@protonmail.ch>
Message-ID: <ivMjj3lATlzwIHIHrMAPFX2ukGAAB-DvUg5TU30lGkyffNLHJEHJy7bN3uLbes9XLXnEXIHHDhYfFdmvxlSHKbTLlQLfQZycdSlE1ICaQ_E=@protonmail.ch>
In-Reply-To: <Zh1MBrBG8YOvqHmM@remnant.pseudorandom.co.uk>
References: <20240414190855.GA12716@openwall.com> <ZhxdDyIBazJYRDeR@itl-email> <20240415151309.GA15253@openwall.com> <Zh1MBrBG8YOvqHmM@remnant.pseudorandom.co.uk>
Feedback-ID: 3367390:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Linux: Disabling network namespaces

On Monday, April 15th, 2024 at 5:47 PM, Simon McVittie <smcv@debian.org> wr=
ote:

> On Mon, 15 Apr 2024 at 17:13:09 +0200, Solar Designer wrote:
>=20
> I am not a kernel developer, so this is second-hand information; but I
> believe the implementation of kernel.unprivileged_userns_clone used in
> Debian (and subsequently copied from Debian by various other distros)
> is derived from patches that were already proposed and rejected upstream,
> so the feeling was that trying again to upstream that feature would be a
> waste of time and upstream goodwill, because it would just get rejected
> again by the same kernel maintainer.
>=20

Perhaps it's best to link old article covering the situation back then:
https://lwn.net/Articles/673597/

And yes, current kernel maintainers are biggest proponents of unpriv
userns so any restriction is rather impossible sell.

Jordan
