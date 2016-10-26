X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3966" "Wednesday" "26" "October" "2016" "19:39:52" "+0200" "Solar Designer" "solar@openwall.com" "<20161026173951.GA21166@openwall.com>" "87" "Re: [oss-security] CVE-2016-1240 - Tomcat packaging on Debian-based distros - Local Root Privilege Escalation" nil nil nil "10" "2016102617:39:52" "[oss-security] CVE-2016-1240 - Tomcat packaging on Debian-based distros - Local Root Privilege Escalation" (number mark "U       solar@openwa Oct 26   87/3966  " thread-indent "\"Re: [oss-security] CVE-2016-1240 - Tomcat packaging on Debian-based distros - Local Root Privilege Escalation\"\n") "<CADSYzss90v5o_p40F5+_PHhS+EwP3K=FLsB-ak9xazRj9gtm6w@mail.gmail.com>" ("<CADSYzss90v5o_p40F5+_PHhS+EwP3K=FLsB-ak9xazRj9gtm6w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23932 invoked by uid 550); 26 Oct 2016 17:40:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23671 invoked from network); 26 Oct 2016 17:40:07 -0000
Date: Wed, 26 Oct 2016 19:39:52 +0200
From: Solar Designer <solar@openwall.com>
To: Dawid Golunski <dawid@legalhackers.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20161026173951.GA21166@openwall.com>
References: <CADSYzss90v5o_p40F5+_PHhS+EwP3K=FLsB-ak9xazRj9gtm6w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CADSYzss90v5o_p40F5+_PHhS+EwP3K=FLsB-ak9xazRj9gtm6w@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2016-1240 - Tomcat packaging on Debian-based distros - Local Root Privilege Escalation

Dawid,

On Wed, Oct 26, 2016 at 02:05:11AM -0300, Dawid Golunski wrote:
> I added a simple PoC video for the CVE-2016-1240 vulnerability.
> 
> In the PoC I used Ubuntu 16.04 with the latest tomcat7 package
> (version: 7.0.68-ubuntu-0.1) installed from the default ubuntu repos
> which appears vulnerable still.
> 
> The video poc can be found at:
> 
> http://legalhackers.com/videos/Apache-Tomcat-DebPkg-Root-PrivEsc-Exploit.html

You call out distro vendors on very real security issues.  In fact,
those distros should be embarrassed to still have previous millennium's
issues like this, which are trivial to spot.  It probably means that
their security teams are too disconnected from their packagers, and are
not proactive.  You also bring this valuable information to the
oss-security community.  Thank you for this.

However, as you probably realize, you also abuse this mailing list to
promote your website, at the expense of not including full detail in
your postings themselves.  As I pointed out to you before, oss-security
content guidelines:

http://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines

include this:

"At least the most essential part of your message (e.g., vulnerability
detail and/or exploit) should be directly included in the message itself
(and in plain text), rather than only included by reference to an
external resource.  Posting links to relevant external resources as well
is acceptable, but posting only links is not.  Your message should remain
valuable even with all of the external resources gone."

I realize you couldn't have reasonably included a video (arguably, this
means that a video is of little interest to oss-security, unless the
information in it is unique and is not also available in text form), but
you also violated this guideline in these related postings (which I
appreciated otherwise):

http://www.openwall.com/lists/oss-security/2016/10/01/3
http://www.openwall.com/lists/oss-security/2016/10/10/2

In those, you refer to very detailed advisories placed on your website,
but you don't include the advisory texts in the postings themselves.
You must be doing just that - in message body or text/plain attachments,
please.  Will you correct this going forward?  (It is OK to also include
URLs to your website, thereby promoting it, but not at the expense of
the level of detail in the messages themselves.)

If you continue to post link-mostly messages, we'll have the tough
choice between:

1. Let you post those anyway, and ignore the problem.  Unfortunately,
this is likely to result in some others doing the same more.  (OTOH, it
will also keep reminding people of just how bad it is not to have detail
right in the messages.)

2. Look for a volunteer who would post follow-ups or replacements to
your postings, with actual detail in them.  (In fact, we could need a
volunteer like this anyway, since non-detailed postings do happen once
in a while, not only by you.)

3. Reject your postings (for them violating the content guidelines), but
that's counter-productive because the linked-to information is actually
on-topic and valuable to this community (thank you for it, again!)

Another guideline you violate is this:

"Please don't cross-post messages to oss-security and other mailing
lists at once, especially not to high-volume lists such as LKML and
netdev, as this tends to result in threads that wander partially or
fully off-topic (e.g., Linux kernel coding style detail may end up being
discussed in comments to a patch posted to LKML, but it would be
off-topic for oss-security).  If you feel that something needs to be
posted to oss-security and to another list, please make separate
postings.  You may mention the other posting(s) in your oss-security
posting, and even link to other lists' archives."

It's less important since you're only CC'ing security-focused lists so
far, but I would appreciate it if you avoid the CC's anyway.

Thanks,

Alexander
