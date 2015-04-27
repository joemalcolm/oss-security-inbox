X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1330" "Monday" "27" "April" "2015" "10:43:15" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150427144315.AEA486C0037@smtpvmsrv1.mitre.org>" "35" "[oss-security] Re: CVE request: incomplete fix for CVE-2013-4422" nil nil nil "4" "2015042714:43:15" "[oss-security] Re: CVE request: incomplete fix for CVE-2013-4422" (number mark "        cve-assign@m Apr 27   35/1330  " thread-indent "\"[oss-security] Re: CVE request: incomplete fix for CVE-2013-4422\"\n") "<553DFE56.3030102@reactos.org>" ("<553DFE56.3030102@reactos.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8001 invoked by uid 550); 27 Apr 2015 14:43:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7983 invoked from network); 27 Apr 2015 14:43:27 -0000
In-Reply-To: <553DFE56.3030102@reactos.org>
Message-Id: <20150427144315.AEA486C0037@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 27 Apr 2015 10:43:15 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: incomplete fix for CVE-2013-4422
To: pierre@reactos.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> It's been found that in Quassel, the CVE-2013-4422 was incorrectly
> fixed and that core was still vulnerable to SQL injection on reconnection.

> Since the initDbSession() code in PostgreSQL is
> used to fix the CVE-2013-4422 SQL Injection bug, this means that
> Quassel was still vulnerable ... if the PostgreSQL server
> is restarted or the connection is lost at any point

> This has been fixed with commit:
> https://github.com/quassel/quassel/commit/6605882f41331c80f7ac3a6992650a702ec71283

> The incomplete bugfix had been released with Quassel 0.9.1:
> http://quassel-irc.org/node/120

Use CVE-2015-3427.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVPkoSAAoJEKllVAevmvmsk7kH/3ssydZtfI2+IiDKhv7BZvcT
tH3X9Df9kR3WK5caEHRsLwyn2e9szeAd1LBca01kXdVnaFEfceufpbtkBfm4kJNI
4bi4GFW18JU4jmjaef+R9gz83fRCBvebK6pKzzwBec6B9tTdW3P51otdDZpYIqVX
pN9pZ/0mAv9mIjol9SEXhyWSJMv4FmNF9qOHFHMcIK5HhAVIyr1e+khc2/YBFIA9
SETuAPA+tRAmEzg0O/tnjhnkqBSk2azoFaMQ+zijsqbSBa6HDvZadxRxZuN3+GT0
gl0sySciqRokxx6T42sd7iTiP/vFFiHEXtczeY2YT8WBUQo9kahxwV082I8+WmM=
=wueW
-----END PGP SIGNATURE-----
