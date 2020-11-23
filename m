X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["565" "Tuesday" "24" "November" "2020" "01:41:13" "+1100" "Andrew Donnellan" "ajd@linux.ibm.com" "<a2fd9901-d8fc-3ba7-4422-2616bbf23220@linux.ibm.com>" "13" "[oss-security] Re: Linux kernel: powerpc: RTAS calls can be used to compromise kernel integrity" nil nil nil "11" "2020112314:41:13" "[oss-security] Re: Linux kernel: powerpc: RTAS calls can be used to compromise kernel integrity" (number mark "U       ajd@linux.ib Nov 24   13/565   " thread-indent "\"[oss-security] Re: Linux kernel: powerpc: RTAS calls can be used to compromise kernel integrity\"\n") "<09cb1e1e-c71b-83a3-4c04-4e47e7c85342@linux.ibm.com>" ("<09cb1e1e-c71b-83a3-4c04-4e47e7c85342@linux.ibm.com>") nil nil nil nil nil nil nil "[oss-security] Re: Linux kernel: powerpc: RTAS calls can be used to compromise kernel integrity" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12031 invoked by uid 550); 23 Nov 2020 14:48:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3776 invoked from network); 23 Nov 2020 14:41:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=subject : from : to :
 references : message-id : date : mime-version : in-reply-to : content-type
 : content-transfer-encoding; s=pp1;
 bh=KnziEfikCqGSE2HX4LMTmDdjvGMqZWp8Q+v2urztntY=;
 b=l8+AUWsMCNOSZlh9tzCoCtq31cChNPBSZULne8Yjcdw3DhAA/VKFLjMvlBw33cJMX4Pe
 +ZDgPM32Qjxf6Of3A1tMUgI++V0GB5dSTk7iG1uj2DwOeHUCuTsxfOwXwFRRQ6lROtQP
 4z+U0Rz5ymuqBraa+1uALQ0wzNt+XIoo0bVUn8WsG984Xn8GJeA2uVA2G8WvoLFwZOqr
 5jp67bJ4bJi5vAKwlQmi0/K6Cv/LsLTEr+zz2n/fOOIq8Z5tNAA33GqYhsxswWejEt/S
 5tbBoli+TaCpDWkUe3OEb6gn0AfKdeLouI9qh6DkdWK0tHVlgEJFHXcatyThsG/m1pQb Wg== 
From: Andrew Donnellan <ajd@linux.ibm.com>
To: oss-security@lists.openwall.com,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
References: <09cb1e1e-c71b-83a3-4c04-4e47e7c85342@linux.ibm.com>
Message-ID: <a2fd9901-d8fc-3ba7-4422-2616bbf23220@linux.ibm.com>
Date: Tue, 24 Nov 2020 01:41:13 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <09cb1e1e-c71b-83a3-4c04-4e47e7c85342@linux.ibm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312,18.0.737
 definitions=2020-11-23_11:2020-11-23,2020-11-23 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 impostorscore=0
 phishscore=0 adultscore=0 mlxlogscore=976 clxscore=1034 bulkscore=0
 lowpriorityscore=0 mlxscore=0 suspectscore=0 priorityscore=1501
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011230096
Subject: [oss-security] Re: Linux kernel: powerpc: RTAS calls can be used to compromise
 kernel integrity

On 9/10/20 12:20 pm, Andrew Donnellan wrote:
> The Linux kernel for powerpc has an issue with the Run-Time Abstraction 
> Services (RTAS) interface, allowing root (or CAP_SYS_ADMIN users) in a 
> VM to overwrite some parts of memory, including kernel memory.
> 
> This issue impacts guests running on top of PowerVM or KVM hypervisors 
> (pseries platform), and does *not* impact bare-metal machines (powernv 
> platform).
CVE-2020-27777 has been assigned.

-- 
Andrew Donnellan              OzLabs, ADL Canberra
ajd@linux.ibm.com             IBM Australia Limited
