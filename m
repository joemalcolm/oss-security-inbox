X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1945" "Tuesday" "16" "February" "2016" "14:48:19" "+1300" "Amos Jeffries" "squid3@treenet.co.nz" "<56C27FE3.5030104@treenet.co.nz>" "56" "[oss-security] CVE request: Squid HTTP Caching Proxy 3.5.13, 4.0.4, 4.0.5 denial of service" nil nil nil "2" "2016021601:48:19" "[oss-security] CVE request: Squid HTTP Caching Proxy 3.5.13, 4.0.4, 4.0.5 denial of service" (number mark "U       squid3@treen Feb 16   56/1945  " thread-indent "\"[oss-security] CVE request: Squid HTTP Caching Proxy 3.5.13, 4.0.4, 4.0.5 denial of service\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15440 invoked by uid 550); 16 Feb 2016 01:48:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15422 invoked from network); 16 Feb 2016 01:48:37 -0000
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
From: Amos Jeffries <squid3@treenet.co.nz>
X-Enigmail-Draft-Status: N1110
Message-ID: <56C27FE3.5030104@treenet.co.nz>
Date: Tue, 16 Feb 2016 14:48:19 +1300
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE request: Squid HTTP Caching Proxy 3.5.13, 4.0.4, 4.0.5 denial of
 service

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi,

A remotely triggerable denial of service has been found in Squid
proxy. The proxy incorrectly handles server TLS failure which almost
always results in crashing the entire proxy. Denying service for all
other clients using it.

Our Advisory will be at:
<http://www.squid-cache.org/Advisories/SQUID-2016_1.txt>
"
 This problem allows any trusted client to perform a denial of
 service attack on the Squid service regardless of whether TLS or
 SSL is configured for use in the proxy.

 Misconfigured client or server software may trigger this issue
 to perform a denial of service unintentionally.

 However, the bug is exploitable only if Squid is built using the
 --with-openssl option.
"

Versions 3.5.13, 4.0.4 and 4.0.5 are affected.

Patch for 3.5 is
<http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13981.p
atch>.

Patch for 4.0 is
<http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13981.p
atch>.
Though as a beta release we would prefer people update straight to the
new package.


Amos Jeffries
Squid Software Foundation
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (MingW32)

iQIcBAEBAgAGBQJWwn/jAAoJEGvSOzfXE+nLJS8QAKK0bSpcXZspbBIwbxSFsI2p
17XwSshlT9KkN1fp044iQJ53+DoIOggQQjtZ09ed9jiwSnt0rEOuuUG7Ebk9h3eM
SK59Yxzf44uJzRiRS51ayjfWjI1xeV12HW/fV9jdPEo5Z1aaqKxOXf1ZA9IU3qQr
rGht9HUapR0D6cB9EM2T65Td6Ea5ZPx8rMVuIVAhCKIWzC6tiK9bfDF/Ul+YJ6SF
W56gPQpqCI37Aua+ALL79JHjO6DdYZGVnmvzDvwSlhumxMPDPUzx0FHrcHuuRDDc
ADQ69n7TYaOikxaHCoBH0QZg8uYYezHQcw+S/+vwtLU3mFB8ue0POIScG9uLmH5t
mAaiHGnrk6D4yrxEO8DH6b0kFUr9JaqxjAdr4dwa6/Vsw4Ba/PuelEZJTGDQizRZ
hFWQgRsGSX7fP1CnujtCa1k1urNP5aE+weVYlR/jkSYFZIx9PwjwS5ppo2mOq3Si
aQoRGly8/5tklO1HsQ1wGoz3nB4bi/gQS1usHuQdqwdVnrerApCyQnFinkh/EH5G
g8EsDPBwMvypKnwu8853qQD+XV7MQ9eh4blR4FIsj9fzllJ+iLQsdd9I5FqPaD7e
5HJ+NiAFAwvfnHY5SIo6KAbINLEzEHLn3lTiJugBhElf7JawczMaYOqI8QF0+MEd
s0AMJfVT0EFiDXZ56g7M
=p6ME
-----END PGP SIGNATURE-----
