X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/09/08/3
Message-ID: <d5e3c4bd-b157-d9bd-5114-6c683be5a338@oracle.com>
Date: Tue, 8 Sep 2020 08:07:57 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: "qflb.wu" <qflb.wu@...ppsecurity.com.cn>
Cc: oss-security@...ts.openwall.com
Subject: Re: Re: [FD] libcroco multiple vulnerabilities
Content-Type: text/plain; charset=utf-8

On 8/13/20 10:57 AM, Alan Coopersmith wrote:
> Upstream closed these bugs as WONTFIX today since they have ended
> maintenance of the standalone libcroco, as discussed in the comments on
> https://gitlab.gnome.org/Archive/libcroco/-/issues/8
> (which is a different security fix, for CVE-2020-12825).

Distro maintainers should take note that GNU gettext also has an
embedded copy of libcroco sources:

https://git.savannah.gnu.org/gitweb/?p=gettext.git;a=tree;f=libtextstyle/gnulib-local/lib/libcroco

-- 
	-Alan Coopersmith-               alan.coopersmith@...cle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc
