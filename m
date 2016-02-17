X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1719" "Wednesday" "17" "February" "2016" "09:48:05" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160217144805.4E680332030@smtpvbsrv1.mitre.org>" "44" "[oss-security] Re: Umbraco - The open source ASP.NET CMS Multiple Vulnerabilities" "^Cc:" nil nil "2" "2016021714:48:05" "[oss-security] Re: Umbraco - The open source ASP.NET CMS Multiple Vulnerabilities" (number mark "        cve-assign@m Feb 17   44/1719  " thread-indent "\"[oss-security] Re: Umbraco - The open source ASP.NET CMS Multiple Vulnerabilities\"\n") "<1455701432.2704.1.camel@trustmatta.com>" ("<1455701432.2704.1.camel@trustmatta.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21845 invoked by uid 550); 17 Feb 2016 14:48:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21822 invoked from network); 17 Feb 2016 14:48:18 -0000
In-Reply-To: <1455701432.2704.1.camel@trustmatta.com>
Message-Id: <20160217144805.4E680332030@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, sandeepk.l337@gmail.com
Date: Wed, 17 Feb 2016 09:48:05 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Umbraco - The open source ASP.NET CMS Multiple Vulnerabilities
To: florent.daigniere@trustmatta.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> How different is it from CVE-2012-1301 ?

See the
https://github.com/umbraco/Umbraco-CMS/commit/924a016ffe7ae7ea6d516c07a7852f0095eddbce
commit. The vendor added

   && requestUri.Port == 80

to address the 127.0.0.1:25 and 127.0.0.1:8080 attack vectors
mentioned by Sandeep Kamble. This is not the same as the question of
whether, or when, the earlier discovery of a different attack
methodology:

  http://seclists.org/fulldisclosure/2012/Apr/65
  http://umbraco.com/umbraco/dashboard/FeedProxy.aspx?url=http://en.wikipedia.org/wiki/Open_proxy

was addressed. Accordingly, the new ID CVE-2015-8813 is needed for the
SSRF vulnerability involving non-80 port numbers.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWxIdUAAoJEL54rhJi8gl5zuEP/3DwlNaP5H+cDd2MC0Nh4LYB
zGn/lJv20cPAIhn8pBYAkQjpJhbbQmuFc4iael57H1E1rZ/2tkNC25OhQfHpi6mR
ayok6XyWttguUb1gsoJJR1gsYxc8oH12Wj6Uhq+vhnFO3FoEpHnk3pFvdKiFQ5kc
zjywXUKqwDbyzdNv8y2tvTxrNFooDQXXmP1d84HkGeuWl1R22pNzIGcJ94P31Rha
AXayg5NBdD88nu/d1mNfuoh3MHVWgRVoDcZV/TBDZrXUO0l9HRgyignfXtczpE0H
o/fAKBfAyQGlvqjjCu44DjpELyN3m4EopxifYnQ4tRX7BfuHs7hbZO3uG7oTZJUN
6j+lwoo/jXvnJV0+hq7lzO2X43qK+ZTGMMs88HArhnQ2k6PGqZVm1lvgTpLT8C2p
YU3FROSPg4aztIGoqAqk+aZfAolts2UV2e7oRMCiKohdD03UNc68AsFuIG/WTlGw
BF79uRCAUnBSsjK/Jl00nhMAxEtPNveLFJLNg0kZ9ZZdtJ0Ditb5ivud1S4153yV
/h3hvpPIUDJKr0LMrrn2S4HikTFtGqeB/unKyfvh3iQRmiSpxBu9zhQkaw5tbHMs
zN92b+o2ifvi4cOyXS6ckVREvmhLnlyV+dtVAeZKS85s4JljbhWHmS/OE/5kBwNN
w0/ED5xiMkc1RSqdA5da
=KXUT
-----END PGP SIGNATURE-----
