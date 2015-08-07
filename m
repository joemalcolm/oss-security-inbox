X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1100" "Thursday" "6" "August" "2015" "20:40:58" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150807004058.8FCCB6C011E@smtpvmsrv1.mitre.org>" "34" "[oss-security] Re: CVE request - remind 3.1.14 and earlier - buffer overflow" nil nil nil "8" "2015080700:40:58" "[oss-security] Re: CVE request - remind 3.1.14 and earlier - buffer overflow" (number mark "        cve-assign@m Aug  6   34/1100  " thread-indent "\"[oss-security] Re: CVE request - remind 3.1.14 and earlier - buffer overflow\"\n") "<20150728162653.2ae4a3bc@hydrogen.roaringpenguin.com>" ("<20150728162653.2ae4a3bc@hydrogen.roaringpenguin.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18099 invoked by uid 550); 7 Aug 2015 00:41:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18079 invoked from network); 7 Aug 2015 00:41:10 -0000
In-Reply-To: <20150728162653.2ae4a3bc@hydrogen.roaringpenguin.com>
Message-Id: <20150807004058.8FCCB6C011E@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu,  6 Aug 2015 20:40:58 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request - remind 3.1.14 and earlier - buffer overflow
To: dfs@roaringpenguin.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Please issue a CVE number for this vulnerability:
> 
> http://lists.roaringpenguin.com/pipermail/remind-fans/2015/003172.html
> 
> Patch fixing the problem is below.  Remind home page is at
> https://www.roaringpenguin.com/products/remind
> 
> var.c
> DumpSysVar
> +    if (name && strlen(name) > VAR_NAME_LEN) {
> +	fprintf(ErrFp, "$%s: Name too long\n", name);
> +	return;

Use CVE-2015-5957.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCAAGBQJVw/4wAAoJEKllVAevmvmsWTkH/iu9zwaHEbrkCf3RlzR1KS+M
/9mlDRIjxy2eGy+od26yxi/rH1ntnIQuCOc/nUdqYlFfFeDRoniSJj2Ht7dDXEi5
MDLu7/djiQIU+0e8bZje7TEhW+CaDrs3UugzaHG6fJ3i3QWnnwXnElDrTVHSZf5B
ffIWIdOwazrecboVWft0V3atogtaWvKBdEE1y9m/3+PWrzaShdF2yTsJFxECq8tg
db7iTzanx0vIEvD5Jzpq3PnoyYXkV7Q+p9hpmxVkc922DBTUNlNnT/04BtKoeC3a
hTx+dHXxmOU532gIfR/m3cnLLuprvyWjDpZuQ9ByuEZwjwo4CEeI6XkRVAko2eo=
=uWHj
-----END PGP SIGNATURE-----
