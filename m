X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1807" "Friday" "22" "May" "2015" "09:11:49" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150522131149.3E5EB6C0056@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: CVE Request: pgbouncer: DoS/remote crash: invalid packet order causes lookup of NULL pointer" nil nil nil "5" "2015052213:11:49" "[oss-security] Re: CVE Request: pgbouncer: DoS/remote crash: invalid packet order causes lookup of NULL pointer" (number mark "        cve-assign@m May 22   39/1807  " thread-indent "\"[oss-security] Re: CVE Request: pgbouncer: DoS/remote crash: invalid packet order causes lookup of NULL pointer\"\n") "<20150521090032.GA20360@eldamar.local>" ("<20150521090032.GA20360@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13528 invoked by uid 550); 22 May 2015 13:12:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13510 invoked from network); 22 May 2015 13:12:00 -0000
In-Reply-To: <20150521090032.GA20360@eldamar.local>
Message-Id: <20150522131149.3E5EB6C0056@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 22 May 2015 09:11:49 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: pgbouncer: DoS/remote crash: invalid packet order causes lookup of NULL pointer
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://pgbouncer.github.io/2015/04/pgbouncer-1-5-5/
> https://github.com/pgbouncer/pgbouncer/issues/42
> https://github.com/pgbouncer/pgbouncer/commit/edab5be6665b9e8de66c25ba527509b229468573
> https://github.com/pgbouncer/pgbouncer/commit/74d6e5f7de5ec736f71204b7b422af7380c19ac5

> Fix remote crash - invalid packet order causes lookup of NULL pointer. Not exploitable, just DoS.

Use CVE-2015-4054.

issues/42 says "we're suffering from a segmentation fault every now
and then on CentOS6 x86_64 with pgbouncer 1.5.4. The instance is
dying" and lists 5 different PIDs. As far as we can tell, this means
that each segmentation fault caused a complete pgbouncer outage, and
pgbouncer was then restarted manually or with a third-party monitoring
program. We don't think the report means that an "instance" crashed
and pgbouncer itself continued with no outage (that type of issue is
often outside the scope of CVE, if it means that a single client is
essentially conducting a DoS attack against its own service). Also, as
far as we can tell, an outage doesn't depend on whether -d was used.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVXyrFAAoJEKllVAevmvms/qEH/08RKvuaPUXOdG1oqRQXSBuv
yu8MVbaDuRcsMv9LoKyo2arMD7gsTstaRkrf5yZU8WDtbE1R5vqIjzMl7Bt6nzSY
aBBCxFjqlR4tuEbuZTmSBcWTHvVtkoFSwr3pegqUzEKL/3e0xL1/DxQtdRseXAIv
Kzvsatm0lOCxI+TIjMWp7OHgb8rgp4DLXtCs2zr13uUph6Ff8rU0Gq1vx9lM8GMD
+7FVHAYXUP98w38tMstWojXriKdXN5oJQ+K+W8QinQsALeNduTI7EqUvhkE1aqCi
MTPGVqkKKxsynQJsoPzdjQvWEqYGVDDN3icRNY9Ej4ZVUuKETFHhN3Kn4dp2Oso=
=DLec
-----END PGP SIGNATURE-----
