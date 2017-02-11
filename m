X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/02/11/10
Message-ID: <alpine.GSO.2.20.1702110917490.2297@freddy.simplesystems.org>
Date: Sat, 11 Feb 2017 09:20:55 -0600 (CST)
From: Bob Friesenhahn <bfriesen@...ple.dallas.tx.us>
To: oss-security@...ts.openwall.com
Subject: Re: MITRE is adding data intake to its CVE ID process
Content-Type: text/plain; charset=utf-8

On Sat, 11 Feb 2017, Moritz Muehlenhoff wrote:
>
> Having CVEs assigned is of lesser importance, this was never primarily
> why we posted security vulnerabilities here. Obtaining CVE IDs caused
> little overhead on our side, but if that changes (and the announced
> changes sound like that), then there will simply be less CVE coverage
> I'm afraid.

In my perhaps limited experience, Debian package maintainers do not 
take action to correct a security issue in stable distributions unless 
a CVE is assigned.  They do not usually act merely based on the 
upstream package developer/maintainer reporting that they discovered 
and fixed a security issue.  If it is more challenging to get a CVE 
assigned, then many more security issues in stable distributions will 
remain unfixed.

Bob
-- 
Bob Friesenhahn
bfriesen@...ple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
