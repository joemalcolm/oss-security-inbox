X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/27/7
Message-ID: <CAAuWqpY2OBmDoDRj0K5hoj3=oAdhLdfy9qFREnqarxSH9RNDvQ@mail.gmail.com>
Date: Tue, 27 Jan 2015 17:23:20 +0100
From: Paolo Perego <paolo@...oredcode.com>
To: oss-security@...ts.openwall.com, cve-assign@...re.org
Cc: Dylan Kuhn <cyberhobo@...erhobo.net>
Subject: CVE request: XSS in search functionality for Geo Mashup Wordpress plugin
Content-Type: text/plain; charset=utf-8

Citing the description, Geo Mashup is a plugin for Wordpress designed
to let you
save location information with posts, pages, and other WordPress objects.
These information can then be presented on interactive maps in many ways.

Plugin versions before 1.8.3 suffer from a cross site scripting
vulnerability when displaying search results. The search key was not
properly sanitized so an attacker can eventually inject arbitrary
javascript code.

Plugin author was contacted on December 16, and by January 11 the
vulnerability was fixed and plugin version 1.8.3 was released (
https://wordpress.org/plugins/geo-mashup/changelog/).


Paolo
-- 
$ cd /pub
$ more beer

Il primo blog di application security italiano morbido fuori e croccante
dentro: https://codiceinsicuro.it

