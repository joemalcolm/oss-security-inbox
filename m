X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1454" "Tuesday" "10" "November" "2015" "08:40:18" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1511100834590.20288@wniryva>" "39" "[oss-security] CVE-2015-5307 kernel: kvm: guest to host DoS by triggering an infinite loop in microcode via #AC exception" "^Date:" nil nil "11" "2015111003:10:18" "[oss-security] CVE-2015-5307 kernel: kvm: guest to host DoS by triggering an infinite loop in microcode via #AC exception" (number mark "U       ppandit@redh Nov 10   39/1454  " thread-indent "\"[oss-security] CVE-2015-5307 kernel: kvm: guest to host DoS by triggering an infinite loop in microcode via #AC exception\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15857 invoked by uid 550); 10 Nov 2015 03:10:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15836 invoked from network); 10 Nov 2015 03:10:50 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1511100834590.20288@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Tue, 10 Nov 2015 08:40:18 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-5307 kernel: kvm: guest to host DoS by triggering an infinite
 loop in microcode via #AC exception
To: oss security list <oss-security@lists.openwall.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

  Hello,

A guest to host DoS issue was found affecting various hypervisors. In that, a 
a guest can DoS the host by triggering an infinite stream of "alignment check" 
(#AC) exceptions. This causes the microcode to enter an infinite loop where 
the core never receives another interrupt. The host kernel panics due to this 
effect.

Reference:
- ----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1277557

This issue was found by Mr Ben Serebrin of Google Inc.

Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWQWAaAAoJEN0TPTL+WwQfwr4P/AnwgaRFeF8etPfs/cWd1+rH
sXGNlIrEGTx4ZvYDhkLn80X9dYrNp3B7pi1ACKsT9l9TfiZqgX91HyKKPb0oZ8C/
iZ/v+xveNFRQB7SCuJVjUBF8QB4QSPNq79KwjR+ANS3oNbrKXLDncCq/8qNi+5L6
90hJxAJzCY+XUhEa5NLz3/EMOZKI+UF2mEqwq13Dg5RWPFDvnHOX2w5XgLIpLluM
Y642Y0FYbS5Q+/emFZL3gD5uBLV0gMU5pVH/hmWdiIsMlTOgROyA1oTQoNlvQFV4
jkxMwF0gU4/WcSrixrHZexMuoRSJzc5e3ymMN2h38tLDVoZltsWexdvSHCHKyT4j
2NRsS13BUWUjQ16DYoIaMuIZkAtUqr6NjH5DS8CD5P9Dqdw6fvu0ElDgTZwaI/jr
Y/NSh38473T55t85U4FmP/NvsgGymnX9Fve7jMMTzMesmxybGEywv0SfTwJWd4Q8
/nZKaK3VgVGNIJMQX827ON9rcKeAtP+ZfGQiuzC78Wht0TkjGH/OcQFtW+yHJmGG
Jdvi/xKNmfOL8gmAhT2At+7++oHxalYsjMwV490ddUu3Bjb7vA6ufxpyJ1zO4ZKm
vD2eSzrWdiYWKmPhQ8NLTJ786w72DocrAcG+FAPC7vDISRymPR0CUmPpT2Qv0pr7
txfgULge22JegmMIKQ0W
=vFu8
-----END PGP SIGNATURE-----
