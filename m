X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3419" "Friday" "20" "January" "2017" "15:51:35" "+0100" "Greg KH" "greg@kroah.com" "<20170120145135.GA14893@kroah.com>" "57" "Re: [oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash kernel" "^Cc:" nil nil "1" "2017012014:51:35" "[oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash kernel" (number mark "        greg@kroah.c Jan 20   57/3419  " thread-indent "\"Re: [oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash kernel\"\n") "<20170120140117.GA11396@grsecurity.net>" ("<1484880112.11949.24.camel@redhat.com>" "<20170120082635.GB28326@kroah.com>" "<20170120140117.GA11396@grsecurity.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5399 invoked by uid 550); 20 Jan 2017 14:51:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5373 invoked from network); 20 Jan 2017 14:51:55 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=smtpout; bh=a3eDOQ6fwr9qOd
	JeWPdIFXo8Bqg=; b=RNEp5bDjZ08gXabsMjXkxWyH2asaZAv7tK76tzt0SsPuCa
	7Aaf40Xl8LdkrmX9JK39IEH9AfO6WGMJr9IOs6cJXGjcrF8a3EPapzXZrM+5LKqF
	uwwkE6gDc1xz4kGbnhBfN6i0RG0AkItzfkHCERjuCKA946Bd7dsvnCrkokVJU=
X-ME-Sender: <xms:_yOCWO536aNLBzW-wBZ1yiP4WvDErps6YUoS4cZO_1yK0cNFonZQSg>
X-Sasl-enc: kXM7Nzgq/mnnFjpJZznJ1CzeIOThq4xHUAdINdpGkPxt 1484923902
Message-ID: <20170120145135.GA14893@kroah.com>
References: <1484880112.11949.24.camel@redhat.com>
 <20170120082635.GB28326@kroah.com>
 <20170120140117.GA11396@grsecurity.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170120140117.GA11396@grsecurity.net>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: Jesse Hertz <Jesse.Hertz@nccgroup.trust>,
	Wade Mealing <wmealing@redhat.com>
Date: Fri, 20 Jan 2017 15:51:35 +0100
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE REQUEST: linux kernel: process with pgid zero
 able to crash kernel
To: oss-security@lists.openwall.com

On Fri, Jan 20, 2017 at 09:01:17AM -0500, Brad Spengler wrote:
> Hi Greg,
> 
> Much like you feel it's not your job to inform your own users of 
> vulnerabilities you've silently fixed, it's not the job of distros (who 
> are actually informing their own users) to do your job of determining 
> what kernels a particular fix affects, particularly when you just use it 
> as a way of getting your advertisement out there that people should be 
> running the latest Linux kernels.

I've never claimed that it was their job, I was just asking to try to
get an idea of where the issue was and when it was fixed to ensure that
the users of the LTS kernels were ok.  How is that a bad thing?

> Of course, what you're missing is that when it's the distros
> themselves requesting the CVEs, this skews the discussion of
> vulnerabilities to older kernels, not the much higher number present
> in the latest upstream "stable".

That's fine with me, I have no objection to that, never have.

> While we're here, how about a CVE for a recent kernel, for a vulnerability
> not fixed in any stable kernel yet, and introduced for a pointless mitigation
> no less:
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=c4e490cf148e85ead0d1b1c2caaba833f1d5b29f
> This affects upstream >= 4.8 when CONFIG_SLAB_FREELIST_RANDOM is enabled
> ("for those following along at home")
> 
> Or, since VMAP_STACK was introduced haphazardly in 4.9 without doing any 
> static analysis beyond a simple grep or smatch it seems, there are probably a 
> dozen or so DoSes when CONFIG_DEBUG_SG or CONFIG_DEBUG_VIRTUAL is 
> enabled, or potential silent or not so silent memory corruption when 
> it's not, as a scatterlist crossing a virtual page boundary will then 
> end up accessing a totally unrelated adjacent physical page if a stack 
> address was passed into the scatterlist, and these vulnerabilities will 
> continue to pop up until something comprehensive is done to prevent 
> them.  Emese's written an IPA GCC plugin to find all the ones you've missed,
> so we know there still are many that haven't been fixed.
> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=6d104af38b570d37aa32a5803b04c354f8ed513d 
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=a45f795c65b479b4ba107b6ccde29b896d51ee98
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=06deeec77a5a689cc94b21a8a91a76e42176685d
> 0day alert, not fixed in 4.9 yet:
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=05a974efa4bdf6e2a150e3f27dc6fcf0a9ad5655
> Not to mention the bugs introduced via fixes for VMAP_STACK:
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=146cc8a17a3b4996f6805ee5c080e7101277c410
> 
> Or how about a CVE for this huge heap infoleak (and while I'm at it, congrats to
> Al for not covering it up for once, maybe he's learning!):
> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=b9dc6f65bc5e232d1c05fe34b5daadc7e8bbf1fb
> Or this (sgid bit not cleared on tmpfs):
> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=497de07d89c1410d76a15bec2bb41f24a2a89f31

Many thanks for the list, I've queued up the few that I had missed in
previous stable kernel updates, or were not already in my queue for
future releases, it is much appreciated.

greg k-h
