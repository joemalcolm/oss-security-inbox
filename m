X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/03/15/3
Message-ID: <alpine.BSF.2.21.9999.2303152001170.67613@aneurin.horsfall.org>
Date: Wed, 15 Mar 2023 20:03:11 +1100 (EST)
From: Dave Horsfall <dave@...sfall.org>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: Re: TTY pushback vulnerabilities / TIOCSTI
Content-Type: text/plain; charset=utf-8

On Wed, 15 Mar 2023, Fabian Keil wrote:

> In ElectroBSD I removed TIOCSTI support in 2017 [0] and haven't noticed 
> any problems.

I hate tossing out functionality; would you not make it a privileged 
operation instead?

-- Dave
