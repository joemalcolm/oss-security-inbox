X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/08/20/1
Message-ID: <Pine.GSO.4.51.0808201200440.28950@faron.mitre.org>
Date: Wed, 20 Aug 2008 12:04:28 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: "Steven M. Christey" <coley@...re.org>
Subject: Re: CVE request: drupal 5.10/6.4
Content-Type: text/plain; charset=utf-8


On Fri, 15 Aug 2008, Hanno [utf-8] Böck wrote:

> http://drupal.org/node/295053

Use the following, to be filled in later:

CVE-2008-3740 - first XSS

CVE-2008-3741 - second XSS.  This has a different root cause so is SPLIT.

CVE-2008-3742 - BlogAPI file uploads

CVE-2008-3743 - first CSRF, for 6.x only

CVE-2008-3744 - second CSRF, for 6.x/5.x (different affected versions so
                SPLIT)

CVE-2008-3745 - Upload module priv escalation


- Steve
