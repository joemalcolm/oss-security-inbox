X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["364" "Friday" "11" "February" "2022" "08:45:30" "+0100" "Christian Borntraeger" "borntraeger@linux.ibm.com" nil "11" "[oss-security] Linux kernel: Fix for KVM on s390, insufficient checks for ioctl" nil nil nil "2" nil nil (number mark "U       borntraeger@ Feb 11   11/364   " thread-indent "\"[oss-security] Linux kernel: Fix for KVM on s390, insufficient checks for ioctl\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: Fix for KVM on s390, insufficient checks for ioctl" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12015 invoked by uid 550); 11 Feb 2022 12:43:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12182 invoked from network); 11 Feb 2022 07:45:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date : to :
 from : subject : content-type : content-transfer-encoding : mime-version;
 s=pp1; bh=H+z44MbevHEh3Emy9bd8WZ1SN8h8H+yJeF3qDB/kSgs=;
 b=ZE4ehD3ifxhT2r8+VMILPSo0TO1k0yGar1d0DSmKpdgXSrqxSCoP6dqEzgCIogVZWmhl
 CWIM50351WlTzAlXKX+0pEYsBwKNeQdTO+R8/0kvumSkqbfu/kutGsnG26XfZl+GoBuL
 0CDMa+jFErLh/XeERZkdP3/oaElGZUvUAhJyxkCjharAeS0l/jTdeypbISwaui0UX09j
 k18a0A7EAG4Jj2uR+1/Of9MZodGjFi1MTrJ6RpgwNCGJZJMHJ4xZ4uwGrBe1GZD7vBzJ
 Z2Zf/FPjI8JWghjy8Qyh6dPGZmf4SpwywRgHBaXemnDHCkh5Qz3wxUewZfng9h5K+srp uQ== 
Message-ID: <bc351510-ab51-78dc-f10b-07701d9ca8ee@linux.ibm.com>
Date: Fri, 11 Feb 2022 08:45:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: oss-security@lists.openwall.com,
        Janis Schoetterl-Glausch <scgl@linux.ibm.com>,
        Janosch Frank <frankja@linux.ibm.com>
From: Christian Borntraeger <borntraeger@linux.ibm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: kxzFI-p1J_9aQKC_iHw3qNbbA0YxZxP1
X-Proofpoint-ORIG-GUID: kxzFI-p1J_9aQKC_iHw3qNbbA0YxZxP1
Content-Transfer-Encoding: 7bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-02-11_02,2022-02-09_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0 impostorscore=0
 clxscore=1034 priorityscore=1501 mlxscore=0 malwarescore=0 mlxlogscore=616
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2202110043
Subject: [oss-security] Linux kernel: Fix for KVM on s390, insufficient checks for ioctl

Folks,

here is a Linux kernel fix
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2c212e1baedcd782b2535a3f86bc491977677c0e
for an insufficient check in the KVM module for s390.
This was reported last week to linux-distros at openwall. No exploit is available.

According to Red Hat this is now tracked via CVE-2022-0516.


Christian
