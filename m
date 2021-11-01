X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/11/01/5
Message-ID: <alpine.BSF.2.21.9999.2111020349110.70183@aneurin.horsfall.org>
Date: Tue, 2 Nov 2021 03:53:12 +1100 (EST)
From: Dave Horsfall <dave@...sfall.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2021-42574: rustc 1.56.0 and bidirectional-override codepoints in source code
Content-Type: text/plain; charset=utf-8

On Mon, 1 Nov 2021, Pietro Albini wrote:

> The Rust Security Response WG was notified of a security concern 
> affecting source code containing "bidirectional override" Unicode 
> codepoints: in some cases the use of those codepoints could lead to the 
> reviewed code being different than the compiled code.

[...]

Am I the only one here who remembers the original ALGOL specification that 
what is printed on the paper is the language?

We've seen the same in the DNS, so I guess that it was only a matter of 
time.

-- Dave
