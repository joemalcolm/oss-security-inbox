X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/03/13/2
Message-ID: <20140313112433.GO10305@symphytum.spacehopper.org>
Date: Thu, 13 Mar 2014 11:24:33 +0000
From: Stuart Henderson <stu@...cehopper.org>
To: oss-security@...ts.openwall.com
Subject: Re: Re: CVE Request: file: crashes when checking softmagic for some corrupt PE executables
Content-Type: text/plain; charset=utf-8

On 2014/03/05 12:07, cve-assign@...re.org wrote:
> Use CVE-2014-2270.
> 
> A CVE ID seems worthwhile because of possible libmagic use cases.
> 
> "file can be made to crash" is typically not security-relevant on its
> own (a user can recover from this by not continuing to run file on the
> same crafted file). We're not sure whether any distribution has
> packages that rely on server-side use of libmagic, or whether it's
> common to have long-running processes that use libmagic with untrusted
> input.

file(1)/libmagic certainly have a security impact, for example they
are used by various mail anti-virus checkers like MailScanner and
amavisd-new, also some IDS/honeypot software (Bro, Nepenthes), all
of which are expected to handle at best untrustworthy, at worst
downright malicious input.

