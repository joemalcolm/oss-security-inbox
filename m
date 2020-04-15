X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["763" "Wednesday" "15" "April" "2020" "23:50:51" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.2004152346280.69262@xnncv>" "26" "[oss-security] CVE-2020-10942 Kernel: vhost-net: stack overflow in get_raw_socket while checking sk_family field" nil nil nil "4" "2020041518:20:51" "[oss-security] CVE-2020-10942 Kernel: vhost-net: stack overflow in get_raw_socket while checking sk_family field" (number mark "U       ppandit@redh Apr 15   26/763   " thread-indent "\"[oss-security] CVE-2020-10942 Kernel: vhost-net: stack overflow in get_raw_socket while checking sk_family field\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-10942 Kernel: vhost-net: stack overflow in get_raw_socket while checking sk_family field" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19877 invoked by uid 550); 15 Apr 2020 18:21:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19859 invoked from network); 15 Apr 2020 18:21:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1586974874;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=IYVqyaFCbCswxFuLpdoaWPrpZz9pUpKEJ2YzkZYsVUI=;
	b=XSWQ16Qq7k/QOihylYtMW/zKWCCoZTLKy6ILDihVZGj0//Yf4R85hNWs/q+Kf+uhm7w0EO
	RT73YkQJi3aPV697x1+JIHlKpZSO5aVoLP1ixlWY2M01gFSyWDYxNWEs6jxoA0YLnvMvl7
	yhknhapyZODgfvgAMPRg6iMep/nnke4=
X-MC-Unique: 45M80t-KPRW7OFuXiEyzhg-1
Date: Wed, 15 Apr 2020 23:50:51 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <nycvar.YSQ.7.76.2004152346280.69262@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2020-10942 Kernel: vhost-net: stack overflow in get_raw_socket
 while checking sk_family field

   Hello,

A stack buffer overflow issue was found in the get_raw_socket() routine of =
the=20
Host kernel accelerator for virtio net (vhost-net) driver. It could occur=20
while doing an ioctl(VHOST_NET_SET_BACKEND) call and retrieving socket name=
 in=20
a kernel stack variable via get_raw_socket(). A user able to perform ioctl(=
2)=20
calls on the '/dev/vhost-net' device may use this flaw to crash the kernel=
=20
resulting in DoS issue.

Upstream patch:
   -> https://git.kernel.org/linus/42d84c8490f9f0931786f1623191fcab397c3d64

Reference:
   -> https://lkml.org/lkml/2020/2/15/125

CVE-2020-10942 assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

