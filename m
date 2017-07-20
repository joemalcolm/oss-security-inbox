X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/20/3
Message-ID: <20170720034913.cvulnaayyhlhp6mr@eldamar.local>
Date: Thu, 20 Jul 2017 05:49:13 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Cc: John Lightsey <lightsey@...ian.org>
Subject: phamm: CVE-2017-0378: reflected XSS in login page
Content-Type: text/plain; charset=utf-8

Hi

John Lightsey found a reflected XSS vulnerability in phamm login page.
phamm is a PHP front-end to manage virtual services on LDAP.

Quoting his report in Debian[0]:

> While looking through codesearch.debian.net I noticed that phamm's
> views/helpers.php uses $_SERVER['PHP_SELF'] in a way that is
> vulnerable to reflected XSS attacks.
> 
> To reproduce the problem, load a URL like this in Firefox:
> 
> http://127.0.0.1/phamm/main.php/%22%3E%3Cscript%3Ealert%28123%29%3C/script%3E

Refrences:
 [0] https://bugs.debian.org/868988
 [1] https://github.com/lota/phamm/issues/21

Regards,
Salvatore
