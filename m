X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/12/08/3
Message-ID: <CAMopvkNhCA2dWwKMJbZjJLGD6NrxCRyZ3QOSetwdXPnGRz9mLQ@mail.gmail.com>
Date: Tue, 8 Dec 2020 07:55:04 +0100
From: Lukasz Lenart <lukaszlenart@...che.org>
To: Struts Users Mailing List <user@...uts.apache.org>
Cc: "announcements@...uts.apache.org" <announcements@...uts.apache.org>, announce@...che.org,  "security@...uts.apache.org" <security@...uts.apache.org>, oss-security@...ts.openwall.com,  bugtraq@...urityfocus.com
Subject: Apache Struts 2: CVE-2020-17530: Potential RCE when using forced evaluation
Content-Type: text/plain; charset=utf-8

Forced OGNL evaluation, when evaluated on raw user input in tag
attributes, may lead to remote code execution.

Problem
Some of the tag's attributes could perform a double evaluation if a
developer applied forced OGNL evaluation by using the %{...} syntax.
Using forced OGNL evaluation on untrusted user input can lead to a
Remote Code Execution and security degradation.

Solution
Avoid using forced OGNL evaluation on untrusted user input, and/or
upgrade to Struts 2.5.26 which checks if expression evaluation won't
lead to the double evaluation.

Please read our Security Bulletin for more details:
https://cwiki.apache.org/confluence/display/WW/S2-061

This vulnerability was identified by:
- Alvaro Munoz - pwntester at github dot com
- Masato Anzai of Aeye Security Lab, inc.

All developers are strongly advised to perform this action.


Kind regards
-- 
Łukasz
+ 48 606 323 122 http://www.lenart.org.pl/
