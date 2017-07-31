X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3101" "Monday" "31" "July" "2017" "22:53:16" "+0200" "Solar Designer" "solar@openwall.com" "<20170731205316.GA12811@openwall.com>" "58" "Re: [oss-security] CoreOS membership to linux-distros (updated)" "^Date:" nil nil "7" "2017073120:53:16" "[oss-security] CoreOS membership to linux-distros (updated)" (number mark "        solar@openwa Jul 31   58/3101  " thread-indent "\"Re: [oss-security] CoreOS membership to linux-distros (updated)\"\n") "<20170721132647.GA4223@openwall.com>" ("<9479d640-2002-2462-9d81-2379d60d8f54@coreos.com>" "<20170721132647.GA4223@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28159 invoked by uid 550); 31 Jul 2017 20:54:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27845 invoked from network); 31 Jul 2017 20:53:23 -0000
Message-ID: <20170731205316.GA12811@openwall.com>
References: <9479d640-2002-2462-9d81-2379d60d8f54@coreos.com> <20170721132647.GA4223@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170721132647.GA4223@openwall.com>
User-Agent: Mutt/1.4.2.3i
Date: Mon, 31 Jul 2017 22:53:16 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CoreOS membership to linux-distros (updated)
To: oss-security@lists.openwall.com

On Fri, Jul 21, 2017 at 03:26:47PM +0200, Solar Designer wrote:
> I intend to add CoreOS to linux-distros in early August unless there are
> any well-reasoned objections by then.

I've just added CoreOS to linux-distros.

On Tue, Jul 18, 2017 at 02:56:23PM -0700, Euan Kemp wrote:
> Based on your previous messages, it sounds like it???s expected for us to
> inherit 'primary' for the administrative tasks of:
> > 1. Promptly review new issue reports for meeting the list's requirements and confirm receipt of the report and, when necessary, inform the reporter of any issues with their report (e.g., obviously not actionable by the distros) and request and/or propose any required yet missing information (most notably, a tentative public disclosure date) - primary: CloudLinux, backup: vacant
> > 2. If the proposed public disclosure date is not within list policy, insist on getting this corrected and propose a suitable earlier date - primary: CloudLinux, backup: vacant

Off-list, CloudLinux kindly offered this:

On Sun, Jul 23, 2017 at 06:15:23AM -0700, Igor Seletskiy wrote:
> We can pickup #3 & #6 as #1 & #2 are picked up by CoreOS.

On Tue, Jul 18, 2017 at 02:56:23PM -0700, Euan Kemp wrote:
> I???ll also volunteer us for the administrative task of:
> > 6. If multiple issues are reported at once, see if any of them can reasonably be made public sooner than the rest, and if so help untangle them and stay on top of their disclosure process
> 
> We???ll be happy to be on the lookout for possible conflation of issues
> and kick off discussion if we think something can be broken up.

Maybe Igor had overlooked the clash on #6, but anyway this combination
resulted in:

1. Promptly review new issue reports for meeting the list's requirements
and confirm receipt of the report and, when necessary, inform the
reporter of any issues with their report (e.g., obviously not actionable
by the distros) and request and/or propose any required yet missing
information (most notably, a tentative public disclosure date)
- primary: CoreOS, backup: Oracle

2. If the proposed public disclosure date is not within list policy,
insist on getting this corrected and propose a suitable earlier date
- primary: CoreOS, backup: CloudLinux

3. Evaluate if the issue (or one of the issues) is effectively already
public (e.g., a fix is committed upstream with a descriptive message)
or/and is low severity and thus the report (or its portion pertaining to
the issue) should be made public right away for one or both of these
reasons, get a few other list members to confirm this understanding, and
if there are no objections then communicate this strong preference to
the reporter
- primary: CloudLinux, backup: vacant

6. If multiple issues are reported at once, see if any of them can
reasonably be made public sooner than the rest, and if so help untangle
them and stay on top of their disclosure process
- primary: CoreOS, backup: CloudLinux

This looks fine to me.

However, many distros still haven't picked up a task, and many tasks are
not picked up by any distro.  That should change.

Alexander
