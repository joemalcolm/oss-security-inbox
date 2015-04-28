X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4383" "Tuesday" "28" "April" "2015" "15:27:03" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150428192703.4F86E52E01D@smtpvbsrv1.mitre.org>" "104" "[oss-security] Re: Possible CVE Request: Wordpress 4.1.2 security release" nil nil nil "4" "2015042819:27:03" "[oss-security] Re: Possible CVE Request: Wordpress 4.1.2 security release" (number mark "        cve-assign@m Apr 28  104/4383  " thread-indent "\"[oss-security] Re: Possible CVE Request: Wordpress 4.1.2 security release\"\n") "<20150426112844.GA8340@eldamar.local>" ("<20150426112844.GA8340@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23762 invoked by uid 550); 28 Apr 2015 19:27:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23741 invoked from network); 28 Apr 2015 19:27:15 -0000
In-Reply-To: <20150426112844.GA8340@eldamar.local>
Message-Id: <20150428192703.4F86E52E01D@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 28 Apr 2015 15:27:03 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Possible CVE Request: Wordpress 4.1.2 security release
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Here are CVE IDs for some of the vulnerabilities fixed in either 4.1.2
or 4.2.1.


> http://codex.wordpress.org/Version_4.1.2
> https://wordpress.org/news/2015/04/wordpress-4-1-2/

> WordPress versions 4.1.1 and earlier are affected by a critical
> cross-site scripting vulnerability, which could enable anonymous users
> to compromise a site. This was reported by Cedric Van Bockhaven and
> fixed by Gary Pendergast, Mike Adams, and Andrew Nacin of the
> WordPress security team.

Use CVE-2015-3438. We don't know whether this is related to, for
example, the https://core.trac.wordpress.org/changeset/32167 change.
Our expectation is that this is not related to the
https://core.trac.wordpress.org/changeset/32176 change, because the
4.1.2 announcement says "Four hardening changes, including better
validation of post titles within the Dashboard." (There are currently
no CVE IDs being assigned for the "Four hardening changes.")


> In WordPress 4.1 and higher, files with invalid or unsafe names could
> be uploaded. Discovered by Michael Kapfer and Sebastian Kraemer of
> HSASec.

We feel that there isn't yet enough information available to determine
the correct number of CVE IDs. This could possibly be related to
https://core.trac.wordpress.org/changeset/32172 (if wp_check_filetype
had been using a problematic regular expression that resulted in
incorrect conclusions about safe file extensions), or
https://core.trac.wordpress.org/changeset/32169 (if the issue was in
the Plupload codebase), or both.


> In WordPress 3.9 and higher, a very limited cross-site scripting
> vulnerability could be used as part of a social engineering attack.
> Discovered by Jakub Zoczek.

Use CVE-2015-3439. We don't know whether this is related to, for
example, the https://core.trac.wordpress.org/changeset/32167 change.


> Some plugins were vulnerable to an SQL injection vulnerability.
> Discovered by Ben Bidner of the WordPress security team.

We feel that there isn't yet enough information available to determine
the correct number of CVE IDs. This could possibly be related to the
https://core.trac.wordpress.org/changeset/32165 and
https://core.trac.wordpress.org/changeset/32163 changes. In general,
it seems possible that one change to the validation of SQL statements
resolved SQL injection vulnerabilities affecting the use of plugins in
one set of WordPress versions, and another change to the validation of
SQL statements resolved SQL injection vulnerabilities affecting the
use of plugins in a different set of WordPress versions.


> https://make.wordpress.org/plugins/2015/04/20/fixing-add_query_arg-and-remove_query_arg-usage/

> Due to a now-fixed ambiguity in the documentation for the
> add_query_arg() and remove_query_arg() functions, many plugins were
> using them incorrectly, allowing for potential XSS attack vectors in
> their code.

We feel that this documentation ambiguity isn't necessarily a
vulnerability in the WordPress product itself. There seems to be
related documentation of add_query_arg within the
wp-includes/functions.php file. If the vendor decides to change the
documentation at
https://core.trac.wordpress.org/browser/trunk/src/wp-includes/functions.php
and wants a CVE ID for that, then we would assign one.


> http://codex.wordpress.org/Version_4.2.1
> https://wordpress.org/news/2015/04/wordpress-4-2-1/
> https://core.trac.wordpress.org/changeset/32299

> a cross-site scripting vulnerability, which could enable commenters to
> compromise a site. The vulnerability was discovered by Jouko Pynnonen.

> WPDB: Sanity check that any strings being stored in the DB are not too
> long to store correctly.

Use CVE-2015-3440.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVP929AAoJEKllVAevmvmsU+sH/2iJF4qrDkW1QY27QFktZSvg
YF/zQR7jVLHs+74UPyWHMlAgBMxx4y54GUgukvnytE6lI8LMuz6aMJOjbSg+5jWT
jZ2mSSbPceH8Bm4cmh4/2dStBDgxFJxFvRm1Lr/9zNpcS4IYRWkZuaKtJbNkBs2X
/j+rMdzmtYY2B+naNOkHtGjRloRZE5apd1zRRtS559fho/l6kFSrXMa0uNbdL1eu
eG3+BnkRDj6v/zKRpqLW9FXVmiQWu+VW1TIqqCuliD2vjTbSRqEvAtm9GsmUOUhk
fJujPRPZbLXLCbZmsJQ/D5tk0VRkXjGi47xhqb7chV5D5JvHDmxVFZuG+duCmQQ=
=GzWO
-----END PGP SIGNATURE-----
