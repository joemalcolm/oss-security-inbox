X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/03/6
Message-Id: <F89A2700-8429-400D-B86F-37A098C20213@dwheeler.com>
Date: Mon, 3 Aug 2026 12:33:44 -0400
From: "David A. Wheeler" <dwheeler@...eeler.com>
To: oss-security@...ts.openwall.com
Subject: Re: Some Changes to GNOME Security Tracking
Content-Type: text/plain; charset=utf-8

On Jul 31, 2026, at 12:42 PM, Eli Schwartz <eschwartz@...too.org> wrote:
>> I heard that the Linux Foundation has declared the danger of "AI
>> vulnerabilities" is so great that they are founding a group called
>> Akrites, devoted to coordinating security incident response. ... If projects don't fix their
>> software "fast enough", Akrites will declare themselves the "maintainer
>> of last resort" to publish a fixed version.

Please allow me to point you to the actual announcement & project page,
which explains what is *actually* going on instead.

The Akrites announcement here:
https://www.linuxfoundation.org/press/linux-foundation-and-industry-leaders-launch-akrites-to-defend-critical-open-source-software-against-ai-enabled-cyber-threats
instead says, "Bug fixes flow back into each project’s original home, on maintainers’ terms. Where a critical package HAS NO ACTIVE MAINTAINER [emphasis mine], Akrites will serve as maintainer of last resort so fixes to the latest version reach everyone in a timely fashion."

Note that the "last resort" ONLY applies when there is NO active maintainer.

You can find more details about Akrites here: <https://akrites.org>
which says: "The availability of models means a popular library can receive the same vulnerability described five different ways from five reporters in one week... Every organization scanning the same software independently risks racing to disclosure, overwhelming maintainers and exposing pre-patch findings to attackers.".

Full disclosure: I work at the Linux Foundation, but I do *not* work on the Akrites project & I don't speak for them.

--- David A. Wheeler

