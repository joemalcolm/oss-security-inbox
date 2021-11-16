X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/11/17/1
Message-ID: <3ba4a13789030965b7bf6aa7258cfd830db1d63c.camel@apache.org>
Date: Tue, 16 Nov 2021 13:51:52 -0700
From: Zach Hoffman <zrhoffman@...che.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2021-43350: Apache Traffic Control: LDAP filter injection vulnerability in Traffic Ops
Content-Type: text/plain; charset=utf-8

CORRECTION:
This issue was discovered by Apache Traffic Control user zhouxufeng@...edance.com.

On Thu, 2021-11-11 at 20:45 +0000, Zach Hoffman wrote:
> Severity: critical
> 
> Description:
> 
> An unauthenticated Apache Traffic Control Traffic Ops user can send a request with a specially-crafted username to the POST /login endpoint of any API version to inject unsanitized content into the LDAP filter.
> 
> 
> Credit:
> 
> This issue was discovered by Apache Traffic Control user pupiles.
> 
> References:
> 
> https://trafficcontrol.apache.org/security/
> 

