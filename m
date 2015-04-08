X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3366" "Wednesday" "8" "April" "2015" "14:44:03" "+0200" "Yann Droneaud" "ydroneaud@opteya.com" "<1428497043.22575.176.camel@opteya.com>" "81" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" nil nil nil "4" "2015040812:44:03" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" (number mark "        ydroneaud@op Apr  8   81/3366  " thread-indent "\"[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access\"\n") "<1428495568.22575.172.camel@opteya.com>" ("<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<1427969085.17020.5.camel@opteya.com>" "<AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<1427987752.22575.65.camel@opteya.com>" "<AM2PR05MB0929EDC60BBE5DAAAD4AB1B4DCF20@AM2PR05MB0929.eurprd05.prod.outlook.com>" "<1428495568.22575.172.camel@opteya.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17529 invoked by uid 550); 8 Apr 2015 12:48:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15534 invoked from network); 8 Apr 2015 12:44:24 -0000
Message-ID: <1428497043.22575.176.camel@opteya.com>
In-Reply-To: <1428495568.22575.172.camel@opteya.com>
References: 
	<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>
	 <1427969085.17020.5.camel@opteya.com>
	 <AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>
	 <1427987752.22575.65.camel@opteya.com>
	 <AM2PR05MB0929EDC60BBE5DAAAD4AB1B4DCF20@AM2PR05MB0929.eurprd05.prod.outlook.com>
	 <1428495568.22575.172.camel@opteya.com>
Organization: OPTEYA
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.12.11 (3.12.11-1.fc21) 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 37.163.236.228
X-SA-Exim-Mail-From: ydroneaud@opteya.com
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on ou.quest-ce.net)
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, 
	"<linux-rdma@vger.kernel.org> (linux-rdma@vger.kernel.org)"
	 <linux-rdma@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	 <linux-kernel@vger.kernel.org>, "stable@vger.kernel.org"
	 <stable@vger.kernel.org>
Date: Wed, 08 Apr 2015 14:44:03 +0200
From: Yann Droneaud <ydroneaud@opteya.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access
To: Shachar Raindel <raindel@mellanox.com>

Hi,

Le mercredi 08 avril 2015 à 14:19 +0200, Yann Droneaud a écrit :
> Le jeudi 02 avril 2015 à 16:34 +0000, Shachar Raindel a écrit :
> > > -----Original Message-----
> > > From: Yann Droneaud [mailto:ydroneaud@opteya.com]
> > > Sent: Thursday, April 02, 2015 6:16 PM
> > > Le jeudi 02 avril 2015 à 10:52 +0000, Shachar Raindel a écrit :
> > > > > -----Original Message-----
> > > > > From: Yann Droneaud [mailto:ydroneaud@opteya.com]
> > > > > Sent: Thursday, April 02, 2015 1:05 PM
> > > > > Le mercredi 18 mars 2015 à 17:39 +0000, Shachar Raindel a écrit :
> > > ...
> > > > > > +	/*
> > > > > > +	 * If the combination of the addr and size requested for this
> > > > > memory
> > > > > > +	 * region causes an integer overflow, return error.
> > > > > > +	 */
> > > > > > +	if ((PAGE_ALIGN(addr + size) <= size) ||
> > > > > > +	    (PAGE_ALIGN(addr + size) <= addr))
> > > > > > +		return ERR_PTR(-EINVAL);
> > > > > > +
> > > > >
> > > > > Can access_ok() be used here ?
> > > > >
> > > > >          if (!access_ok(writable ? VERIFY_WRITE : VERIFY_READ,
> > > > >                         addr, size))
> > > > >                   return ERR_PTR(-EINVAL);
> > > > >
> > > >
> > > > No, this will break the current ODP semantics.
> > > >
> > > > ODP allows the user to register memory that is not accessible yet.
> > > > This is a critical design feature, as it allows avoiding holding
> > > > a registration cache. Adding this check will break the behavior,
> > > > forcing memory to be all accessible when registering an ODP MR.
> > > >
> > > 
> > > Failed to notice previously, but since this would break ODP, and ODP is
> > > only available starting v3.19-rc1, my proposed fix might be applicable
> > > for older kernel (if not better).
> > > 
> > 
> > Can you explain how this proposed fix is better than the existing patch?
> > Why do we want to push to the stable tree a patch that is not in the
> > upstream? There is an existing, tested, patch that is going to the tip
> > of the development. It even applies cleanly on every kernel version around.
> > 
> 
> access_ok() check for overflow *and* that the region is the memory range
> for the current process. The later check is not done in your proposed 
> fix (but it should not be needed as get_user_pages() will be called 
> to validate the whole region for non-ODP memory registration).
> 
> Anyway, AFAIK access_ok() won't check for address being not NULL and
> size not being 0, and I've noticed your proposed fix also ensure address
> is not equal to NULL and, more important, that size is not equal to 0

It only check address not being 0 if size is already PAGE_SIZE aligned,
and it only check size not being 0 if address is already PAGE_SIZE
aligned.

> before v3.15-rc1 and commit eeb8461e36c9 ("IB: Refactor umem to use
> linear SG table"), calling ib_umem_get() with size equal to 0 would 
> succeed with any arbitrary address ... who knows what might happen in 
> the lowlevel drivers (aka. providers) if they got an umem for a 0-sized
> memory region.
> This part of the changes was not detailled in your commit message: it's
> an issue not related to overflow which is addressed by your patch.
> 
> So I agree my proposed patch is no better than yours: I've missed the
> 0-sized memory region issue and didn't take care of NULL address.
> 

Regards.

-- 
Yann Droneaud
OPTEYA


