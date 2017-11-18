X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/18/2
Message-Id: <C5482347-011C-4B52-A495-0CB4CA059168@beckweb.net>
Date: Sat, 18 Nov 2017 08:23:48 +0100
From: Daniel Beck <ml@...kweb.net>
To: oss-security@...ts.openwall.com
Subject: Re: Multiple vulnerabilities in Jenkins plugins
Content-Type: text/plain; charset=utf-8


> On 11. Oct 2017, at 18:25, Daniel Beck <ml@...kweb.net> wrote:
> 
> SECURITY-557
> Maven Plugin bundled a version of the commons-httpclient library with the 
> vulnerability CVE-2012-6153 that incorrectly verified SSL certificates, 
> making it susceptible to man-in-the-middle attacks.

CVE-2017-1000397

> SECURITY-597
> Swarm Plugin Client bundled a version of the commons-httpclient library 
> with the vulnerability CVE-2012-6153 that incorrectly verified SSL 
> certificates, making it susceptible to man-in-the-middle attacks.

CVE-2017-1000402

> SECURITY-623
> Speaks! Plugin allows users with Job/Configure permission to run arbitrary 
> Groovy code inside the Jenkins JVM, effectively elevating privileges to 
> Overall/Run Scripts.

CVE-2017-1000403

