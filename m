X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1565" "Friday" "23" "September" "2016" "11:25:46" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160923152546.C7048332026@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: CVE Assignment for Crypto++ and \"AES and incorrect argument to _freea() under Microsoft compilers\"" nil nil nil "9" "2016092315:25:46" "[oss-security] Re: CVE Assignment for Crypto++ and \"AES and incorrect argument to _freea() under Microsoft compilers\"" (number mark "U       cve-assign@m Sep 23   38/1565  " thread-indent "\"[oss-security] Re: CVE Assignment for Crypto++ and \"AES and incorrect argument to _freea() under Microsoft compilers\"\"\n") "<CAH8yC8k=JmgBjwV2HD_tmyg7-U-9HPLmeJMAKPk2TBm5KrsfKw@mail.gmail.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9943 invoked by uid 550); 23 Sep 2016 15:26:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9907 invoked from network); 23 Sep 2016 15:25:58 -0000
From: cve-assign@mitre.org
To: noloader@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, jbyrd@giganticsoftware.com
In-Reply-To: <CAH8yC8k=JmgBjwV2HD_tmyg7-U-9HPLmeJMAKPk2TBm5KrsfKw@mail.gmail.com>
Message-Id: <20160923152546.C7048332026@smtpvbsrv1.mitre.org>
Date: Fri, 23 Sep 2016 11:25:46 -0400 (EDT)
Subject: [oss-security] Re: CVE Assignment for Crypto++ and "AES and incorrect argument to _freea() under Microsoft compilers"

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> a crash in Crypto++'s AES implementation under
> Microsoft compilers due to use of `_malloca`, `AliasedWithTables` and
> `_freea`. Crypto++ can potentially free the wrong pointer
> 
> https://github.com/weidai11/cryptopp/issues/302

>> if at any point the "space" pointer is changed from its original
>> location by the 256-byte rounding function, you're guaranteed to be in
>> for some pain at _freea time, as _freea refers to a memory address
>> that was never allocated in the first place.

Use CVE-2016-7544.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX5UhlAAoJEHb/MwWLVhi2SQ8P/37MUnrxMF7PynvK/O7dYgZj
h9CP649WDx0v+hl+Z95wYGMX/ciy/iBwiFnCkrIEtT/FhvREtHt1KB06E6ZG0R0N
ViqluDFJH+XsbIW1o8ETV/BOR70GPIpQzwwKKOP75qqGUcjKeEZon7LTqUFZgZsu
Qn7c14zB7vYe66liSjT6+0bWtgxLK7DG7zbNBbjmw9tBxOG1igAh5qz9G6Kfct4H
Pnoo1EZZ7k4qjGliGvoqvHkwfJWrjT89JUntQPBI5JPfTtd1RIjOVDvxCH0qLOXT
kd+67l8eW8E1ST/wCJ565FaCAEvUEI25rvnAroL76fN1n2acgmgNmmrBKbLZVqqj
n9f+R1DEJeip7eV44A/36n8Jwk7Y8k14aT4FhlboVtgyp9nDnR/jepm5Pn+hfUMr
OPQPSOoCWF0O7TZfS6IG8Zf6Dluaw/XTinHLVM+H/SqVgadQJFwRawgbxQYVCrht
21etDccBSvarT8WF6xzLKEgRk18GNFSRt37rfyI3PnR62Vv4I8DrKt5pgtV4D0iz
GT7W3gV8x4C7UKtbA+pVnPYbPs7aOczcnH3E+GEIDeeB4r8SKWiDvI4FcDXd9N4V
54rW4IhgBzmPWFUPlEMN6mfaOZHWcvA3XhDRRwo/GT7Mh8FBySXP+m/gWcw9G34I
r5UwZOXTT2nm1iMsR7t+
=n5Dw
-----END PGP SIGNATURE-----
