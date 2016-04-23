X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1351" "Saturday" "23" "April" "2016" "09:43:42" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160423134342.D846A3320C5@smtpvbsrv1.mitre.org>" "33" "[oss-security] Re: CVE Request: jq: heap buffer overflow in tokenadd() function" nil nil nil "4" "2016042313:43:42" "[oss-security] Re: CVE Request: jq: heap buffer overflow in tokenadd() function" (number mark "U       cve-assign@m Apr 23   33/1351  " thread-indent "\"[oss-security] Re: CVE Request: jq: heap buffer overflow in tokenadd() function\"\n") "<20160423062715.GA7765@eldamar.local>" ("<20160423062715.GA7765@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19658 invoked by uid 550); 23 Apr 2016 13:43:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19639 invoked from network); 23 Apr 2016 13:43:54 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160423062715.GA7765@eldamar.local>
Message-Id: <20160423134342.D846A3320C5@smtpvbsrv1.mitre.org>
Date: Sat, 23 Apr 2016 09:43:42 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: jq: heap buffer overflow in tokenadd() function

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/stedolan/jq/issues/995
> https://github.com/stedolan/jq/commit/8eb1367ca44e772963e704a700ef72ae2e12babd
> https://bugs.debian.org/802231
> https://bugzilla.redhat.com/show_bug.cgi?id=1328747

Use CVE-2015-8863 for this off-by-one error that leads to a heap-based
buffer overflow.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXG3shAAoJEHb/MwWLVhi2ZK8P/iadMgPsxxPobYn4G1WMVt82
P+JvHootEspQ1kJfPdQKbDNjgAn0oW774Nwn4pItBhDYhZ6WJ4hQsEMoOjZh6UEz
Dt/W21djT6gcTXD6MlGRx6SCHf9jAzZibAFz5xjey41fLjmSoOR0gkrSPXAEgbYJ
ChNb6mVBz1mc5DJg7tzgKwVy2StfL9RUyghNG+Jt1ieNCzrkK4Kcr/q7pPIIuSkX
Rc/DviITdlBgUGkkA5BtsqUUk5f1h74rlRJPjH3J9q4vKgfkhF8bxXBCtSUeUz6x
0UGfwbQ4JNZ0XB4mZolciyPFASkCtryIz7vujEo7FwsFnAI0khiE2qBxE0C5YpnO
ijimXY9YE08TSoylK5UPUF1MyceRhN5foqBT84OB9M3wF/CWoTm7eGTbona5Npgj
hXJrNKt13Wm7gCf6fuSq+tx3ZYdgGMEryH6LXSojNolR5AivJD8dZ51/7pvsOT9c
kmy1X5oc/70U3FKzfHK29cCqgo33esUTkDYHZwkh0uIUCaBAGjLmotJ4f6iUmqjW
u/r83UcRYxhD7CkIaMPRwvomVcg1/UEOKHBxUf4ggdLsGBCUG7Ir9rruxu1BxUKr
oXJpvXmWSnIX99oZRYNic5hj96bJ/lS6Nzc4Cs92+7iLNbVte82wpARXkdKtUwo2
D5jopjAn7dYKUHHCe3WP
=AvmJ
-----END PGP SIGNATURE-----
