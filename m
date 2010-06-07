X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/06/07/3
Message-ID: <Pine.GSO.4.64.1006071043090.15053@faron.mitre.org>
Date: Mon, 7 Jun 2010 10:46:10 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: Guillem Jover <guillem@...ian.org>, Aníbal Monsalve Salazar <anibal@...ian.org>, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE Request -- rpcbind -- Insecure (predictable) temporary file use
Content-Type: text/plain; charset=utf-8


On Fri, 4 Jun 2010, Josh Bressers wrote:

> Please use CVE-2010-2061 for this.

My read of Guillem's report at 
http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=583435#5 suggests that we 
might have two distinct issues here:

- "*any* user can craft those two files before the daemon
has started for the first time, which the daemon will parse."  Nothing to 
do with symlinks.

- symlinks are followed on creation of those files


So we may need two CVEs here.

- Steve
