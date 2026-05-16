Received: (qmail 7379 invoked by uid 550); 16 May 2026 13:05:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7342 invoked from network); 16 May 2026 13:05:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1778936747; bh=xta1xYNFtXxAz/q8sRfZdlYEImd3cOWI+ufbWmWXSmg=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=VZZvwaZivF2jLQR18dhmijaVl9LjAWuYlYLR6L2hyS2nXPxrkPI4VRbzP+e/wMi0X
	 vZJq8ioJsJlAPwl7a+1HutoJfTKIeEKa28fIQeH5hDptmdBaorGvDzO4b45a2vn5oW
	 kyqwuDmtOtsBcFNT6aiLRZ2Eyq0kWxamN2A72MRQaA8GmWvo17L5lx/bvf0n9luTaw
	 tqDaHM1rKH/31zYhiKlbf0bpm7Hy2yK+ZfSf/a5EVWQWoVx+cYJoUWhNf+Os7MqCIx
	 dJjJxkrNJFpyWWvxBKSgP/nzA71rkCVe7cFrLVlWItnOIq7e52TAzodM6hXfyDtqhc
	 FGN/OwiTxd6Jw==
Original-Subject: Recent Kernel exploits, attack surface reduction, example IPSEC
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Sat, 16 May 2026 15:05:45 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20260516150545.7570323b@hboeck.de>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Recent Kernel exploits, attack surface reduction, example IPSEC

Hi,

Multiple of the recent kernel exploits have affected the "esp" Linux
Kernel module. ESP is, as far as I understand, part of IPSEC, and I
think it's fair to say that IPSEC is not widely used these days. I
think this raises some questions about attack surface. I want to note
that I use IPSEC as an example here, but it likely applies in very
similar ways to many features that are part of the Linux Kernel and are
not used in most common setups.

For everyone who builds custom kernels and doesn't use IPSEC, it's
probably a good idea to disable all IPSEC-related config options, e.g.:
CONFIG_INET_ESP
CONFIG_INET6_ESP
CONFIG_INET_AH
CONFIG_INET6_AH

I believe IPCOM is also rarely used separately from IPSEC, so consider
also disabling these:
CONFIG_INET_IPCOMP
CONFIG_INET6_IPCOMP

However, there's a broader point here: I think it's common these
days that Linux distributions install most or all kernel modules by
default, and loading them happens automatically. Which, in many cases,
means people are potentially affected by security flaws in features
they never use.
"Attack surface reduction" is widely considered to be a good security
principle, and I wonder if we can do better here.

To pick the example of IPSEC, i wonder if it wouldn't be better to
have, e.g., a separate "linux-modules-ipsec" package that isn't
installed by default. People who use and need IPSEC will likely know
that they need it, and can install it separately.

I'm aware this doesn't come for free, and will add increased
complexity to kernel packaging. But think about it like this: If we had
that separation, three of the recent kernel local root exploits would've
been much less impactful, and wouldn't have affected most systems.

--=20
Hanno B=C3=B6ck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/
