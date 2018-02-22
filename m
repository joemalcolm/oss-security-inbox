X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/02/22/2
Message-ID: <CAFB0D2QndLM--WJEGQFSpEcFp0ts_r0b-vHD-WL+tFH+uiX7SQ@mail.gmail.com>
Date: Thu, 22 Feb 2018 16:46:55 +0000
From: Justin Bull <me@...tinbull.ca>
To: oss-security@...ts.openwall.com, bugtraq@...urityfocus.com,  fulldisclosure@...lists.org
Subject: Re: [CVE-2018-1000088] Stored XSS vulnerability in Doorkeeper gem v2.1.0 - v4.2.5
Content-Type: text/plain; charset=utf-8

On Wed, Feb 21, 2018 at 5:17 PM Justin Bull <me@...tinbull.ca> wrote:

>
> Solution:
> ---------
> Upgrade to Doorkeeper v4.2.6 or later
>
>
Apologies. This fails to account for a non-trivial scenario.

Any software using Doorkeeper that has generated its own custom views[0]
requires manual work to verify there's no explicit HTML in the
`client_name` and `native_redirect_uri` field values.

This has been updated in the bulletin's Fix section[1].

[0]: https://github.com/doorkeeper-gem/doorkeeper/wiki/Customizing-views
[1]:
https://blog.justinbull.ca/cve-2018-1000088-stored-xss-in-doorkeeper/#fix
-- 
Justin Bull
PGP Fingerprint: E09D 38DE 8FB7 5745 2044 A0F4 1A2B DEAA 68FD B34C

