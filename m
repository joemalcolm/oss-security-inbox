X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/09/14/5
Message-ID: <20120914125554.GB4728@kludge.henri.nerv.fi>
Date: Fri, 14 Sep 2012 15:55:54 +0300
From: Henri Salo <henri@...v.fi>
To: oss-security@...ts.openwall.com
Subject: CVE-request: WordPress insufficient permissions verification on XMLRPC interface
Content-Type: text/plain; charset=utf-8

Hello,

Please assign 2010 CVE-identifier for XML-RPC interface access restriction bypass issue in WordPress.

Description: WordPress contains a flaw related to the XML-RPC remote publishing interface. The interface fails to properly enforce access control restrictions, allowing a remote attacker to bypass restrictions and improperly edit, publish or delete posts.

References:
1. http://osvdb.org/69761
2. http://core.trac.wordpress.org/changeset/16803
3. http://secunia.com/advisories/42553/
4. http://wordpress.org/news/2010/12/wordpress-3-0-3/
5. http://codex.wordpress.org/Version_3.0.3

- Henri Salo
