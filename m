X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/10/18/1
Message-ID: <CACYkhxiJXg+Hzq9x8MiNDMJgu-Qg6fXOGSSUMMq7Q1_GnZhx9A@mail.gmail.com>
Date: Fri, 18 Oct 2013 12:28:18 +1100
From: Michael Samuel <mik@...net.net>
To: oss-security@...ts.openwall.com
Subject: Re: RESEND: CVE Request: pwgen
Content-Type: text/plain; charset=utf-8

On 16 October 2013 16:59, Kurt Seifried <kseifried@...hat.com> wrote:
> CVE-2013-4443 pwgen Secure mode has bias towards numbers and uppercase
> letters

Solar Designer picked up that this one should probably not have been assigned.

The problem wasn't normal bias - it was that it was enforcing
"password rules" requiring at-least one uppercase and number, but not
lowercase (which was a normal bug).  So the "fix" would technically
make the keyspace smaller.

I added the -R / --no-rules flag to my branch which removes
enforcement altogether, the full diff from 2.06 can be viewed here:
https://github.com/therealmik/pwgen/compare/securityfixes

Before using this flag, you should consider the minor negative effects
on the keyspace vs. generating passwords which might be "accidentally"
cracked while looking for simpler passwords.  Either way, generating a
longer password has a far better effect on security.

It is not my intent to maintain this package long-term.  If anyone is
interested, please fork and push NMUs to Debian.

Regards,
  Michael
