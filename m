X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5381" "Friday" "3" "April" "2015" "02:20:14" "+0300" "Solar Designer" "solar@openwall.com" "<20150402232014.GA22617@openwall.com>" "117" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" nil nil nil "4" "2015040223:20:14" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" (number mark "U       solar@openwa Apr  3  117/5381  " thread-indent "\"[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access\"\n") "<1427998401240.52348@mellanox.com>" ("<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<1427969085.17020.5.camel@opteya.com>" "<AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<1427981431.22575.21.camel@opteya.com>" "<551D5DC8.6070909@mellanox.com>" "<1427998401240.52348@mellanox.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24283 invoked by uid 550); 2 Apr 2015 23:20:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24234 invoked from network); 2 Apr 2015 23:20:18 -0000
Message-ID: <20150402232014.GA22617@openwall.com>
References: <AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com> <1427969085.17020.5.camel@opteya.com> <AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com> <1427981431.22575.21.camel@opteya.com> <551D5DC8.6070909@mellanox.com> <1427998401240.52348@mellanox.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1427998401240.52348@mellanox.com>
User-Agent: Mutt/1.4.2.3i
Cc: Shachar Raindel <raindel@mellanox.com>,
	Yann Droneaud <ydroneaud@opteya.com>,
	Sagi Grimberg <sagig@mellanox.com>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Fri, 3 Apr 2015 02:20:14 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access
To: Haggai Eran <haggaie@mellanox.com>

Guys,

Can you please remove oss-security from CC on further replies that also
go to linux-kernel?  oss-security is meant to be focused on security,
whereas threads on linux-kernel tend to wander off.  In fact, I'd
appreciate it if we avoid this combination of CC's in the future - that
is, if linux-kernel is CC'ed, please don't CC oss-security on the same
message (as the resulting thread is extremely likely to be at least
partially off-topic for oss-security).  If something relevant to
oss-security comes up in a discussion on LKML, it's better to post a
summary of it to oss-security separately.  Thanks!

Alexander

Over-quoting to illustrate what I mean:

On Thu, Apr 02, 2015 at 06:12:58PM +0000, Haggai Eran wrote:
> On Thursday, April 2, 2015 7:44 PM, Shachar Raindel wrote:
> >> -----Original Message-----
> >> From: Yann Droneaud [mailto:ydroneaud@opteya.com]
> >> Sent: Thursday, April 02, 2015 7:35 PM
> >> To: Haggai Eran
> >> Cc: Shachar Raindel; Sagi Grimberg; oss-security@lists.openwall.com;
> >> <linux-rdma@vger.kernel.org> (linux-rdma@vger.kernel.org); linux-
> >> kernel@vger.kernel.org; stable@vger.kernel.org
> >> Subject: Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected
> >> physical memory access
> >>
> >> Hi Haggai,
> >>
> >> Le jeudi 02 avril 2015 ? 18:18 +0300, Haggai Eran a ?crit :
> >> > On 02/04/2015 16:30, Yann Droneaud wrote:
> >> >> Hi,
> >> >>
> >> >> Le jeudi 02 avril 2015 ? 10:52 +0000, Shachar Raindel a ?crit :
> >> >>>> -----Original Message-----
> >> >>>> From: Yann Droneaud [mailto:ydroneaud@opteya.com]
> >> >>>> Sent: Thursday, April 02, 2015 1:05 PM
> >> >>>> Le mercredi 18 mars 2015 ? 17:39 +0000, Shachar Raindel a ?crit :
> >> >>
> >> >>>>> +      /*
> >> >>>>> +       * If the combination of the addr and size requested for this
> >> >>>> memory
> >> >>>>> +       * region causes an integer overflow, return error.
> >> >>>>> +       */
> >> >>>>> +      if ((PAGE_ALIGN(addr + size) <= size) ||
> >> >>>>> +          (PAGE_ALIGN(addr + size) <= addr))
> >> >>>>> +              return ERR_PTR(-EINVAL);
> >> >>>>> +
> >> >>>>
> >> >>>> Can access_ok() be used here ?
> >> >>>>
> >> >>>>          if (!access_ok(writable ? VERIFY_WRITE : VERIFY_READ,
> >> >>>>                         addr, size))
> >> >>>>                   return ERR_PTR(-EINVAL);
> >> >>>>
> >> >>>
> >> >>> No, this will break the current ODP semantics.
> >> >>>
> >> >>> ODP allows the user to register memory that is not accessible yet.
> >> >>> This is a critical design feature, as it allows avoiding holding
> >> >>> a registration cache. Adding this check will break the behavior,
> >> >>> forcing memory to be all accessible when registering an ODP MR.
> >> >>>
> >> >>
> >> >> Where's the check for the range being in userspace memory space,
> >> >> especially for the ODP case ?
> >> >>
> >> >> For non ODP case (eg. plain old behavior), does get_user_pages()
> >> >> ensure the requested pages fit in userspace region on all
> >> >> architectures ? I think so.
> >> >
> >> > Yes, get_user_pages will return a smaller amount of pages than
> >> requested
> >> > if it encounters an unmapped region (or a region without write
> >> > permissions for write requests). If this happens, the loop in
> >> > ib_umem_get calls get_user_pages again with the next set of pages, and
> >> > this time if it the first page still cannot be mapped an error is
> >> returned.
> >> >
> >> >>
> >> >> In ODP case, I'm not sure such check is ever done ?
> >> >
> >> > In ODP, we also call get_user_pages, but only when a page fault occurs
> >> > (see ib_umem_odp_map_dma_pages()). This allows the user to pre-
> >> register
> >> > a memory region that contains unmapped virtual space, and then mmap
> >> > different files into that area without needing to re-register.
> >> >
> >>
> >> OK, thanks for the description.
> >>
> >> ...
> >>
> >> Another related question: as the large memory range could be registered
> >> by user space with ibv_reg_mr(pd, base, size, IB_ACCESS_ON_DEMAND),
> >> what's prevent the kernel to map a file as the result of mmap(0, ...)
> >> in this  region, making it available remotely through IBV_WR_RDMA_READ /
> >> IBV_WR_RDMA_WRITE ?
> >>
> > 
> > This is not a bug. This is a feature.
> > 
> > Exposing a file through RDMA, using ODP, can be done exactly like this.
> > Given that the application explicitly requested this behavior, I don't
> > see why it is a problem. Actually, some of our tests use such flows.
> > The mmu notifiers mechanism allow us to do this safely. When the page is
> > written back to disk, it is removed from the ODP mapping. When it is
> > accessed by the HCA, it is brought back to RAM.
> > 
> 
> 
> I want to add that we would like to see users registering a very large memory region (perhaps the entire process address space) for local access, and then enabling remote access only to specific regions using memory windows. However, this isn't supported yet by our driver. Still, there are valid cases where you would still want the results of an mmap(0,...) call to be remotely accessible, in cases where there is enough trust between the local process and the remote process. It may help a middleware communication library register a large portion of the address space in advance, and still work with random pointers given to it by another application module.
> 
> 
> Regards,
> Haggai
