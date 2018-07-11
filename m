X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["924" "Wednesday" "11" "July" "2018" "13:04:17" "+0200" "Greg KH" "greg@kroah.com" "<20180711110417.GB18417@kroah.com>" "28" "Re: Re: [oss-security] mmap vulnerability in motion eye video4linux driver for Sony Vaio PictureBook" "^Cc:" nil nil "7" "2018071111:04:17" "[oss-security] mmap vulnerability in motion eye video4linux driver for Sony Vaio PictureBook" (number mark "        greg@kroah.c Jul 11   28/924   " thread-indent "\"Re: Re: [oss-security] mmap vulnerability in motion eye video4linux driver for Sony Vaio PictureBook\"\n") "<20180711021534.2C8121000DA@webmail.sinamail.sina.com.cn>" ("<20180711021534.2C8121000DA@webmail.sinamail.sina.com.cn>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31851 invoked by uid 550); 11 Jul 2018 11:04:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31786 invoked from network); 11 Jul 2018 11:04:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; bh=qBKwnglKHWIg5iRqdrzKuWjojgwJxNlOozpkLeY9U0Q=; b=XnqvG1uU
	UE1ec+zhS2skK5pIjmXHZ2FJluWX4as8Rc2gDMT9C7BoVxuJBVT3g/DBu7aJi1ZO
	10MgibrKzHjlJXCEBrZwaMM1ebKlyagTeFzP5OIkSd/4bkEOiU+62F75H0JWbi5W
	7kk5bCBMQ9WreOWcYKqffLbmqOlHL5oBBAqPhOyL3Nfwpl8Ah8tgTUy4qOTJOtyM
	uKjdd2zPvdIqX2CS1bikg6szhFNlGlRkcKDGjdZMPh9xz5/ua4ZV9cBiREYicw2g
	Akyyjd8jgpg0EF1SChwXJP1sYKA5rbIG/W4ObzRB8HVdp1ZZZn7fz1knedyRM8wV
	AXyim34n5+zkbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; bh=qBKwnglKHWIg5iRqdrzKuWjojgwJx
	NlOozpkLeY9U0Q=; b=pQYwG3TQP6Zc8p1H00ZLWCCyKhC3OuX9BPc0EXrX+R2BD
	5/E2kudp1CA9pq/IhvnFwIq5rvQ/MVla9VbRS5kCpq3OSVd/azfObXirsBBjSjOp
	KDvjxKj7nkgne4sd5sFJV7mk9rjHLk+/g6Sb84pcumfSbjlf+CyPDuG41nCmjHim
	LsHlQD5G74gPLJpNwMLpng62q++Nz2jmGNDY+1rCpMvPCZixaARdpeDnvn0cJx9K
	PVBKxvrVIjgMOX12g2gLpKu1q6Z6u/8ldrZB/Ht8SJ4kLOBWWKh7b7PHgXpkq4Y/
	Fwh98Gao4kHj7ZZ6bqjUj4Hddq2UdLWqwcfEGsEyA==
X-ME-Proxy: <xmx:M-RFW5fVysVL0dPLlmGh16NN550KYa-PPYljhu3yEieK-PQw6BUSpQ>
    <xmx:M-RFW0Wx61apbQuhCHc5xbI2hvhoTXqPZZbjXmNXuinM6I0y-3Sy4g>
    <xmx:M-RFWy9gq6NKCoDf4xwy88GpZyj6oGW80cQDLErb6TsV10lidE8cPA>
    <xmx:M-RFWz-vj7HGQPlbQVw11rrJ2I5pGSaxEqWR-zl7T9tBz3CPwSAw0w>
    <xmx:M-RFW9XyUy8_OAwUJXjZ30cnOCCCKT1T0M8nm7vOY037eIVqFGQvOw>
    <xmx:M-RFWzYLQrdCKp_esaetCiuWkUc8CN9gEDWEb4ePWziLATc3HG1Kjg>
X-ME-Sender: <xms:M-RFWz4nNkT47CfmRClnr1lTcWnopmnmhgLOnYFeEPLV7eF4h6fmBw>
Message-ID: <20180711110417.GB18417@kroah.com>
References: <20180711021534.2C8121000DA@webmail.sinamail.sina.com.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180711021534.2C8121000DA@webmail.sinamail.sina.com.cn>
User-Agent: Mutt/1.10.0 (2018-05-17)
Cc: oss-security <oss-security@lists.openwall.com>,
	Solar Designer <solar@openwall.com>
Date: Wed, 11 Jul 2018 13:04:17 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: Re: [oss-security] mmap vulnerability in motion eye video4linux
 driver for Sony Vaio PictureBook
To: zrlw@sina.com

On Wed, Jul 11, 2018 at 10:15:34AM +0800, zrlw@sina.com wrote:
> i think commit be83bbf80682 maybe has a problem:
>  if file_mmap_size_max return 0 (not regular, not block, fmode &
> FMODE_UNSIGNED_OFFSET == true) , maxsize will be set to -len, correct? 
> 
> +static inline bool file_mmap_ok(struct file *file, struct inode *inode,
> + unsigned long pgoff, unsigned long len)
> +{
> + u64 maxsize = file_mmap_size_max(file, inode);
> +
> + if (maxsize && len > maxsize)
> + return false;
> + maxsize -= len;                                         <==  maxsize = -len
> when file_mmap_size_max return 0 
> + if (pgoff > maxsize >> PAGE_SHIFT)
> + return false;
> + return true;
> +}

Yes, that is correct, that means that the file size is very big and
allowed to use unsigned values.  Very few device nodes allow this, but
some need to.

Do you see a problem with this for the driver you are looking at?

thanks,

greg k-h
