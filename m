X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1473" "Monday" "4" "January" "2016" "19:44:03" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1601041941480.17635@wniryva>" "42" "[oss-security] CVE request Qemu: net: vmxnet3: reading IMR registers leads to a crash " nil nil nil "1" "2016010414:14:03" "[oss-security] CVE request Qemu: net: vmxnet3: reading IMR registers leads to a crash" (number mark "U       ppandit@redh Jan  4   42/1473  " thread-indent "\"[oss-security] CVE request Qemu: net: vmxnet3: reading IMR registers leads to a crash \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1830 invoked by uid 550); 4 Jan 2016 14:14:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1812 invoked from network); 4 Jan 2016 14:14:30 -0000
Date: Mon, 4 Jan 2016 19:44:03 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <alpine.LFD.2.20.1601041941480.17635@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Subject: [oss-security] CVE request Qemu: net: vmxnet3: reading IMR registers leads to a
 crash 

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

   Hello,

Qemu emulator built with a VMWARE VMXNET3 paravirtual NIC emulator support is 
vulnerable to crash issue. It could occur while reading Interrupt Mask 
Registers(IMR).

A privileged(CAP_SYS_RAWIO) guest user could use this flaw to crash the Qemu 
process instance resulting in DoS.

Upstream patch:
- ---------------
   -> http://git.qemu.org/?p=qemu.git;a=commit;h=c6048f849c7e3f009786df76206e895

Reference:
- ----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1270876

Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWin4rAAoJEN0TPTL+WwQf9tsP/jdNbRX2Gu5iIS69tRuYSc5x
yYWJHosD9akCxj4pZYMbrjoiQeKs7xuVrqhZnKSDzXWnHjfH8tC41s6aWRcP4qp9
xqooML+OtIAoPFq6El4iBCp7lrp70rPatY+YXfI7IhxLNF6kFoUqBrWJe+aAxMod
shL3yDKv8J+dgRIc9j36odJpTVgsIyYojRr3Bb1IwfKsHmltVNxNqzHyOPGGU02G
B1c02Gy2atxkJqRNjrdmze6A1vSlyJiXHbCQxin9BNzc9EJqYer1KdIyztyeTBD0
OLuBvEZ872iKyCqgj/qQpdKAagQPXNcOG9VREcdoOCW38GFHXNSP1/n4ZbfjsUYX
oZqLbYnm9Mwq73eIBDJxzpzqwlDQqWFzdXgcPu82KvJt+Q2/Ms718N+0euOuDVOm
5U8f2VE+0hhCvkNakdKrRq4iy9E2vJLJ5x5yYgSj35rMMAKsx3fuEU8k9a5iyeWz
dp0VqAE2ene2RnibHrlBR4XXyu20Tvmh3gdDedTj71hCSOZ2o9AgmmIRERLlCZC6
L9hnOjbNRckIF8GjP9wgEcyzn+Jv2BWzBz1Ea+UEqXlPYtNzBYDHfouRf4/7ncMK
dTscla0o8lN92phhGmKporhosP3XwydezHbawKWiBenUHWkduKFAwqtMLwRLhbeG
r7TAUzpYU9gm9WLOCGrt
=SzBR
-----END PGP SIGNATURE-----
