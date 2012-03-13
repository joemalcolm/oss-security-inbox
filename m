X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/13/2
Message-ID: <20120313100250.19f1bc12@redhat.com>
Date: Tue, 13 Mar 2012 10:02:50 +0100
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Cc: Kurt Seifried <kseifried@...hat.com>
Subject: Re: CVE request: openssl: null pointer dereference issue
Content-Type: text/plain; charset=utf-8

On Mon, 12 Mar 2012 13:46:07 -0600 Kurt Seifried wrote:

> Please use CVE-2012-1165 for this issue.

To clarify, the reply should have looked as:

 -- 8< --

> Note that additional similar issue in mime_param_cmp was fixed in
> 0.9.8u and 1.0.0h as:
>   http://cvs.openssl.org/chngview?cn=22252
> 
> This can also be triggered by malformed S/MIME message.

Please use CVE-2012-1165 for this issue.

> The above commit also corrects an issue with the previous mime_hdr_cmp
> fix that could cause the function to return either "less than" or
> "greater than" when comparing NULL to non-NULL.  There's no known
> security impact of this change, it seems it could cause verification /
> decryption to fail when it can succeed. Reported by "bla".

 -- 8< --

to make ti clear that CVE-2012-1165 is for the mime_param_cmp issue
rather than mime_hdr_cmp fix correction.

-- 
Tomas Hoger / Red Hat Security Response Team
