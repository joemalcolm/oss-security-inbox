X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1415" "Friday" "28" "June" "2019" "01:07:25" "+0800" "Greg KH" "greg@kroah.com" "<20190627170725.GA10540@kroah.com>" "33" "Re: [oss-security] linux-distros membership application - Microsoft" "^Date:" nil nil "6" "2019062717:07:25" "[oss-security] linux-distros membership application - Microsoft" (number mark "        greg@kroah.c Jun 28   33/1415  " thread-indent "\"Re: [oss-security] linux-distros membership application - Microsoft\"\n") "<20190627165515.GC25142@elm>" ("<20190626141358.GK7898@sasha-vm>" "<20190627140321.GA29338@openwall.com>" "<20190627164206.GA9692@kroah.com>" "<20190627165515.GC25142@elm>") nil nil nil nil nil nil nil "Re: [oss-security] linux-distros membership application - Microsoft" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23951 invoked by uid 550); 27 Jun 2019 17:07:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23920 invoked from network); 27 Jun 2019 17:07:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=j2rLmLrJhO9oJrcck5NONCNj7Zc
	17IDMjQX4sZclhY8=; b=gvDjqbiT2hlOItRbKt/91clJCoRwNPH/9PfglyEkiMq
	Co/52hOEoMKvF62uabzoNGSt0JAXwFK+AHUhvqszAsTTAX9yzsI/5Y7FFQGRcJKA
	idpejnavvL7RgBEw5c4MZyf5IDiKyeAO4nCuvIJ8qwRJLfvG4c5cSPbG0AbL/GDr
	VhZoRfKjx/N6hB6dmtfXOL8/itWIOI00rS/r+IQIzKktybFbcQbBl2zxMhnsed71
	IbVnzx+mh2MUGbNPj4JSiWm3hE6O5TMmvEUUHwn8gCR9VsgsimRVun/GfF6ei5Wi
	luPGdcHmqCyJG5rmMKsyf0LVp5V/JqwCSjoQ5TgDVkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=j2rLmL
	rJhO9oJrcck5NONCNj7Zc17IDMjQX4sZclhY8=; b=PuXO2wUO4I2NOkihH4dHh8
	9qHjS0q9lq2W8wecOfNC+W3/hGWrRdCY4oWlWLRzDRGu0nYevoXFr7cZa44rWK4v
	YO1iurmF27qxe7XDH/LtNWC8xP5kB+Bz7vhXpgTPy6ZdAeXgNGi8Ze/MqClvZsKU
	gzO5DLlVrIJbF59RTG1eFbq4jaNIYJt3ilA8Y+Jm7hPhxKGZNHLWFRez4FhDCwaZ
	/suNJjjFe5xNGRhRg3m5VrDaHO700s7v1hwOanzCQuaNILkwX6dwMrXl4fbBEV6n
	z7G85NV2dC/AprK/ix96EAz0+054RCmCL1Q6tkMN25t2091smiv2m96hqxRauJkQ
	==
X-ME-Sender: <xms:0fcUXb11uMBXtuQNYWWfPTR1kTNAK6oLVdGs_1yV31Qcmi8oauHSFA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudekgdduudduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujggfsehttd
    ertddtredvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
    qeenucfkphepkeegrddvgedurddvtddtrdeikeenucfrrghrrghmpehmrghilhhfrhhomh
    epghhrvghgsehkrhhorghhrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:0fcUXUWiTUV3kVheG7Xv0P3hw9IvzFwrmWlz0GoVBA8IGjk9G1oXgQ>
    <xmx:0fcUXRWxnExMXatKLXeo0R1pF6Xzwd2i5GILha6y8ac8vHLEHOqnHQ>
    <xmx:0fcUXXFjyyVhM-C72ruHl1ilQZszO4I7PeO-fvWBvbqb1TV42jgywA>
    <xmx:0vcUXUJQp9cbcwopDKh8Kqbwg1TN0MIjuQUTKwXBvSLY1QDEnC_tqQ>
Message-ID: <20190627170725.GA10540@kroah.com>
References: <20190626141358.GK7898@sasha-vm>
 <20190627140321.GA29338@openwall.com>
 <20190627164206.GA9692@kroah.com>
 <20190627165515.GC25142@elm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190627165515.GC25142@elm>
User-Agent: Mutt/1.12.1 (2019-06-15)
Date: Fri, 28 Jun 2019 01:07:25 +0800
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros membership application - Microsoft
To: oss-security@lists.openwall.com

On Thu, Jun 27, 2019 at 11:55:16AM -0500, Tyler Hicks wrote:
> On 2019-06-28 00:42:06, Greg KH wrote:
> > On Thu, Jun 27, 2019 at 04:03:21PM +0200, Solar Designer wrote:
> > > Hi Sasha,
> > > 
> > > Thank you for posting this application.
> > > 
> > > Are you also on security@k.o?  If so, then on one hand also being on
> > > linux-distros would probably be of less use to you since I suspect most
> > > of the issues relevant to Microsoft are in the Linux kernel, but on the
> > > other hand you could serve as a liaison to that group.
> > 
> > Sasha is not on security@k.o, someone else there is _supposed_ to be the
> > liason to the linux-distros list, but I don't know how well that is
> > working at the moment as I am not on -distros (nor do I want to be at
> > this point in time.)
> 
> I don't think it happens much, if ever these days. The only kernel
> issues that go to linux-distros seem to be ones that are reported up
> through a distro or where the discoverer makes a point to include both
> lists.
> 
> It would be good to improve the situation but I don't know if one person
> could manage it alone.

The number of "real" bugs reported to security@k.o is really low these
days (max 1 per week, maybe lower, haven't kept track in a long time),
the load shouldn't be that hard.  And again, there is at least one
member on that alias that was supposed to be doing this already...

thanks,

greg k-h
