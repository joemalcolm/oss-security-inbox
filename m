X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/35
Message-ID: <87pkwdzkj1.fsf@linuxpenguins.xyz>
Date: Tue, 10 Nov 2026 09:50:58 +1100
From: Brian May <brian@...uxpenguins.xyz>
To: oss-security@...ts.openwall.com
Subject: Re: Home Assistant: the password is not the key — token secrets in cleartext, two token classes never expire, password change revokes none (2026.11.0, live-proven)
Content-Type: text/plain; charset=utf-8

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
