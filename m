X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2519" "Thursday" "2" "April" "2015" "18:18:32" "+0300" "Haggai Eran" "haggaie@mellanox.com" "<551D5DC8.6070909@mellanox.com>" "66" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" nil nil nil "4" "2015040215:18:32" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" (number mark "U       haggaie@mell Apr  2   66/2519  " thread-indent "\"[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access\"\n") "<1427981431.22575.21.camel@opteya.com>" ("<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<1427969085.17020.5.camel@opteya.com>" "<AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<1427981431.22575.21.camel@opteya.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19957 invoked by uid 550); 2 Apr 2015 23:10:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32359 invoked from network); 2 Apr 2015 15:18:47 -0000
Authentication-Results: spf=none (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;
Received-SPF: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
Message-ID: <551D5DC8.6070909@mellanox.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>
	 <1427969085.17020.5.camel@opteya.com>
	 <AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>
 <1427981431.22575.21.camel@opteya.com>
In-Reply-To: <1427981431.22575.21.camel@opteya.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.0.42.235]
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report:
	CIP:193.47.165.134;CTRY:IL;IPV:NLI;EFV:NLI;BMV:1;SFV:NSPM;SFS:(10009020)(6009001)(428002)(24454002)(13464003)(189002)(51704005)(199003)(377454003)(479174004)(101416001)(50466002)(87266999)(86362001)(65816999)(77156002)(77096005)(54356999)(64126003)(46102003)(76176999)(33656002)(83506001)(2950100001)(92566002)(62966003)(19580395003)(47776003)(6806004)(93886004)(87936001)(19580405001)(230783001)(23676002)(80316001)(50986999)(36756003)(105586002)(106466001)(3940600001);DIR:OUT;SFP:1101;SCL:1;SRVR:DB3PR05MB219;H:mtlcas13.mtl.com;FPR:;SPF:None;MLV:sfv;MX:1;A:1;LANG:en;
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB3PR05MB219;
X-Microsoft-Antispam-PRVS:
	<DB3PR05MB2198630098771A621AD33A6C1F20@DB3PR05MB219.eurprd05.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test:
	BCL:0;PCL:0;RULEID:(601004)(5005006)(5002010);SRVR:DB3PR05MB219;BCL:0;PCL:0;RULEID:;SRVR:DB3PR05MB219;
X-Forefront-PRVS: 0534947130
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2015 15:18:35.1800
 (UTC)
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b;Ip=[193.47.165.134];Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR05MB219
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"<linux-rdma@vger.kernel.org> (linux-rdma@vger.kernel.org)"
	<linux-rdma@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "stable@vger.kernel.org"
	<stable@vger.kernel.org>
Date: Thu, 2 Apr 2015 18:18:32 +0300
From: Haggai Eran <haggaie@mellanox.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access
To: Yann Droneaud <ydroneaud@opteya.com>, Shachar Raindel
	<raindel@mellanox.com>, Sagi Grimberg <sagig@mellanox.com>

On 02/04/2015 16:30, Yann Droneaud wrote:
> Hi,
> 
> Le jeudi 02 avril 2015 à 10:52 +0000, Shachar Raindel a écrit :
>>> -----Original Message-----
>>> From: Yann Droneaud [mailto:ydroneaud@opteya.com]
>>> Sent: Thursday, April 02, 2015 1:05 PM
>>> Le mercredi 18 mars 2015 à 17:39 +0000, Shachar Raindel a écrit :
> 
>>>> +	/*
>>>> +	 * If the combination of the addr and size requested for this
>>> memory
>>>> +	 * region causes an integer overflow, return error.
>>>> +	 */
>>>> +	if ((PAGE_ALIGN(addr + size) <= size) ||
>>>> +	    (PAGE_ALIGN(addr + size) <= addr))
>>>> +		return ERR_PTR(-EINVAL);
>>>> +
>>>
>>> Can access_ok() be used here ?
>>>
>>>          if (!access_ok(writable ? VERIFY_WRITE : VERIFY_READ,
>>>                         addr, size))
>>>                   return ERR_PTR(-EINVAL);
>>>
>>
>> No, this will break the current ODP semantics.
>>
>> ODP allows the user to register memory that is not accessible yet.
>> This is a critical design feature, as it allows avoiding holding
>> a registration cache. Adding this check will break the behavior,
>> forcing memory to be all accessible when registering an ODP MR.
>>
> 
> Where's the check for the range being in userspace memory space,
> especially for the ODP case ?
> 
> For non ODP case (eg. plain old behavior), does get_user_pages()
> ensure the requested pages fit in userspace region on all 
> architectures ? I think so.

Yes, get_user_pages will return a smaller amount of pages than requested
if it encounters an unmapped region (or a region without write
permissions for write requests). If this happens, the loop in
ib_umem_get calls get_user_pages again with the next set of pages, and
this time if it the first page still cannot be mapped an error is returned.

> 
> In ODP case, I'm not sure such check is ever done ?

In ODP, we also call get_user_pages, but only when a page fault occurs
(see ib_umem_odp_map_dma_pages()). This allows the user to pre-register
a memory region that contains unmapped virtual space, and then mmap
different files into that area without needing to re-register.

> (Aside, does it take special mesure to protect shared mapping from
> being read and/or *written* ?)

I'm not sure I understand the question. Shared mappings that the process
is allowed to read or write are also allowed for the HCA (specifically,
to local and remote operations the same process performs using the HCA),
provided the application has registered their virtual address space as a
memory region.

Regards,
Haggai
