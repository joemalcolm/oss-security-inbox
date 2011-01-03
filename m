X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/03/7
Message-ID: <1767014887.126919.1294083734165.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 3 Jan 2011 14:42:14 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley  <coley@...re.org>
Subject: Re: CVE Request: CrawlTrack < 3.2.7 - remote php code execution
Content-Type: text/plain; charset=utf-8

----- Original Message -----
> Versions of CrawlTrack prior to 3.2.7 are, according to the vendor,
> vulnerable to a remote PHP code execution attack if the stats pages
> are public
> 
> Vendor changelog: http://www.crawltrack.net/changelog.php
> 
> The attack vector isn't disclosed but a diff between 3.2.6 and 3.2.7
> show the vendor's fix was to escape special characters (using
> http://php.net/htmlspecialchars ) in values supplied through POST
> variables.

Please use CVE-2010-4537

Thanks.

-- 
    JB
