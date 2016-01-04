X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1482" "Monday" "4" "January" "2016" "19:41:27" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1601041939440.17635@wniryva>" "43" "[oss-security] CVE request Qemu: net: vmxnet3: incorrect l2 header validation leads to a crash" nil nil nil "1" "2016010414:11:27" "[oss-security] CVE request Qemu: net: vmxnet3: incorrect l2 header validation leads to a crash" (number mark "U       ppandit@redh Jan  4   43/1482  " thread-indent "\"[oss-security] CVE request Qemu: net: vmxnet3: incorrect l2 header validation leads to a crash\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24173 invoked by uid 550); 4 Jan 2016 14:11:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24150 invoked from network); 4 Jan 2016 14:11:54 -0000
Date: Mon, 4 Jan 2016 19:41:27 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <alpine.LFD.2.20.1601041939440.17635@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Subject: [oss-security] CVE request Qemu: net: vmxnet3: incorrect l2 header validation leads
 to a crash

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

   Hello,

Qemu emulator built with a VMWARE VMXNET3 paravirtual NIC emulator support is 
vulnerable to crash issue. It occurs when a guest sends a Layer-2 packets 
smaller than 22 bytes.

A privileged(CAP_SYS_RAWIO) guest user could use this flaw to crash the Qemu 
process instance resulting in DoS.

Upstream patch:
- ---------------
   -> http://git.qemu.org/?p=qemu.git;a=commitdiff;h=a7278b36fcab9af469563bd7b

Reference:
- ----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1270871


Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWin2PAAoJEN0TPTL+WwQfHrUP/0ajI7Q7nqHauOGJdNUQ2aLV
bah+jF6iJyS6VtP5ZM3JQWGa3n2sWw1foRi+IKfmH4AqX7VxZnQZh28K+qUJV26G
nNWmDvuk468gL1u6GYZqjr8veyQrILJxJujVj5MDiZLiVIerCi+1nvhSu/aTgJBz
8BgSvpPD8KoQHHmLNjlGs8hoBJRctT0MIAZMXFcsKivzPJZ0YaWKIXvsveHsbkxf
d25lrjki7ppTirDa1Bxn41iKVNHH7RhzHcF2luCnOxNGn+X/Ltg3zcFi+v096tqn
HGQkG8iUdAfE8tKYonnxijAzUQo5c8W7Pq945yggK60Y/RpZc0j17u0F4YEiIs/e
ZBWSvczm2n8yiMAmhiSGVi9mnuYtJ1t36GmnYw4y7zLS8LqdFo7Ncere1o0D9555
7gBZbjQh2RgHafQtpqnZxTpXSSrwSso/yWzcXgzTxleTiqR1Ck4UlzIDi0aIQc++
QwKB5P0e5awmLXkxnYeduPRFpj3edu3A1xT32ZQo7sW2n/ytbdg3XuOCPoer0ut0
QsXGdXkS6qK1oMrXAZhW/+mA/nMH++ifiT8+gjWNKYPP/t4MdSKh+GXYUECbMOAI
F9qulVB86aQF9ACvV9IEzGj4qWynZHcIPRRo3bFE/gbMW14slSZTvEF81c5ZVeKA
Rl3wUtnr0i+DCmAUdfoZ
=8rAy
-----END PGP SIGNATURE-----
