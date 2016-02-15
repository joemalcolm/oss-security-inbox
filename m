X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2630" "Monday" "15" "February" "2016" "18:18:47" "+0300" "Solar Designer" "solar@openwall.com" "<20160215151847.GA25532@openwall.com>" "54" "Re: [oss-security] Browser Security Tool: HTTPS Only (Why, How, Open Source, Python)" "^Cc:" nil nil "2" "2016021515:18:47" "[oss-security] Browser Security Tool: HTTPS Only (Why, How, Open Source, Python)" (number mark "        solar@openwa Feb 15   54/2630  " thread-indent "\"Re: [oss-security] Browser Security Tool: HTTPS Only (Why, How, Open Source, Python)\"\n") "<CAAeBhPfv200duAxCKnYkABgyt-34u_cP_YrrRajPWZ-Md+H9GA@mail.gmail.com>" ("<CAAeBhPfv200duAxCKnYkABgyt-34u_cP_YrrRajPWZ-Md+H9GA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22078 invoked by uid 550); 15 Feb 2016 15:18:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22059 invoked from network); 15 Feb 2016 15:18:56 -0000
Message-ID: <20160215151847.GA25532@openwall.com>
References: <CAAeBhPfv200duAxCKnYkABgyt-34u_cP_YrrRajPWZ-Md+H9GA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAAeBhPfv200duAxCKnYkABgyt-34u_cP_YrrRajPWZ-Md+H9GA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Mon, 15 Feb 2016 18:18:47 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Browser Security Tool: HTTPS Only (Why, How, Open Source, Python)
To: David Leo <httpsonly.github.io@gmail.com>

On Sun, Feb 14, 2016 at 10:07:21PM -0500, David Leo wrote:
> (@moderators The original post was too brief. This one has details.)

As a moderator for oss-security, I was torn between rejecting this
message and using it as an example of what (not) to post in here.
I chose the latter.

There are few tool announcements in here.  I think we want more, but I
also think we want them to be more relevant to this particular list and
very infrequent for any one particular tool.  For most, it should be
just one initial announcement and that's all - no updates - unless the
tool is particularly relevant (e.g., a static analyzer, a fuzzer, or a
generic privsep library) or the update is particularly major (especially
if it's been years since the previous announcement).

To make this policy explicit, and to actually invite the desirable kind
of content, I've just added this:

"Occasional announcements of Open Source security tools (and relevant
features of non-security tools) are acceptable, but only for initial
announcements and major updates (not for minor updates).  Especially
desirable are news on tools/features aimed to enhance security of other
Open Source software."

to:

http://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines

We also previously had:

"Please don't cross-post messages to oss-security and other mailing
lists at once, especially not to high-volume lists such as LKML and
netdev, as this tends to result in threads that wander partially or
fully off-topic (e.g., Linux kernel coding style detail may end up being
discussed in comments to a patch posted to LKML, but it would be
off-topic for oss-security).  If you feel that something needs to be
posted to oss-security and to another list, please make separate
postings.  You may mention the other posting(s) in your oss-security
posting, and even link to other lists' archives."

We generally don't reject oss-security postings for CC's to other lists,
in part because the problem (if any) is usually not with the original
posting's content, but with the follow-ups that the CC's invite from
other lists, which we have no control of (even if we reject the message,
it may get through to the CC'ed lists).  However, we ask that senders
please avoid CC's (except to upstream developers, etc., which is OK).
While having Bugtraq or/and FD CC'ed is not as bad as having LKML CC'ed
(due to those lists also having a security focus, unlike LKML), it is
not welcome.

(For LKML in particular, it's totally different for the kernel-hardening
list, also hosted by Openwall.  On that list, CC'ing LKML is the norm.)

Alexander
