X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/11/09/1
Message-ID: <4AF746E5.7020905@extendedsubset.com>
Date: Sun, 08 Nov 2009 16:32:05 -0600
From: Marsh Ray <marsh@...endedsubset.com>
To: ArkanoiD <ark@...ex.net>
CC: oss-security@...ts.openwall.com, tls@...f.org
Subject: Re: [TLS] CVE-2009-3555 for TLS renegotiation MITM attacks
Content-Type: text/plain; charset=utf-8

ArkanoiD wrote:
> BTW renegotiation handshake looks quite similar to initial handshake from
> the client point of view;

Yeah, currently it looks identical.

> is there a way to detect the attack on client side
> and drop the connection?

With draft-rescorla-tls-renegotiate, the new header comes back to the
client on Server Hello, and this notifies the client that the server
believes it's a re-negotation. Even better, it ties it strongly to the
previous session, so legit renegotiations are protected, too.

- Marsh

