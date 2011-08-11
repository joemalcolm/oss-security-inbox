X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/08/11/8
Message-ID: <20110811174948.GN1360@redhat.com>
Date: Thu, 11 Aug 2011 11:49:49 -0600
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: improper permissions on ~/.qtnx/*.nxml
Content-Type: text/plain; charset=utf-8

A Debian bug report noted that qtnx stores its configuration file
insecurely.  If a non-default SSH key is used, the key is stored in this
world-readable file (~/.qtnx/*.nxml) in a world-readable directory
(~/.qtnx/).

Could a CVE be assigned to this please?

http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=637439
https://bugzilla.redhat.com/show_bug.cgi?id=730081

-- 
Vincent Danen / Red Hat Security Response Team 
