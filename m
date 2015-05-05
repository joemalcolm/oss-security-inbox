X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["659" "Tuesday" "5" "May" "2015" "10:07:41" "+0200" "Remi Collet" "remi@fedoraproject.org" "<55487A4D.3050303@fedoraproject.org>" "29" "[oss-security] About PHP and CVE-2015-1353" nil nil nil "5" "2015050508:07:41" "[oss-security] About PHP and CVE-2015-1353" (number mark "        remi@fedorap May  5   29/659   " thread-indent "\"[oss-security] About PHP and CVE-2015-1353\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12111 invoked by uid 550); 5 May 2015 08:08:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12074 invoked from network); 5 May 2015 08:07:56 -0000
X-Virus-Scanned: Debian amavisd-new at mfilter19-d.gandi.net
X-Originating-IP: 82.241.130.121
Message-ID: <55487A4D.3050303@fedoraproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Tue, 05 May 2015 10:07:41 +0200
From: Remi Collet <remi@fedoraproject.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] About PHP and CVE-2015-1353
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi,

Can someone explain how this can be a security issue,
and why scored as "high" risk ?


On bad input, the call will produce a bad output.

I don't see any way to exploit this for any bad thing.

I really think we should reject this CVE.
Upstream doesn't even consider this as a bug.


Remi.


P.S. https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2015-1353
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iEYEARECAAYFAlVIek0ACgkQYUppBSnxahj9KQCaAtMayd0kNR0s+HesD1f8Hh0X
UUgAoNloTFTdXoJZgTcwH1vUWVcDLjwS
=AEJ5
-----END PGP SIGNATURE-----
