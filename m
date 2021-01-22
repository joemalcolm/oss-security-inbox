X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["844" "Friday" "22" "January" "2021" "13:42:27" "+0530" "P J P" "ppandit@redhat.com" "<so4o1n2-r92q-8sn6-829r-qns5o0qo873@erqung.pbz>" "23" "[oss-security] CVE-2020-35517 QEMU: virtiofsd: potential privileged host device access from guest" nil nil nil "1" "2021012208:12:27" "[oss-security] CVE-2020-35517 QEMU: virtiofsd: potential privileged host device access from guest" (number mark "U       ppandit@redh Jan 22   23/844   " thread-indent "\"[oss-security] CVE-2020-35517 QEMU: virtiofsd: potential privileged host device access from guest\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-35517 QEMU: virtiofsd: potential privileged host device access from guest" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17676 invoked by uid 550); 22 Jan 2021 08:12:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17655 invoked from network); 22 Jan 2021 08:12:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611303167;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=qU+7awOs28PDM/okHPHF3GKmHbyuhPTscan6n3xhK8w=;
	b=iDH3D0CeqPlY2xDqgSwTpiW6Ei7mCsqwTK1jK0W6kkzb3NIyaurtqz1cB8NPhsMDt9Tych
	mP8F0XraYpnrOHncE3ZegQcWB2ylZptIHjbg85C99LfMtMk1/hubIdUNBdjMzz8plD6Wp1
	RwjMZ3hbffNxF/TBi4Lg0aZFEjhVC3w=
X-MC-Unique: WEW0sB0iPmC0r_D2_Hwlxw-1
Date: Fri, 22 Jan 2021 13:42:27 +0530 (IST)
From: P J P <ppandit@redhat.com>
To: oss security list <oss-security@lists.openwall.com>
cc: Alex Xu <alex@alxu.ca>, Stefan Hajnoczi <shajnocz@redhat.com>
Message-ID: <so4o1n2-r92q-8sn6-829r-qns5o0qo873@erqung.pbz>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-35517 QEMU: virtiofsd: potential privileged host device
 access from guest

   Hello,

A potential host privilege escalation issue was found in the virtio-fs shared 
file system daemon (virtiofsd) of the QEMU. Virtio-fs daemon shares host 
directory tree with a guest VM. The said privilege escalation scenario may 
occur if a privileged guest user was to create device special file in the 
shared directory and use it to r/w access host devices. A privileged guest 
user may use this flaw to arbitrarily access (r/w) host files resulting in DoS 
scenario or may potentially escalate privileges on the host.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2021-01/msg05461.html

* This issue was reported by Alex Xu (CC'd).

* 'CVE-2020-35517' assigned by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

