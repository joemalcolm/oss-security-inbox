X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/23/13
Message-ID: <54EAF4F7.8030308@tao.at>
Date: Mon, 23 Feb 2015 10:37:59 +0100
From: Sven Schwedas <sven.schwedas@....at>
To: oss-security@...ts.openwall.com
Subject: Re: Re: CVE request: BD-J implementation in libbluray
Content-Type: text/plain; charset=utf-8

On 2015-02-23 10:34, Jean-Baptiste Kempf wrote:
> On 23 Feb, Florian Weimer wrote :
>>> As for https://bugzilla.redhat.com/show_bug.cgi?id=959434
>>>
>>> "Fixing it would not change anything. Xlet (that requests the mount, or is
>>> being executed from the mount) could as well uncompress the files by self
>>> where it wants, even download other files from internet."
>>>
>>> So, maybe you want to have a full Xlet sandboxing? Or is it something
>>> else?
>>
>> Yes, I do think full sandboxing is required because content publishers
>> have attacked end user system integrity in the past, so I don't think
>> they can be trusted.
> 
> BD-J code comes from Blu-Rays. Downloading non-official blurays and
> executing it is like taking random binaries from internet and running
> them.

And the Sony rootkit came from official, store-bought discs …

> Patches are welcome, though...
> 
> 
> With my kindest regards,
> 


Download attachment "signature.asc" of type "application/pgp-signature" (649 bytes)
