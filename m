Received: (qmail 13723 invoked by uid 550); 9 Jul 2023 13:49:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5640 invoked from network); 8 Jul 2023 21:08:53 -0000
Date: Sat, 08 Jul 2023 21:08:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1688850521; x=1689109721;
	bh=shvw+ArZJTfoeEZGvcmlz5n0qj4pkY7Kx5f3O5kd8aM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=obcp0MonubZADlBxt58FuRHefQd64hYtmYQZkeIE8kKDTd8XEpAHxAyWwVvckKKe1
	 4UNJ6JNWqMH+Q7F6elDa9EbtuJc8YkWHCQZnasez/MK+SDWCmHVRT8BtboRcyIWB7W
	 pq/s4unrQ5nlKqJ8YoNX9Mxr+9OeGenJVtVXQdIsdCsh+ap2jhL7YgQb5YscXExQ6R
	 UENd8X7BPUJY11aVAqdKaaEKNtnxg9FGxREsQ+kCnJOnOr1ZtvILDZF8gEVqPYKfaY
	 m27A8lzS1B7JAcz8+zQkZjvhYHS7G6aytIra7sxtpDI+nAyhQTINgkSouWxr9w1D+y
	 1F0svk3OBzViw==
To: Tavis Ormandy <taviso@gmail.com>
From: =?utf-8?Q?Barnab=C3=A1s_P=C5=91cze?= <pobrn@protonmail.com>
Cc: oss-security@lists.openwall.com
Message-ID: <Xls8qrS5_QdyztMHIXiGOs26w4bnyy7HCqgLUBG9FIGCNqQyMeybftwXamy4KzE_p9kQzxbAtQ7A5PAmRZKAY9S90mHAK5YC9vjHQcxqqgY=@protonmail.com>
In-Reply-To: <u8857u$14pa$1@ciao.gmane.io>
References: <u8857u$14pa$1@ciao.gmane.io>
Feedback-ID: 20568564:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] manjaro pamac vulnerability

Hi


2023. j=C3=BAlius 7., p=C3=A9ntek 06:44 keltez=C3=A9ssel, Tavis Ormandy <ta=
viso@gmail.com> =C3=ADrta:

> FYI, I noticed a blog post about this:
>
> https://github.com/c-skills/vala-vala-hey/blob/master/vala-vala-hey
>
> I didn't test it, but if you can't trust stealth who can you trust? :)
>
> I'm not familiar with manjaro, I dunno if it's the polkit config for thei=
r dbus service.
> [...]

It looks like it has been fixed: https://gitlab.manjaro.org/applications/li=
bpamac/-/commit/889aa1d74ad305bb28178396dcc16e5b5381ade6


Regards,
Barnab=C3=A1s P=C5=91cze
