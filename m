X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1421" "Saturday" "2" "May" "2015" "11:54:05" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150502155405.8C14742E084@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: CVE request / Advisory: Slideshow (Wordpress plugin) - Wordpress option value disclosure" nil nil nil "5" "2015050215:54:05" "[oss-security] Re: CVE request / Advisory: Slideshow (Wordpress plugin) - Wordpress option value disclosure" (number mark "        cve-assign@m May  2   37/1421  " thread-indent "\"[oss-security] Re: CVE request / Advisory: Slideshow (Wordpress plugin) - Wordpress option value disclosure\"\n") "<CAD3Canf5OopQ-TNrP7GWfw1TbOVyOQzsqTn0EDsAFApKUCo7mA@mail.gmail.com>" ("<CAD3Canf5OopQ-TNrP7GWfw1TbOVyOQzsqTn0EDsAFApKUCo7mA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5557 invoked by uid 550); 2 May 2015 15:54:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5539 invoked from network); 2 May 2015 15:54:31 -0000
In-Reply-To: <CAD3Canf5OopQ-TNrP7GWfw1TbOVyOQzsqTn0EDsAFApKUCo7mA@mail.gmail.com>
Message-Id: <20150502155405.8C14742E084@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat,  2 May 2015 11:54:05 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request / Advisory: Slideshow (Wordpress plugin) - Wordpress option value disclosure
To: mattd@bugfuzz.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Affected software: Slideshow (Wordpress plugin)
> Affected versions: 2.2.8 - 2.2.21
> Fixed version: 2.2.22

> https://github.com/Boonstra/Slideshow/commit/cac505e593cbe70a4d8af5b639f5385d4cc7aa04
> https://wordpress.org/plugins/slideshow-jquery-image-gallery/changelog/

> The SlideshowPluginSlideshowStylesheet::loadStylesheetByAJAX function,
> accessible by unauthenticated users as an AJAX action, can be abused
> to force the disclosure of arbitrary Wordpress option values.

> it is
> possible to specify any option name in place of an actual custom
> stylesheet name, regardless of whether the option is for the Slideshow
> plugin, another plugin, a theme, or Wordpress itself.

Use CVE-2015-3634.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVRPKFAAoJEKllVAevmvmslEkIAKfU5CaT5Z4TR0qjTxX4Az1F
e9j4AOp7Qo0seY6paX3H+V+IRNdJsjuXJ2/h4nZEbpJN3R8ZmziWX3d/RQHTPy7i
qr+hsyIFnNICYHxqLU0KoIowPP+bXMyTFuyUwzlQMmxtXtgGxWQHQhkWmnS6HZnO
ApNevU0SoAa8yerGYqL3YxcAGgQ1+BucFwbHd6ORjtKq/S+Xa/wwni7dOuEmYl6K
xOxo+bIW+8BLffYkgi5r9kOtdjfM/1D9qZsQoSo9D2c+pKQ9Al9IijngQ1KooN8I
c7oahuQP9ncqOIELnT9WO2D46/F4fWdgYRv01tKYiJjD/D/sd5Sq/6+/JTV04LM=
=q5hN
-----END PGP SIGNATURE-----
