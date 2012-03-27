X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/27/9
Message-ID: <20120327183022.GQ1398@redhat.com>
Date: Tue, 27 Mar 2012 12:30:22 -0600
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: distutils creates ~/.pypirc insecurely
Content-Type: text/plain; charset=utf-8

* [2012-03-27 16:39:37 +0200] Jakub Wilk wrote:

>* Vincent Danen <vdanen@...hat.com>, 2012-03-27, 08:15:
>>Standard flaw where a file that contains a username and password is 
>>written with insecure permissions.  This only affects python 2.6 
>>and higher.
>
>I see the vulnerable code in Python 2.3.7, 2.4.6 and 2.5.6, too.

Aha, thanks.  I do see it as well in Lib/distutils/command/register.py
where it offers to save the username/password.

-- 
Vincent Danen / Red Hat Security Response Team 
