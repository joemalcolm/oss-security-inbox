X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1209" "Friday" "10" "July" "2015" "16:32:38" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150710203238.BC60672E2AD@smtpvbsrv1.mitre.org>" "35" "[oss-security] Re: Remote file download vulnerability in ibs-Mappro v0.6 Wordpress plugin" nil nil nil "7" "2015071020:32:38" "[oss-security] Re: Remote file download vulnerability in ibs-Mappro v0.6 Wordpress plugin" (number mark "        cve-assign@m Jul 10   35/1209  " thread-indent "\"[oss-security] Re: Remote file download vulnerability in ibs-Mappro v0.6 Wordpress plugin\"\n") "<96A295FE-F854-48B5-9E9E-45A85F16FE81@me.com>" ("<96A295FE-F854-48B5-9E9E-45A85F16FE81@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32500 invoked by uid 550); 10 Jul 2015 20:32:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32469 invoked from network); 10 Jul 2015 20:32:49 -0000
In-Reply-To: <96A295FE-F854-48B5-9E9E-45A85F16FE81@me.com>
Message-Id: <20150710203238.BC60672E2AD@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 10 Jul 2015 16:32:38 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Remote file download vulnerability in ibs-Mappro v0.6 Wordpress plugin
To: larry0@me.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Title: Remote file download vulnerability in ibs-Mappro v0.6 Wordpress plugin
> Download Site: https://wordpress.org/plugins/ibs-mappro/
> Vendor: Hmoore71
> Vendor Notified: 2015-07-08, resolved in v1.0.
> Advisory: http://www.vapid.dhs.org/advisory.php?v=137

> $filename = $_GET['file'];
> readfile($filename);

> https://wordpress.org/plugins/ibs-mappro/changelog/
> 07-08/2015 Version 1.0 Fix download exposure.

> https://plugins.trac.wordpress.org/changeset/1195039

Use CVE-2015-5472.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVoCm0AAoJEKllVAevmvmsi7oH/RYvvpYWLIKvpSndZRy0yUlJ
g7XBb0DGUHP0HUKU0TJMD7k7IrWeh2yIwwphoTkHdbFbo8UJEgiTSjlr/+S8j1OD
hdqPw2HvbkLfTkEC5NkurulbUaaKPNrXYggPjqPWVoM8HYgtoM+yVMWf3UiqggOB
yN61lCrKzmeXMrKRQftfQwKPYSYhs28ayPhO0AxEWgIeNctxHVul0csePZIh399b
vGWK34KS85r+dKAXuXsFG62as+Ci7gPM4xpTDO4gJynI5z2od2l7loFkzYYZrDFb
ZuTryXyyzvrbQUOfQXEwy+ZT8iCXv64Asp1Ra0AY+gORmgxjI5AMgefl9b0F9Yo=
=vFs+
-----END PGP SIGNATURE-----
