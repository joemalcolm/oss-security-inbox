X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/08/14/1
Message-ID: <CABRvpqDEaYk2XMTzhEYYGQxUNvpbnSk8qWwO6oSp5_qof1DXZw@mail.gmail.com>
Date: Thu, 14 Aug 2014 00:57:36 -0400
From: Andrew Nacin <nacin@...dpress.org>
To: cve-assign@...re.org
Cc: Open Source Security <oss-security@...ts.openwall.com>
Subject: Re: WordPress 3.9.2 release - needs CVE's
Content-Type: text/plain; charset=utf-8

On Wed, Aug 13, 2014 at 1:47 AM, <cve-assign@...re.org> wrote:
>
>  > XSS: https://core.trac.wordpress.org/changeset/29398
>
> We think this can have a CVE ID only if it allows privilege escalation
> from Administrator to Super Admin in a Multisite installation. Does
> it? (On other installations, Administrator has the unfiltered_html
> capability.)
>

Yes.

