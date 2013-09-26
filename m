X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/09/26/2
Message-ID: <20130926154215.GA10136@lonestar>
Date: Thu, 26 Sep 2013 21:12:15 +0530
From: Dhiru Kholia <dhiru.kholia@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Reproducible Builds for Fedora
Content-Type: text/plain; charset=utf-8

On 09/25/13 at 11:45am, Ludwig Nussel wrote:
> Dhiru Kholia wrote:
> >I have been working on having Reproducible Builds in Fedora for some
> >time.
> >
> >At this point, I think I have something demoable. Ensuring Reproducible
> >Builds is a big task and I want your feedback, ideas, code and support.
> 
> In openSUSE we have reproducible binaries to a certain extend. That
> project was started some years ago with different (non-security)
> intentions. Since the build service rebuilds packages automatically
> if any depending package changes, a way was needed to avoid publishing new
> rpms if the build result result didn't actually change. So there are
> now some scripts that automatically run at the of a new build and
> determine with some heuristics whether the new rpms match the old
> rpms¹. You can see the output of that script in every build log in
> openSUSE:Factory.
> 
> https://build.opensuse.org/package/show/openSUSE:Factory/build-compare

These scripts look great. Thanks Ludwig!

Hopefully, we can re-use them in Fedora.

-- 
Dhiru
