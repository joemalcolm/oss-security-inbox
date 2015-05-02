X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1422" "Saturday" "2" "May" "2015" "16:40:14" "+0300" "Solar Designer" "solar@openwall.com" "<20150502134014.GA8226@openwall.com>" "30" "Re: [oss-security] CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam" nil nil nil "5" "2015050213:40:14" "[oss-security] CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam" (number mark "        solar@openwa May  2   30/1422  " thread-indent "\"Re: [oss-security] CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam\"\n") "<CADOUnBKNwkU=AMukgCB3N=SWaDzKv8DTb8Z-NmphK=GB+eNM6A@mail.gmail.com>" ("<CADOUnBK=jW36v6X2Q6EXLL35Wxqait7cWJR-adCFwRaMJtucPQ@mail.gmail.com>" "<20150502125329.GA6820@openwall.com>" "<CADOUnBKNwkU=AMukgCB3N=SWaDzKv8DTb8Z-NmphK=GB+eNM6A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19742 invoked by uid 550); 2 May 2015 13:40:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19717 invoked from network); 2 May 2015 13:40:20 -0000
Message-ID: <20150502134014.GA8226@openwall.com>
References: <CADOUnBK=jW36v6X2Q6EXLL35Wxqait7cWJR-adCFwRaMJtucPQ@mail.gmail.com> <20150502125329.GA6820@openwall.com> <CADOUnBKNwkU=AMukgCB3N=SWaDzKv8DTb8Z-NmphK=GB+eNM6A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CADOUnBKNwkU=AMukgCB3N=SWaDzKv8DTb8Z-NmphK=GB+eNM6A@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com, Vasily Kulikov <segoon@openwall.com>
Date: Sat, 2 May 2015 16:40:14 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam
To: Wen Xu <hotdog3645@gmail.com>

On Sat, May 02, 2015 at 09:18:23PM +0800, Wen Xu wrote:
> Really sorry, what you said is all right. Actually we've successfully seen
> the potential that we can take advantage of this bug to achieve privilege
> escalation (root) on android (both 32bit/64bit)(>=4.3), even on android
> 64bit, the list poison value is 0x200200 which can be mapped ;) That's why
> we think this vulnerability is high-threat.

Oh, so Android 4.3+ enables ping sockets for all apps by default?
I have mixed feelings about that.

> For linux PC, the normal user
> does not have the privilege to create a icmp(ping) socket, I agree with
> your analysis including on PC, the dead value is 0xdead000000000000. And
> also it does not exist in some versions and distributions, I write the mail
> in a hurry and do not explain it in detail ;) Sorry for my mistakes again.

I found no mistakes on your part - just too brief a message requiring
further analysis to determine actual impact of the bug.  The bug does
exist in all currently supported upstream kernel versions, as you say,
even if its security relevance varies from none to full local privesc
across archs and distros.

> So as you said MITRE could give us a CVE ID? That's nice, so where could I
> get informed when it is given? ;)

I expect they will post to oss-security.  Just give them some days.

So, who's to post a patch to LKML to adjust default LIST_POISON*?  Vasily?

Alexander
