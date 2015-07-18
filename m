X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4525" "Saturday" "18" "July" "2015" "11:41:15" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150718154115.805846C00BB@smtpvmsrv1.mitre.org>" "116" "[oss-security] Re: CVE request: Zenphoto before 1.4.9 multiple vulnerabilities" nil nil nil "7" "2015071815:41:15" "[oss-security] Re: CVE request: Zenphoto before 1.4.9 multiple vulnerabilities" (number mark "U       cve-assign@m Jul 18  116/4525  " thread-indent "\"[oss-security] Re: CVE request: Zenphoto before 1.4.9 multiple vulnerabilities\"\n") "<20150716103647.GD4912@lakka.kapsi.fi>" ("<20150716103647.GD4912@lakka.kapsi.fi>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13765 invoked by uid 550); 18 Jul 2015 15:41:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13734 invoked from network); 18 Jul 2015 15:41:27 -0000
From: cve-assign@mitre.org
To: henri@nerv.fi
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20150716103647.GD4912@lakka.kapsi.fi>
Message-Id: <20150718154115.805846C00BB@smtpvmsrv1.mitre.org>
Date: Sat, 18 Jul 2015 11:41:15 -0400 (EDT)
Subject: [oss-security] Re: CVE request: Zenphoto before 1.4.9 multiple vulnerabilities

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Can I get CVEs for vulnerabilities fixed in Zenphoto 1.4.9 ...
> http://www.zenphoto.org/news/zenphoto-1.4.9 says "Fixes several SQL Injection,
> XSS and path traversal

> http://software-talk.org/blog/2015/07/second-order-sql-injection-reflected-xss-path-traversal-function-execution-vulnerability-zenphoto/

For purposes of CVE assignments, one important part of this blog post
is:

  In practice, it doesn't matter, because an attacker can just edit a
  legitimate PHP theme file and inject <?php passthru($_GET['c']) ?>

In other words, it appears that the design of Zenphoto intentionally
gives the admin an ability to execute arbitrary code on the server.
This ability apparently also extends to users with the THEMES_RIGHTS
right. The researcher suggests:

  It is still a good idea to fix this, as users might disable the
  file edit functionality themselves to increase security.

We couldn't immediately find documentation suggesting that there is a
supported way to use the product without letting an admin execute
arbitrary code (e.g., by deleting/changing admin-themes-editor.php or
possibly other files). In general, the scope of CVE doesn't include
questionable behaviors that have security relevance only if a user
modifies a product.

Now, to consider the individual issues:

> There are multiple second order error based SQL injections into the
> ORDER BY keyword in the admin area.

This seems to allow exploitation by users who have only the
OPTIONS_RIGHTS right. Use CVE-2015-5591.


> XSS 1
> sanitize_string, which does not adequately protect against any attacks

The product is apparently trying to prevent all XSS but has three
independent types of mistakes described by the researcher.

>       $content = preg_replace('~<script.*?/script>~is', '', $content);
>       $content = preg_replace('~<style.*?/style>~is', '', $content);

>       $content = strip_tags($content);

Identifying only a short list of relevant elements (e.g., SCRIPT and
STYLE) and relying on strip_tags are both incomplete protection
mechanisms. Use CVE-2015-5592.

This specific use of preg_replace also has an implementation error,
noted by the researcher in the first "can be easily bypassed" example
involving multiple SCRIPT elements. Use CVE-2015-5593.

>       $content = html_entity_decode($content, ENT_QUOTES, 'UTF-8');

Finally, the placement of html_entity_decode after input sanitization
is inconsistent with the function's purpose. Use CVE-2015-5594.


> Directory Traversal

This has no CVE ID because it doesn't cross privilege boundaries.


> XSS 2
> admin.php?action=external&error=" onmouseover="alert('xsstest')" foo="bar

We don't think this is an independent type of issue. admin.php has a
call to sanitize($_GET['error']), and this seems to use
sanitize_string. The three CVE IDs related to sanitize_string also
apply to this admin.php behavior.


> Execute Function
> admin.php?action=phpinfo

> An admin user can execute any function they want via this URL (there
> is also no CSRF protection for it)

> I'm reporting this because as defense in depth, it's a good idea to
> not allow execution of arbitrary functions. I have not found a way to
> actually exploit it

We feel that action=ingres_connect seems to be a relevant example.
http://php.net/manual/function.ingres-connect.php says "If some
parameters are missing, ingres_connect() uses the values in php.ini
for ingres.default_database, ingres.default_user and
ingres.default_password." This is, more or less, a CSRF with resultant
SSRF: the attacker can cause a denial of service by triggering many
connections to a (victim-specified) remote Ingres database.

Use CVE-2015-5595 for this CSRF issue. An intentional call to
admin.php?action= doesn't cross privilege boundaries because it
requires that the attacker is an admin.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVqm1+AAoJEKllVAevmvms2ccH/3lD5AOAzdh9YtJBP+rBv4OO
RMb0QpjWKcEWjXXMZzLeYQLiHX0HG63+NIpTajrTgCMRoWyjZB+ay+XkH6mbFvB3
wiMm9IP6IVx7nfc8jzJLJtHfMrGgczr06i0sUPWoncVE1nIv6ErS/qrCbW7CL2BU
/0lkuWeX4G18aANWrULuxKxrzLhx+fy4jvSHNQPab6Hje6amxEtQZkxp3df2oHIT
/CFICBItz4mo3JvuhMJqzFGoqp+C+itPwO+S+9Uromw7XIA/aztdUesDANY2OjvH
eso6opnRHWql4WfKvR9TyuLio54kK96BaD61H6nCahcoe6J2BYP19wP4nlzf8RE=
=/q0j
-----END PGP SIGNATURE-----
