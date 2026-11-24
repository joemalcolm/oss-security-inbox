X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/24/18
Message-ID: <545dc0d7-59b8-4d3f-8420-7367b71f5926@oracle.com>
Date: Tue, 24 Nov 2026 11:18:35 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com, Norbert Pócs <norbertp@...nssl.org>, openssl-users <openssl-users@...nssl.org>
Subject: Re: OpenSSL: 4 Low severity fixes merged publicly: QUIC, X.509 (CRL processing) and TLS (DANE)
Content-Type: text/plain; charset=utf-8

On 11/24/26 03:25, Norbert Pócs wrote:
> OpenSSL Security Advisory [24th November 2026]
> ==============================================
> 
> The issues listed below have been fixed in the public openssl/openssl
> repository on GitHub. Releases containing these fixes are scheduled
> for 1st December 2026.

I don't see CVE-2026-121481 in this list, though it was published last week:
    https://www.cve.org/CVERecord?id=CVE-2026-121481

Is that because the pull request is not yet merged?
    https://github.com/openssl/openssl/pull/33652

(I know there was some public disagreement on severity level, with CISA first
  giving it a CVSS 3.1 score of 9.8, before later dropping it to 5.9, while
  https://tldrcve.com/openssl-encodeblock/ was suggesting it was low severity.)

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
