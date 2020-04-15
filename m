X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1998" "Wednesday" "15" "April" "2020" "22:52:53" "+1000" "Andrew Donnellan" "ajd@linux.ibm.com" "<2ff92392-30ec-d5c4-84c9-e6ba24f6b154@linux.ibm.com>" "49" "[oss-security] CVE-2020-11669: Linux kernel 4.10 to 5.1: powerpc: guest can cause DoS on POWER9 KVM hosts" nil nil nil "4" "2020041512:52:53" "[oss-security] CVE-2020-11669: Linux kernel 4.10 to 5.1: powerpc: guest can cause DoS on POWER9 KVM hosts" (number mark "U       ajd@linux.ib Apr 15   49/1998  " thread-indent "\"[oss-security] CVE-2020-11669: Linux kernel 4.10 to 5.1: powerpc: guest can cause DoS on POWER9 KVM hosts\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-11669: Linux kernel 4.10 to 5.1: powerpc: guest can cause DoS on POWER9 KVM hosts" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1139 invoked by uid 550); 15 Apr 2020 14:21:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5991 invoked from network); 15 Apr 2020 12:53:13 -0000
From: Andrew Donnellan <ajd@linux.ibm.com>
To: oss-security@lists.openwall.com,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Date: Wed, 15 Apr 2020 22:52:53 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
x-cbid: 20041512-0008-0000-0000-0000037122CF
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20041512-0009-0000-0000-00004A92D6B4
Message-Id: <2ff92392-30ec-d5c4-84c9-e6ba24f6b154@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.676
 definitions=2020-04-15_03:2020-04-14,2020-04-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 clxscore=1034
 priorityscore=1501 impostorscore=0 mlxscore=0 malwarescore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 spamscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004150091
Subject: [oss-security] CVE-2020-11669: Linux kernel 4.10 to 5.1: powerpc: guest can cause
 DoS on POWER9 KVM hosts

The Linux kernel for powerpc from v4.10 to v5.1 has a bug where the 
Authority Mask Register (AMR), Authority Mask Override Register (AMOR) 
and User Authority Mask Override Register (UAMOR) are not correctly 
saved and restored when the CPU is going into/coming out of idle state.

On POWER9 CPUs, this means that a CPU may return from idle with the AMR 
value of another thread on the same core.

This allows a trivial Denial of Service attack against KVM hosts, by 
booting a guest kernel which makes use of the AMR, such as a v5.2 or 
later kernel with Kernel Userspace Access Prevention (KUAP) enabled.

The guest kernel will set the AMR to prevent userspace access, then the 
thread will go idle. At a later point, the hardware thread that the 
guest was using may come out of idle and start executing in the host, 
without restoring the host AMR value. The host kernel can get caught in 
a page fault loop, as the AMR is unexpectedly causing memory accesses to 
fail in the host, and the host is eventually rendered unusable.

The fix is to correctly save and restore the AMR in the idle state 
handling code.

The bug does not affect POWER8 or earlier Power CPUs.

CVE-2020-11669 has been assigned.

The bug has already been fixed upstream in kernels v5.2 onwards, by [0].

Fixes have been submitted for inclusion in upstream stable kernel trees 
for v4.19[1] and v4.14[2].

The bug is already fixed in Red Hat Enterprise Linux 8 kernels from 
4.18.0-147 onwards - see RHSA-2019:3517[3].

Thanks to David Gibson of Red Hat for the initial bug report.

[0] 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=53a712bae5dd919521a58d7bad773b949358add0

[1] https://lists.ozlabs.org/pipermail/linuxppc-dev/2020-April/208661.html

[2] https://lists.ozlabs.org/pipermail/linuxppc-dev/2020-April/208660.html

[3] https://access.redhat.com/errata/RHSA-2019:3517

-- 
Andrew Donnellan              OzLabs, ADL Canberra
ajd@linux.ibm.com             IBM Australia Limited

