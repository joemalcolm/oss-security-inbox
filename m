X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/04/19/9
Message-ID: <YH3hHq9VyQnz4kjY@symphytum.spacehopper.org>
Date: Mon, 19 Apr 2021 20:59:26 +0100
From: Stuart Henderson <stu@...cehopper.org>
To: oss-security@...ts.openwall.com
Subject: Re: xscreensaver package caps gets raw socket
Content-Type: text/plain; charset=utf-8

On 2021/04/19 14:31, Eli Schwartz wrote:
> Also fping is the standard fping, but there is no standard ping so one
> would need to coordinate adding the option to a number of different
> descendant forks of 4.3BSD ping, before it could be reliably used.

Unfortunately fping isn't really standard either (e.g. flent uses it but
has a bunch of checks to make sure the installed version works as expected;
https://github.com/tohojo/flent/blob/master/flent/runners.py#L1210)
though it's less of a challenge than the many different pings.

