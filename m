X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2254" "Friday" "18" "September" "2015" "12:58:26" "+1200" "Amos Jeffries" "squid3@treenet.co.nz" "<55FB61B2.7040001@treenet.co.nz>" "55" "[oss-security] CVE Request: Squid HTTP Proxy Denial of Service" nil nil nil "9" "2015091800:58:26" "[oss-security] CVE Request: Squid HTTP Proxy Denial of Service" (number mark "U       squid3@treen Sep 18   55/2254  " thread-indent "\"[oss-security] CVE Request: Squid HTTP Proxy Denial of Service\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15918 invoked by uid 550); 18 Sep 2015 00:59:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15751 invoked from network); 18 Sep 2015 00:59:12 -0000
To: oss-security@lists.openwall.com, cve-assign@mitre.org
From: Amos Jeffries <squid3@treenet.co.nz>
X-Enigmail-Draft-Status: N0110
Message-ID: <55FB61B2.7040001@treenet.co.nz>
Date: Fri, 18 Sep 2015 12:58:26 +1200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE Request: Squid HTTP Proxy Denial of Service

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi,
 The TLS/SSL parser in the latest series of Squid HTTP Proxy has been
found to have several bugs leading to Denial of Service possibilities.
Can CVE be assigned as appropriate please?

Vulnerable versions are 3.5.0.1 to 3.5.8 (inclusive), which are built
with OpenSSL and configured for "SSL-Bump" decryption.


Integer overflows can lead to invalid pointer math reading from random
memory on some CPU architectures. In the best case this leads to wrong
TLS extensiosn being used for the client, worst-case a crash of the
proxy terminating all active transactions.
Fixed by
<http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13914.p
atch>.

Incorrect message size checks and assumptions about the existence of
TLS extensions in the SSL/TLS handshake message can lead to very high
CPU consumption (up to and including 'infinite loop' behaviour).
Fixed by
<http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13915.p
atch>.


The above can be triggered remotely. Though there is one layer of
authorization applied before this processing to check that the client
is allowed to use the proxy, that check is generally weak. MS Skype on
Windows XP is known to trigger some of these.

(Formal release with advisory will be coming in a few days. 3.5.9
tarballs are available now, via FTP if the web mirrors ).

Amos Jeffries
Squid Software Foundation
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (MingW32)

iQIcBAEBAgAGBQJV+2GbAAoJEGvSOzfXE+nLUXAP+QHtjtge8w2NfIUPvHxugp6I
lB7tcmNU2CIbA7Ocgd49Hyz0mgVyv3eTi5ZPoa9qamyU8h4YuKYMSG3dW1O3VRGo
+CDahX3BnoXp1XkXnkfg/35icUzxSj2G3JdTlk6SKe5T/sVmfOObcq1DXUqN//xR
DH4k5BSe69m/4WJ+rgddkGwSfkrk/n4+SiuhmbRD8NP0qfpnJG+wyp07WKZ7L4/7
FIK+zlk9oWYaibNMEUMzC1cxfa2veAkBcXEfFIxUkjGTapdlYrZKlV/QTSRp5nuo
LCsluMie9Yz+CPHEg6ZaVfzc1t92+tA87OgvTdW7rS8kA65T9YZ8v2EEudnMDcfd
+Vh3TzcW3vntw8AafcB4zpJZFtqo3kN+2amN585hQYcCgElImn18yfsvs4KeDKK4
xaOnPoDsaFUXgw6gSmaEUXBbR0Xvg2Gf0f4wt4VSQQg/uZY9g3peLmxInsaAZRtQ
ExQx7AgRF1dUq5qBQFBIovKcuYUACKX1voBrTD3UVPTZECmpS8ofUNJn48T0EIij
n9OksIAQyi1zRg4Phyh8hJy/Jh7HDeLJI56LGI5a6PCpMd3c8+lKifATrzzht0ih
CrFVBytxW3um10GSxUo95fr1ZAJr096QmfIZWxNnRj0M+g8kHxoSW7spsiZ79ZMt
h8mCSUBX9NdWxJje7VMM
=Dyqj
-----END PGP SIGNATURE-----
