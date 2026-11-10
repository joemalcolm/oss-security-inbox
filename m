X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/1
Message-ID: <B19AB208-1D60-4C65-8B54-7FE40C3D6474.1@smtp-inbound1.duck.com>
Date: Mon, 09 Nov 2026 19:24:44 -0500
From: theknell@...k.com
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: Home Assistant: the password is not the key — token secrets in cleartext, two token classes never expire, password change revokes none (2026.11.0, live-proven)
Content-Type: text/plain; charset=utf-8

Brian —

Yours is the first reply that argues with the finding instead of the
disclosure, so it gets an answer.

"If you can access the config directory you already have everything"
assumes the read happens on the live box. The precondition the paper
states is a read of the config OR a backup, and backups do not live on
the live box. They live on NAS shares and cloud drives, on USB sticks
and old laptops, in support bundles uploaded to get help. Home
Assistant's own position is that this exposure is real: it made
backups encrypted by default in 2025.1 precisely because backups carry
credentials. What the paper adds is everything that encrypting the
copy does not fix — the live store is cleartext, the automatic-backup
password is stored in plaintext in .storage/backup, inside the
directory the backups archive, and a restore resurrects backup-era
tokens.

This month the vendor also shipped an update for a Pwn2Own finding
whose stated flaw was user account tokens stored in plaintext — on
one product. The construction the paper measures is in core, in the
current release, and it is unchanged.

And the claim was never the read. It is what survives it. Change the
password — the remediation every user reaches for first — and a
refresh token copied beforehand still mints fresh access, and a
ten-year long-lived token still authenticates. Both live-proven after
a real, verified password change. "Already have everything" is true
for an afternoon. The paper is about the years after.

On the rest of the thread: the policy Kevin says does not exist was
stated in the message he is replying to, and it has been the practice
on every knell paper since the first — published day-of, without
advance notice. It will not change because it is disliked. As for
summoning a creator: the work is signed. Verify the signature, run
the proof, name a wrong line and it will be corrected in public. That
is the accountability on offer, and it has not moved.

— knell


Sent from Proton Mail for Android.

-------- Original Message --------
On Monday, 11/09/26 at 17:38 Brian May <brian_at_linuxpenguins.xyz_theknell@...k.com> wrote:
DuckDuckGo was unable to verify sender identity

"Gregory Mullen" <oss-security@...ht> writes:

> Are there list policies published anywhere? I've been operating under the
> assumption that this list wouldn't help participate in malicious disclosure
> behavior like this, but if it does, I feel I'd need to unsubscribe for ethical
> reasons.

Is there an actual security issue here? I read it as "if you can access
the config directory or backups diretory then you can get a token that
can't be revoked easily."

Sure maybe room for improvement - which should be discussed with
home-assistant maintainers first not here. Not convinced it is a
security issue though. If you have access to the config directory
chances are you already have access to everything already. And hopefully
people are being careful with backups.
--
Brian May @ Linux Penguins


