X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1579" "Tuesday" "10" "December" "2019" "17:10:40" "+0530" "P J P" "ppandit@redhat.com" nil "45" nil nil nil nil "12" nil nil (number mark "U       ppandit@redh Dec 10   45/1579  " thread-indent "\"[oss-security] CVE-2019-19338 Kernel: KVM: export MSR_IA32_TSX_CTRL to guest - incomplete fix for TAA (CVE-2019-11135)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-19338 Kernel: KVM: export MSR_IA32_TSX_CTRL to guest - incomplete fix for TAA (CVE-2019-11135)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18090 invoked by uid 550); 10 Dec 2019 11:41:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18069 invoked from network); 10 Dec 2019 11:41:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1575978049;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=7oV3JuAfYffmgbkqzNv8wp4O2t7frwH9LnsncK3M8PQ=;
	b=D2VIH1fNY5Kw6QSBBWs1wnTxKHQn75JmYmg3agb5A7L53e8Z+WTM6I8X2mJXcz6eO4VTEI
	wRBgEfUuY3hYIyUkL3Alt+MVG5MaiTRJf6ychAdbbqzdrVyqnai/zWJVjSVCI2iGN3g4+6
	AgNXHlHYfUV45Hk/5fh+BJ87NJzKeNQ=
Date: Tue, 10 Dec 2019 17:10:40 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <nycvar.YSQ.7.76.1912101658430.54987@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: nEtrkLWZOkyu9zMKptj_vg-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2019-19338 Kernel: KVM: export MSR_IA32_TSX_CTRL to guest -
 incomplete fix for TAA (CVE-2019-11135)

   Hello,

Transaction Asynchronous Abort (TAA) h/w issue, which affects Intel CPUs, i=
s=20
mitigated in two ways. One is by disabling Transactional Synchronisation=20
Extensions (TSX) feature of the CPU. And second is by clearing the affected=
=20
Store/Fill/Load port architectural buffers, which may hold sensitive=20
information bits.

It was found that the current kernel fixes don't completely fix TAA issue f=
or=20
guest VMs. When a guest is running on a host CPU affected by TAA (ie.=20
TAA_NO=3D0) but not affected by MDS issue (ie MDS_NO=3D1), to mitigate TAA =
issue,=20
guest was to clear the affected buffers by using VERW instruction mechanism=
.=20
But when MDS_NO=3D1 bit was exported to the guests, it did not quite use th=
e=20
VERW mechanism to clear the affected buffers.

This issue affects guests running on Cascade Lake CPUs, which are affected =
by=20
the TAA (ie. TAA_NO=3D0) issue, but are not affected by the MDS (ie. MDS_NO=
=3D1)=20
issue.

It requires that host has 'TSX' enabled.

Upstream patches:
-----------------
   -> https://git.kernel.org/linus/cbbaa2727aa3ae9e0a844803da7cef7fd3b94f2b
   -> https://git.kernel.org/linus/c11f83e0626bdc2b6c550fc8b9b6eeefbd8cefaa
   -> https://git.kernel.org/linus/b07a5c53d42a8c87b208614129e947dd2338ff9c

Another option: Export MDS_NO=3D0 to guests when TSX is enabled
   -> https://git.kernel.org/linus/e1d38b63acd843cfdd4222bf19a26700fd5c699e

'CVE-2019-19338' is assigned by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

