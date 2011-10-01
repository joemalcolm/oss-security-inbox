X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/01/2
Message-ID: <20111001211802.GA22063@openwall.com>
Date: Sun, 2 Oct 2011 01:18:02 +0400
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: rpm/librpm/rpm-python memory corruption pre-verification
Content-Type: text/plain; charset=utf-8

On Thu, Sep 29, 2011 at 03:25:40PM +0200, nicolas vigier wrote:
> On Tue, 27 Sep 2011, Tavis Ormandy wrote:
> > https://bugzilla.redhat.com/show_bug.cgi?id=741606
> > https://bugzilla.redhat.com/show_bug.cgi?id=741612
> 
> Patches on rpm git :
> http://rpm.org/gitweb?p=rpm.git;a=commitdiff;h=11a7e5d95a8ca8c7d4eaff179094afd8bb74fc3f
> http://rpm.org/gitweb?p=rpm.git;a=commitdiff;h=a48f0e20cbe2ababc88b2fc52fb7a281d6fc1656

Thanks!  Now there's also:

http://rpm.org/gitweb?p=rpm.git;a=commitdiff;h=30635dd4330a192fa2b6e202a0e2490eba599a93

...and still no info on whether any of these issues were usable for more
than just DoS?

Alexander
