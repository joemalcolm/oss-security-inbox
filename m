X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/19/4
Message-ID: <4F179696.8080406@redhat.com>
Date: Thu, 19 Jan 2012 12:05:42 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: Kees Cook <kees@...ntu.com>, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: kernel: proc: clean up and fix /proc/<pid>/mem handling
Content-Type: text/plain; charset=utf-8

On 01/19/2012 04:43 AM, Kees Cook wrote:
> What's the problem with the old logic in the mem handling? (Why does this
> need a CVE?)

This is a possible local privilege escalation issue on a system with
ASLR disabled, combined with other exploitation techniques.

Eugene
