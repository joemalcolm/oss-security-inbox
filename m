X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/07/16/5
Message-ID: <20080716134655.582373cf@redhat.com>
Date: Wed, 16 Jul 2008 13:46:55 +0200
From: Tomas Hoger <thoger@...hat.com>
To: hanno@...eck.de
Cc: oss-security@...ts.openwall.com, coley@...re.org
Subject: Re: CVE request: Wordpress XSS
Content-Type: text/plain; charset=utf-8

On Tue, 15 Jul 2008 19:22:47 +0200 Hanno Böck <hanno@...eck.de> wrote:

> http://trac.wordpress.org/ticket/7220
> 
> Fixed in 2.6.

According to

  http://wordpress.org/development/2008/07/wordpress-26-tyner/

affected Press This! feature is one of the "hot" news in wordpress
2.6.  Affected wp-admin/press-this.php does not seem to exist in
previous stable version 2.5.1.  This is just based on the very quick
look, but it seems this issue may only affect some development SVN
snapshots, but no released version.  Please correct me if I'm wrong.

-- 
Tomas Hoger / Red Hat Security Response Team
