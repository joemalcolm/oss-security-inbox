X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3378" "Thursday" "31" "March" "2016" "12:51:25" "-0400" "Theodore Ts'o" "tytso@mit.edu" "<20160331165125.GF6207@thunk.org>" "69" "Re: [oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3 filesystem DoS" "^Cc:" nil nil "3" "2016033116:51:25" "[oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3 filesystem DoS" (number mark "        tytso@mit.ed Mar 31   69/3378  " thread-indent "\"Re: [oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3 filesystem DoS\"\n") "<56FD3718.2090502@redhat.com>" ("<f4df42b35dd9a6c8c6851eba66b2b3f1.squirrel@webmail-etu.univ-nantes.fr>" "<1459286067.2596.18.camel@debian.org>" "<57514A3C-DBAD-4E5E-98EA-23E490629C02@dilger.ca>" "<20160330204304.GD6207@thunk.org>" "<56FD3718.2090502@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30613 invoked by uid 550); 31 Mar 2016 16:51:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30595 invoked from network); 31 Mar 2016 16:51:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=thunk.org; s=ef5046eb;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date; bh=VdDMNq3hlJUi3E3ArI4I2rJ8NpTVxwLp+5SYe7uEfeY=;
	b=gxN3S0ptWKkHKIi18nlomU7eq+eUkNHUAlHZEFEOC7Sf3KAciOUIXlvpN9ZyDrAPhDTu32ayOB+MY7rF4Ofr8a8cg9G6kPRvL866uw+6KDOovYxKSrAq0g5R6RUDCnu1Oe5yxK0BWAYV6adQe4fpu8j0jizzn6YvWjsr/HguaE0=;
Message-ID: <20160331165125.GF6207@thunk.org>
References: <f4df42b35dd9a6c8c6851eba66b2b3f1.squirrel@webmail-etu.univ-nantes.fr>
 <1459286067.2596.18.camel@debian.org>
 <57514A3C-DBAD-4E5E-98EA-23E490629C02@dilger.ca>
 <20160330204304.GD6207@thunk.org>
 <56FD3718.2090502@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <56FD3718.2090502@redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: tytso@thunk.org
X-SA-Exim-Scanned: No (on imap.thunk.org); SAEximRunCond expanded to false
Cc: Andreas Dilger <adilger@dilger.ca>,
	Yves-Alexis Perez <corsac@debian.org>,
	oss-security@lists.openwall.com, Theodore Tso <tytso@google.com>,
	linux-ext4@vger.kernel.org
Date: Thu, 31 Mar 2016 12:51:25 -0400
From: Theodore Ts'o <tytso@mit.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request - Linux kernel (multiple versions)
 ext2/ext3 filesystem DoS
To: Eric Sandeen <sandeen@redhat.com>

On Thu, Mar 31, 2016 at 09:41:28AM -0500, Eric Sandeen wrote:
> 
> In the end, errors=panic is really a debug option; a small hoop-jump to
> use it doesn't sound too bad to me.

The problem is that it's not just a debug option.  It makes a huge
amount of sense to use this on your root file system, or on any file
system where having the system stagger on after file system errors
have been detected, possibly allowing more data to be corrupted to be
a very bad thing to do.  (Example: an ATM machine which uses
remount-ro, and doesn't notice it can no longer update its logs or its
databases, and continues to dispense money....)

On Thu, 31 Mar 2016 08:53:17 -0600, Kurt Seifried wrote:
>The problem is that:
>
>a) means I'll be mounting filesystems with errors that I may want to know
>about (but not have my  system panic about)

So mount them with errors=continue or errors=read-only on the command line.

>b) fsck takes a long time on large disks (the smallest size of disk I buy
>for USB drives is 1TB, if I fsck every time I plug one in I'll die of old
>age).

If this is a non-trusted device, then that's the only safe thing to do
--- and even then it's not all that safe.  Even though every year or
two someone does run checks to make sure we won't across due to static
fuzzing techniques, I'm fairly certain that if someone was plugging in
a maliciously crafted USB hardware device that was dynamically
changing its data between different read requests, that you could
probably craft a malicious modulation that causes a kernel crash or
worse, some kind of privilege escalation attack.

Of course, it's probably easier to to just create a device that
pretends to be a HID device, so probably the only really sane thing to
do is to epoxy your USB ports.


Ultimately, the real problem is that the Linux kernel doesn't know
whether or not the file system is trusted or not.  The decision to
automount comes from userspace, and the kernel doesn't know whether
this is an trusted internal disk, a trusted removeable media which the
user trusts, or some random USB thumb drive that the user picked up
from the parking lot.

To be fair userspace can't really tell the difference between the last
two, so adding hueristics to force a full fsck is going to gore your
particular Ox, but that's the nature of hueristics --- because they
are rules of thumb, inevitably they will get it wrong one way or
another.  Profession paranoids, of which this list tends to be
over-represented, will tend to make these tradeoffs in favor of more
security, even if they screw over user convenience.  (Such as your
complaining about fsck's taking a long time.)

If we were going to use some hueristic the best I could come up with
might be if the file system was mounted with MS_NOSUID, MS_NODEV, and
MS_NOEXEC, then we should some or all default mount options in the
superblock.  I am sure this will still gore somebody's ox, and
arguably the decision to explicitly specifiy errors=remount-ro should
probably be done in the automount daemon, but if that's too hard to
manage, perhaps that's a change kernel developers could make to the
component which is under our control.

This is really a system-level problem, though, for which putting epoxy
in the USB ports might actually be the more general solution.  It
certainly is the more secure option.   :-)

       	   	       		       - Ted
