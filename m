X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["784" "Monday" "6" "April" "2020" "15:50:51" "+0530" "P J P" "ppandit@redhat.com" nil "25" nil nil nil nil "4" nil nil (number mark "U       ppandit@redh Apr  6   25/784   " thread-indent "\"[oss-security] CVE-2020-11102 QEMU: tulip: OOB access in tulip_copy_tx_buffers\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-11102 QEMU: tulip: OOB access in tulip_copy_tx_buffers" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5341 invoked by uid 550); 6 Apr 2020 10:21:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5317 invoked from network); 6 Apr 2020 10:21:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1586168464;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=k3OHJUazQOluhbVYh6KMBWpieSpP4dKQhgCiEx8cCuc=;
	b=hccRW2EA+r7P3p02zTXa8XpC6cWbtzITW2Sx1qmEL6QWq3A/firmu2edMnrk82oFXZ2Xzz
	CisARCFXX+6g72ccD/WWi/1oLIY5bUxUgl+0ffZdbHzsIO3Y/Sbd9sKSQZtG2CJSq8ajiu
	jR/V4DOFYrNC9tI1dyLFkUaYlkJl/tM=
X-MC-Unique: 0-X1wPfrPcGe_Vwgv2gm-w-1
Date: Mon, 6 Apr 2020 15:50:51 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: pangpei.lq@antfin.com, ziming zhang <ezrakiez@gmail.com>
Message-ID: <nycvar.YSQ.7.76.2004061547140.69262@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2020-11102 QEMU: tulip: OOB access in tulip_copy_tx_buffers

   Hello,

An out-of-bounds access issue was found in the Tulip NIC emulator built int=
o=20
QEMU. It could occur while copying network data to/from its tx/rx frame=20
buffers, as it does not check frame size against the data length.

A remote user/process could use this flaw to crash the QEMU process resulti=
ng=20
in Dos OR potentially execute arbitrary code with the privileges of the QEM=
U=20
process on the host.

Upstream patch:
   -> https://git.qemu.org/?p=3Dqemu.git;a=3Dcommit;h=3D8ffb7265af64ec81748=
335ec8f20e7ab542c3850

This issue was reported by Ziming Zhang and Li Qiang (Ant Financial).=20
CVE-2020-11102 requested via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

