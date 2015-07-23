X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2241" "Thursday" "23" "July" "2015" "03:30:08" "+0200" "Solar Designer" "solar@openwall.com" "<20150723013008.GA2017@openwall.com>" "48" "Re: [oss-security] Linux x86_64 NMI security issues" nil nil nil "7" "2015072301:30:08" "[oss-security] Linux x86_64 NMI security issues" (number mark "        solar@openwa Jul 23   48/2241  " thread-indent "\"Re: [oss-security] Linux x86_64 NMI security issues\"\n") "<CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>" ("<CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30681 invoked by uid 550); 23 Jul 2015 01:30:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30656 invoked from network); 23 Jul 2015 01:30:29 -0000
Message-ID: <20150723013008.GA2017@openwall.com>
References: <CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 23 Jul 2015 03:30:08 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux x86_64 NMI security issues
To: oss-security@lists.openwall.com

Andy et al.,

First of all, thank you for your hard work on these issues!

On Wed, Jul 22, 2015 at 11:12:00AM -0700, Andy Lutomirski wrote:
> +++++ CVE-2015-3291 +++++
> +++++ CVE-2015-5157 +++++
> +++++ NMI bug, no CVE assigned +++++
> +++++ CVE-2015-3290 +++++

Red Hat folks, and Petr in particular - please post to this thread when
you have statements on which RHEL kernels are affected by which of these
issues.  RHEL kernels are upstream for several other distros/projects.

Finally, I'm afraid I have to remind you Andy that we have a policy in
here to avoid CC'ing other mailing lists on oss-security postings (and
vice versa), and especially not to do that with LKML:

http://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines

"Please don't cross-post messages to oss-security and other mailing
lists at once, especially not to high-volume lists such as LKML and
netdev, as this tends to result in threads that wander partially or
fully off-topic (e.g., Linux kernel coding style detail may end up being
discussed in comments to a patch posted to LKML, but it would be
off-topic for oss-security).  If you feel that something needs to be
posted to oss-security and to another list, please make separate
postings.  You may mention the other posting(s) in your oss-security
posting, and even link to other lists' archives."

The threads on linux-distros (where Andy first brought one of these
issues on July 13) were very interesting, but they'd be beyond what all
but very few oss-security subscribers need.  It would be "unaffordable"
for most subscribers to read a hundred of messages in a few days on x86
NMI specifics and Linux kernel internals.  I guess your CC'ing LKML
won't result in a similar thread being CC'ed in here, but it might, and
if it does it'd be really tough for oss-security moderators to handle it
well (accepting all such messages would be bad, and rejecting some also
bad since it breaks the thread).

That said, the detail level of your posting is just right for this list,
and I am looking forward to seeing you add more detail later as you
wrote you intend to.  I am only worried about the uncontrolled CC's of
future postings from the LKML side.

Thanks again,

Alexander
