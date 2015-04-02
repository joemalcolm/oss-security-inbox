X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2786" "Thursday" "2" "April" "2015" "12:04:45" "+0200" "Yann Droneaud" "ydroneaud@opteya.com" "<1427969085.17020.5.camel@opteya.com>" "84" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" nil nil nil "4" "2015040210:04:45" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" (number mark "        ydroneaud@op Apr  2   84/2786  " thread-indent "\"[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access\"\n") "<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>" ("<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19903 invoked by uid 550); 2 Apr 2015 12:03:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13799 invoked from network); 2 Apr 2015 10:05:26 -0000
Message-ID: <1427969085.17020.5.camel@opteya.com>
In-Reply-To: <AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>
References: 
	<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>
Organization: OPTEYA
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.12.11 (3.12.11-1.fc21) 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 37.163.188.219
X-SA-Exim-Mail-From: ydroneaud@opteya.com
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on ou.quest-ce.net)
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, 
	"<linux-rdma@vger.kernel.org> (linux-rdma@vger.kernel.org)"
	 <linux-rdma@vger.kernel.org>, linux-kernel@vger.kernel.org, 
	"stable@vger.kernel.org"
	 <stable@vger.kernel.org>
Date: Thu, 02 Apr 2015 12:04:45 +0200
From: Yann Droneaud <ydroneaud@opteya.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access
To: Shachar Raindel <raindel@mellanox.com>

Hi,

Le mercredi 18 mars 2015 à 17:39 +0000, Shachar Raindel a écrit :
> Hi,
> 
> It was found that the Linux kernel's InfiniBand/RDMA subsystem did not
> properly sanitize input parameters while registering memory regions
> from user space via the (u)verbs API. A local user with access to
> a /dev/infiniband/uverbsX device could use this flaw to crash the
> system or, potentially, escalate their privileges on the system.
> 
> The issue has been assigned CVE-2014-8159.
> 
> The issue exists in the InfiniBand/RDMA/iWARP drivers since Linux
> Kernel version 2.6.13.
> 
> Mellanox OFED 2.4-1.0.4 fixes the issue. Available from:
> http://www.mellanox.com/page/products_dyn?product_family=26&mtag=linux_sw_drivers 
> 
> RedHat errata: https://access.redhat.com/security/cve/CVE-2014-8159
> Canonical errata: http://people.canonical.com/~ubuntu-security/cve/2014/CVE-2014-8159.html
> Novell (Suse) bug tracking: https://bugzilla.novell.com/show_bug.cgi?id=914742
> 
> 
> The following patch fixes the issue:
> 
> --------------- 8< ------------------------------
> 
> From d4d68430d4a12c569e28b4f4468284ea22111186 Mon Sep 17 00:00:00 2001
> From: Shachar Raindel <raindel@mellanox.com>
> Date: Sun, 04 Jan 2015 18:30:32 +0200
> Subject: [PATCH] IB/core: Prevent integer overflow in ib_umem_get address arithmetic
> 
> Properly verify that the resulting page aligned end address is larger
> than both the start address and the length of the memory area
> requested.
> 
> Both the start and length arguments for ib_umem_get are controlled by
> the user. A misbehaving user can provide values which will cause an
> integer overflow when calculating the page aligned end address.
> 
> This overflow can cause also miscalculation of the number of pages
> mapped, and additional logic issues.
> 
> Signed-off-by: Shachar Raindel <raindel@mellanox.com>
> Signed-off-by: Jack Morgenstein <jackm@mellanox.com>
> Signed-off-by: Or Gerlitz <ogerlitz@mellanox.com>
> ---
> 
> diff --git a/drivers/infiniband/core/umem.c b/drivers/infiniband/core/umem.c
> index aec7a6a..8c014b5 100644
> --- a/drivers/infiniband/core/umem.c
> +++ b/drivers/infiniband/core/umem.c
> @@ -99,6 +99,14 @@
>  	if (dmasync)
>  		dma_set_attr(DMA_ATTR_WRITE_BARRIER, &attrs);
>  
> +	/*
> +	 * If the combination of the addr and size requested for this memory
> +	 * region causes an integer overflow, return error.
> +	 */
> +	if ((PAGE_ALIGN(addr + size) <= size) ||
> +	    (PAGE_ALIGN(addr + size) <= addr))
> +		return ERR_PTR(-EINVAL);
> +

Can access_ok() be used here ?

         if (!access_ok(writable ? VERIFY_WRITE : VERIFY_READ,
                        addr, size))
                  return ERR_PTR(-EINVAL);


>  	if (!can_do_mlock())
>  		return ERR_PTR(-EPERM);
> 

Regards.

-- 
Yann Droneaud
OPTEYA


