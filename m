X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1557" "Friday" "10" "July" "2015" "16:28:17" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150710202817.1A13A52E0DA@smtpvbsrv1.mitre.org>" "43" "[oss-security] Re: Remote file download vulnerability in wordpress plugin wp-ecommerce-shop-styling v2.5" nil nil nil "7" "2015071020:28:17" "[oss-security] Re: Remote file download vulnerability in wordpress plugin wp-ecommerce-shop-styling v2.5" (number mark "        cve-assign@m Jul 10   43/1557  " thread-indent "\"[oss-security] Re: Remote file download vulnerability in wordpress plugin wp-ecommerce-shop-styling v2.5\"\n") "<E25AF830-A96A-46F1-9463-235B02CBCCD6@me.com>" ("<E25AF830-A96A-46F1-9463-235B02CBCCD6@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7629 invoked by uid 550); 10 Jul 2015 20:28:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7588 invoked from network); 10 Jul 2015 20:28:28 -0000
In-Reply-To: <E25AF830-A96A-46F1-9463-235B02CBCCD6@me.com>
Message-Id: <20150710202817.1A13A52E0DA@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 10 Jul 2015 16:28:17 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Remote file download vulnerability in wordpress plugin wp-ecommerce-shop-styling v2.5
To: larry0@me.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Title: Remote file download vulnerability in wordpress plugin wp-ecommerce-shop-styling v2.5
> Download Site: https://wordpress.org/plugins/wp-ecommerce-shop-styling
> Vendor: https://profiles.wordpress.org/haet/
> Vendor Notified: 2015-07-05, fixed in version 2.6.
> Vendor Contact: http://wpshopstyling.com
> 
> readfile(HAET_INVOICE_PATH.$_GET['filename']);
> 
> /wp-content/plugins/wp-ecommerce-shop-styling/includes/download.php?filename=../../../../../../../../../etc/passwd

> https://wordpress.org/plugins/wp-ecommerce-shop-styling/changelog/
> 2.6: fixed security bug

> https://plugins.trac.wordpress.org/changeset/1193456

Code added in 2.6:

   if( strpos($_GET['filename'], '/') !== FALSE )
       die();
   if( strrpos( strtolower($_GET['filename']), '.pdf') !== strlen($_GET['filename'])-4 )
       die();

Use CVE-2015-5468.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVoCmfAAoJEKllVAevmvmsBY0H/2Mn/yxrMrQxOZe58AssL+SJ
TCeDkR+HtXqXMTi2xrWVUkyJI9db6bMu8RbbHOUz6YOM/CjmLVNrpIpgGro6xvIP
+KW7rynEPnEgg4q+uRfo9C762FiVcWJqlbs4NtfCRCumOi3ZgG2ZIOMeu5ihmjyr
iYkiaS4Rc2Yy6KtUb28iipzLtqDz6FduRbuMvlqb2c53cypQBLPCSrHpE9O5l7Nr
f1jPvxWIiPZzOLu6RrAz6nabuoYFsWLmPfcV+6UKfCFMiSEbAs0b9rUT1pea7Z5P
1xXe70Rh8OYomFG1EuamnD6jJcgQzgTaoSKYXCRh9dteDGnWSsChd624Vo/GuLw=
=g0mR
-----END PGP SIGNATURE-----
