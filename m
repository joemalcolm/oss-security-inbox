X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/05/19/1
Message-ID: <CAHmME9rmJGQTvsa0Z=d7Kb6P+m4PxR_dD2PD5bc3U1BjP5uEbw@mail.gmail.com>
Date: Sun, 19 May 2013 05:00:26 +0200
From: "Jason A. Donenfeld" <Jason@...c4.com>
To: Gilles Chehade <gilles@...lp.org>
Cc: oss-security <oss-security@...ts.openwall.com>, misc@...nsmtpd.org
Subject: Re: CVE Request: DoS in OpenSMTPD TLS Support
Content-Type: text/plain; charset=utf-8

On Sat, May 18, 2013 at 6:16 PM, Gilles Chehade <gilles@...lp.org> wrote:
> Not too nice to send a CVE request without ANY coordination with us ...

Sorry about that. I was in the midst of bumping packages in gentoo to
the snapshot where you had fixed the issue, when I figured it might be
wise to also get the issue tracked with a CVE asap. Sorry for jumping
the gun.

> Just for the record, you contacted us today reporting a bug which could
> be memory corruption and you didn't know if it could be exploited.

The quote was "I haven't looked into why this happens or if memory
corruption / code execution is a possibility, but at the very least,
it's a nasty DoS."

> The snapshot mail, commit log and diffs makes the issue obvious

Which is why I figured it was already a public issue, and therefore
not an issue to track it with a CVE. But apologies, nonetheless, for
jumping the gun. I'll coordinate with you more closely in the future.
