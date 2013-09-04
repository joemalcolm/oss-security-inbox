X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/09/04/10
Message-ID: <522750E1.7050109@fifthhorseman.net>
Date: Wed, 04 Sep 2013 11:25:21 -0400
From: Daniel Kahn Gillmor <dkg@...thhorseman.net>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: unauthorized host/service views displayed in servicegroup view
Content-Type: text/plain; charset=utf-8

[dropping cc's, just leaving oss-security]

On 09/03/2013 07:02 PM, Vincent Danen wrote:

> I mean, if someone wants to shoot themselves in the foot and document it
> as a feature, who are we to say otherwise?  We may not agree with it,
> but it's a documented feature (deliberately changed), so we can't just
> very well call it a security flaw because we don't like the new
> behaviour.

I'm curious about this.  If, say, a modern TLS library some day decides
to get around to implementing (old, deprecated, known-insecure,
previously-unimplemented) SSLv2, and announces it as a feature, and
enables it by default, is the consensus of this group that we would not
treat it as worthy of a CVE, despite being a clear security weakening?

At what point does the security community override the upstream
decisions and declare the packages vulnerable?

	--dkg


Download attachment "signature.asc" of type "application/pgp-signature" (1028 bytes)
