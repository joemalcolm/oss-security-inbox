X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1960" "Friday" "13" "July" "2018" "09:25:48" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<40516268.50353517.1531488348910.JavaMail.zimbra@redhat.com>" "46" "[oss-security] CVE-2018-13405: Linux kernel: fs/inode.c:inode_init_owner() function mishandled a file creation in setgid directories" nil nil nil "7" "2018071313:25:48" "[oss-security] CVE-2018-13405: Linux kernel: fs/inode.c:inode_init_owner() function mishandled a file creation in setgid directories" (number mark "U       vdronov@redh Jul 13   46/1960  " thread-indent "\"[oss-security] CVE-2018-13405: Linux kernel: fs/inode.c:inode_init_owner() function mishandled a file creation in setgid directories\"\n") "<2027767315.50351770.1531487781419.JavaMail.zimbra@redhat.com>" ("<2027767315.50351770.1531487781419.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15845 invoked by uid 550); 13 Jul 2018 13:26:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15824 invoked from network); 13 Jul 2018 13:26:01 -0000
Date: Fri, 13 Jul 2018 09:25:48 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <40516268.50353517.1531488348910.JavaMail.zimbra@redhat.com>
In-Reply-To: <2027767315.50351770.1531487781419.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.4.239, 10.4.195.4]
Thread-Topic: CVE-2018-13405: Linux kernel: fs/inode.c:inode_init_owner() function mishandled a file creation in setgid directories
Thread-Index: 5XT4WAlo+6AwVbsxbp5iBmSNbA7IFA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Fri, 13 Jul 2018 13:25:49 +0000 (UTC)
Subject: [oss-security] CVE-2018-13405: Linux kernel: fs/inode.c:inode_init_owner()
 function mishandled a file creation in setgid directories

Heololo,

The Linux kernel through version v4.18-rc4 has a vulnerability in the
fs/inode.c:inode_init_owner() function logic that allows local users
to create files with an unintended group ownership and with group
execution and SGID permission bits set, in a scenario where a parent
directory has SGID bit set and belongs to a certain group and is
writable by a user who is not a member of this group.

In such a case a directory group non-member user can create a plain file
whose group ownership is of that group and with group execution and SGID
permission bits set. This can lead to excessive permissions granted in
case when they should not.

The intended behavior is that the non-member user can trigger creation of
a directory with group execution and SGID permission bits set whose group
ownership is of that group, but not a plain file.

The XFS filesystem is a special case here, it does not use
fs/inode.c:inode_init_owner() function from the VFS code, but uses its own
fs/xfs/xfs_inode.c:xfs_ialloc() function. The XFS filesystem behavior in
such situations is controlled by the fs.xfs.irix_sgid_inherit sysctl parameter,
and so the XFS filesystem is not vulnerable to this flaw.

[https://www.kernel.org/doc/Documentation/filesystems/xfs.txt]
fs.xfs.irix_sgid_inherit (Min: 0  Default: 0  Max: 1)
  Controls files created in SGID directories.
  If the group ID of the new file does not match the effective group
  ID or one of the supplementary group IDs of the parent dir, the
  ISGID bit is cleared if the irix_sgid_inherit compatibility sysctl
  is set.

References:

https://twitter.com/grsecurity/status/1015082951204327425

https://bugzilla.redhat.com/show_bug.cgi?id=1599161

https://bugzilla.suse.com/show_bug.cgi?id=1100416

An upstream patch:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0fa3ecd87848c9c93c2c828ef4c3a8ca36ce46c7

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
