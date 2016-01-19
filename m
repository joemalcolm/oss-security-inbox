X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1567" "Tuesday" "19" "January" "2016" "22:56:06" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1601192253240.22604@wniryva>" "43" "[oss-security] CVE request Qemu: net: e1000 infinite loop in start_xmit and e1000_receive_iov routines" nil nil nil "1" "2016011917:26:06" "[oss-security] CVE request Qemu: net: e1000 infinite loop in start_xmit and e1000_receive_iov routines" (number mark "U       ppandit@redh Jan 19   43/1567  " thread-indent "\"[oss-security] CVE request Qemu: net: e1000 infinite loop in start_xmit and e1000_receive_iov routines\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15562 invoked by uid 550); 19 Jan 2016 17:26:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15539 invoked from network); 19 Jan 2016 17:26:30 -0000
Date: Tue, 19 Jan 2016 22:56:06 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Laszlo Ersek <lersek@redhat.com>
Message-ID: <alpine.LFD.2.20.1601192253240.22604@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Subject: [oss-security] CVE request Qemu: net: e1000 infinite loop in start_xmit and
 e1000_receive_iov routines

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

   Hello,

Qemu emulator built with the e1000 NIC emulation support is vulnerable to an 
infinite loop issue. It could occur while processing data via transmit or 
receive descriptors, provided the initial receive/transmit descriptor 
head(TDH/RDH) is set outside the allocated descriptor buffer.

A privileged user inside guest could use this flaw to crash the Qemu instance 
resulting in DoS.

Upstream patch
- --------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-01/msg03454.html

Reference:
- ----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1298570

Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWnnGuAAoJEN0TPTL+WwQfM3sP/1VRTdBss1oIFirNs52Tpsyl
KmZBC5tPP7u+x9KWSQIClCRQcMHV09b5fvFnf7F86tNtFd/7Fhh6OpVQ9gpENpw1
enYDmDixD5eNJCpTiLAAoKznrvN/PmiFYcuQbCI9nxnEZUb46Ocw0WYQNm6PC9w2
wHj6oKfAOBCn0nmHZL7mHygRQeJdrufWFWBvx2aJyU+9a/TMAZ58iegj/ymW9V3L
7+FZMEcEuKDEHf7z06NNAbS+tjJb0DoYoEUxXL8ZvX2P813hr5uoZarXa0wVVNCS
gfcLPET2UKSlzP88vQyypKWVExofWr7s1VLH93x6CCvqpvoizVRIoDOMNPKUZSMB
2rTPTT9Z+Dr/c7o84Q2Tan9Yu6+8fd6fasGt7T0tTvOzlhXHFJNpnPriHiTOJBlV
+T2WD8CE7q7uWog+GaxL4Fc5JgHLwF6q1aZVWYcgyDakRRP1SeuajEydSuxcq+EY
gkNlX6k902JTNjoa3IYcQwe2Kv3zZ7avpbq8LxlyhKo0+FNst2xpaZS0KFIna9cs
Jiblnrw1E3of8XaZnNObLkNXfDvBanMhf/VTuzxKe1MxvWAzuo9iILLx9U+I8pHU
H5m5d8/qNlzclcB9atghb15AvMe2ddB997+U8rbhDHV7aqkzwTj0vy0+2tsRwYJ4
yoXLJL9V6CQzYYdprvlI
=T2Vb
-----END PGP SIGNATURE-----
