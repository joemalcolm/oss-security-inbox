X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/28/4
Message-ID: <Pine.GSO.4.64.1103281036230.7261@faron.mitre.org>
Date: Mon, 28 Mar 2011 10:36:39 -0400 (EDT)
From: "Steven M. Christey" <coley@...-smtp.mitre.org>
To: oss-security <oss-security@...ts.openwall.com>, oss-security <oss-security@...ts.openwall.com>
cc: "Steven M. Christey" <coley@...-smtp.mitre.org>
Subject: Re: CVE Request -- Nagios -- XSS in the network status map CGI script
Content-Type: text/plain; charset=utf-8


On Fri, 25 Mar 2011, Jan Lieskovsky wrote:

>  Cross-site scripting (XSS) vulnerability in Nagios allows remote
> attackers to inject arbitrary web script or HTML via specially-crafted
> 'layer' parameter passed to the Nagios network status map CGI script
> (statusmap.cgi).
>
> References:
> [1] http://tracker.nagios.org/view.php?id=207
> [2] http://www.rul3z.de/advisories/SSCHADV2011-002.txt
> [3] http://secunia.com/advisories/43287/
> [4] https://bugzilla.redhat.com/show_bug.cgi?id=690877


Use CVE-2011-1523

- Steve
