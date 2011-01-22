X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/22/1
Message-ID: <Pine.GSO.4.64.1101221511360.23018@faron.mitre.org>
Date: Sat, 22 Jan 2011 15:13:29 -0500 (EST)
From: "Steven M. Christey" <coley@...-smtp.mitre.org>
To: Eugene Teo <eugeneteo@...nel.org>
cc: Vasiliy Kulikov <segoon@...nwall.com>, oss-security@...ts.openwall.com, "Steven M. Christey" <coley@...-smtp.mitre.org>
Subject: Re: [PATCH] acpi: debugfs: fix buffer overflows, double free
Content-Type: text/plain; charset=utf-8


On Fri, 21 Jan 2011, Eugene Teo wrote:

> On 01/21/2011 04:08 AM, Vasiliy Kulikov wrote:
>> File position is not controlled, it may lead to overwrites of arbitrary
>> kernel memory.  Also the code may kfree() the same pointer multiple
>> times.
>
> http://lkml.org/lkml/2011/1/20/348
> https://bugzilla.redhat.com/CVE-2011-0023
>
> Please use CVE-2011-0023 (this does not include the unresolved flaw described 
> in the following paragraph below).

There seem to be 2 types of issues described above - the uncontrolled file 
position / memory overwrite, and a "double free".  So there should 
probably be 2 separate CVEs, not one.  Am I missing something?

- Steve
