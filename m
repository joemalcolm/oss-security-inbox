X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/10/26/3
Message-ID: <8284992.IKFRmaKcSl@blackgate>
Date: Wed, 26 Oct 2016 10:08:56 +0200
From: Agostino Sarubbo <ago@...too.org>
To: Tavis Ormandy <taviso@...gle.com>
Cc: oss-security@...ts.openwall.com, Assign a CVE Identifier <cve-assign@...re.org>
Subject: Re: Re: jasper: memory allocation failure in jas_malloc (jas_malloc.c)
Content-Type: text/plain; charset=utf-8

On Tuesday 25 October 2016 12:13:44 Tavis Ormandy wrote:
> I'm not sure I understand the concern here. Isn't it usually expected
> that the administrator configures appropriate ulimits, and the code
> should just handle allocation failure gracefully?
> 
> If we are considering *not* implementing arbitrary hardcoded limits a
> security problem, that seems like a significant change in software
> design philosophy (I've heard it called the zero-one-infinity rule
> before).
> 
> Tavis.

Tavis,

more or less I agree with you, but since time ago I saw that similar bugs 
reveiced a CVE, I thought that these type of bugs could interest the community 
and them I'm sharing them.
If I'm not mistaken, CWE-789 covers these type of bugs.

--
Agostino
