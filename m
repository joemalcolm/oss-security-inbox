X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["963" "Monday" "28" "August" "2017" "11:49:32" "+0200" "Greg KH" "greg@kroah.com" "<20170828094932.GA22546@kroah.com>" "26" "[oss-security] Re: Integer overflow in bttv driver" nil nil nil "8" "2017082809:49:32" "[oss-security] Re: Integer overflow in bttv driver" (number mark "U       greg@kroah.c Aug 28   26/963   " thread-indent "\"[oss-security] Re: Integer overflow in bttv driver\"\n") "<EA3D3D14-C36B-4083-9229-CCDBC142D713@qq.com>" ("<491E3081-61D6-4AEB-B54A-15CC288D661D@baidu.com>" "<EA3D3D14-C36B-4083-9229-CCDBC142D713@qq.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9414 invoked by uid 550); 28 Aug 2017 09:49:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9395 invoked from network); 28 Aug 2017 09:49:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-sender:x-me-sender:x-sasl-enc:x-sasl-enc; s=
	fm1; bh=orlR1fRpc4K03P9WJqdgYD5SGjiVtjDLG5sd3TMJxqU=; b=hPGpqov9
	I7J+8ASD2kZ+TVpICcWoDG4TarSCjCDhnr/wTEo9azpJAGuzREIu7eLzX1STrQUJ
	5ORKQicxRWEMYoBRJ7nF/ZAWMRjTlfoIEoICQ9mdYLjhQXEcrSSqaYLib8RZlvaR
	B7QvuNVakSqnsAeCUxbUCKb3GvEB5a+zpzhlpyYI0KYo/sPAtlzdQtiLS9Mqwj8p
	IDtdLTTnZQRrGCmcMAqG4tLJ1erlZW8C26M1pr3O40tiPeDfaGayTcNKH/bDOLA2
	u2zMSZFu2JeJURFT1Hd/2O/A5gFz4+2ZBmgb49k3rkwLcjrXnyKo1SFQ+ysBkirs
	iE02smXOsdem3Q==
X-ME-Sender: <xms:JeejWRmnA3NjuAGS7aUxNKkFcJ57oi_zTF66n-2jhM43dk9b1l08MQ>
X-Sasl-enc: ER3PrJEYVAXubhbJxB/0sELE05PeicN6A1DNj1EkJCRC 1503913764
Date: Mon, 28 Aug 2017 11:49:32 +0200
From: Greg KH <greg@kroah.com>
To: =?utf-8?B?5bCP6Zuo?= <1326397@qq.com>
Cc: linux-distros@vs.openwall.org, oss-security@lists.openwall.com,
	security@kernel.org
Message-ID: <20170828094932.GA22546@kroah.com>
References: <491E3081-61D6-4AEB-B54A-15CC288D661D@baidu.com>
 <EA3D3D14-C36B-4083-9229-CCDBC142D713@qq.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <EA3D3D14-C36B-4083-9229-CCDBC142D713@qq.com>
User-Agent: Mutt/1.8.3 (2017-05-23)
Subject: [oss-security] Re: Integer overflow in bttv driver

On Mon, Aug 28, 2017 at 05:42:24PM +0800, 小雨 wrote:
> 
> > hello ,
> > 
> > I found a potential security problem which code located in https://github.com/torvalds/linux/blob/master/drivers/media/pci/bt8xx/bttv-driver.c <https://github.com/torvalds/linux/blob/master/drivers/media/pci/bt8xx/bttv-driver.c>.
> > 
> > In setup_window_lock function,as follows:
> > 
> > 
> > 
> > It did not check the clipcount param,causing a overflow.

Really?  What kernel version are you looking at?  The latest kernel tree
shows this, from the repo you link to above:
  https://github.com/torvalds/linux/blob/master/drivers/media/pci/bt8xx/bttv-driver.c#L2098

what am I missing here?

Also, any specific reason you sent this to oss-security just a few
minutes after sending it to security@kernel.org?  I don't really care
for something like this that is not really an issue, but if it was,
well, you sure didn't give anyone a chance to actually fix it :)

thanks,

greg k-h
