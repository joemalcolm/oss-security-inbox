X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3102" "Sunday" "17" "September" "2017" "17:21:43" "+0200" "Solar Designer" "solar@openwall.com" "<20170917152143.GA10498@openwall.com>" "62" "Re: [oss-security] Podbeuter podcast fetcher: remote code execution" "^Cc:" nil nil "9" "2017091715:21:43" "[oss-security] Podbeuter podcast fetcher: remote code execution" (number mark "        solar@openwa Sep 17   62/3102  " thread-indent "\"Re: [oss-security] Podbeuter podcast fetcher: remote code execution\"\n") "<20170917115512.GA11577@curry>" ("<20170916180518.GB28963@curry>" "<20170916190543.GA6340@openwall.com>" "<20170917115512.GA11577@curry>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14025 invoked by uid 550); 17 Sep 2017 15:22:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13777 invoked from network); 17 Sep 2017 15:21:50 -0000
Message-ID: <20170917152143.GA10498@openwall.com>
References: <20170916180518.GB28963@curry> <20170916190543.GA6340@openwall.com> <20170917115512.GA11577@curry>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170917115512.GA11577@curry>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Sun, 17 Sep 2017 17:21:43 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Podbeuter podcast fetcher: remote code execution
To: Alexander Batischev <eual.jp@gmail.com>

On Sun, Sep 17, 2017 at 02:55:12PM +0300, Alexander Batischev wrote:
> On Sat, Sep 16, 2017 at 09:05:44PM +0200, Solar Designer wrote:
> >"Instead, please start by posting about the (to be made) public issue 
> >to oss-security (without a CVE ID), request a CVE ID from MITRE 
> >directly, and finally "reply" to your own posting when you also have 
> >the CVE ID to add."
> 
> I was under impression that having a CVE ID speeds up processes in 
> distros, and fixes are released quicker.

This might be the case for some issues and some distros, such as when
having a CVE ID is deemed to indicate the issue is serious or has to be
patched for publicity reasons.  It may be that it's easier to ignore an
issue that doesn't yet have a CVE ID, publicity-wise.

While CVE IDs are helpful for tracking, they should not be required, so
if a distro technically can't promptly process issues without CVE IDs (I
am unaware of such cases), they need to revise their processes anyhow.

> Was my impression wrong?

I'm unaware of statistics to confirm or disprove your impression.  If
someone has such data and analysis, please share.

Intuitively, I'd expect having or lacking a CVE ID to affect priority
more than it affects capability to track.  Ideally it shouldn't affect
either, but realistically I expect that it sometimes does.

> I just want to do things "right", so that 
> attackers have as little time as possible to exploit users. (I do 
> realize this all is best-effort and distros might still take time to 
> release, and then users might take ages to upgrade.)

You're talking about the window of exposure: time period since public
disclosure of an issue and until it gets patched.  However, this metric
varies across users and distros, and it's not the only metric.  It's
also desirable to get the issue known and fixed sooner.  Now, an extra
three weeks (as in your most recent case) isn't unacceptably bad as long
as the chances of abuse or leaks during this period are low, but you do
slightly increase this risk by reporting to MITRE.  Although I'm unaware
of evidence there's ever been abuse by or leaks from MITRE, and there
have been fairly convincing statements to the contrary, I think it's
good practice to avoid or at least minimize the pre-public-disclosure
exposure to MITRE as it serves no other purpose than getting CVE IDs
assigned, which in my opinion does not justify even minor risk.

> Now that I had an experience of waiting for three weeks, I'll also 
> re-consider if I want to become a CNA for my project. Previously it 
> seemed like a hassle; I'm not so sure now.

This does seem like a hassle to me.  Probably not worth it.  Publicly
disclosing without CVE IDs and adding them later is probably better.
You can always use your own tracking IDs to add clarify (so that e.g.
different issues are not erroneously lumped together), or use OVE IDs:

http://www.openwall.com/ove/

then associate them with CVE IDs when you have those, such as in a
revision of your advisory.  See e.g. how Xen publishes revised versions
of their advisories when they add CVE IDs.

Alexander
