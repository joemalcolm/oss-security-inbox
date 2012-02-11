X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/02/11/1
Message-ID: <20120211085047.GA18474@openwall.com>
Date: Sat, 11 Feb 2012 12:50:47 +0400
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: MySQL 0-day - does it need a CVE?
Content-Type: text/plain; charset=utf-8

On Fri, Feb 10, 2012 at 12:36:46AM +0400, Solar Designer wrote:
> The table at the bottom of:
> 
> http://www.oracle.com/technetwork/topics/security/cpujan2012-366304.html
> 
> lists 27 MySQL vulnerabilities, all with CVE IDs and CVSS scoring - but
> little other info.

Here's a more direct link:

http://www.oracle.com/technetwork/topics/security/cpujan2012-366304.html#AppendixMSQL

(e.g. for referring to in distro advisories).

News story summarizing the problem (in Russian, sorry):

http://www.opennet.ru/opennews/art.shtml?num=33051

It also mentions that Oracle Linux merely reuses RHEL's updates to
MySQL without any reference to Oracle's own MySQL vulnerability/fix
info.  So it is not even clear whether Oracle Linux has these 27 bugs in
MySQL fixed or not, despite of MySQL being an Oracle product.

Alexander
