X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2383" "Wednesday" "8" "June" "2016" "11:54:31" "+0300" "Solar Designer" "solar@openwall.com" "<20160608085431.GA4278@openwall.com>" "39" "[oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" "^Date:" nil nil "6" "2016060808:54:31" "[oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" (number mark "        solar@openwa Jun  8   39/2383  " thread-indent "\"[oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13571 invoked by uid 550); 8 Jun 2016 08:54:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13553 invoked from network); 8 Jun 2016 08:54:36 -0000
Message-ID: <20160608085431.GA4278@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Date: Wed, 8 Jun 2016 11:54:31 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations
To: oss-security@lists.openwall.com

Hi,

Just off Twitter:

<mjos_crypto> Out today: This is the OpenSSL side-channel vulnerability I mentioned last week; now on ePrint. Also CVE-2016-2178. http://eprint.iacr.org/2016/594
<@mjos_crypto> @mjos_crypto Currently unfixed in essentially all distros.
<mjos_crypto> Note that CVE-2016-2178 / http://eprint.iacr.org/2016/594.pdf most severely actually impacts OpenSSH, which uses the OpenSSL library.
<mjos_crypto> Cesar's CVE-2016-2178 patch for the OpenSSL library from Monday. https://git.openssl.org/?p=openssl.git;a=commit;h=399944622df7bd81af62e67ea967c470534090e2

http://eprint.iacr.org/2016/594

| "Make Sure DSA Signing Exponentiations Really are Constant-Time''
| 
| Cesar Pereida Garca and Billy Bob Brumley and Yuval Yarom
| 
| Abstract: TLS and SSH are two of the most commonly used protocols for securing Internet traffic. Many of the implementations of these protocols rely on the cryptographic primitives provided in the OpenSSL library. In this work we disclose a vulnerability in OpenSSL, affecting all versions and forks (e.g. LibreSSL and BoringSSL) since roughly October 2005, which renders the implementation of the DSA signature scheme vulnerable to cache-based side-channel attacks. Exploiting the software defect, we demonstrate the first published cache-based key-recovery attack on these protocols: 260 SSH-2 handshakes to extract a 1024/160-bit DSA host key from an OpenSSH server, and 580 TLS 1.2 handshakes to extract a 2048/256-bit DSA key from an stunnel server. 
| 
| Category / Keywords: applied cryptography; digital signatures; side-channel analysis; timing attacks; cache-timing attacks; DSA; OpenSSL; CVE-2016-2178
| 
| Date: received 6 Jun 2016, last revised 7 Jun 2016

https://git.openssl.org/?p=openssl.git;a=commit;h=399944622df7bd81af62e67ea967c470534090e2

| author	Cesar Pereida
| 	Mon, 23 May 2016 12:45:25 +0300 (12:45 +0300)
| committer	Matt Caswell
| 	Mon, 6 Jun 2016 13:08:15 +0300 (11:08 +0100)

| Fix DSA, preserve BN_FLG_CONSTTIME
| 
| Operations in the DSA signing algorithm should run in constant time in
| order to avoid side channel attacks. A flaw in the OpenSSL DSA
| implementation means that a non-constant time codepath is followed for
| certain operations. This has been demonstrated through a cache-timing
| attack to be sufficient for an attacker to recover the private DSA key.
| 
| CVE-2016-2178

Alexander
