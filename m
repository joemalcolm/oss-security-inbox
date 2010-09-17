X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/09/17/9
Message-ID: <i70but$vlc$1@dough.gmane.org>
Date: Fri, 17 Sep 2010 13:27:55 -0500
From: Raphael Geissert <geissert@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: pixelpost
Content-Type: text/plain; charset=utf-8

Raphael Geissert wrote:
> It also appears to be using PHP_SELF in some places, so that's another XSS
> vector. Will confirm it later.

There a few easily-exploitable vectors on the following admin pages:
admin/index.php?view=comments
admin/index.php?view=options
admin/index.php?view=info

E.g.
http://host/pixelpost/admin/index.php/%22%3E%3Cscript%3Ewindow.alert();
%3C/script%3E'%3E%3Cscript%3Ewindow.alert();%3C/script%3E/?view=info


There is also another vector on the feeds generator if a template uses the 
"old" (according to the code) tag <ATOM_AUTODETECT>.
Similarly, if a template uses the <TAG_RSS_LINK> or <TAG_ATOM_LINK> tags 
there's another XSS vector via the tag= GET variable(none of the default 
templates do, in 1.7.1 and 1.7.3.)

There are a few more in other places, but I guess the picture is clear.

Regards,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net


