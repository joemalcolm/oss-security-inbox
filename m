X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3651" "Thursday" "2" "April" "2015" "17:15:52" "+0200" "Yann Droneaud" "ydroneaud@opteya.com" "<1427987752.22575.65.camel@opteya.com>" "104" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" nil nil nil "4" "2015040215:15:52" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" (number mark "        ydroneaud@op Apr  2  104/3651  " thread-indent "\"[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access\"\n") "<AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>" ("<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<1427969085.17020.5.camel@opteya.com>" "<AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23960 invoked by uid 550); 2 Apr 2015 15:16:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23917 invoked from network); 2 Apr 2015 15:16:16 -0000
Message-ID: <1427987752.22575.65.camel@opteya.com>
In-Reply-To: <AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>
References: 
	<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>
	 <1427969085.17020.5.camel@opteya.com>
	 <AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>
Organization: OPTEYA
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.12.11 (3.12.11-1.fc21) 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 37.163.136.85
X-SA-Exim-Mail-From: ydroneaud@opteya.com
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on ou.quest-ce.net)
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, 
	"<linux-rdma@vger.kernel.org> (linux-rdma@vger.kernel.org)"
	 <linux-rdma@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	 <linux-kernel@vger.kernel.org>, "stable@vger.kernel.org"
	 <stable@vger.kernel.org>
Date: Thu, 02 Apr 2015 17:15:52 +0200
From: Yann Droneaud <ydroneaud@opteya.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access
To: Shachar Raindel <raindel@mellanox.com>

Hi,
Le jeudi 02 avril 2015 à 10:52 +0000, Shachar Raindel a écrit :
> > -----Original Message-----
> > From: Yann Droneaud [mailto:ydroneaud@opteya.com]
> > Sent: Thursday, April 02, 2015 1:05 PM
> > Le mercredi 18 mars 2015 à 17:39 +0000, Shachar Raindel a écrit :
...
> > > +	/*
> > > +	 * If the combination of the addr and size requested for this
> > memory
> > > +	 * region causes an integer overflow, return error.
> > > +	 */
> > > +	if ((PAGE_ALIGN(addr + size) <= size) ||
> > > +	    (PAGE_ALIGN(addr + size) <= addr))
> > > +		return ERR_PTR(-EINVAL);
> > > +
> > 
> > Can access_ok() be used here ?
> > 
> >          if (!access_ok(writable ? VERIFY_WRITE : VERIFY_READ,
> >                         addr, size))
> >                   return ERR_PTR(-EINVAL);
> > 
> 
> No, this will break the current ODP semantics.
> 
> ODP allows the user to register memory that is not accessible yet.
> This is a critical design feature, as it allows avoiding holding
> a registration cache. Adding this check will break the behavior,
> forcing memory to be all accessible when registering an ODP MR.
> 

Failed to notice previously, but since this would break ODP, and ODP is 
only available starting v3.19-rc1, my proposed fix might be applicable 
for older kernel (if not better).

>From 2a3beaeb4b35d968f127cb59cfda2f12dbd87e4b Mon Sep 17 00:00:00 2001
From: Yann Droneaud <ydroneaud@opteya.com>
Date: Thu, 2 Apr 2015 17:01:05 +0200
Subject: [RFC PATCH] IB/core: reject invalid userspace memory range registration

Signed-off-by: Yann Droneaud <ydroneaud@opteya.com>
---
 drivers/infiniband/core/umem.c | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/infiniband/core/umem.c b/drivers/infiniband/core/umem.c
index df0c4f605a21..6758b4ac56eb 100644
--- a/drivers/infiniband/core/umem.c
+++ b/drivers/infiniband/core/umem.c
@@ -90,6 +90,7 @@ struct ib_umem *ib_umem_get(struct ib_ucontext *context, unsigned long addr,
 	DEFINE_DMA_ATTRS(attrs);
 	struct scatterlist *sg, *sg_list_start;
 	int need_release = 0;
+	bool writable;
 
 	if (dmasync)
 		dma_set_attr(DMA_ATTR_WRITE_BARRIER, &attrs);
@@ -97,6 +98,19 @@ struct ib_umem *ib_umem_get(struct ib_ucontext *context, unsigned long addr,
 	if (!can_do_mlock())
 		return ERR_PTR(-EPERM);
 
+	/*
+	 * We ask for writable memory if any access flags other than
+	 * "remote read" are set.  "Local write" and "remote write"
+	 * obviously require write access.  "Remote atomic" can do
+	 * things like fetch and add, which will modify memory, and
+	 * "MW bind" can change permissions by binding a window.
+	 */
+	writable  = !!(access & ~IB_ACCESS_REMOTE_READ);
+
+	if (!access_ok(writable ? VERIFY_WRITE : VERIFY_READ,
+		       (void __user *)addr, size))
+		return ERR_PTR(-EFAULT);
+
 	umem = kzalloc(sizeof *umem, GFP_KERNEL);
 	if (!umem)
 		return ERR_PTR(-ENOMEM);
@@ -106,14 +120,7 @@ struct ib_umem *ib_umem_get(struct ib_ucontext *context, unsigned long addr,
 	umem->offset    = addr & ~PAGE_MASK;
 	umem->page_size = PAGE_SIZE;
 	umem->pid       = get_task_pid(current, PIDTYPE_PID);
-	/*
-	 * We ask for writable memory if any access flags other than
-	 * "remote read" are set.  "Local write" and "remote write"
-	 * obviously require write access.  "Remote atomic" can do
-	 * things like fetch and add, which will modify memory, and
-	 * "MW bind" can change permissions by binding a window.
-	 */
-	umem->writable  = !!(access & ~IB_ACCESS_REMOTE_READ);
+	umem->writable  = writable;
 
 	/* We assume the memory is from hugetlb until proved otherwise */
 	umem->hugetlb   = 1;
-- 
2.1.0

Regards.

-- 
Yann Droneaud
OPTEYA


