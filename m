X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1102" "Friday" "27" "March" "2015" "13:24:17" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150327172417.8602A6C0007@smtpvmsrv1.mitre.org>" "32" "[oss-security] Re: CVE request: Erlang POODLE TLS vulnerability" nil nil nil "3" "2015032717:24:17" "[oss-security] Re: CVE request: Erlang POODLE TLS vulnerability" (number mark "        cve-assign@m Mar 27   32/1102  " thread-indent "\"[oss-security] Re: CVE request: Erlang POODLE TLS vulnerability\"\n") "<20150327143927.60a73799@pc1.fritz.box>" ("<20150327143927.60a73799@pc1.fritz.box>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20289 invoked by uid 550); 27 Mar 2015 17:24:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20265 invoked from network); 27 Mar 2015 17:24:29 -0000
In-Reply-To: <20150327143927.60a73799@pc1.fritz.box>
Message-Id: <20150327172417.8602A6C0007@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 27 Mar 2015 13:24:17 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Erlang POODLE TLS vulnerability
To: hanno@hboeck.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> From the release notes of Erlang 18.0-rc1:
> http://www.erlang.org/news/85
> "ssl: ... added padding check for
> TLS-1.0 due to the Poodle vulnerability."
> 
> This indicates that Erlang was vulnerable to the TLS-variant of the
> poodle vulnerability due to missing padding checks
> 
> this clearly is an implementation error and thus should be considered a
> vuln.

Use CVE-2015-2774.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVFZGTAAoJEKllVAevmvmsrb8H/jlkxOnhkQ0hIZ/XURZYf31O
i2LIOF4W5YkEmuI8W1EI9s+3UDf0gbJ4tQ54djwG0BF9I48T1jrl+MxWcco0nK8Q
p2jDrqj28gjlPnxoOslUoTSMZqvHrl591OCRpkLn+1ggK8wL75gpEhEscGrux64u
GaAjg5fklTUqf9aGWwYADk2bRZS6lOVwHHErHn8bvXsiST3vvhqIL03xNJBIl4MH
2/Km1nigVtBEthhhkXAtAl5Vds7BKxUUJOdNAvqPIu7s17b3bG464txNGrpdk7I+
+ImUdaTHg+XS/9MrqhF8GylUMgtBeYuibp3xBqOZEEZzfzHtfJg8zFKmrjJE3g8=
=mfFG
-----END PGP SIGNATURE-----
