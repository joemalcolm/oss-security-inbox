X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/18/5
Message-Id: <D90346EA-FF70-4F29-8BAD-41D77849F216@beckweb.net>
Date: Sat, 18 Nov 2017 08:27:16 +0100
From: Daniel Beck <ml@...kweb.net>
To: oss-security@...ts.openwall.com
Subject: Re: Reflected Cross-Site Scripting Vulnerability in Jenkins Delivery Pipeline Plugin
Content-Type: text/plain; charset=utf-8


> On 16. Nov 2017, at 16:23, Daniel Beck <ml@...kweb.net> wrote:
> 
> SECURITY-640
> Delivery Pipeline Plugin used the unescaped content of the query parameter 
> `fullscreen` in its JavaScript, resulting in a cross-site scripting 
> vulnerability through specially crafted URLs.


CVE-2017-1000404

