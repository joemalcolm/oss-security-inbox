X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/03/06/1
Message-ID: <b134b991-774d-5e38-f8ea-f81ffc02d8f4@enst-bretagne.fr>
Date: Sun, 6 Mar 2022 10:08:21 +0100
From: Gabriel Corona <gabriel.corona@...t-bretagne.fr>
To: oss-security@...ts.openwall.com
Subject: Re: DNS rebinding on ReadyMedia/minidlna v1.3.0 and below
Content-Type: text/plain; charset=utf-8

On 03/03/2022 21:56, Gabriel Corona wrote:
> ReadyMedia [1] (formerly MiniDLNA) v1.3.0 and below is vulnerable to DNS 
> rebinding attacks. A malicious remote web server may trick the user 
> browser into triggering arbitrary UPnP requests on the local DLNA server 
> and observe the result of these actions. Moreover, the shared files are 
> accessible through DNS rebinding as well.
> 
> A remote malicious server could exploit the user browser in order to:
> 
> * list the available media files and exfiltrate this list;
> * download the media files and exfiltrate them.
> 
> This has been fixed in ReadyMedia v1.3.1.
> 
> [1] https://sourceforge.net/projects/minidlna/
> 

This is CVE-2022-26505.

--
Gabriel
