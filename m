X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["989" "Thursday" "6" "February" "2020" "18:33:10" "+0530" "P J P" "ppandit@redhat.com" nil "30" nil "^cc:" nil nil "2" nil nil (number mark "        ppandit@redh Feb  6   30/989   " thread-indent "\"[oss-security] CVE-2020-8608 QEMU: Slirp: potential OOB access due to unsafe snprintf() usages\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-8608 QEMU: Slirp: potential OOB access due to unsafe snprintf() usages" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15522 invoked by uid 550); 6 Feb 2020 13:03:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15498 invoked from network); 6 Feb 2020 13:03:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580994217;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=7CEczPitzK8esX0O5KDlGQaXktnKoofbzeaIB/teV2A=;
	b=beVTHCxt9QqXCrBQCx/jClaGU0z0UlOXNMDDDPkZQ2q6R+okaeNBf3JbvHn2zKFz77oLGu
	gGMRi2yEo8uZl2unywNVTTUdrYb7ALAQKv6VQnbRGIzhXuHARBywS+yXv0TNMPpho/PYyu
	0zmqMP+OxG3h5Kv5H8vjabPdzDMdbiY=
X-X-Sender: pjp@kaapi
Message-ID: <nycvar.YSQ.7.76.2002061829020.84833@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: UaWJQNKRPDi5nJyvsxpFMA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
cc: Laszlo Ersek <lersek@redhat.com>
Date: Thu, 6 Feb 2020 18:33:10 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-8608 QEMU: Slirp: potential OOB access due to unsafe
 snprintf() usages
To: oss security list <oss-security@lists.openwall.com>

   Hello,

A out-of-bounds heap buffer access issue was found in the SLiRP networking=
=20
implementation of the QEMU emulator. It occurs in tcp_emu() routine while=20
emulating IRC and other protocols due to unsafe usage of snprintf(3) functi=
on.

A user/process could use this flaw to crash the Qemu process on the host=20
resulting in DoS or potentially execute arbitrary code with privileges of t=
he=20
QEMU process on the host.

Upstream patch:
---------------
   -> https://gitlab.freedesktop.org/slirp/libslirp/commit/68ccb8021a838066=
f0951d4b2817eb6b6f10a843
   -> https://gitlab.freedesktop.org/slirp/libslirp/commit/68ccb8021a838066=
f0951d4b2817eb6b6f10a843
   -> https://gitlab.freedesktop.org/slirp/libslirp/commit/30648c03b27fb8d9=
611b723184216cd3174b6775

This issue was reported by Laszlo Ersek(CC'd) and CVE assigned via ->=20
https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

