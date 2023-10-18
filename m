Received: (qmail 32331 invoked by uid 550); 18 Oct 2023 15:29:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32306 invoked from network); 18 Oct 2023 15:29:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1697642955; bh=hdBThOpu+eFwGeM1J1TJySo29nrfHNT9j5P6S0HSiP8=;
	h=Subject:From:To:Date:In-Reply-To:References;
	b=yro+cvnTft28aqRaAg0iIk9/XfyZC1ge/bu3EzRAKPRCSFv/JGp6BvWKD75Wwjonn
	 iyjTlsUpdk+ycft6JNjI393wUO6GIWQtkfomTvMPhoobHLB7fNiz6WCZ7+fh97ydnz
	 xamOKGwNoLv42vUQ+Jyi7TzBJMKJrlUhQ48qeVZg=
Message-ID: <a0b0eca3540cf1cb5e7ccb1d4e20d4edee9333da.camel@orlitzky.com>
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Date: Wed, 18 Oct 2023 11:29:15 -0400
In-Reply-To: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 
MIME-Version: 1.0
Subject: Re: [oss-security] with firefox on X11, any page can pastejack you
 anytime

On Tue, 2023-10-17 at 03:17 +0300, turistu wrote:
> Note to the moderator: I have already submitted this to the firefox people
> three weeks ago, and according to them, this is not a real security issue,
> or at least not worse than those pesky scripts which you cannot kill with=
out
> killing firefox itself; if you think the same, just ignore this without
> replying.

If there's more than one bug they must be features, duh.


> I would however appreciate if you let this through and so give it some
> visibility so that the other 2 or 3 people who may be affected by this
> could learn about it.

Thanks for this. Since nobody else has responded, I agree that it's a
security issue. The data in the clipboard are mine and there should be
exactly one way for me to overwrite them. This is a problem even if the
data is not sensitive and if the terminal paste is not exploitable:

1. A third party
2. Has tricked my computer
3. Into doing something I didn't want it to

Those are the three criteria for a vulnerability that I just made up.

