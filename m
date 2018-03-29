X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2114" "Thursday" "29" "March" "2018" "03:56:09" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<2142970777.14264014.1522310169467.JavaMail.zimbra@redhat.com>" "58" "[oss-security] a number of CVEs for issues in the filesystem's code in the Linux kernel" "^Date:" nil nil "3" "2018032907:56:09" "[oss-security] a number of CVEs for issues in the filesystem's code in the Linux kernel" (number mark "U       vdronov@redh Mar 29   58/2114  " thread-indent "\"[oss-security] a number of CVEs for issues in the filesystem's code in the Linux kernel\"\n") "<1355223862.14262734.1522309525197.JavaMail.zimbra@redhat.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19642 invoked by uid 550); 29 Mar 2018 07:56:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19621 invoked from network); 29 Mar 2018 07:56:21 -0000
Message-ID: <2142970777.14264014.1522310169467.JavaMail.zimbra@redhat.com>
In-Reply-To: <1355223862.14262734.1522309525197.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.112.35, 10.4.195.4]
Thread-Topic: a number of CVEs for issues in the filesystem's code in the Linux kernel
Thread-Index: /YQE+LsYQpClvt6cRm598X5di0FwKg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Thu, 29 Mar 2018 07:56:09 +0000 (UTC)
Date: Thu, 29 Mar 2018 03:56:09 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] a number of CVEs for issues in the filesystem's code in the Linux
 kernel
To: oss-security@lists.openwall.com

Hello,

A number of CVEs were assigned to recently found issues in the filesystem's code in the Linux kernel:

====

CVE-2018-1092 kernel: NULL pointer dereference in ext4/mballoc.c:ext4_process_freed_data() when mounting crafted ext4 image

The Linux kernel through version 4.15 is vulnerable to a NULL pointer dereference
in the ext4/mballoc.c:ext4_process_freed_data() function. An attacker with
privileged access could exploit this by mounting a crafted ext4 image to cause a kernel panic.

References:
https://bugzilla.kernel.org/show_bug.cgi?id=199179
https://bugzilla.redhat.com/show_bug.cgi?id=1560777

=====

CVE-2018-1093 kernel: Out of bounds read in ext4/balloc.c:ext4_valid_block_bitmap() causes crash with crafted ext4 image

The Linux kernel through version 4.15 is vulnerable to an out-of-bounds
read in ext4/balloc.c:ext4_valid_block_bitmap() function. An privileged
attacker could exploit this by mounting a crafted ext4 image to cause a crash.

References:
https://bugzilla.kernel.org/show_bug.cgi?id=199181
https://bugzilla.redhat.com/show_bug.cgi?id=1560782

=====

CVE-2018-1094 kernel: NULL pointer dereference in ext4/xattr.c:ext4_xattr_inode_hash() causes crash with crafted ext4 image

The Linux kernel through version 4.15 is vulnerable to a NULL pointer dereference
in the ext4/xattr.c:ext4_xattr_inode_hash() function. A privileged attacker could
exploit this to cause a NULL pointer dereference with a crafted ext4 image.

References:
https://bugzilla.kernel.org/show_bug.cgi?id=199183
https://bugzilla.redhat.com/show_bug.cgi?id=1560788

=====

CVE-2018-1095 kernel: NULL pointer dereference in fs/posix_acl.c:get_acl() causes crash with crafted ext4 image

The Linux kernel through version 4.15 is vulnerable to a NULL pointer
dereference in the  fs/posix_acl.c:get_acl()function. A privileged attacker
could exploit this to cause a NULL pointer dereference with a crafted ext4
image.

References:

https://bugzilla.kernel.org/show_bug.cgi?id=199185
https://bugzilla.redhat.com/show_bug.cgi?id=1560793

=====

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
