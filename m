Received: (qmail 23829 invoked by uid 550); 19 May 2026 13:16:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23809 invoked from network); 19 May 2026 13:16:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1779196561; bh=7GmywubT9gYkRHWj8R6Oyecg6/ibSJa2uRQ94EIR64Q=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=aMr8LBFZT3eJ/ZBf6knf1uWgVg4ORaaj/dZD93iPZfJfdP3tbj45Vo6+FMmvbpSdS
	 mUY2qgc9kif5ql14hIxCfj//YDq3evk47mLDnSsmeHBPreuDqS3JpZcLeraDxDKrnu
	 uHDezcO014exwC6WdNUxzGP8Be1MuyEem6NBbB6dlJD+jqctkMLvmVTclV6i5KB/c2
	 RtUIiX/bhwpncf1D6wIwdN0lzxwMxvudBzog7G5pHioDbF7Gn58o5UqwiolgZ+xopn
	 AYryWgX3b4OMq6qGk50JIOeFt6uYyULIUwtGAae7x0PzpvFsQzC/vUVkxTsyg+MXQG
	 gOOvtQDFV6ggw==
Original-Subject: Re: [oss-security] Fixed: local root exploit in haveged, fixed in
 1.9.21, CVE-2026-41054
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Tue, 19 May 2026 15:16:00 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20260519151600.3ded0958@hboeck.de>
In-Reply-To: <agxXF1J53iSJIrP6@suse.de>
References: <agxXF1J53iSJIrP6@suse.de>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Fixed: local root exploit in haveged, fixed in
 1.9.21, CVE-2026-41054

On Tue, 19 May 2026 12:27:03 +0000
Marcus Meissner <meissner@suse.de> wrote:

> If you are using haveged, todays release fixes a local root exploit.

You can also fix this by uninstalling it.

There's no need to have an "entropy daemon"... It adds needless
complexity and, as this issue shows, attack surface. There have been
many improvements in the Linux kernel's RNG (Jason Donenfeld, also known
as the Wireguard developer, did a lot of work on that) and I am quite
confident that there are no problems with the RNG on any reasonably
recent Linux kernel that an "entropy daemon" would help with.

--=20
Hanno B=C3=B6ck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/
