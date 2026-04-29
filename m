Received: (qmail 11838 invoked by uid 550); 29 Apr 2026 23:01:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8144 invoked from network); 29 Apr 2026 22:15:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1777500920;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=s1LmO1PWIzKl+3rxHTQgWqlJeXdMniIfg6mMUDLGAjY=;
	b=Z/pYL5kg9FA1Jqd7wRTjYptlrvSdOLGNyauP2zsl2JxoUL9v2DP4iDEhgzRqnHnJMJv+WJ
	mElVapvcYnI7FGIF7TTdPRKQIavbbp1m4Eqz6LUYNw2QdXLMmRywRzQe5s1znDBvWcds8y
	4P+4z5bkWE2FzY3NzzU8qTMif5vhl5oLe/IBWqoIht5NPagRhUXvXks6NG6Tgv8AJln12f
	Tury/5kxGfqVFjC2nZAnM9rMGqhdtBaahwXj/O30pM6NzcFS9GEuFivqGmXhjHDrPI7GTX
	5for1B3MZ8CCV7XoyJw7VsNKK2F1z2pCobpPd6Nj1+JIamm3k/tLoORnte9TXQ==
Message-ID: <b8d9f060-6e83-42a5-8d34-4b34fe19b97f@cpansec.org>
Date: Wed, 29 Apr 2026 23:15:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTF6TobR6Sy5xQI+MRxpRYdUQ3ijkhrhTq/05Sw2ZgKDH0LB53+1fa+Fd69SXRO2/JNLNH5xlPuu8SOXLUcqzgh/uG0hAqRVxBqPAH3guUB+2+jFQSGP8fyKCn6R/jjOJitZLDIQ55IGzfNdgVlVsoVkLRdjw6agIPRQXUymVrusAAa1vuhGR2byzS0aeAAeAXzctmCyVtdTTBfOdZCmXl3nJEYI/t+lLNeClLaCmtGSkwzL57BvH5v1yyzS4WQfNIWhXObVJ9/CdYCUnNOop25gefhlHpZLq8IBJDA5r9qH3Y2sR+upCrdG+wvUQ3gez1mGBjkj5Do4s5sfrq1V+ASLW20hAPwa3XtobOul+igts1uGw0xc968JETstKpZ0j/qMyiS/YHmnb6JvdjCchflUYCwfd+gx694dyKPLfVqTH8mwFwbiD/m+UM1NJLuEicsJAzLMpDgpZX1b1YoNXw3yu/hww+vKqdVgyFgcUsTqr3dtriylZRVGeeVmw9F2Ux78v5qCvxuJUnMAPTBB1e+NE9/HxmqHSRTkBi61qE+S/l4kIewa35Pa/cqW7e16WvzkmAI7K4NLdGByX2g1asSMGUMgUXa/ye/b8152/pDJ3r0akuxQlygPC+HdT9A8UB6x8wf+PV33x/G3h1pkg8zVwz8RELHxiD36SDOKhZR4sA
X-GND-State: clean
X-GND-Score: -6
Subject: [oss-security] CVE-2026-7381: Plack::Middleware::XSendfile versions through 1.0053
 for Perl can allow client-controlled path rewriting

========================================================================
CVE-2026-7381                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-7381
   Distribution:  Plack
       Versions:  through 1.0053

       MetaCPAN:  https://metacpan.org/dist/Plack
       VCS Repo:  https://github.com/plack/Plack


Plack::Middleware::XSendfile versions through 1.0053 for Perl can allow
client-controlled path rewriting

Description
-----------
Plack::Middleware::XSendfile versions through 1.0053 for Perl can allow
client-controlled path rewriting.

Plack::Middleware::XSendfile allows the variation setting (sendfile
type) to be set by the client via the X-Sendfile-Type header, if it is
not considered in the middleware constructor or the Plack environment.

A malicious client can set the X-Sendfile-Type header to
"X-Accel-Redirect" to services running behind nginx reverse proxies,
and then set the X-Accel-Mapping to map the path to an arbitrary file
on the server.

Since 1.0053, Plack::Middleware::XSendfile is deprecated and will be
removed from future releases of Plack.

This is similar to CVE-2025-61780 for Rack::Sendfile, although
Plack::Middleware::XSendfile has some mitigations that disallow regular
expressions to be used in the mapping, and only apply the mapping for
the "X-Accel-Redirect" type.

Problem types
-------------
- CWE-200 Exposure of Sensitive Information to an Unauthorized Actor
- CWE-441 Unintended Proxy or Intermediary
- CWE-913 Improper Control of Dynamically-Managed Code Resources

Workarounds
-----------
Users can configure the X-Sendfile-Type in the middleware constructor,
and the reverse proxy to unset the X-Sendfile-Type header and (on
nginx) the X-Accel-Mapping request header.


Solutions
---------
Users are encouraged to set the appropriate header directly in their
applications, or write their own middleware layer that does not allow
configuration to be passed via HTTP request headers.


References
----------
https://metacpan.org/release/MIYAGAWA/Plack-1.0053/changes
https://metacpan.org/release/MIYAGAWA/Plack-1.0053/view/lib/Plack/Middleware/XSendfile.pm#DEPRECATION-NOTICE
https://nvd.nist.gov/vuln/detail/CVE-2025-61780

Timeline
--------
- 2025-10-10: Issue for Rack::Sendfile reported
- 2026-04-27: Issue reported to maintainer of Plack
- 2025-04-28: Plack 1.0052 released with improved security
   documentation in Plack::Middleware::XSendfile
- 2025-04-29: Plack 1.0053 released that deprecates
   Plack::Middleware::XSendfile

Credits
-------
CPANSec, finder



