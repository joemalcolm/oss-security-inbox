X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["745" "Thursday" "23" "January" "2020" "23:25:06" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.2001232321290.91379@xnncv>" "26" "[oss-security] CVE-2020-1711 QEMU: block: iscsi: OOB heap access via an unexpected response of iSCSI Server" nil nil nil "1" "2020012317:55:06" "[oss-security] CVE-2020-1711 QEMU: block: iscsi: OOB heap access via an unexpected response of iSCSI Server" (number mark "U       ppandit@redh Jan 23   26/745   " thread-indent "\"[oss-security] CVE-2020-1711 QEMU: block: iscsi: OOB heap access via an unexpected response of iSCSI Server\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-1711 QEMU: block: iscsi: OOB heap access via an unexpected response of iSCSI Server" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26348 invoked by uid 550); 23 Jan 2020 17:55:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26324 invoked from network); 23 Jan 2020 17:55:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1579802115;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Cb4kHUhHH2XpzPK1xYvs0kLW98cdkhXbOV4p0N1uEC4=;
	b=hhrhbyUsJOWFxeji34k7UIqpzFaXHmBEP40AmZtDi4NxqvCY79TFA7OGDUlyUDoBxpeMog
	8kyKuizg5w8b/lQf5ybZjbGxfmYVIZXGuWzx6huvzZHlAum5fEAU0qu84BNj41tSbaR+ko
	O4osiDOU3Mxd6cxSPZ17MxBmH1pk4hI=
Date: Thu, 23 Jan 2020 23:25:06 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Felipe Franciosi <felipe@nutanix.com>, 
    Peter Turschmid <peter.turschm@nutanix.com>, 
    Raphael Norwitz <raphael.norwitz@nutanix.com>
Message-ID: <nycvar.YSQ.7.76.2001232321290.91379@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: YtFPSoFcOvm6Q36LnstitA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2020-1711 QEMU: block: iscsi: OOB heap access via an unexpected
 response of iSCSI Server

   Hello,

An out-of-bounds heap buffer access issue was found in the way iSCSI Block=
=20
driver in QEMU handled response coming from an iSCSI server, while checking=
=20
status of a Logical Address Block (LBA) in iscsi_co_block_status() routine.

A remote user could use this flaw to crash the QEMU process resulting in Do=
S=20
OR potentially execute arbitrary code with privileges of the QEMU process o=
n=20
the host.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2020-01/msg05535.html

This issue was reported by Felipe Franciosi, Raphael Norwitz and Peter=20
Turschmid of nutanix.com.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

