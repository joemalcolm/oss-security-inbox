X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/01/11/10
Message-Id: <A6967F04-154F-41FF-A7A3-1D227B4BF6D7@dwim.me>
Date: Wed, 11 Jan 2017 11:36:27 +0000
From: Carlos Martín Nieto <cmn@...m.me>
To: cve-assign@...re.org
Cc: Andreas Stieger <astieger@...e.com>, oss-security@...ts.openwall.com
Subject: Re: CVE Request: two security fixes in libgit2 0.25.1, 0.24.6
Content-Type: text/plain; charset=utf-8


> On 11 Jan 2017, at 03:41, cve-assign@...re.org wrote:
> 
> 
> 
>> https://github.com/libgit2/libgit2/commit/98d66240ecb7765e191da19b535c75c92ccc90fe
> 
> Use CVE-2017-5338.
> 
> 
>> https://github.com/libgit2/libgit2/commit/3829ba2e710553893faf6336cc6b2f3fc17a293e
> 
> Use CVE-2017-5339.
> 
> 
>> https://github.com/libgit2/libgit2/commit/2ac57aa89bde788173b54bd153430369deec64c0
> 
> This has no CVE ID; it does not seem to be a vulnerability fix.

CVE-2017-5338 and CVE-2017-5339 were also assigned to commits which are not fixing a vulnerability but adding tests to prevent a regression in this area. They’re different commits mostly as an artefact of the timing of the flaw being detected and when we were able to deal with it.


   cmn

