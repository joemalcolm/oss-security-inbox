X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/04/28/2
Message-ID: <87zk9w131k.fsf@mid.deneb.enyo.de>
Date: Sat, 28 Apr 2012 13:58:15 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: weak use of crypto in python-elixir can lead to information disclosure (CVE and peer review request)
Content-Type: text/plain; charset=utf-8

* Vincent Danen:

> CFB mode is only secure if the the IV is unpredictable and different
> for every message.

There are a few additional requirements.  Without some form of message
authentication, chosen-ciphertext attacks are still possible even with
a random IV.

> Because of this, and because the encryption key is shared for each
> database table (fields and rows), the same plaintext prefix is
> always encrypted to an identical and corresponding ciphertext
> prefix.  As a result, an attacker with access to the database could
> figure out the plaintext values of encrypted text.

And you can group by encrypted column values in the database.  That's
why I'm not sure if it's actually possible to address this issue in a
satisfying manner.
