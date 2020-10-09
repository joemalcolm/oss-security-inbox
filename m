X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3358" "Friday" "9" "October" "2020" "12:20:38" "+1100" "Andrew Donnellan" "ajd@linux.ibm.com" "<09cb1e1e-c71b-83a3-4c04-4e47e7c85342@linux.ibm.com>" "76" "[oss-security] Linux kernel: powerpc: RTAS calls can be used to compromise kernel integrity" nil nil nil "10" "2020100901:20:38" "[oss-security] Linux kernel: powerpc: RTAS calls can be used to compromise kernel integrity" (number mark "U       ajd@linux.ib Oct  9   76/3358  " thread-indent "\"[oss-security] Linux kernel: powerpc: RTAS calls can be used to compromise kernel integrity\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: powerpc: RTAS calls can be used to compromise kernel integrity" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20352 invoked by uid 550); 9 Oct 2020 10:10:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3432 invoked from network); 9 Oct 2020 01:21:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : subject : to :
 message-id : date : mime-version : content-type :
 content-transfer-encoding; s=pp1;
 bh=uF8fs5jp9NKhNTm/2bRa7cgMgIdF+dgMy600hHy9/LQ=;
 b=YjylQrWGOHKr95XNu1buKk/6nUjARFcKmIB+5plreqiz1y3692GEvfqCi6/8w1nzsVUL
 FzyBsFhNu44RNKbvfhle5wTmXxDiaQYcgBhvCo0OLtor6luYHipuXU5CgBEZLfGRo/ex
 29H9GQJfUFPre09ydSw5zhig/1Mj15CgqQWpvo5JXo31yzwizIIqGTsQJPXgkaKN/nii
 4wkgfXmQAw5pCHe+ZOoU8iZczDlJARnBa/0KJMCudpW8oJMyrd42CEXcnx8N7Fq3pYxg
 Ta8quEN8AY9QlniCfPQjGOZ3xSyuXYaVVWqDhFhmqim8z9Q5fCuGNXnzxt0t+CSLL4Yv WQ== 
From: Andrew Donnellan <ajd@linux.ibm.com>
To: oss-security@lists.openwall.com,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Message-ID: <09cb1e1e-c71b-83a3-4c04-4e47e7c85342@linux.ibm.com>
Date: Fri, 9 Oct 2020 12:20:38 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-10-08_15:2020-10-08,2020-10-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 mlxscore=0
 clxscore=1034 bulkscore=0 adultscore=0 lowpriorityscore=0 mlxlogscore=999
 priorityscore=1501 phishscore=0 impostorscore=0 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010090003
Subject: [oss-security] Linux kernel: powerpc: RTAS calls can be used to compromise kernel
 integrity

The Linux kernel for powerpc has an issue with the Run-Time Abstraction 
Services (RTAS) interface, allowing root (or CAP_SYS_ADMIN users) in a 
VM to overwrite some parts of memory, including kernel memory.

This issue impacts guests running on top of PowerVM or KVM hypervisors 
(pseries platform), and does *not* impact bare-metal machines (powernv 
platform).

Description
===========

The RTAS interface, defined in the Power Architecture Platform 
Reference, provides various platform hardware services to operating 
systems running on PAPR platforms (e.g. the "pseries" platform in Linux, 
running in a LPAR/VM on PowerVM or KVM).

Some userspace daemons require access to certain RTAS calls for system 
maintenance and monitoring purposes.

The kernel exposes a syscall, sys_rtas, that allows root (or any user 
with CAP_SYS_ADMIN) to make arbitrary RTAS calls. For the RTAS calls 
which require a work area, it allocates a buffer (the "RMO buffer") and 
exposes the physical address in /proc so that the userspace tool can 
pass addresses within that buffer as an argument to the RTAS call.

The syscall doesn't check that the work area arguments to RTAS calls are 
within the RMO buffer, which makes it trivial to read and write to any 
guest physical address within the LPAR's Real Memory Area, including 
overwriting the guest kernel's text.

At the time the RTAS syscall interface was first developed, it was 
generally assumed that root had unlimited ability to modify system 
state, so this would not have been considered an integrity violation. 
However, with the advent of Secure Boot, Lockdown etc, root should not 
be able to arbitrarily modify the kernel text or read arbitrary kernel data.

Therefore, while this issue impacts all kernels since the RTAS interface 
was first implemented, we are only considering it a vulnerability for 
upstream kernels from 5.3 onwards, which is when the Lockdown LSM was 
merged. Lockdown was widely included in pre-5.3 distribution kernels, so 
distribution vendors should consider whether they need to backport the 
patch to their pre-5.3 distro trees.

(A CVE for this issue is pending; we requested one some time ago but it 
has not yet been assigned.)

Fixes
=====

A patch is currently in powerpc-next[0] and is expected to be included 
in mainline kernel 5.10. The patch has not yet been backported to 
upstream stable trees.

The approach taken by the patch is to maintain the existing RTAS 
interface, but restrict requests to the list of RTAS calls actually used 
by the librtas userspace library, and restrict work area pointer 
arguments to the region within the RMO buffer.

All RTAS-using applications that we are aware of are system 
management/monitoring tools, maintained by IBM, that use the librtas 
library. We don't anticipate there being any real world legitimate 
applications that require an RTAS call that isn't in the librtas list, 
however if such an application exists, the filtering can be disabled by 
a Kconfig option specified during kernel build.

Credit
======

Thanks to Daniel Axtens (IBM) for initial discovery of this issue.

[0] 
https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git/commit/?h=next&id=bd59380c5ba4147dcbaad3e582b55ccfd120b764

-- 
Andrew Donnellan              OzLabs, ADL Canberra
ajd@linux.ibm.com             IBM Australia Limited
