X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1444" "Tuesday" "22" "September" "2015" "16:54:14" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150922205414.044EE6C0091@smtpvmsrv1.mitre.org>" "38" "[oss-security] Re: CVE Request: gollum information disclosure vulnerability" nil nil nil "9" "2015092220:54:14" "[oss-security] Re: CVE Request: gollum information disclosure vulnerability" (number mark "        cve-assign@m Sep 22   38/1444  " thread-indent "\"[oss-security] Re: CVE Request: gollum information disclosure vulnerability\"\n") "<55FEA7E1.1070007@uu.nl>" ("<55FEA7E1.1070007@uu.nl>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22315 invoked by uid 550); 22 Sep 2015 20:54:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22295 invoked from network); 22 Sep 2015 20:54:25 -0000
In-Reply-To: <55FEA7E1.1070007@uu.nl>
Message-Id: <20150922205414.044EE6C0091@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 22 Sep 2015 16:54:14 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: gollum information disclosure vulnerability
To: d.ometto@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A vulnerability has been found in the gollum wiki, which allows
> attackers to gain read access to arbitrary files on the system.
> 
> Website: https://github.com/gollum/gollum
> Affected versions: 4.0.0 and earlier
> Patched version: 4.0.1
> 
> https://github.com/gollum/gollum/commit/ce68a88293ce3b18c261312392ad33a88bb69ea1

> +  halt 500 unless tempfile.is_a? Tempfile

Use CVE-2015-7314.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWAb0kAAoJEL54rhJi8gl5b04QAKUS3eQcfKwMz1IpPGFw2fo8
XzZVU0frlXw5aLzvFK22MW6auTWtsa3CnwBOFDwEFXvfN3V3p4uLjsTLIVN2WWij
GMhqXZKe07bQpXOrO0li0PeAHCkPSjwCLMpK98odXR3tRXbKp5fHEfGjfpg+6u98
Sq2bavxC6wCBIbF9k6wmWkJ/uGzSt6jNqt/sOQ/oVsNUJ9BdPhKIa9IypaPB8r1R
DXVI9W29rFAqFnkMXSGY4+tLQJhIsySnKjhJ8ViDVYNTD45eUsjJAawXhxbGJafz
SqKBfADfXpWNA6p2Vvfyyi3ys8v0jnN/fZqmROulBd0XUq+KMVFOe7NLalC7fcxh
aN8Q66JfroHcyb0hPw92sYpivyUSxz4prCOc2w0OPH1CvxACMqfVzCeq4TGZuMlO
VJBRnxhrhNWRTAIW/x+9OSMXJfglyKdF5pDtdSqYO+UoG5ND6n4rABPogRXknP0I
6cdaFpfRtOKWoDZqqANV8M7I956Vyol/kRkuVr8r+iHUfL/LWAh7iOqYlq82EmXo
Gb9koVcOLMKjUnzF4ELC2qjt8Z4U8jK5p9L3z7cD+NOyFhfOHNKGkO1X5H4lpyjr
S0valRAG6k1+ptHknNz9l+fzsJmPnL0D51yWSiX+/Pkx7HKu7v9Q5a3PgPAyhyeu
s8IpKgVaqe63J6di8cGR
=o7Ih
-----END PGP SIGNATURE-----
