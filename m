X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["900" "Thursday" "10" "December" "2020" "23:47:30" "+1100" "Andrew Donnellan" "ajd@linux.ibm.com" "<512b0d2f-1b50-743b-9cff-efc0cff4b9e9@linux.ibm.com>" "23" "[oss-security] Re: Linux kernel: powerpc: RTAS calls can be used to compromise kernel integrity" nil nil nil "12" "2020121012:47:30" "[oss-security] Re: Linux kernel: powerpc: RTAS calls can be used to compromise kernel integrity" (number mark "U       ajd@linux.ib Dec 10   23/900   " thread-indent "\"[oss-security] Re: Linux kernel: powerpc: RTAS calls can be used to compromise kernel integrity\"\n") "<a2fd9901-d8fc-3ba7-4422-2616bbf23220@linux.ibm.com>" ("<09cb1e1e-c71b-83a3-4c04-4e47e7c85342@linux.ibm.com>" "<a2fd9901-d8fc-3ba7-4422-2616bbf23220@linux.ibm.com>") nil nil nil nil nil nil nil "[oss-security] Re: Linux kernel: powerpc: RTAS calls can be used to compromise kernel integrity" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5710 invoked by uid 550); 10 Dec 2020 12:55:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29707 invoked from network); 10 Dec 2020 12:47:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=subject : from : to :
 references : cc : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=pp1;
 bh=9c3GstVSiG3XEVs1Qgi7LE/WNydxcE2o48IRtrMg0cs=;
 b=gvJxYNX1QTzo7Nd6Mb7J41Xb+K0/p65LW8pVyG4F5/iu6illLPrBsR9RZ1AxUF0cARpq
 CyckaZnqFcq8ExXCe51PZreEWw2CP3lUTTA8lwq6Xzy7IfJtoAy7kbQbvsinHMbX/5qa
 ujhq95BWe9w9DDCuD+8RlopLJq6Xik95+3+wH5+KcpnYefPRABnZlhaU01m/eWxQ+XYy
 Y2pMYTom3i5WRZk6BZmnl6utfH/gkK94SoDHGWW/5eknHSmF+tCxFQsF9z5aWaUpEn2+
 QRfy1A69wajqkPwMcipX5DSaybMWhsOmneuNxaL+pemlStt081CS2tuMA3/WLwL79NNM ag== 
From: Andrew Donnellan <ajd@linux.ibm.com>
To: oss-security@lists.openwall.com,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
References: <09cb1e1e-c71b-83a3-4c04-4e47e7c85342@linux.ibm.com>
 <a2fd9901-d8fc-3ba7-4422-2616bbf23220@linux.ibm.com>
Cc: Tyrel Datwyler <tyreld@linux.ibm.com>
Message-ID: <512b0d2f-1b50-743b-9cff-efc0cff4b9e9@linux.ibm.com>
Date: Thu, 10 Dec 2020 23:47:30 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <a2fd9901-d8fc-3ba7-4422-2616bbf23220@linux.ibm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2020-12-10_05:2020-12-09,2020-12-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 adultscore=0 spamscore=0 phishscore=0 priorityscore=1501 mlxscore=0
 impostorscore=0 clxscore=1034 malwarescore=0 bulkscore=0 mlxlogscore=979
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012100082
Subject: [oss-security] Re: Linux kernel: powerpc: RTAS calls can be used to compromise
 kernel integrity

On 24/11/20 1:41 am, Andrew Donnellan wrote:
> On 9/10/20 12:20 pm, Andrew Donnellan wrote:
>> The Linux kernel for powerpc has an issue with the Run-Time 
>> Abstraction Services (RTAS) interface, allowing root (or CAP_SYS_ADMIN 
>> users) in a VM to overwrite some parts of memory, including kernel 
>> memory.
>>
>> This issue impacts guests running on top of PowerVM or KVM hypervisors 
>> (pseries platform), and does *not* impact bare-metal machines (powernv 
>> platform).
> CVE-2020-27777 has been assigned.

A minor regression has been identified, affecting the ibm,open-errinjct 
RTAS call.

A patch is available at 
https://patchwork.ozlabs.org/project/linuxppc-dev/patch/20201208195434.8289-1-tyreld@linux.ibm.com/

Thanks to Tyrel Datwyler for identifying and fixing this issue.

-- 
Andrew Donnellan              OzLabs, ADL Canberra
ajd@linux.ibm.com             IBM Australia Limited
