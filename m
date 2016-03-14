X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/14/9
Message-ID: <20160314063228.GA12829@steve.org.uk>
Date: Mon, 14 Mar 2016 06:32:28 +0000
From: Steve Kemp <steve@...ve.org.uk>
To: oss-security@...ts.openwall.com
Subject: CVE-Request - GNU Awk.
Content-Type: text/plain; charset=utf-8


  I reported two DoS bugs against GNU Awk to the debian
 bug tracker recently, both of which are denial of service
 attacks causing NULL-pointer deferences.

  It would be useful to have a CVE identifiers assigned.

  The two issues can be demonstrated like so :

    echo | gawk  '{ print( @olower( "steve" ) ) }'

    echo | gawk 'for (i = ) in foo bar baz'

  There are potential patches and further diagnostics on
 the bug reports themselves which are respectively:

    https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=816271

    https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=816277

Steve
-- 
# Git Based DNS Hosting
https://www.dns-api.com
