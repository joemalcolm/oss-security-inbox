X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1617" "Saturday" "16" "January" "2016" "11:21:24" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1601161115510.22572@wniryva>" "45" "[oss-security] CVE request Qemu: i386: null pointer dereference in vapic_write" "^cc:" nil nil "1" "2016011605:51:24" "[oss-security] CVE request Qemu: i386: null pointer dereference in vapic_write" (number mark "        ppandit@redh Jan 16   45/1617  " thread-indent "\"[oss-security] CVE request Qemu: i386: null pointer dereference in vapic_write\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3252 invoked by uid 550); 16 Jan 2016 05:51:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3231 invoked from network); 16 Jan 2016 05:51:51 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1601161115510.22572@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
cc: Ling Liu <liuling-it@360.cn>
Date: Sat, 16 Jan 2016 11:21:24 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request Qemu: i386: null pointer dereference in vapic_write
To: oss security list <oss-security@lists.openwall.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

    Hello,

Qemu emulator built with the TPR optimization for 32-bit Windows guests 
support is vulnerable to a null pointer dereference flaw. It occurs while 
doing I/O port write operations via hmp interface. In that, 'current_cpu' 
remains null, which leads to the null pointer dereference.

A user/process could use this flaw to crash the Qemu instance, resulting in 
DoS issue.

Upstream patch:
- ---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-01/msg02812.html

Reference:
- ----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1283934

This issue was discovered by Mr Ling Liu of Qihoo 360 Inc.

Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWmdpcAAoJEN0TPTL+WwQfQFgP/R+7d+gu6FI/vnMOm5GkIrT6
r4Are28blvOv3rpiFBVhZdZnguM6AnVcxUw0bDFqXx4VRWRr+1efP3NmLHP+WkBm
UA7Kx5PPvqboB2eDapdFO2IOtkZj65MvfNhQIqRGNZK/Oc+87jLESE4FjcYMewPu
I496GavUhCvXmwUESVycRlvUt4MG1CLutFrV9oZ3X97P7GjOZZopO38+u6sUKOHG
k4isp4UxKQ2h4i72uLTnyVf6KvQPotD/Xsu68mLhfLDbC3yY3f2feotKTiSPozbl
mZqJq8H0Y76re2vkYCYsdyPCrrLMgENlggG+lJlRm695i6kd0/qVVfkTnKFSTBsg
adHlUBzXx65kR1HW4wkcypVCzP1uP7CWGTvH7dImOs3pw+mYFKpGxPpCc6MQQnXz
DyensHIEkJE1K4gwXhtFwh98oTGRCgkLhfllt7L8DTqQ8zbiGjZ9YB3TPKIDnXL9
+OeHmH6fxHgG6dKIlnEA9MnyzVzWjAW6niRUJngOvpPPXRc2hkeyq1pQipJzR0jR
oeqw6GeivT037UVh5gvoc2xUDA0KthLhN286O/P9eGmNXPfoK4cb7WzMswrQCFki
vF7aUrPB08VrCqNQ6B1BoIslFS1AHox6lYF+D/hS9VpwtHpGpbhN/Puw7lDt877D
etdsl05ZqHxRIZyzcrXr
=Rkz7
-----END PGP SIGNATURE-----
