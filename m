X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2434" "Thursday" "2" "April" "2015" "22:40:08" "+0200" "Yann Droneaud" "ydroneaud@opteya.com" "<1428007208.22575.104.camel@opteya.com>" "68" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" nil nil nil "4" "2015040220:40:08" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" (number mark "        ydroneaud@op Apr  2   68/2434  " thread-indent "\"[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access\"\n") "<AM2PR05MB0929FB71C5A4DE92A7709F92DCF20@AM2PR05MB0929.eurprd05.prod.outlook.com>" ("<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<1427969085.17020.5.camel@opteya.com>" "<AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<1427981431.22575.21.camel@opteya.com>" "<551D5DC8.6070909@mellanox.com>" "<1427992506.22575.80.camel@opteya.com>" "<AM2PR05MB0929FB71C5A4DE92A7709F92DCF20@AM2PR05MB0929.eurprd05.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5652 invoked by uid 550); 2 Apr 2015 20:40:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5581 invoked from network); 2 Apr 2015 20:40:22 -0000
Message-ID: <1428007208.22575.104.camel@opteya.com>
In-Reply-To: <AM2PR05MB0929FB71C5A4DE92A7709F92DCF20@AM2PR05MB0929.eurprd05.prod.outlook.com>
References: 
	<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>
	 <1427969085.17020.5.camel@opteya.com>
	 <AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>
	 <1427981431.22575.21.camel@opteya.com> <551D5DC8.6070909@mellanox.com>
	 <1427992506.22575.80.camel@opteya.com>
	 <AM2PR05MB0929FB71C5A4DE92A7709F92DCF20@AM2PR05MB0929.eurprd05.prod.outlook.com>
Organization: OPTEYA
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.12.11 (3.12.11-1.fc21) 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a01:e35:2e9f:6ac0:ad87:feb4:96:262e
X-SA-Exim-Mail-From: ydroneaud@opteya.com
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on ou.quest-ce.net)
Cc: Haggai Eran <haggaie@mellanox.com>, Sagi Grimberg <sagig@mellanox.com>, 
	"oss-security@lists.openwall.com"
	 <oss-security@lists.openwall.com>, "<linux-rdma@vger.kernel.org>
	(linux-rdma@vger.kernel.org)"
	 <linux-rdma@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	 <linux-kernel@vger.kernel.org>, "stable@vger.kernel.org"
	 <stable@vger.kernel.org>
Date: Thu, 02 Apr 2015 22:40:08 +0200
From: Yann Droneaud <ydroneaud@opteya.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access
To: Shachar Raindel <raindel@mellanox.com>

Hi,

Le jeudi 02 avril 2015 à 16:44 +0000, Shachar Raindel a écrit :
> > -----Original Message-----
> > From: Yann Droneaud [mailto:ydroneaud@opteya.com]
> > Sent: Thursday, April 02, 2015 7:35 PM

> > Another related question: as the large memory range could be registered
> > by user space with ibv_reg_mr(pd, base, size, IB_ACCESS_ON_DEMAND),
> > what's prevent the kernel to map a file as the result of mmap(0, ...)
> > in this  region, making it available remotely through IBV_WR_RDMA_READ /
> > IBV_WR_RDMA_WRITE ?
> > 
> 
> This is not a bug. This is a feature.
> 
> Exposing a file through RDMA, using ODP, can be done exactly like this.
> Given that the application explicitly requested this behavior, I don't
> see why it is a problem. 

If the application cannot choose what will end up in the region it has
registered, it's an issue !

What might happen if one library in a program call mmap(0, size, ...) to
load a file storing a secret (a private key), and that file ends up 
being mapped in an registered but otherwise free region (afaict, the 
kernel is allowed to do it) ?
What might happen if one library in a program call call mmap(0, 
size, ..., MAP_ANONYMOUS,...) to allocate memory, call mlock(), then
write in this location a secret (a passphrase), and that area ends up
in the memory region registered for on demand paging ?

The application haven't choose to disclose these confidential piece of 
information, but they are available for reading/writing by remote
through RDMA given it knows the rkey of the memory region (which is a 
32bits value).

I hope I'm missing something, because I'm not feeling confident such
behavor is a feature.


> Actually, some of our tests use such flows.
> The mmu notifiers mechanism allow us to do this safely. When the page is
> written back to disk, it is removed from the ODP mapping. When it is
> accessed by the HCA, it is brought back to RAM.
> 

I'm not discussing about the benefit of On Demand Paging and why it's a
very good feature to expose files through RDMA.

I'm trying to understand how the application can choose what is exposed
through RDMA if it registers a very large memory region for later use 
(but do not actually explicitly map something there yet): what's the
consequences ?

   void *start = sbrk(0);
   size_t size = ULONG_MAX - (unsigned long)start;

   ibv_reg_mr(pd, start, size, IB_ACCESS_ON_DEMAND)


Regards.

-- 
Yann Droneaud
OPTEYA


