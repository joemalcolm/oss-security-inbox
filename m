X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1237" "Friday" "20" "January" "2017" "09:26:35" "+0100" "Greg KH" "greg@kroah.com" "<20170120082635.GB28326@kroah.com>" "35" "Re: [oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash kernel" "^Cc:" nil nil "1" "2017012008:26:35" "[oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash kernel" (number mark "        greg@kroah.c Jan 20   35/1237  " thread-indent "\"Re: [oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash kernel\"\n") "<1484880112.11949.24.camel@redhat.com>" ("<1484880112.11949.24.camel@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1412 invoked by uid 550); 20 Jan 2017 08:26:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1390 invoked from network); 20 Jan 2017 08:26:54 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=smtpout; bh=iAgvWH7EopMqWR
	lbCOhxm28AIsM=; b=YpLFj/4oi40DUDB5VHe1Tyr76eDsYOX3yPuCjvhV2NzKVA
	j8pxgoDmNoHochCgBFeSadLBoOQrVrPtDV77zg9r2XRyc8P1JnLiZjmM7NXERsv5
	lYPXQssD3kM4MwDIoe/btutQCK3gmF9aBJS/TR7zMxAfswJ31c3qp5MLLBFIU=
X-ME-Sender: <xms:wsmBWGU_vVX89CrewsybVOgL3jAuy_-RZ_f_OHaCw6qJ8d2BeH6NGQ>
X-Sasl-enc: f1ObnLRv8jchchWJ+D3Hj2uetquOXCMWxDqbLxVG9obQ 1484900802
Message-ID: <20170120082635.GB28326@kroah.com>
References: <1484880112.11949.24.camel@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1484880112.11949.24.camel@redhat.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: Jesse Hertz <Jesse.Hertz@nccgroup.trust>,
	Wade Mealing <wmealing@redhat.com>
Date: Fri, 20 Jan 2017 09:26:35 +0100
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE REQUEST: linux kernel: process with pgid zero
 able to crash kernel
To: oss-security@lists.openwall.com

On Fri, Jan 20, 2017 at 01:41:52PM +1100, Harshula wrote:
> Hi Folks,
> 
> Red Hat Product Security has been notified of a kernel vulnerability
> that a local attacker can exploit to crash/panic the kernel and cause a
> denial of service.
> 
> This was reported to Red Hat by Jesse Hertz (CC'd) (reproducer:
> rt411016):
> 
> "A process that is in the same process group as the ``init'' process
> (group id zero) can crash the Linux 2 kernel with several system calls
> by passing in a process ID or process group ID of zero. The value zero
> is a special value that indicates the current process ID or process
> group. However, in this case it is also the process group ID of the
> process."
> 
> I've been testing whether RHEL is vulnerable and found the following:
> 
> * Upstream/mainline is not vulnerable

Is this true for the mainline kernel tree that RHEL 6 was based on?

> * RHEL 7 is not vulnerable
> * RHEL 6 is vulnerable
> * RHEL 5 is partially vulnerable

So this is only due to a specific set of patches that were added to RHEL
6 and RHEL 5 yet never made it upstream?  I ask as we want to make sure
some of the older LTS mainline kernels might be affected and it would be
good to ensure they are not.

thanks,

greg k-h
