X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1691" "Thursday" "18" "June" "2015" "08:21:49" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150618122149.856587BC090@smtpvmsrv1.mitre.org>" "46" "[oss-security] Re: PHP 5.6.10 / 5.5.26 / 5.4.42 CVE request" nil nil nil "6" "2015061812:21:49" "[oss-security] Re: PHP 5.6.10 / 5.5.26 / 5.4.42 CVE request" (number mark "U       cve-assign@m Jun 18   46/1691  " thread-indent "\"[oss-security] Re: PHP 5.6.10 / 5.5.26 / 5.4.42 CVE request\"\n") "<20150618112238.783fdf4b@redhat.com>" ("<20150618112238.783fdf4b@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13448 invoked by uid 550); 18 Jun 2015 12:22:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13415 invoked from network); 18 Jun 2015 12:22:01 -0000
From: cve-assign@mitre.org
To: thoger@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@php.net
In-Reply-To: <20150618112238.783fdf4b@redhat.com>
Message-Id: <20150618122149.856587BC090@smtpvmsrv1.mitre.org>
Date: Thu, 18 Jun 2015 08:21:49 -0400 (EDT)
Subject: [oss-security] Re: PHP 5.6.10 / 5.5.26 / 5.4.42 CVE request

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Fixed bug #69646 (OS command injection vulnerability in escapeshellarg).
> https://bugs.php.net/bug.php?id=69646
> http://git.php.net/?p=php-src.git;a=commitdiff;h=d2ac264ffea5ca2e85640b6736e0c7cd4ee9a4a9
> (Windows specific)

Use CVE-2015-4642.


> Improved fix for bug #69545 (Integer overflow in ftp_genlist() resulting
> in heap overflow).
> https://bugs.php.net/bug.php?id=69545#1431550655
> http://git.php.net/?p=php-src.git;a=commitdiff;h=0765623d6991b62ffcd93ddb6be8a5203a2fa7e2
> (#69545 was originally fixed in 5.4.41 / 5.5.25 / 5.6.9 and got
> CVE-2015-4022, but the fix was found to be incomplete, as explained in
> the upstream bug)

Use CVE-2015-4643.


> Fixed bug #69667 (segfault in php_pgsql_meta_data).
> https://bugs.php.net/bug.php?id=69667
> http://git.php.net/?p=php-src.git;a=commitdiff;h=2cc4e69cc6d8dbc4b3568ad3dd583324a7c11d64
> (Not security bug upstream, but we found this when testing updates with
> fixes for CVE-2015-1352.

Use CVE-2015-4644.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVgrXFAAoJEKllVAevmvmsEUsIAIXIyv/fO2N0LFHppGJBmVRI
9POjQK6XdK8jlrfURws3KBKTs78LNNxTG54aUWekKoKHAx/nqtORadTg6I6+0qSr
24ZsJOVYVpX8+9/r+J9OEELzTIqqmfe1sNKnxuarf61DtJGgg5bzlfqqVdK3vUxb
yKEh0odHph+aiIjDVR390QzHFqXZKxaag3GLuPgGSAQxNoajWNTqwhlkV4tkMivK
pc7mvVDPJrNh6ERFfnwV7aodQYSCb9qDQKLXe/Dy8mJSt6fiJ8lFpRUZ49mYiZFI
ZwMy10I+isMePSmqjKoOqvITvSldogvUFlU58QOrX9ETvLew34YDGj+ywOr0AOA=
=AtFH
-----END PGP SIGNATURE-----
