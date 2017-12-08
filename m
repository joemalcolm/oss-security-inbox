X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["816" "Friday" "8" "December" "2017" "10:48:54" "+0100" "Greg KH" "greg@kroah.com" "<20171208094854.GA9289@kroah.com>" "29" "[oss-security] Re: signed integer overflow in common_timer_get on linux 4.15.0-rc1" nil nil nil "12" "2017120809:48:54" "[oss-security] Re: signed integer overflow in common_timer_get on linux 4.15.0-rc1" (number mark "U       greg@kroah.c Dec  8   29/816   " thread-indent "\"[oss-security] Re: signed integer overflow in common_timer_get on linux 4.15.0-rc1\"\n") "<20171208090949.j6zlcrgv6djmwq4l@mwanda>" ("<CANBt6Y257EXeL_dnxB0xXQmP+o7sS5FS3BJwPR5PsE3Wu1nKvg@mail.gmail.com>" "<20171207111718.GA1230@kroah.com>" "<20171208090949.j6zlcrgv6djmwq4l@mwanda>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20383 invoked by uid 550); 8 Dec 2017 09:48:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20362 invoked from network); 8 Dec 2017 09:48:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=njriInzH2yxi7pvRM6uT3XJpMv9yH
	gD8UmHTwuBhMwo=; b=UVylz9jCpbjv5pybujh1K/+77tDBlSLWTqK4ONp8ZZgHa
	8hrI+KebWHRuEWxhn1lQB40rrVMsP3eEHy3EAEQ+HvO5orkiMuWsepBFFJ5iTtPP
	ajFBIhcPNcdGDdgoGhuAD9Vg1xlUePX/zwIhTU23ByFMi6GFJtM9BGDyGfXlRc+8
	q+yr42cBFNF+w3wi1catuVwMkEta8vq2sfdoNhLG/L/T+PQNvIHSCA4G47lvEHl1
	TMgnaP+XZY6YEwG/8HcfXHeXzq56j0xYep78m+tS2iRSA/mxcNf0qVPcUt+QRspb
	S/Tv+IXtgzCDlPutpWOcEo3iTnbGvcBu5zS3X58Bw==
X-ME-Sender: <xms:_18qWm138oaCpG5rcs0xwBIXqUS_9TAfOmWI63_cCA9OqHypfoZvdQ>
Date: Fri, 8 Dec 2017 10:48:54 +0100
From: Greg KH <greg@kroah.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: at zhou <zhouat2017@gmail.com>, security@kernel.org,
	secalert@redhat.com, security@suse.com, tglx@linutronix.de,
	oss-security@lists.openwall.com, linux-distros@vs.openwall.org
Message-ID: <20171208094854.GA9289@kroah.com>
References: <CANBt6Y257EXeL_dnxB0xXQmP+o7sS5FS3BJwPR5PsE3Wu1nKvg@mail.gmail.com>
 <20171207111718.GA1230@kroah.com>
 <20171208090949.j6zlcrgv6djmwq4l@mwanda>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171208090949.j6zlcrgv6djmwq4l@mwanda>
User-Agent: Mutt/1.9.1 (2017-09-22)
Subject: [oss-security] Re: signed integer overflow in common_timer_get on linux 4.15.0-rc1

On Fri, Dec 08, 2017 at 12:09:50PM +0300, Dan Carpenter wrote:
> On Thu, Dec 07, 2017 at 12:17:18PM +0100, Greg KH wrote:
> > On Thu, Dec 07, 2017 at 06:01:43PM +0800, at zhou wrote:
> > > Hi all,
> > > 
> > > credit   to   L5@360vulcan team
> > > 
> > > I fuzzed the linux kernel and find signed integer overflow on linux
> > > 4.15.0-rc1+.
> > > the crash log can see below, the .config and the poc file ,please see the
> > > attachments.
> > 
> > Odd, doesn't seem to affect a 4.9 or 4.15-rc2 kernel here on my
> > machines, is there something specific in the .config that might be
> > triggering this?
> > 
> 
> Greg, you're running with UBSAN?

Ah, missed that one.  No, I'm not crazy :)

Makes a bit more sense.

at zhou, care to make up a patch for this as it seems you can test it
easily?

thanks,

greg k-h
