X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2065" "Tuesday" "3" "May" "2016" "01:25:07" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160503052507.7B7EA7BC01B@smtpvmsrv1.mitre.org>" "52" "[oss-security] Re: CVE request: atheme: security fixes" nil nil nil "5" "2016050305:25:07" "[oss-security] Re: CVE request: atheme: security fixes" (number mark "U       cve-assign@m May  3   52/2065  " thread-indent "\"[oss-security] Re: CVE request: atheme: security fixes\"\n") "<25eccda6-535c-c688-2081-87e4819f59d9@teufelsnetz.com>" ("<25eccda6-535c-c688-2081-87e4819f59d9@teufelsnetz.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28604 invoked by uid 550); 3 May 2016 05:25:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28583 invoked from network); 3 May 2016 05:25:19 -0000
From: cve-assign@mitre.org
To: max@teufelsnetz.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <25eccda6-535c-c688-2081-87e4819f59d9@teufelsnetz.com>
Message-Id: <20160503052507.7B7EA7BC01B@smtpvmsrv1.mitre.org>
Date: Tue,  3 May 2016 01:25:07 -0400 (EDT)
Subject: [oss-security] Re: CVE request: atheme: security fixes

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Multiple security issues were found in Atheme, an IRC services package

> Fix:
> https://github.com/atheme/atheme/commit/c597156adc60a45b5f827793cd420945f47bc03b
> Description: A remote attacker could change Atheme's behavior by
> registering/dropping certain accounts/nicks.
> Reference: https://github.com/atheme/atheme/issues/397

Use CVE-2014-9773. We don't completely understand issues/397. We think
"This is rejected for Atheme, please consider reporting it to a
downstream fork instead" means that the vulnerability report was
originally rejected, but that decision was reconsidered many months
later.


> Fix:
> https://github.com/atheme/atheme/commit/87580d767868360d2fed503980129504da84b63e
> Description: Under certain circumstances, a remote attacker could cause
> denial of service due to a buffer overflow in the XMLRPC response
> encoding code.

Use CVE-2016-4478.


(Incidentally, our understanding is that this code, or at least related
code, is available in the Debian atheme-services package.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXKDXOAAoJEHb/MwWLVhi2ZogP+QHDhnJ4pYRn19Fx9FOp3azJ
sFuB4gxtWYTej04JDBJuM8cx8TywJnWrJezIElofLDM0xLcbfYhUyTT69qUKn1sf
8SfWZimDQvNTbUW1a3hdEd7NbJhtFU1BruzXQZ1GF9kxVUCLIVOYpctQVVImRcpA
EZ5V4cBK8nBZwpegCI/c0jp6X37QTFrfgar08VV1tB66Ch2CrXfG7QL0ecu7mQxL
3hYmj83rl8Lc//lHRR7lV/L+coapgsJju/z7btB2rz9RvQERO9QWojhYiG3CL3aO
/yJ+9yHrIdoFJFC5GRN/jaAFnltbxvowKcCcaznZGDepTnmiVY4UBuGYwaHofEAS
1Vw+9U9oPNrYBN4emgyuonnGgeG5dEoHUCBb8+gTYuktNkdR+MmKgoh3/JUmHj4F
F7urIFTV4rxj1jK+jQCYs1gVwbyjU9KOwNek8roOhou7SGMKWz+klj6roSSDZkDx
RBnYvPS5A1Yr9thcpx5Wq19FLxBs4jxLkzPggQSKxxz9f+i45GVnFz2j30LnDjQv
nHEksTj/Az1eYIj7PYkZ8VKbcuRnuUPQrUo/p82EHBGLev/x7fC8xA/WLyDSLRw6
b6oiLcOUKbAdrigumyYF9rJlm37kdGufdeczWlk8UCf2NM5DbzLK2QeugnlzjYXk
5onF2vOKMXseEckA7VtD
=skOF
-----END PGP SIGNATURE-----
