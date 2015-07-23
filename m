X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2096" "Thursday" "23" "July" "2015" "16:04:27" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150723200427.B6E67B2E539@smtpvbsrv1.mitre.org>" "64" "[oss-security] Re: CVE request: WordPress 4.2.2 and earlier cross-site scripting vulnerability" nil nil nil "7" "2015072320:04:27" "[oss-security] Re: CVE request: WordPress 4.2.2 and earlier cross-site scripting vulnerability" (number mark "U       cve-assign@m Jul 23   64/2096  " thread-indent "\"[oss-security] Re: CVE request: WordPress 4.2.2 and earlier cross-site scripting vulnerability\"\n") "<20150723171442.GA587@tunkki>" ("<20150723171442.GA587@tunkki>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4065 invoked by uid 550); 23 Jul 2015 20:04:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4038 invoked from network); 23 Jul 2015 20:04:39 -0000
From: cve-assign@mitre.org
To: henri@nerv.fi
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20150723171442.GA587@tunkki>
Message-Id: <20150723200427.B6E67B2E539@smtpvbsrv1.mitre.org>
Date: Thu, 23 Jul 2015 16:04:27 -0400 (EDT)
Subject: [oss-security] Re: CVE request: WordPress 4.2.2 and earlier cross-site scripting vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://wordpress.org/news/2015/07/wordpress-4-2-3/

> WordPress versions 4.2.2 and earlier are affected by a cross-site
> scripting vulnerability, which could allow users with the Contributor
> or Author role to compromise a site. This was initially reported by
> Jon Cave and fixed by Robert Chapin, both of the WordPress security
> team

Use CVE-2015-5622.


> We also fixed an issue where it was possible for a user with
> Subscriber permissions to create a draft through Quick Draft.

Use CVE-2015-5623.


We think the vulnerability mappings are:

CVE-2015-5622 = https://core.trac.wordpress.org/changeset/33359

Note that the news URL says 'fixed by <a
href="http://www.miqrogroove.com/">Robert Chapin</a>' and 33359 says
"Props miqrogroove."
https://core.trac.wordpress.org/changeset/33359/trunk/tests/phpunit/tests/kses.php
has:

           array( 
               'a', 
               'href="javascript:alert(1)"', 
               'href="alert(1)"', 
           ), 

[ there has been discussion of 33359, although possibly not about any
remaining security problem - see
https://core.trac.wordpress.org/ticket/15694#comment:24 ]


CVE-2015-5623 = https://core.trac.wordpress.org/changeset/33357

Note that
https://core.trac.wordpress.org/changeset/33357/trunk/src/wp-admin/post.php
makes a change to the "case 'post-quickdraft-save'" section of the
wp-admin/post.php file.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVsUhEAAoJEKllVAevmvmsRrIH/RM7N13JnxT91K8kIqEJwRn0
cnPLrUgiX8hBVtWr/Nl20n1wNzG8BYEKRUHbq3AjwgOzzLkRa1d5bNfY565pjkKe
h9QfYlFVZ9AkI0jDHMMxcpuX9DbiZW3c32dWE8xtsA421aZnC+lftZID4SOYkMJO
Fut7UfedkYcmLO2L0o7tm0QcOZS5aAjrJy1NHsqClMW+3AI6xvccYR8LN9JOAkFU
X+pjSom1Q8QDMaEOFOCjZI2nAbZNCehKd6IBWavcgAWZcB+RIxYTjsxl4FE6bvxH
dDp8joXZpy62s/bXlhoOiZTgxDV/PpKourV8tg7uU37m35kisQflcBEJn+ptqdg=
=IbzO
-----END PGP SIGNATURE-----
