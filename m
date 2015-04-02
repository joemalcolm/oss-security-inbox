X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3568" "Thursday" "2" "April" "2015" "18:35:06" "+0200" "Yann Droneaud" "ydroneaud@opteya.com" "<1427992506.22575.80.camel@opteya.com>" "97" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" nil nil nil "4" "2015040216:35:06" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" (number mark "        ydroneaud@op Apr  2   97/3568  " thread-indent "\"[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access\"\n") "<551D5DC8.6070909@mellanox.com>" ("<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<1427969085.17020.5.camel@opteya.com>" "<AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<1427981431.22575.21.camel@opteya.com>" "<551D5DC8.6070909@mellanox.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22082 invoked by uid 550); 2 Apr 2015 16:35:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21589 invoked from network); 2 Apr 2015 16:35:39 -0000
Message-ID: <1427992506.22575.80.camel@opteya.com>
In-Reply-To: <551D5DC8.6070909@mellanox.com>
References: 
	<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>
	 <1427969085.17020.5.camel@opteya.com>
	 <AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>
	 <1427981431.22575.21.camel@opteya.com> <551D5DC8.6070909@mellanox.com>
Organization: OPTEYA
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.12.11 (3.12.11-1.fc21) 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 37.163.136.85
X-SA-Exim-Mail-From: ydroneaud@opteya.com
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on ou.quest-ce.net)
Cc: Shachar Raindel <raindel@mellanox.com>, Sagi Grimberg
 <sagig@mellanox.com>,  "oss-security@lists.openwall.com"
 <oss-security@lists.openwall.com>, "<linux-rdma@vger.kernel.org>
 (linux-rdma@vger.kernel.org)" <linux-rdma@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Date: Thu, 02 Apr 2015 18:35:06 +0200
From: Yann Droneaud <ydroneaud@opteya.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access
To: Haggai Eran <haggaie@mellanox.com>

Hi Haggai,

Le jeudi 02 avril 2015 à 18:18 +0300, Haggai Eran a écrit :
> On 02/04/2015 16:30, Yann Droneaud wrote:
> > Hi,
> > 
> > Le jeudi 02 avril 2015 à 10:52 +0000, Shachar Raindel a écrit :
> >>> -----Original Message-----
> >>> From: Yann Droneaud [mailto:ydroneaud@opteya.com]
> >>> Sent: Thursday, April 02, 2015 1:05 PM
> >>> Le mercredi 18 mars 2015 à 17:39 +0000, Shachar Raindel a écrit :
> > 
> >>>> +	/*
> >>>> +	 * If the combination of the addr and size requested for this
> >>> memory
> >>>> +	 * region causes an integer overflow, return error.
> >>>> +	 */
> >>>> +	if ((PAGE_ALIGN(addr + size) <= size) ||
> >>>> +	    (PAGE_ALIGN(addr + size) <= addr))
> >>>> +		return ERR_PTR(-EINVAL);
> >>>> +
> >>>
> >>> Can access_ok() be used here ?
> >>>
> >>>          if (!access_ok(writable ? VERIFY_WRITE : VERIFY_READ,
> >>>                         addr, size))
> >>>                   return ERR_PTR(-EINVAL);
> >>>
> >>
> >> No, this will break the current ODP semantics.
> >>
> >> ODP allows the user to register memory that is not accessible yet.
> >> This is a critical design feature, as it allows avoiding holding
> >> a registration cache. Adding this check will break the behavior,
> >> forcing memory to be all accessible when registering an ODP MR.
> >>
> > 
> > Where's the check for the range being in userspace memory space,
> > especially for the ODP case ?
> > 
> > For non ODP case (eg. plain old behavior), does get_user_pages()
> > ensure the requested pages fit in userspace region on all 
> > architectures ? I think so.
> 
> Yes, get_user_pages will return a smaller amount of pages than requested
> if it encounters an unmapped region (or a region without write
> permissions for write requests). If this happens, the loop in
> ib_umem_get calls get_user_pages again with the next set of pages, and
> this time if it the first page still cannot be mapped an error is returned.
> 
> > 
> > In ODP case, I'm not sure such check is ever done ?
> 
> In ODP, we also call get_user_pages, but only when a page fault occurs
> (see ib_umem_odp_map_dma_pages()). This allows the user to pre-register
> a memory region that contains unmapped virtual space, and then mmap
> different files into that area without needing to re-register.
> 

OK, thanks for the description.

> > (Aside, does it take special mesure to protect shared mapping from
> > being read and/or *written* ?)
> 
> I'm not sure I understand the question. Shared mappings that the process
> is allowed to read or write are also allowed for the HCA (specifically,
> to local and remote operations the same process performs using the HCA),
> provided the application has registered their virtual address space as a
> memory region.
> 

I was refering to description of get_user_pages():

http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/tree/mm/gup.c?id=v4.0-rc6#n765

 * @force:	whether to force access even when user mapping is currently
 *		protected (but never forces write access to shared mapping).

But since ib_umem_odp_map_dma_pages() use get_user_pages() with force
argument set to 0, it's OK.

Another related question: as the large memory range could be registered 
by user space with ibv_reg_mr(pd, base, size, IB_ACCESS_ON_DEMAND), 
what's prevent the kernel to map a file as the result of mmap(0, ...)
in this  region, making it available remotely through IBV_WR_RDMA_READ /
IBV_WR_RDMA_WRITE ?

Again, thanks for the information I was missing to understand how ODP is
checking the memory ranges.

Regards.

-- 
Yann Droneaud
OPTEYA


