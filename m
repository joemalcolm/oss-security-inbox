X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2820" "Tuesday" "29" "March" "2016" "19:24:25" "+0200" "Hugues ANGUELKOV" "hugues.anguelkov@etu.univ-nantes.fr" "<f4df42b35dd9a6c8c6851eba66b2b3f1.squirrel@webmail-etu.univ-nantes.fr>" "62" "[oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3  filesystem DoS" "^Cc:" nil nil "3" "2016032917:24:25" "[oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3 filesystem DoS" (number mark "        hugues.angue Mar 29   62/2820  " thread-indent "\"[oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3  filesystem DoS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16020 invoked by uid 550); 29 Mar 2016 17:25:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15792 invoked from network); 29 Mar 2016 17:24:37 -0000
X-Virus-Scanned: Debian amavisd-new at smtp2
Message-ID: <f4df42b35dd9a6c8c6851eba66b2b3f1.squirrel@webmail-etu.univ-nantes.fr>
User-Agent: SquirrelMail/1.4.17
MIME-Version: 1.0
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit
X-Priority: 3 (Normal)
Importance: Normal
Cc: cve-assign@mitre.org
Date: Tue, 29 Mar 2016 19:24:25 +0200 (CEST)
From: "Hugues ANGUELKOV" <hugues.anguelkov@etu.univ-nantes.fr>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3 
     filesystem DoS
To: oss-security@lists.openwall.com

Hello,

The linux kernel is prone to a Denial of service when mounting specially
crafted ext2/ext3 (possibly ext4) filesystems. This occurs in the function
ext4_handle_error who call the panic function on precise circumstance.
This was tested on severals linux kernel version: 3.10, 3.18, 3.19, on
real hardware and Xen DomU PV & HVM (the crash report attached is from a
Fedora 3.18 PV DomU), from different distribution release: Ubuntu, CentOS,
Fedora, Linux Mint, QubesOS.
This a low security impact bug, because generally only root can mount
image, however on Desktop (or possibly server?) system configured with
automount the bug is easily triggable (think of android smartphone?Haven't
test yet).
The crafted image may be burn onto SD card or USB key to crash a large
panel of linux box.


[ 929.200197] EXT4-fs error (device loop0): ext4_iget:4058: inode #2: comm
mount: bad extended attribute block 8390656
[ 929.200226] Kernel panic - not syncing: EXT4-fs (device loop0): panic
forced after error
[ 929.200226]
[ 929.200230] CPU: 1 PID: 980 Comm: mount Tainted: G O
3.18.17-8.pvops.qubes.x86_64 #1
[ 929.200233] 0000000000000000 000000007533690c ffff88000ea07aa8
ffffffff81722191
[ 929.200237] 0000000000000000 ffffffff81a84108 ffff88000ea07b28
ffffffff8171a462
[ 929.200240] ffff880000000010 ffff88000ea07b38 ffff88000ea07ad8
000000007533690c
[ 929.200244] Call Trace:
[ 929.200249] [<ffffffff81722191>] dump_stack+0x46/0x58
[ 929.200253] [<ffffffff8171a462>] panic+0xd0/0x204
[ 929.200257] [<ffffffff812ae4d6>] ext4_handle_error.part.188+0x96/0xa0
[ 929.200260] [<ffffffff812ae838>] __ext4_error_inode+0xa8/0x180
[ 929.200264] [<ffffffff81292869>] ext4_iget+0x929/0xae0
[ 929.200267] [<ffffffff812b31fb>] ext4_fill_super+0x18db/0x2b60
[ 929.200270] [<ffffffff8120af20>] mount_bdev+0x1b0/0x1f0
[ 929.200273] [<ffffffff812b1920>] ? ext4_calculate_overhead+0x3d0/0x3d0
[ 929.200276] [<ffffffff812a3425>] ext4_mount+0x15/0x20
[ 929.200278] [<ffffffff8120b879>] mount_fs+0x39/0x1b0
[ 929.200282] [<ffffffff811afd95>] ? __alloc_percpu+0x15/0x20
[ 929.200285] [<ffffffff8122754b>] vfs_kern_mount+0x6b/0x110
[ 929.200287] [<ffffffff8122a38c>] do_mount+0x22c/0xb60
[ 929.200290] [<ffffffff811aab96>] ? memdup_user+0x46/0x80
[ 929.200292] [<ffffffff8122b002>] SyS_mount+0xa2/0x110
[ 929.200295] [<ffffffff8172a609>] system_call_fastpath+0x12/0x17
[ 929.200301] Kernel Offset: 0x0 from 0xffffffff81000000 (relocation
range: 0xffffffff80000000-0xffffffff9fffffff)c

I cannot attach the PoC (2x2MB too large) nor sending it in plain text
(they are filesystems), so I've uploaded it on this website of free file
sharing ... (sorry for the inconvenient):
poc.ext2 https://1fichier.com/?zbk2gohk8s
poc.ext3 https://1fichier.com/?9r0c8agjfa

Can you assign a CVE for this?
Thank for reading and your time.

Hugues ANGUELKOV.


