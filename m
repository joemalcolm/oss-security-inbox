X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/20/15
Message-ID: <4F197F9B.4020005@redhat.com>
Date: Fri, 20 Jan 2012 22:52:11 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: kernel: proc: clean up and fix /proc/<pid>/mem handling
Content-Type: text/plain; charset=utf-8

On 01/19/2012 12:05 PM, Eugene Teo wrote:
> On 01/19/2012 04:43 AM, Kees Cook wrote:
>> What's the problem with the old logic in the mem handling? (Why does this
>> need a CVE?)
> 
> This is a possible local privilege escalation issue on a system with
> ASLR disabled, combined with other exploitation techniques.

Detailed information can be found here,
https://access.redhat.com/kb/docs/DOC-69129

Thanks, Eugene
