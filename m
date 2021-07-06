X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["885" "Tuesday" "6" "July" "2021" "19:16:00" "-0400" "Nayna" "nayna@linux.vnet.ibm.com" nil "21" "[oss-security] CVE-2021-35039: Linux kernel loading unsigned kernel modules via init_module syscall" nil nil nil "7" nil nil (number mark "U       nayna@linux. Jul  6   21/885   " thread-indent "\"[oss-security] CVE-2021-35039: Linux kernel loading unsigned kernel modules via init_module syscall\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-35039: Linux kernel loading unsigned kernel modules via init_module syscall" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1228 invoked by uid 550); 6 Jul 2021 23:55:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15699 invoked from network); 6 Jul 2021 23:16:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=to : cc : from : subject
 : message-id : date : mime-version : content-type :
 content-transfer-encoding; s=pp1;
 bh=55FrZxtWcaAwl+vg7c46jEcB7xd1Hhlv0XkCS8Gs7SA=;
 b=gvdB2FtxK9OV5f9c34lgUtmEiSQvxbCX8P3DAevyNCutVN9XV9reHRHYPU+5QKm9ywJM
 HQbhoLoUehwMTLL7WIi8EoQA18F1FUW//dJIJz/ew8E5SmoVOQETCpsaC3DKOpk/7vgU
 0bf6D+ZFvrPAW3pCsd2t8Yijhml3FXT8FBkW2WlOyjU8I94H6X3BnjLzxlEpCtLursJK
 EVW+W4nQnZlRGXcG7VA2x/RQEzpo7gzX6xqEyMWsczhJNfyLiQNxZ8NvmKxmwiK0+fPn
 wvpj0fH+CsYVgDQH/YEhx/hXknmESUS8GIbzue25mnBreVJW+ECVQqWFPWFRcxvDRRoU 0g== 
To: oss-security@lists.openwall.com
Cc: George Wilson <gcwilson@linux.ibm.com>, Mimi Zohar <zohar@linux.ibm.com>,
        naynjain@ibm.com
From: Nayna <nayna@linux.vnet.ibm.com>
Message-ID: <deba4116-70d2-0d08-4e80-ca8da698d5ec@linux.vnet.ibm.com>
Date: Tue, 6 Jul 2021 19:16:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 4_c101Xa66E5kmS0pQaN2QFobhZIR1Cs
X-Proofpoint-ORIG-GUID: 4_c101Xa66E5kmS0pQaN2QFobhZIR1Cs
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-06_13:2021-07-06,2021-07-06 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1034 spamscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 mlxscore=0 adultscore=0
 impostorscore=0 lowpriorityscore=0 mlxlogscore=999 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2107060109
Subject: [oss-security] CVE-2021-35039: Linux kernel loading unsigned kernel modules via
 init_module syscall

Vulnerability: Linux Kernel loading unsigned kernel modules via 
init_module syscall

Fixes: 7c9bc0983f89 ("ima: check signature enforcement against cmdline 
param instead of CONFIG")

Commit:  0c18f29aae7c ("module: limit enabling module.sig_enforce")

CVE:  CVE-2021-35039

Details:
The IMA arch specific policy rules, when enabled on x86, arm or powerpc, 
kernels with IMA_APPRAISE_REQUIRE_MODULE_SIGS configured, or systems 
with custom IMA policies containing a similar module rule, require all 
kernel modules to be signed. IMA, currently, only verifies kernel module 
signatures loaded via finit_module and relies on CONFIG_MODULE_SIG to 
verify kernel modules signatures loaded via init_module. The patch 
addresses the situation where MODULE_SIG is not enabled, but 
"module.sig_enforce=1" is specified on the boot command line.

Affected Kernel Versions: 4.15 through 5.12
