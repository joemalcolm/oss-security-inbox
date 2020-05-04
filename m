X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["808" "Monday" "4" "May" "2020" "11:40:42" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.2005041135590.1083026@xnncv>" "25" "[oss-security] CVE-2020-10717 QEMU: virtiofsd: guest may open maximum file descriptor to cause DoS" nil nil nil "5" "2020050406:10:42" "[oss-security] CVE-2020-10717 QEMU: virtiofsd: guest may open maximum file descriptor to cause DoS" (number mark "U       ppandit@redh May  4   25/808   " thread-indent "\"[oss-security] CVE-2020-10717 QEMU: virtiofsd: guest may open maximum file descriptor to cause DoS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-10717 QEMU: virtiofsd: guest may open maximum file descriptor to cause DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8002 invoked by uid 550); 4 May 2020 06:11:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7979 invoked from network); 4 May 2020 06:11:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588572655;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=lDOprWkG2ZoDa/V8k1McpAmWivajYuq/UMNSkU7ZNYY=;
	b=acJCsQFQ/gbdroznSEbJ3RkZAgSmSlohOeYQ4oSlWSgQolb1Lnrc/YhRcWD1QEyF5JKZAg
	q0gKjp5Bk93Fifp4i7EdYQOReu4gb7v3hyjjFzsRbH9X/GW9vR1hZkZ3vYJJLbVFjRUjy4
	GA89FshxWBWIaMLzTpyW75jHuCt4WL4=
X-MC-Unique: 3WtXEpLFM7qZZCV1MWCe2w-1
Date: Mon, 4 May 2020 11:40:42 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: yavrahami@paloaltonetworks.com
Message-ID: <nycvar.YSQ.7.76.2005041135590.1083026@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2020-10717 QEMU: virtiofsd: guest may open maximum file descriptor
 to cause DoS

   Hello,

A potential DoS issue was found in the virtio-fs shared file system daemon=
=20
(virtiofsd) implementation of the QEMU. Virtiofsd is meant to share a host=
=20
file system directory with a guest via virtio-fs device. The said DoS may=20
occur on the host, if the guest was to open the maximum number of file=20
descriptors under the shared directory. A guest user/process may use this f=
law=20
to cause DoS issue on the host.

Upstream patch(es):
-------------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2020-05/msg00143.html
   -> https://lists.gnu.org/archive/html/qemu-devel/2020-05/msg00141.html

This issue was reported by Yuval Avrahami of Palo Alto Networks.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

