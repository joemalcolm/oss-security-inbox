X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/03/24/3
Message-ID: <78ad4469-23ca-e81d-6a5f-43afc716dfa9@enst-bretagne.fr>
Date: Thu, 24 Mar 2022 07:46:31 +0100
From: Gabriel Corona <gabriel.corona@...t-bretagne.fr>
To: oss-security@...ts.openwall.com
Subject: Re: Lack of TLS certification chain validation in ZAP Proxy
Content-Type: text/plain; charset=utf-8

On 23/03/2022 22:02, Gabriel Corona wrote:
> ZAP proxy does not verify the certificate chain of the HTTPS servers it 
> connects to. For example, it connects without warning to servers 
> presenting a self-signed certificate, an expired certificate, etc.
> 
> This opens up a browser configured to use ZAP as an intercepting proxy to:
> 
> 1. man-in-the-middle (MITM) attacks;
> 2. DNS rebinding attacks (to HTTPS servers configured as default virtual 
> server).
> 

This is CVE-2022-27820.

Regards,

Gabriel Corona
