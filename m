X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1544" "Thursday" "2" "April" "2015" "15:30:31" "+0200" "Yann Droneaud" "ydroneaud@opteya.com" "<1427981431.22575.21.camel@opteya.com>" "51" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" nil nil nil "4" "2015040213:30:31" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" (number mark "        ydroneaud@op Apr  2   51/1544  " thread-indent "\"[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access\"\n") "<AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>" ("<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<1427969085.17020.5.camel@opteya.com>" "<AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11783 invoked by uid 550); 2 Apr 2015 13:35:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9480 invoked from network); 2 Apr 2015 13:30:54 -0000
Message-ID: <1427981431.22575.21.camel@opteya.com>
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
Date: Thu, 02 Apr 2015 15:30:31 +0200
From: Yann Droneaud <ydroneaud@opteya.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access
To: Shachar Raindel <raindel@mellanox.com>, Haggai Eran
 <haggaie@mellanox.com>,  Sagi Grimberg <sagig@mellanox.com>

Hi,

Le jeudi 02 avril 2015 à 10:52 +0000, Shachar Raindel a écrit :
> > -----Original Message-----
> > From: Yann Droneaud [mailto:ydroneaud@opteya.com]
> > Sent: Thursday, April 02, 2015 1:05 PM
> > Le mercredi 18 mars 2015 à 17:39 +0000, Shachar Raindel a écrit :

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

Where's the check for the range being in userspace memory space,
especially for the ODP case ?

For non ODP case (eg. plain old behavior), does get_user_pages()
ensure the requested pages fit in userspace region on all 
architectures ? I think so.

In ODP case, I'm not sure such check is ever done ?
(Aside, does it take special mesure to protect shared mapping from
being read and/or *written* ?)

Regards.

-- 
Yann Droneaud
OPTEYA


