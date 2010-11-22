X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/22/12
Message-ID: <Pine.GSO.4.64.1011221126070.14862@faron.mitre.org>
Date: Mon, 22 Nov 2010 11:30:34 -0500 (EST)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: gif2png: command-line buffer overflow problem
Content-Type: text/plain; charset=utf-8


I'm typically uncomfortable assigning CVEs for such issues, since this 
makes the distinction between bugs and vulnerabilities even fuzzier than 
they already are, and potentially creates a "snowball effect" where 
suddenly CVE sets a precedent and inadvertently grants legitimacy to large 
numbers of issues that are of very little security concern to most 
consumers.

However, when there are common usage scenarios in which the product is 
used that produce a vulnerability, these have been given CVEs in the past. 
(Non-exploitable browser crashers kind of fall under this reasoning, 
because of the common usage scenarios where (1) users will click on links, 
and (2) users will have multiple tabs/windows/sessions open, so a 
browser-ending crash will affect those sessions.)

That's a long way of saying to use CVE-2009-5018 for this issue.

- Steve
