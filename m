X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/02/07/10
Message-ID: <20170207235746.GA13577@sin.redhat.com>
Date: Wed, 8 Feb 2017 10:27:46 +1030
From: Doran Moppert <dmoppert@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: XXE in Openpyxl
Content-Type: text/plain; charset=utf-8

On Feb 07 2017, Sébastien Delafond wrote:
> the Debian Security Team would like to request a CVE for an XML XEE
> discovered in Openpyxl by Marcin Ulikowski from F-Secure; Openpyxl
> resolves external entities by default:
> 
>   https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=854442
>   https://bitbucket.org/openpyxl/openpyxl/commits/3b4905f428e1

This is yet another instance of CVE-2016-9318.  As already observed on
the Debian tracker, disabling entity resolution altogether is probably
going to make openpyxl fail on well-formed Excel documents using
standard entities such as &lt;.

-- 
Doran Moppert
Red Hat Product Security

Content of type "application/pgp-signature" skipped
