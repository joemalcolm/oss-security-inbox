X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2493" "Wednesday" "30" "March" "2016" "16:43:04" "-0400" "Theodore Ts'o" "tytso@mit.edu" "<20160330204304.GD6207@thunk.org>" "51" "Re: [oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3  filesystem DoS" "^Cc:" nil nil "3" "2016033020:43:04" "[oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3 filesystem DoS" (number mark "        tytso@mit.ed Mar 30   51/2493  " thread-indent "\"Re: [oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3  filesystem DoS\"\n") "<57514A3C-DBAD-4E5E-98EA-23E490629C02@dilger.ca>" ("<f4df42b35dd9a6c8c6851eba66b2b3f1.squirrel@webmail-etu.univ-nantes.fr>" "<1459286067.2596.18.camel@debian.org>" "<57514A3C-DBAD-4E5E-98EA-23E490629C02@dilger.ca>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3595 invoked by uid 550); 31 Mar 2016 01:36:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15651 invoked from network); 30 Mar 2016 20:43:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=thunk.org; s=ef5046eb;
	h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date; bh=2TuUgNDeebWmYwexXCJLlLCo5IZghhW8tLe0eC3cTwM=;
	b=KteA5uDwLzj8xFc+VX+nlvvo1Cp1Rs+HfAmFzCSLG1UAIEfBtj6rlx77lKHm7QZTkjA03Tk4sgTdeVqCwFSR9fQnMEJHQWKzf1gREKTtcN+y3R/BQ/xC+PisO3w/VzDZz61gNNk/WPYT94ZSBghGpLe+wCs4OmjJTAkW5uNQ/C0=;
Message-ID: <20160330204304.GD6207@thunk.org>
References: <f4df42b35dd9a6c8c6851eba66b2b3f1.squirrel@webmail-etu.univ-nantes.fr>
 <1459286067.2596.18.camel@debian.org>
 <57514A3C-DBAD-4E5E-98EA-23E490629C02@dilger.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <57514A3C-DBAD-4E5E-98EA-23E490629C02@dilger.ca>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: tytso@thunk.org
X-SA-Exim-Scanned: No (on imap.thunk.org); SAEximRunCond expanded to false
Cc: Yves-Alexis Perez <corsac@debian.org>, oss-security@lists.openwall.com,
	Theodore Tso <tytso@google.com>, linux-ext4@vger.kernel.org
Date: Wed, 30 Mar 2016 16:43:04 -0400
From: Theodore Ts'o <tytso@mit.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request - Linux kernel (multiple versions)
 ext2/ext3  filesystem DoS
To: Andreas Dilger <adilger@dilger.ca>

On Tue, Mar 29, 2016 at 04:56:11PM -0600, Andreas Dilger wrote:
> On Mar 29, 2016, at 3:14 PM, Yves-Alexis Perez <corsac@debian.org> wrote:
> > 
> > [dropping MITRE from CC since it's not about the CVE]
> > [adding ext and Theodore to CC]
> > 
> > On mar., 2016-03-29 at 19:24 +0200, Hugues ANGUELKOV wrote:
> >> Hello,
> >> 
> >> The linux kernel is prone to a Denial of service when mounting specially
> >> crafted ext2/ext3 (possibly ext4) filesystems. This occurs in the function
> >> ext4_handle_error who call the panic function on precise circumstance.
> > 
> > Did you contact the upstream maintainers about this? I'm adding them just in
> > case they're not already aware of that…
> > 
> >> This was tested on severals linux kernel version: 3.10, 3.18, 3.19, on
> >> real hardware and Xen DomU PV & HVM (the crash report attached is from a
> >> Fedora 3.18 PV DomU), from different distribution release: Ubuntu, CentOS,
> >> Fedora, Linux Mint, QubesOS.
> >> This a low security impact bug, because generally only root can mount
> >> image, however on Desktop (or possibly server?) system configured with
> >> automount the bug is easily triggable (think of android smartphone? Haven't
> >> test yet).
> 
> It seems that the important point here is that the filesystem has
> "s_errors=EXT4_ERRORS_PANIC" set in the superblock?  I don't think
> the actual corruption that triggered the ext4_error() call is important,
> since there are any number of other failure cases that could generate
> a similar error.
> 
> It seems practical to change s_errors at mount time from EXT4_ERRORS_PANIC
> to EXT4_ERRORS_RO for filesystems mounted by regular users.  The question
> is whether there is a way for the ext4 code to know this at mount time?

You can mount the file system with "mount -o errors=continue" and this
will override the default behavior specified in the super block.

I would argue that a Desktop or server system that had automount
should either (a) mount with -o errors=continue, or (b) force an fsck
on the file system before mounting it.

So I think this is a particularly meaningless CVE, which is why I have
zero respect for people who try to make any kind of conclusion based
on CVE counts.   I certainly don't plan to do anything about this.

You might as well complain that since the system ships with a reboot
command that can be executed by a clueless root user, that this is a
potential DOS attack scenario deserving of a CVE....

	      	     	      		   - Ted
