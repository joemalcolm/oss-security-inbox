X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3063" "Thursday" "18" "August" "2016" "16:57:24" "+0200" "Greg KH" "greg@kroah.com" "<20160818145724.GA32181@kroah.com>" "74" "[oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" "^Cc:" nil nil "8" "2016081814:57:24" "[oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" (number mark "        greg@kroah.c Aug 18   74/3063  " thread-indent "\"[oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices\"\n") "<20160818143957.GI2701@suse.de>" ("<20160818142216.GH2701@suse.de>" "<20160818143014.GA27854@kroah.com>" "<20160818143957.GI2701@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20306 invoked by uid 550); 18 Aug 2016 14:57:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20288 invoked from network); 18 Aug 2016 14:57:25 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=vkLB/NdnCOVVEmWlShLHLhogDbw=; b=qdyp4
	Ypm1FFGlo4Dca/Aj7aPEHljWRmlK5hvwxbvXSNCoys+QNFk8Bq7PJEYBts+BLSIu
	HB82PwfpH9ZgK7ELGcLpPk7LnjAViofMwbEByd0Bz6z1SU6KH7Y66WXd6h9HkWxq
	HDtlygHDidQPFGXurEuWsQoPq0Nw2hjUZLyxnw=
X-Sasl-enc: SmhbXIZ78GRfNYd/nSaF3BsLCbpSi4Me7BqOSPZIGMrp 1471532233
Message-ID: <20160818145724.GA32181@kroah.com>
References: <20160818142216.GH2701@suse.de>
 <20160818143014.GA27854@kroah.com>
 <20160818143957.GI2701@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160818143957.GI2701@suse.de>
User-Agent: Mutt/1.6.2 (2016-07-01)
Cc: OSS Security List <oss-security@lists.openwall.com>,
	cve-assign@mitre.org, security@kernel.org
Date: Thu, 18 Aug 2016 16:57:24 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in
 malicious USB devices
To: Marcus Meissner <meissner@suse.de>

On Thu, Aug 18, 2016 at 04:39:57PM +0200, Marcus Meissner wrote:
> On Thu, Aug 18, 2016 at 04:30:14PM +0200, Greg KH wrote:
> > On Thu, Aug 18, 2016 at 04:22:16PM +0200, Marcus Meissner wrote:
> > > Hi,
> > > 
> > > I think this does not have a CVE yet, please assign.
> > > 
> > > https://www.spinics.net/lists/linux-usb/msg144177.html
> > > 
> > > Headline:         Linux Kernel Panic Over USB with HID Keyboard wMaxPacketSize
> > > Platforms:        Ubuntu
> > > Versions:         Linux Kernel 4.4.0-22-generic
> > 
> > Huh?  It's much more pervasive than just that single platform or single
> > version.
> 
> That was the quote from the original e-mail. I read further on it affects
> more kernel versions.
>  
> > > CVSS Score:       4.7
> > > CVSS Vector:      AV:L/AC:M/Au:N/C:N/I:N/A:C
> > > Filed Defects:    
> > > Related Defects:  
> > > CWE Tags:         
> > > Cycle:            
> > > Found by:         Jake Lamberson
> > > 
> > > 
> > > Linux Kernel panics when using an OHCI controller if a USB device reports being 
> > > a generic HID keyboard and reports a wMaxPacketSize of over 4095. The OHCI
> > > controller driver fails to reserve bandwidth for the device, causing the 
> > > keyboard handler to fail when attaching to the HID. Later, when the device is 
> > > removed, the system crashes due to a null pointer dereference in a linked list 
> > > of endpoint descriptors. The crash can be re-created using a Facedancer and UMAP 
> > > software. Given an appropriately configured Facedancer and UMAP setup, the crash 
> > > can be re-created with: 
> > > sudo board=facedancer21 python3 umap.py -P /dev/serial_device_here -f 03:00:00:E:0046 -l LOG
> > > 
> > > Note: OHCI is a USB 1.1 controller standard that can be included with devices
> > > that support either USB 1.1 or 2.0 as their highest USB spec. USB 3.0 devices
> > > all use xHCI, which implements USB 1.1, 2.0, and 3.0, making them immune to
> > > this particular bug.
> > > 
> > > -----------------
> > > 
> > > The proposed fixing patch is here:
> > > https://www.spinics.net/lists/linux-usb/msg144269.html
> > > 
> > > 
> > > It has not yet been committed to the USB tree or to Linus Tree as far as I see.
> > 
> > Not true, it is commit id aed9d65ac3278d4febd8665bd7db59ef53e825fe in
> > the usb tree and in linux-next and will be sent to Linus tomorrow.
> 
> Ah sorry, only looked briefly.

This was also asked about 2 hours ago on the linux-usb mailing list, why
all of the sudden interest in something that we had been discussing for
weeks now in public?

> > And are we really assigning CVE numbers for when you use an active
> > "hardware test probe"?  If so, how many are people going to be assigning
> > for these same problems on other operating systems?  :)
> 
> I think attaching malicious USB devices and crashing the kernel should
> probably get CVE ids, or do you think it should not?

I don't know, that's why I'm asking, it requires "physical presence"
which is much different from most threat models that people work to
protect against.

thanks,

rgeg k-h
