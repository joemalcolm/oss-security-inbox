X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2144" "Thursday" "18" "August" "2016" "16:30:14" "+0200" "Greg KH" "greg@kroah.com" "<20160818143014.GA27854@kroah.com>" "56" "[oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" "^Cc:" nil nil "8" "2016081814:30:14" "[oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" (number mark "        greg@kroah.c Aug 18   56/2144  " thread-indent "\"[oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices\"\n") "<20160818142216.GH2701@suse.de>" ("<20160818142216.GH2701@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19909 invoked by uid 550); 18 Aug 2016 14:30:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19889 invoked from network); 18 Aug 2016 14:30:17 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=QCmxwr0BG9Hw2Et9lr17ltVlvFY=; b=j1+AY
	CVZKFFXhLAJdgRtyIGOFMfjlm+hHYyIeDAwJr7A15VOjkDgqi89vStv3a9uQiinL
	wxOHJDmGKzXygCHhrDAKfSk+Knhr7cUFy/zM4EvtLQFSNnmdt6qgKj/jCMIcJIGh
	UE2mBlp1EIChyPiqVebcLiZSxbLDOI603LaXaQ=
X-Sasl-enc: HAHzTM/XX4OujkG9OqHLGYjxW0RZ/F//qhMQlPFDEfpf 1471530604
Message-ID: <20160818143014.GA27854@kroah.com>
References: <20160818142216.GH2701@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160818142216.GH2701@suse.de>
User-Agent: Mutt/1.6.2 (2016-07-01)
Cc: OSS Security List <oss-security@lists.openwall.com>,
	cve-assign@mitre.org, security@kernel.org
Date: Thu, 18 Aug 2016 16:30:14 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in
 malicious USB devices
To: Marcus Meissner <meissner@suse.de>

On Thu, Aug 18, 2016 at 04:22:16PM +0200, Marcus Meissner wrote:
> Hi,
> 
> I think this does not have a CVE yet, please assign.
> 
> https://www.spinics.net/lists/linux-usb/msg144177.html
> 
> Headline:         Linux Kernel Panic Over USB with HID Keyboard wMaxPacketSize
> Platforms:        Ubuntu
> Versions:         Linux Kernel 4.4.0-22-generic

Huh?  It's much more pervasive than just that single platform or single
version.

> CVSS Score:       4.7
> CVSS Vector:      AV:L/AC:M/Au:N/C:N/I:N/A:C
> Filed Defects:    
> Related Defects:  
> CWE Tags:         
> Cycle:            
> Found by:         Jake Lamberson
> 
> 
> Linux Kernel panics when using an OHCI controller if a USB device reports being 
> a generic HID keyboard and reports a wMaxPacketSize of over 4095. The OHCI
> controller driver fails to reserve bandwidth for the device, causing the 
> keyboard handler to fail when attaching to the HID. Later, when the device is 
> removed, the system crashes due to a null pointer dereference in a linked list 
> of endpoint descriptors. The crash can be re-created using a Facedancer and UMAP 
> software. Given an appropriately configured Facedancer and UMAP setup, the crash 
> can be re-created with: 
> sudo board=facedancer21 python3 umap.py -P /dev/serial_device_here -f 03:00:00:E:0046 -l LOG
> 
> Note: OHCI is a USB 1.1 controller standard that can be included with devices
> that support either USB 1.1 or 2.0 as their highest USB spec. USB 3.0 devices
> all use xHCI, which implements USB 1.1, 2.0, and 3.0, making them immune to
> this particular bug.
> 
> -----------------
> 
> The proposed fixing patch is here:
> https://www.spinics.net/lists/linux-usb/msg144269.html
> 
> 
> It has not yet been committed to the USB tree or to Linus Tree as far as I see.

Not true, it is commit id aed9d65ac3278d4febd8665bd7db59ef53e825fe in
the usb tree and in linux-next and will be sent to Linus tomorrow.

And are we really assigning CVE numbers for when you use an active
"hardware test probe"?  If so, how many are people going to be assigning
for these same problems on other operating systems?  :)

thanks,

greg k-h
