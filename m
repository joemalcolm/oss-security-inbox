X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/08/06/1
Message-ID: <0808061435350.1142@mjc.redhat.com>
Date: Wed, 6 Aug 2008 14:41:30 +0100 (BST)
From: Mark J Cox <mjc@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2008-2939 low severity Apache httpd XSS
Content-Type: text/plain; charset=utf-8

FYI as this was committed yesterday but isn't triggering a new upstream 
release so might not get noticed much until the advisory comes out from 
Rapid7:

   *) SECURITY: CVE-2008-2939 (cve.mitre.org)
      mod_proxy_ftp: Prevent XSS attacks when using wildcards in the path of
      the FTP URL. Discovered by Marc Bevand of Rapid7. [Ruediger Pluem]

Hence Low severity, affects 2.0.*, 2.2.*, fixes in svn:
http://svn.apache.org/viewvc?view=rev&revision=682870

Thanks, Mark
--
Mark J Cox / Red Hat Security Response Team
