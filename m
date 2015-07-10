X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1299" "Friday" "10" "July" "2015" "16:31:13" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150710203113.AB6A9B2E93F@smtpvbsrv1.mitre.org>" "39" "[oss-security] Re: Remote file download vulnerability in Wordpress Plugin wp-swimteam v1.44.10777" nil nil nil "7" "2015071020:31:13" "[oss-security] Re: Remote file download vulnerability in Wordpress Plugin wp-swimteam v1.44.10777" (number mark "        cve-assign@m Jul 10   39/1299  " thread-indent "\"[oss-security] Re: Remote file download vulnerability in Wordpress Plugin wp-swimteam v1.44.10777\"\n") "<61244B9F-F7C6-40EE-BCB1-66B8ABBF21E8@me.com>" ("<61244B9F-F7C6-40EE-BCB1-66B8ABBF21E8@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24268 invoked by uid 550); 10 Jul 2015 20:31:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24215 invoked from network); 10 Jul 2015 20:31:24 -0000
In-Reply-To: <61244B9F-F7C6-40EE-BCB1-66B8ABBF21E8@me.com>
Message-Id: <20150710203113.AB6A9B2E93F@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 10 Jul 2015 16:31:13 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Remote file download vulnerability in Wordpress Plugin wp-swimteam v1.44.10777
To: larry0@me.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Title: Remote file download vulnerability in Wordpress Plugin wp-swimteam v1.44.10777
> Download Site: https://wordpress.org/plugins/wp-swimteam
> Vendor: Mike Walsh www.MichaelWalsh.org
> Vendor Notified: 2015-07-02, fixed in v1.45beta3
> Advisory: http://www.vapid.dhs.org/advisory.php?v=134

> include/user/download.php

> $fh = fopen($file, 'r')
> 
> $txt .= fread($fh, 1024) ;
> 
> print $txt ;

(1.45beta changes are apparently not recorded at
https://plugins.trac.wordpress.org/log/wp-swimteam/ or
https://wordpress.org/plugins/wp-swimteam/changelog/ yet)

Use CVE-2015-5471.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVoCmtAAoJEKllVAevmvms6LoIAJgxJrhwfR3GuXQHrwXpECoX
WYHFL4xHt+kVeZKqEk/tyArrXu4HGOdfQz+9w5APhWxs0zogn7t8WPuzKGjwZvn8
ieHxjPRF0KV2RPmNcJsptFG32BVpXr3m9Z+n392QQURW95V+b7u05hwmHdUxztku
X2WRXU0zO0F/V7R/7RBRwVvNPo1kPFZ3i7yw6O7wFxHPdhnTUE+lEhlFEk4Nge4X
REsqTg4+BIacjzi0TBzyQqdtBAiwmgtn2Ltz4TLTqVN4HLIdjbXwRa9tVPh0irIP
LscJPnt8N//Y7T7mKL/SaLfC4ENENAFETgZKxPECtw9L3YWA+3LIrpnjugcF34A=
=WV3U
-----END PGP SIGNATURE-----
