X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1659" "Monday" "28" "December" "2015" "22:43:24" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1512282237320.29644@wniryva>" "45" "[oss-security] CVE request Qemu net: rocker: fix an incorrect array bounds check " nil nil nil "12" "2015122817:13:24" "[oss-security] CVE request Qemu net: rocker: fix an incorrect array bounds check" (number mark "U       ppandit@redh Dec 28   45/1659  " thread-indent "\"[oss-security] CVE request Qemu net: rocker: fix an incorrect array bounds check \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7204 invoked by uid 550); 28 Dec 2015 17:13:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7182 invoked from network); 28 Dec 2015 17:13:58 -0000
Date: Mon, 28 Dec 2015 22:43:24 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Qinghao Tang <luodalongde@gmail.com>
Message-ID: <alpine.LFD.2.20.1512282237320.29644@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Subject: [oss-security] CVE request Qemu net: rocker: fix an incorrect array bounds check 

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

   Hello,

Qemu emulator built with the Rocker switch emulation support is vulnerable to 
an off-by-one error. It happens while processing transmit(tx) descriptors in 
'tx_consume' routine, if a descriptor was to have more than allowed 
(ROCKER_TX_FRAGS_MAX=16) fragments.

A privileged user inside guest could use this flaw to cause memory leakage on 
the host or crash the Qemu process instance resulting in DoS issue.

Upstream patch:
- ---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2015-12/msg04629.html

Reference:
- ----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1286971

This issue was discovered by Mr Qinghao Tang of Qihoo 360 Inc.

Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWgW20AAoJEN0TPTL+WwQfOkgQAJTeKuop3PJH88Ho/L71iX5v
rnSubxLFpBVteoOMOqB7GKyRrW5ukWyi9AQHMKi0HYhF2TmFviDaIr6O6PqW6A2R
/p8vMMMgn4kMPhmx4FrsxwyF+/4SLikpMdFWsEO7bnFsyQSsfElm2EQdYeU0/Ag7
oQnXIwm7JxkJVEiScLLnSliQg6+cPpO1gyJyxkbvc2vLqL6B3i4Ve/UW7J4NwQ4O
ZTwK350e1FQvw4Kn0i33w3Sh7WGwvhiRzDmp63qPdMVu/egwhL/30HI9PK4GQ/qT
leGJAGDdLIavamC1pw8Mq/5VkdKL4DxmlpN5XSo+IxSDfWfKu52XiaPhC44ZM1UK
UvWif95UonzJzJP+yoYDpjaBFoOJv2vhEXzPoCwn/aXxZXov1k7HB2fFgEt8rB2n
E0E4xINuxfXttaKxuQNacpi//Uhc80YvllK3MBybfzCc8O4HdzYr7me1HnFZChi3
P3O+451D26m4n/I3HPb25bkX6u/zxuXJAwGG56izH/ea7E9FRHTN1SWmS0NfHCgj
ue6zfTgEf/VEkHjoRLkGULM9+wP7izy29g4TOFBscwqjHvQUZPxTcELCLt9bNEWa
G9ncMCJT9xomga/s6agKygmRUwpWNN8WxnxF0VzryNza7gn/7sjwPXcrh7RfKgw0
yg10oNrh6TYWSrK+qXOd
=97Sw
-----END PGP SIGNATURE-----
