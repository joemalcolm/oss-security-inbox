X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1148" "Friday" "19" "August" "2016" "09:31:54" "+0200" "Greg KH" "greg@kroah.com" "<20160819073154.GA21382@kroah.com>" "31" "Re: [oss-security] CVE-2016-6327 | Linux kernel crash in infiniband subsystem." "^Date:" nil nil "8" "2016081907:31:54" "[oss-security] CVE-2016-6327 | Linux kernel crash in infiniband subsystem." (number mark "        greg@kroah.c Aug 19   31/1148  " thread-indent "\"Re: [oss-security] CVE-2016-6327 | Linux kernel crash in infiniband subsystem.\"\n") "<CALJHwhQEOavmdQ_dqNS2k5b1SFuvKUBTuQtOySi6zUfgSQ3-1Q@mail.gmail.com>" ("<CALJHwhQEOavmdQ_dqNS2k5b1SFuvKUBTuQtOySi6zUfgSQ3-1Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10075 invoked by uid 550); 19 Aug 2016 07:31:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10050 invoked from network); 19 Aug 2016 07:31:57 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=NlzJPopB9Hvn2MdUrwUMuN+9elY=; b=acQ8B
	A2+HChsyJSUkPdyuHHo7rVOzqaDYGVMu1q2POH2lo92MtGVo5d5XxXVO4Zu7On+w
	cxdcKIF5TwXBoYV9jVRlG3+1sTnbVNAicm0tCXp2t6sHPDD34jHtUVzA+/f2VbIJ
	MUEOGE2NWENGmhOzGI9GlvSAVQpaPVf8F3JZg4=
X-Sasl-enc: /kE6iJhBALeg4p+RQ9NXRr4USAFlM/NyPPs3w7sSGFmC 1471591904
Message-ID: <20160819073154.GA21382@kroah.com>
References: <CALJHwhQEOavmdQ_dqNS2k5b1SFuvKUBTuQtOySi6zUfgSQ3-1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALJHwhQEOavmdQ_dqNS2k5b1SFuvKUBTuQtOySi6zUfgSQ3-1Q@mail.gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)
Date: Fri, 19 Aug 2016 09:31:54 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-6327 | Linux kernel crash in infiniband
 subsystem.
To: oss-security@lists.openwall.com

On Fri, Aug 19, 2016 at 05:10:30PM +1000, Wade Mealing wrote:
> System using the infiniband support module ib_srpt were vulnerable to
> a denial of service by system crash by a local attacker who is able to
> abort writes to a device using this initiator.
> 
> There were multiple areas in which aborting a scsi command are able to
> be handled, moving this to the correct location in the state machine
> ensured that this condition was never triggered through this code
> path.
> 
> The null pointer situation was enabled via a non attacker controlled
> meset() call, and this is not a use after free.  From my undestanding
> it is a denial of service only.
> 
> Thanks,
> 
> Wade Mealing
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1354525
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=51093254bf87

For those playing at home, this was fixed in the 4.6 Linux kernel
release, as well as the 4.4.7 stable release (released on April 12,
2016), and all other stable releases around the same time, so the only
ones to worry about this are those who have not updated their kernel in
a long time.

thanks,

greg k-h

