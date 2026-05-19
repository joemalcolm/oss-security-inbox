Received: (qmail 20216 invoked by uid 550); 19 May 2026 15:18:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19827 invoked from network); 19 May 2026 13:53:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1779198805; x=1779865471; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=LVVezOWSI1G6L4wCq1OLM2xPnIz81G2k8IyXLO3D/HQ=;
 b=mdpY57ZiNtRL0MNOUN8qikETmDGj1wC4q5nk0w271o1fUnKYIxaWR/170aHUycbf6lbQNPAn
  4CHKvxlkbCCMtk/24GgFhHKEwzvn2FNMfAFd0S/mwWW6QRDcBnM+cx1OA+6IoMBJqldDpN5ajk
  mO/PUOaUHYDdX3XGIqbEDtOTFz1YR2gkxnw/tutRXZbYkp0OYwNB7EfvThlQyIewouK6/S+xRs
  lNV78YwdLpx7L+n9K8St2G4R67ZXTMLmMu1uGQLc/BbOs5KPd9IMz8NtFxq1XQBq32/wh4+7Ow
  27Fe3Jx7pIfH5HQYCbwIfl2lr0AR818fxHqBbgNwEXkApxEA==
Date: Tue, 19 May 2026 15:53:23 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20260519135323.EMFPwImj@steffen%sdaoden.eu>
In-Reply-To: <20260519151600.3ded0958@hboeck.de>
References: <agxXF1J53iSJIrP6@suse.de> <20260519151600.3ded0958@hboeck.de>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.10.0-alpha-32-g06ea4d6fbf
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Fixed: local root exploit in haveged,
 fixed in 1.9.21, CVE-2026-41054

Hanno B=C3=B6ck wrote in
 <20260519151600.3ded0958@hboeck.de>:
 |On Tue, 19 May 2026 12:27:03 +0000
 |Marcus Meissner <meissner@suse.de> wrote:
 |
 |> If you are using haveged, todays release fixes a local root exploit.
 |
 |You can also fix this by uninstalling it.
 |
 |There's no need to have an "entropy daemon"... It adds needless
 |complexity and, as this issue shows, attack surface. There have been
 |many improvements in the Linux kernel's RNG (Jason Donenfeld, also known
 |as the Wireguard developer, did a lot of work on that) and I am quite
 |confident that there are no problems with the RNG on any reasonably
 |recent Linux kernel that an "entropy daemon" would help with.

Despite that "initial seeding hang" that once came with OpenSSH,
to me the most problematic thing was Python2 Mailman2, which
consumes an unbelievable "amount of entropy" with each loop tick,
for whatever unknown reason, i have never looked.
This counteracted the super conservative "entropy counting" of the
Linux kernel, causing stalls to absolute no-go.
The only option one had was to carefully save+restore entropy
across boots, as well as installing some jitterentropy daemon who
then "blew thousands of bits of entropy" into the kernel within
smallest fractions of a second.

I do not think that the Linux RNG was that much different than for
example the OpenBSD one, or the GnuPG one, they all used somewhat
sliding windows on large pools, stirring in, "blinding" results,
do they.  Anyway, now Linux comes with Blake2 and "perfect forward
secrecy", or, as Donenfeld said, "32 byte is enough".  (He, of
course, last i looked, went over great lengths to feed in samples
from all over the place, etc etc -- very long story.)

Or, in short: anyone who still drives Mailman2 (i do) on some
elder kernel which still uses T'so's RNG, with its conservative
"entropy counting", actually does need some entropy feed.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
