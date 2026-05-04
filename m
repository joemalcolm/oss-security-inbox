Received: (qmail 3243 invoked by uid 550); 4 May 2026 16:06:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22078 invoked from network); 4 May 2026 07:11:02 -0000
X-KPN-MessageId: 62aebbed-4788-11f1-afe2-005056994fde
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xs4all.nl; s=xs4all01;
	h=content-type:mime-version:message-id:subject:to:from:date;
	bh=T+ep45eVg6NZyI8DYiY0uqeCpNfcBgnB5WZtmcCYr1w=;
	b=Stl3317rScGaVdqXb4IHJEFREztHCLX25/oeMnq8SWCo1NYHUAmwRHgJ/PQdrjGQecnJuunALwt2S
	 cqaXL85znEYz/EtBbjdbkFbAPZJgAFZHVBqPv26+ZMXRIU0mTGITSw2Q8Hbb42ggbTbKguQbLuzyQd
	 7WF1EPxNGub2+xoXNCoxMKSAEVFHjkf2Del94+bHwIOAJBiBXJcl/anjH0V5Fa1glMRI4IqgdevNMn
	 2VNkQzSYamNa+D80DgGDd55545pRqMiojDeJMNRA9n+ZpmuUIlo9S+5lq9xcHtPzSbg/O7CIoIOPrN
	 4FSWVWeh2eyK12bW7NraeGNePL5Plpw==
X-KPN-MID: 33|jMnLIGlq4krVzmoGlc7dr409DZBml+56m7Ua9lc5Y4sx/B0YkN8r42nbsYkTU/8
 bFx+sRppMCxaZkLx+RNIzwQFcCb0xRHS75S0ibMhPH80=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|tBNRqbKXCEJACXSXD8+tJewnARrNwTTYS0a4BGzf9qt98UNKpeINKlSTX99sdeR
 6w/OhfyFr6+FHfRtVzyryAQ==
X-Originating-IP: 82.169.217.143
Date: Mon, 4 May 2026 09:10:51 +0200
From: Jeroen Roovers <jer@xs4all.nl>
To: Sam James <sam@gentoo.org>
Cc: oss-security@lists.openwall.com, Taeyang Lee <0wn@theori.io>, Brad
 Spengler <spender@grsecurity.net>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Solar Designer <solar@openwall.com>
Message-ID: <20260504091051.734f6e7e@del.fritz.box>
In-Reply-To: <878qa0b1o9.fsf@gentoo.org>
References: <afJorKIje4O6dXbH@netmeister.org>
	<87v7d4b7a3.fsf@gentoo.org>
	<87jytkb2gv.fsf@gentoo.org>
	<878qa0b1o9.fsf@gentoo.org>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.50; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Precise disclosure contents for copyfail (Re:
 [oss-security] CVE-2026-31431: CopyFail: linux local privilege scalation)

On Sun, 03 May 2026 22:53:10 +0100
Sam James <sam@gentoo.org> wrote:

> There's also a link to the kernel MLs from 2026-03-27 (!) where they
> say "page-cache exposure" [0].

> [0]
> https://lore.kernel.org/all/CAH-2XvLaZR+Ee+q35wXexKEh3AE7R0w1AGC__kV9To_6sLMdhQ@mail.gmail.com/

Or perhaps even a day earlier:

$ TZ=GMT date -d 'Fri, 27 Mar 2026 02:43:23 +0900'
Thu 26 Mar 17:43:23 GMT 2026



Kind regards,
     jer
