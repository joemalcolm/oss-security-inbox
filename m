X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1627" "Wednesday" "2" "March" "2016" "17:55:48" "-0600" "Tyler Hicks" "tyhicks@canonical.com" "<20160302235547.GB21900@boyd>" "42" "[oss-security] CVE-2015-1339: Linux Kernel: memory exhaustion via CUSE driver" "^Cc:" nil nil "3" "2016030223:55:48" "[oss-security] CVE-2015-1339: Linux Kernel: memory exhaustion via CUSE driver" (number mark "        tyhicks@cano Mar  2   42/1627  " thread-indent "\"[oss-security] CVE-2015-1339: Linux Kernel: memory exhaustion via CUSE driver\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24258 invoked by uid 550); 2 Mar 2016 23:56:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24232 invoked from network); 2 Mar 2016 23:56:02 -0000
Message-ID: <20160302235547.GB21900@boyd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="U+BazGySraz5kW0T"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Miklos Szeredi <miklos@szeredi.hu>,
	Colin Ian King <colin.king@canonical.com>, security@ubuntu.com
Date: Wed, 2 Mar 2016 17:55:48 -0600
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-1339: Linux Kernel: memory exhaustion via CUSE driver
To: oss-security@lists.openwall.com

--U+BazGySraz5kW0T
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Colin Ian King discovered a kernel memory leak in the CUSE driver using
stress-ng. A local denial of service, via memory exhaustion, is possible
if the attacker has sufficient privileges to repeatedly open /dev/cuse
for reading.

In Ubuntu, /dev/cuse is only readable by root so this flaw was deemed to
have a very low impact. I'm unsure of the default permissions in other
distributions.

CVE-2015-1339 was assigned to the issue.

Introduced in 4.2: https://git.kernel.org/linus/cc080e9e9be16ccf26135d366d7d2b65209f1d56
Fixed in 4.4: https://git.kernel.org/linus/2c5816b4beccc8ba709144539f6fdd764f8fa49c

Tyler

--U+BazGySraz5kW0T
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJW132DAAoJENaSAD2qAscKb24P/RdHp8K8mFy1FMbjlJYZWf15
9+F5jJ/M1+2XtA54CBUekZEtw74itAn1+0dkNzb6dcuIDP4YZrAKKuq/srpdEqdY
LfptHfUXV1K5sA7hG69i4sW8k1Bd/9l7VuQcpY5nWlKKjy2qpQoG19z/RL5AxDbH
OeTolrvBza2wOx7CdGPNPehotb1UhFv/IzFkspeHZp9pd1hac9+Kjwsz6jHRarW8
I+u3Xq1q397WMPlPOoT09Z/hC8YMrqT32D6FKqX7ReLalsqz+fMaEwNx5gArBN4a
FlmVf1GeWU45vFDa7fFuTSmq+sqmLUTwgIA7F4ksEm15c6SZP/WZ3xwKrb+bFCo3
Ghj2vmN7wUpXSzsTcpmxcqtm1InXaIeT0WE7S2NwcPLOqjAsNdiB8RL8Bujwt/ps
oe0VTylfsV8E8DKVGJvPsJW0UVWY+Q/p3NfN068XoWLsqpV24BWDmqH9mMcP6Klm
iI2LnO+jrddyTPteieW8dgnIy6pC78p9QaJ/3UGoIuC/v4mnb3f4JOKi7zkwPwDz
4RMpNK9kd0IPMh+8kWe/daCTlgHG6mc8+kLvwLb/VCbwJFFBggZGfsrLJmocWzX6
K66+4ZwBzn2yFaQf3HxTiCBgf98HF/PHLIcIB6nfl0meognnZpSnY9rO4Tf0aBUi
/7vOYD++9m9PkC6JUkEx
=dl6w
-----END PGP SIGNATURE-----

--U+BazGySraz5kW0T--
