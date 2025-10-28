Received: (qmail 1727 invoked by uid 550); 28 Oct 2025 09:53:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1671 invoked from network); 28 Oct 2025 09:53:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=CgRLL7m/SKGA/mVqJaYaQJCbB59oG5AqD9BtCPRZt4Y=; b=jjFlJeoJLP+nWvz9f1MeK1ercT
	bnQeJBrKLhO0EEhtl3AVt0s1JVaJeBvQ+oAbGKTlaOpVuyrH/ueipqmJ8l5EcplQLr1FXjZC2uwDr
	/QMSH4tv2hy8qV5R15ouqr1Y6EO+gxX2ZS6a91AeKAsbsgWEKugs9oeDndR/W10bVvTSD345qmV50
	wx1gB75cJFfGoMZJqlGVDiK8FZWEXwwbWcB8c4LTQsx+BmY4J927VlLYxcW8CE0NTVgJnV5muwWdq
	6D0/SIdd1GGdF5H6B9QCvjSKnh1DtPAk8cJsynBz7ccaTv04rYwoJPK8Jr7r5Vz3hrkCAxOfAPmCI
	+InmcEVg==;
Date: Tue, 28 Oct 2025 09:53:25 +0000
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <aQCSlbL8RScPX1mg@remnant.pseudorandom.co.uk>
References: <2ccbcc13-fc25-484c-a34d-56f27ac87db7@oracle.com>
 <aP_GUo51BVldIFVQ@inutil.org>
 <aP_msOoiyHJ_M4Yx@mertle>
 <c6a4b588-33b0-47ba-bc49-8fd9b934e8bd@gmail.com>
 <APnIGZvcyeI7GyFh@aceecat.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <APnIGZvcyeI7GyFh@aceecat.org>
X-Debian-User: smcv
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On Mon, 27 Oct 2025 at 19:26:47 -0700, nightmare.yeah27@aceecat.org wrote:
>On Mon, Oct 27, 2025 at 09:37:03PM -0400, Demi Marie Obenour wrote:
>> I suspect that OPNsense generates dnsmasq and Unbound
>> configuration files from data provided in the web UI.
>
>And OpenWRT. Definitely. Not sure how much validation there is.

The OpenWRT web UI can also execute arbitrary code (most obviously via 
System -> Startup -> Local Startup which directly edits /etc/rc.local), 
so an authenticated user of the OpenWRT web UI is already on the 
secure/trusted side of the airtight hatchway, and it isn't a 
vulnerability if they can also execute arbitrary code in some more 
convoluted way than just writing it into /etc/rc.local.

     smcv
