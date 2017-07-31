X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2004" "Monday" "31" "July" "2017" "17:24:10" "+0200" "Solar Designer" "solar@openwall.com" "<20170731152410.GA8881@openwall.com>" "43" "Re: [oss-security] Linux kernel: net/irda/af_irda.c: irda_getsockopt() stack infoleak" "^Cc:" nil nil "7" "2017073115:24:10" "[oss-security] Linux kernel: net/irda/af_irda.c: irda_getsockopt() stack infoleak" (number mark "        solar@openwa Jul 31   43/2004  " thread-indent "\"Re: [oss-security] Linux kernel: net/irda/af_irda.c: irda_getsockopt() stack infoleak\"\n") "<5ba8733a-44fc-fe49-1f17-3dde40ad0e60@oracle.com>" ("<49eaccd9.1127.15d91d229be.Coremail.sohu0106@126.com>" "<5ba8733a-44fc-fe49-1f17-3dde40ad0e60@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30232 invoked by uid 550); 31 Jul 2017 15:26:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28660 invoked from network); 31 Jul 2017 15:24:16 -0000
Message-ID: <20170731152410.GA8881@openwall.com>
References: <49eaccd9.1127.15d91d229be.Coremail.sohu0106@126.com> <5ba8733a-44fc-fe49-1f17-3dde40ad0e60@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5ba8733a-44fc-fe49-1f17-3dde40ad0e60@oracle.com>
User-Agent: Mutt/1.4.2.3i
Cc: sohu0106 <sohu0106@126.com>
Date: Mon, 31 Jul 2017 17:24:10 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: net/irda/af_irda.c: irda_getsockopt() stack infoleak
To: oss-security@lists.openwall.com

On Mon, Jul 31, 2017 at 04:03:57PM +0100, John Haxby wrote:
> On 30/07/17 05:47, sohu0106 wrote:
> > net/irda/af_irda.c
> > 
> > Sometimes irda_getsockopt() doesn't initialize all members of list field of irda_device_list struct.  This structure is then copied to
> > userland.  It leads to leaking of contents of kernel stack memory.  We have to initialize them to zero , or it will allows local users to obtain potentially sensitive information from kernel stack memory by reading a copy of this structure
> > 
> > https://github.com/torvalds/linux/pull/440
> 
> Have you requested a CVE for this?

Both messages sohu0106 posted initially had the Subject of "CVE request:
kernel stack infoleaks", which I changed to the two more specific
Subjects before approving the messages.  (I do that to especially
non-descriptive Subjects from time to time, as long as the messages were
not CC'ed to elsewhere.  I leave message bodies entirely intact.)

Thus, sohu0106 wanted to request the CVEs from this list, and apparently
didn't request them elsewhere.  sohu0106, this list is no longer a place
to request CVEs from, but we appreciate the vulnerability notifications.
You may request the CVEs from https://cveform.mitre.org and then post
them in here, "replying" to your own messages on the list.

sohu0106, have you also reported these issues upstream?  For the
net/irda/af_irda.c issue, from the MAINTAINERS file:

IRDA SUBSYSTEM
M:      Samuel Ortiz <samuel@sortiz.org>
L:      irda-users@lists.sourceforge.net (subscribers-only)
L:      netdev@vger.kernel.org
W:      http://irda.sourceforge.net/
S:      Maintained
T:      git git://git.kernel.org/pub/scm/linux/kernel/git/sameo/irda-2.6.git
F:      Documentation/networking/irda.txt
F:      drivers/net/irda/
F:      include/net/irda/
F:      net/irda/

For the driver/video/fbdev/aty/atyfb_base.c issue I guess it's
linux-fbdev@vger.kernel.org, although there's no perfect match for that
filename.  In both cases, CC the messages to LKML.

Alexander
