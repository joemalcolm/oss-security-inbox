X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/5
Message-ID: <CAFfBHfZGUN_LyripFL80aSr+3hi9+Vs3+XhPMJE=8KoHXU4fsQ@mail.gmail.com>
Date: Tue, 10 Nov 2026 00:42:14 -0600
From: Aaron Rainbolt <arraybolt3@...il.com>
To: oss-security@...ts.openwall.com
Subject: "Malicious" public disclosure is a lot better than other ways of misusing 0-days (Was: Home Assistant: the password is not the key — token secrets in cleartext, two token classes never expire, password change revokes none (2026.11.0, live-proven))
Content-Type: text/plain; charset=utf-8

On Tue, Nov 10, 2026 at 12:27 AM Gregory Mullen <oss-security@...ht> wrote:
>
> > Is there an actual security issue here? I read it as "if you can access
> > the config directory or backups diretory then you can get a token that
> > can't be revoked easily."
> >
> > Sure maybe room for improvement - which should be discussed with
> > home-assistant maintainers first not here. Not convinced it is a
> > security issue though. If you have access to the config directory
> > chances are you already have access to everything already. And hopefully
> > people are being careful with backups.
>
> No, I don't think there's a meaningful exploit here. If you give someone your
> "home key" as above, they could make an impression and keep it forever too. So
> their security model holds. :P The "exploit" as described is boring, if it even
> exists at all. But this is the straw that broke my back, so to speak.
>
> With the number of LLM generated/assisted exploits being disclosed
> irresponsibly. I feel it's important to draw a line in the sand, and not just
> allow malicious disclosures to become the new normal. This report isn't
> critically important, but I *strongly* feel that rejecting behavior like this is
> important.

I mean, if someone with knowledge of a 0-day decides to act
maliciously, I'd much rather them do so by making said 0-day public
than by selling it to someone or weaponizing it themselves. If I could
encourage everyone in the world with knowledge of a 0-day and desire
to act maliciously to post it publicly instead of doing anything
worse, I would in a heartbeat. (Of course, I'd rather be able to make
them all decide to not behave maliciously, but you get the point.)

Even malicious disclosures are valuable to end-users, as they may give
users a warning to turn off or reconfigure services until a patch
exists. I understand that in this situation it's unclear if there is
any vulnerability at all or if it's anything notable if so, but even
if this was serious, I'm not sure it's in anyone's best interest to
discourage publishing 0-days, beyond strongly recommending responsible
disclosure practices and throwing some "shame on you" at users who do
things in a reckless fashion.

--
Aaron

> I suspect the people who use LLMs to find exploits for them also aren't smart
> enough to understand the risks they could expose people to. Those who don't
> need an LLM to understand, need to be careful we don't forget it either. It's a
> game, until it isn't.
>
>
