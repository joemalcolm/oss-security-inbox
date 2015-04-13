X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2105" "Monday" "13" "April" "2015" "02:25:10" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150413062510.A338D1BE0A6@smtpvbsrv1.mitre.org>" "52" "[oss-security] Re: CVE request / Advisory: Floating Social Bar (Wordpress plugin) 1.0.1 - 1.1.6" nil nil nil "4" "2015041306:25:10" "[oss-security] Re: CVE request / Advisory: Floating Social Bar (Wordpress plugin) 1.0.1 - 1.1.6" (number mark "        cve-assign@m Apr 13   52/2105  " thread-indent "\"[oss-security] Re: CVE request / Advisory: Floating Social Bar (Wordpress plugin) 1.0.1 - 1.1.6\"\n") "<CAD3Cand-BMAZvKPWt7VORYxzZGemmYPqdKmp2F-m1b2izT4_6g@mail.gmail.com>" ("<CAD3Cand-BMAZvKPWt7VORYxzZGemmYPqdKmp2F-m1b2izT4_6g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9407 invoked by uid 550); 13 Apr 2015 06:25:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9386 invoked from network); 13 Apr 2015 06:25:22 -0000
In-Reply-To: <CAD3Cand-BMAZvKPWt7VORYxzZGemmYPqdKmp2F-m1b2izT4_6g@mail.gmail.com>
Message-Id: <20150413062510.A338D1BE0A6@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 13 Apr 2015 02:25:10 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request / Advisory: Floating Social Bar (Wordpress plugin) 1.0.1 - 1.1.6
To: mattd@bugfuzz.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> I'd like to request a CVE ID for this issue. This is the first such
> request; this message serves as an advisory as well.
> 
> Affected software: Floating Social Bar (Wordpress plugin)
> Affected versions: 1.0.1 - 1.1.6
> Website: https://wordpress.org/plugins/floating-social-bar/
> 
> Description: One of the plugin's unauthenticated AJAX action handlers
> is vulnerable to a stored cross-site scripting vulnerability. By
> invoking the action with certain parameters, it is possible for
> unauthenticated attackers to force the persistent injection of
> arbitrary script across the site's post pages.
> 
> Fixed version: 1.1.7
> Fix: https://plugins.trac.wordpress.org/changeset/1129648/floating-social-bar/trunk
> Changelog: https://plugins.trac.wordpress.org/changeset/1129648/floating-social-bar/trunk#file5

Use CVE-2015-3299 for the specific issue in your "Description" section
above. It seems conceivable that 1129648 also fixed something else,
e.g.,

  1. Maybe the
     "-     add_action( 'wp_ajax_nopriv_fsb_save_order', array( $this, 'save_order' ) );"

     code change means that wp_ajax_nopriv_fsb_save_order allowed
     bypassing intended access control, even if the attacker did not
     supply an XSS payload.

  2. Maybe the patched code can help to prevent a CSRF attack against
     an authenticated action handler.

If so, then additional CVE IDs would be needed.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVK2CbAAoJEKllVAevmvmsv8AH/3+lUbuTvK0BVSLHJ7UTXyyq
OXoj6s5bcx9o7N9pdGXfEfop9Uwq8T6l1sytFJ/btjJLo+H2k0wyqknz3INTw8pI
e0Vdd6eGOfBx6x/IUJDDV5biuTHG5/SVIYNghy0o6CWg5ihrDLA0UJ9u/7sdMZg8
lyHYE19RkzuQQrq1Ix/WVQiCqUxo1cwseFQFRTz87qiuvJNaB3aBdrsXAvydB9uA
TCmkLGTkZ9C1DiqlzAwSlsTooscNEy0kYLnoBxDhSO548x9GtrkB9EIVn5l36Zo9
5RGsz2MCxXrl1KafKY5R+e1czypYgkhIn7c+U80FGv5kMt7F0yQceq7mqEn674E=
=yUNM
-----END PGP SIGNATURE-----
