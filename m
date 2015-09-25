X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4785" "Friday" "25" "September" "2015" "15:04:13" "+0800" "Jing Wang" "justqdjing@gmail.com" "<CAFWG0-jLy9ZD806A75Pzitn1HStkRpWnAYn-RnpjduBXrmn+FQ@mail.gmail.com>" "156" "[oss-security] VuFind 1.0 Web Application Reflected XSS (Cross-site Scripting) 0-Day Bug Security Issue" nil nil nil "9" "2015092507:04:13" "[oss-security] VuFind 1.0 Web Application Reflected XSS (Cross-site Scripting) 0-Day Bug Security Issue" (number mark "        justqdjing@g Sep 25  156/4785  " thread-indent "\"[oss-security] VuFind 1.0 Web Application Reflected XSS (Cross-site Scripting) 0-Day Bug Security Issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21922 invoked by uid 550); 25 Sep 2015 07:04:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21819 invoked from network); 25 Sep 2015 07:04:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=G0Vatn1nmdCtUladImPp4ruyW8JfuGLy1tBcUfBqFB0=;
        b=mTZVvyT9poj6KNijyUhVvbQq4bVe56B9M10MBkKvwIJePQ4YsheMIPpoF0AEpOds7x
         8OHn7v7v2L1L571iEu/mC5mJlORaZb4ytYDahI/HWF+8BnadHYk2XhA/iaLShjyDWZrm
         I94pnJJwDoKgeHpKXfRpl2KD3sFBSgHoN0YDTzyrVXmBEsDO0UOOS+xmKU71dwG+QrkG
         g42dr80N8qt1ab6eKtY9HxA5WC8m/uXaQDKCdo+EroUt8lHdFp8KBgkIpQwDdygeU6W8
         zpn8EeyE9R57Fn0wxp+YmBODsgph+JNdKnRzXDciRG9PyLIrPqT6iCL0XtgQASXKRnGZ
         o95w==
MIME-Version: 1.0
X-Received: by 10.107.129.104 with SMTP id c101mr4525624iod.141.1443164654004;
 Fri, 25 Sep 2015 00:04:14 -0700 (PDT)
Message-ID: <CAFWG0-jLy9ZD806A75Pzitn1HStkRpWnAYn-RnpjduBXrmn+FQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113ed3608df1c905208cf41b
Date: Fri, 25 Sep 2015 15:04:13 +0800
From: Jing Wang <justqdjing@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] VuFind 1.0 Web Application Reflected XSS (Cross-site Scripting) 0-Day
 Bug Security Issue
To: oss-security@lists.openwall.com, fulldisclosure@seclists.org

--001a113ed3608df1c905208cf41b
Content-Type: text/plain; charset=UTF-8

*VuFind 1.0 **Web Application **Reflected XSS (Cross-site Scripting) 0-Day
Bug Security Issue*



Exploit Title: VuFind Results? &lookfor parameter Reflected XSS Web
Security Vulnerability
Product: VuFind
Vendor: VuFind
Vulnerable Versions: 1.0
Tested Version: 1.0
Advisory Publication: September 20, 2015
Latest Update: September 25, 2015
Vulnerability Type: Cross-Site Scripting [CWE-79]
CVE Reference:
Impact CVSS Severity (version 2.0):
CVSS v2 Base Score: 4.3 (MEDIUM) (AV:N/AC:M/Au:N/C:N/I:P/A:N) (legend)
Impact Subscore: 2.9
Exploitability Subscore: 8.6
CVSS Version 2 Metrics:
Access Vector: Network exploitable; Victim must voluntarily interact with
attack mechanism
Access Complexity: Medium
Authentication: Not required to exploit
Impact Type: Allows unauthorized modification
Discover and Reporter: Wang Jing [School of Physical and Mathematical
Sciences (SPMS), Nanyang Technological University (NTU), Singapore]
(@justqdjing)







*Suggestion Details:*


*(1) Vendor & Product Description:*


*Vendor:*
VuFind



*Product & Vulnerable Versions:*
VuFind
1.0



*Vendor URL & Download:*
Product can be obtained from here,
http://sourceforge.net/p/vufind/news/




*Product Introduction Overview:*
"VuFind is a library resource portal designed and developed for libraries
by libraries. The goal of VuFind is to enable your users to search and
browse through all of your library's resources by replacing the traditional
OPAC to include: Catalog Records, Locally Cached Journals, Digital Library
Items, Institutional Repository, Institutional Bibliography, Other Library
Collections and Resources. VuFind is completely modular so you can
implement just the basic system, or all of the components. And since it's
open source, you can modify the modules to best fit your need or you can
add new modules to extend your resource offerings. VuFind runs on Solr
Energy. Apache Solr, an open source search engine, offers amazing
performance and scalability to allow for VuFind to respond to search
queries in milliseconds time. It has the ability to be distributed if you
need to spread the load of the catalog over many servers or in a server
farm environment. VuFind is offered for free through the GPL open source
license. This means that you can use the software for free. You can modify
the software and share your successes with the community! Take a look at
our VuFind Installations Wiki page to see how a variety of organizations
have taken advantage of VuFind's flexibility. If you are already using
VuFind, feel free to edit the page and share your accomplishments. "






*(2) Vulnerability Details:*
VuFind web application has a computer security problem. Hackers can exploit
it by reflected XSS cyber attacks. This may allow a remote attacker to
create a specially crafted request that would execute arbitrary script code
in a user's browser session within the trust relationship between their
browser and the server.

Several other similar products 0-day vulnerabilities have been found by
some other bug researchers before. VuFind has patched some of them. "scip
AG was founded in 2002. We are driven by innovation, sustainability,
transparency, and enjoyment of our work. We are completely self-funded and
are thus in the comfortable position to provide completely independent and
neutral services. Our staff consists of highly specialized experts who
focus on the topic information security and continuously further their
expertise through advanced training".


*(2.1)* The code flaw occurs at "lookfor?" parameter in
"/vufind/Resource/Results?" page.

Some other researcher has reported a similar vulnerability here and VuFind
has patched it.
https://vufind.org/jira/si/jira.issueviews:issue-html/VUFIND-54/VUFIND-54.html







*(3) Solution:*
Update to new version.









*References:*
http://tetraph.com/security/xss-vulnerability/vufind-xss/
http://securityrelated.blogspot.com/2015/09/vufind-xss.html
https://vulnerabilitypost.wordpress.com/2015/09/22/vufind-xss/
http://tetraph.blog.163.com/blog/static/234603051201582525130175/
https://packetstormsecurity.com/files/133374/Winmail-Server-4.2-Cross-Site-Scripting.html
http://marc.info/?l=oss-security&m=144094021709472&w=4
http://lists.openwall.net/full-disclosure/2015/08/31/2
http://ithut.tumblr.com/post/128012509383/webcabinet-winmail-server-42-reflected-xss
http://seclists.org/fulldisclosure/2015/Aug/84
http://lists.openwall.net/full-disclosure/2015/08/31/2







--
Jing Wang,
Division of Mathematical Sciences (MAS),
School of Physical and Mathematical Sciences (SPMS),
Nanyang Technological University (NTU), Singapore.
http://www.tetraph.com/wangjing/
https://twitter.com/justqdjing

--001a113ed3608df1c905208cf41b--
