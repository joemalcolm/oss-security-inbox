X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/03/3
Message-ID: <3230301C09DEF9499B442BBE162C5E48257575E2@SESTOEX04.enea.se>
Date: Fri, 3 Oct 2014 10:28:24 +0000
From: Sona Sarmadi <sona.sarmadi@...a.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: RE: more bash parser bugs (CVE-2014-6277, CVE-2014-6278)
Content-Type: text/plain; charset=utf-8


 
> So there isn't still any specific patch for CVE-2014-6277 and CVE-2014-6278
> according to your post   (http://www.openwall.com/lists/oss-
> security/2014/10/02/28)?
> 
> > * CVE-2014-6277 - uninitialized memory issue, almost certainly RCE
> > found by me. No specific patch yet.
> 
> > * CVE-2014-6278 - command injection RCE found by me. No specific patch
> yet.
> 
> But Florian's unofficial patch or its upstream version (bash43-027 & co)
> mitigates *ALL* these six so far known CVE, right?

I found some good answer here, thanks Michal :)
http://lcamtuf.blogspot.se/2014/10/bash-bug-how-we-finally-cracked.html
