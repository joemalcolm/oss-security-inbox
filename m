X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["725" "Saturday" "29" "May" "2021" "15:50:37" "+0200" "Greg Kroah-Hartman" "gregkh@linuxfoundation.org" nil "24" "[oss-security] Re: Linux kernel: net/can/isotp: race condition leads to local privilege escalation" nil nil nil "5" nil nil (number mark "U       gregkh@linux May 29   24/725   " thread-indent "\"[oss-security] Re: Linux kernel: net/can/isotp: race condition leads to local privilege escalation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Linux kernel: net/can/isotp: race condition leads to local privilege escalation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28556 invoked by uid 550); 29 May 2021 13:51:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28331 invoked from network); 29 May 2021 13:50:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1622296240;
	bh=pmUszLAIFXqkDbN7qnihaOpbZmlKj9puTywiwFFv5sk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mDbMzZTYUkwEU/so8X0BGzCUgs6TnnuzQJYSd9lgFiqxCqMOuSWvkJqot4wWNFbFE
	 GbTYeL/VFJzTZ5xnjc+ihGD4rnKgRpeYBx4HXKbpWg6lOn6DVmlY4w8kf7WCAyydFF
	 +H9VLrVXGfaZzCc0XDsbGhUCOw4NEpowI0swK+TE=
Date: Sat, 29 May 2021 15:50:37 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Oliver Hartkopp <socketcan@hartkopp.net>
Cc: mkl@pengutronix.de, alex.popov@linux.com, seth.arnold@canonical.com,
	steve.beattie@canonical.com, cascardo@canonical.com,
	oss-security@lists.openwall.com,
	Norbert Slusarek <nslusarek@gmx.net>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, security@kernel.org
Message-ID: <YLJGrad5G0KL5Ls3@kroah.com>
References: <trinity-10aeed49-cb96-47d9-818e-b938913e6fce-1620770433273@3c-app-gmx-bap63>
 <c80114dd-4a97-714d-232c-f4c6cf354332@gmx.net>
 <173ce2fa-fe90-4e00-e5a3-1f3163dfe13d@hartkopp.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173ce2fa-fe90-4e00-e5a3-1f3163dfe13d@hartkopp.net>
Subject: [oss-security] Re: Linux kernel: net/can/isotp: race condition leads to local
 privilege escalation

On Fri, May 28, 2021 at 05:41:03PM +0200, Oliver Hartkopp wrote:
> Hello Greg,
> 
> this patch ("can: isotp: prevent race between isotp_bind() and
> isotp_setsockopt()") has hit Linus' tree ~36h ago:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/net/can?id=2b17c400aeb44daf041627722581ade527bb3c1d
> 
> It has a CVE number and is potentially exploitable - but it was not in the
> latest batch of stable kernels about ~4h ago.

Give us a chance :)

> 
> It was obviously not tagged properly for stable kernels but has a fixes-tag:
> 
> Fixes: 921ca574cd38 ("can: isotp: add SF_BROADCAST support for functional
> addressing")
> 
> which was introduced in 5.11

Now queued up, thanks.

greg k-h
