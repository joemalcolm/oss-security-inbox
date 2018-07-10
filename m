X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["567" "Tuesday" "10" "July" "2018" "15:39:01" "+0200" "Greg KH" "greg@kroah.com" "<20180710133901.GC20816@kroah.com>" "17" "Re: [oss-security] mmap vulnerability in motion eye video4linux driver for Sony Vaio PictureBook" "^Cc:" nil nil "7" "2018071013:39:01" "[oss-security] mmap vulnerability in motion eye video4linux driver for Sony Vaio PictureBook" (number mark "        greg@kroah.c Jul 10   17/567   " thread-indent "\"Re: [oss-security] mmap vulnerability in motion eye video4linux driver for Sony Vaio PictureBook\"\n") "<20180706160937.C94687200D7@webmail.sinamail.sina.com.cn>" ("<20180706160937.C94687200D7@webmail.sinamail.sina.com.cn>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20357 invoked by uid 550); 10 Jul 2018 13:39:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20309 invoked from network); 10 Jul 2018 13:39:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; bh=IOZpCZGGqK6Vi6RQ9B4wHxcksteCApDh9xoh1aUMVu8=; b=Ke6MBOuR
	38sUmpwijDlsUvvvzlU8O1YDG+HwdyS4a+1RP3emjhMshu4rPUPCTSp7hld2/F94
	4Vz3Yn2AdN5vdvhXY+jAWnNo3a0HAfEYiVisNDkiSDF0UFQRLR8efMpsIE3D2guz
	6pDxiGsxt/xms33FH/fHK/cg3SIZh0oYsKirSZPGUqnAQ814jXcllB1Yz6+IMkmB
	RZ1P1OIbghsPK1p354xl0SVjcRZGBYW3yUnSK7il4xBT1q92qD4uWtIpIr9uXBu/
	kH09VFJEphbtMg5K+DzWOeVnieSBFuq0wpwzgKRoznk7ruxN2tHqzhLtRTXwvsDQ
	AnuQGzV0aSr/xA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; bh=IOZpCZGGqK6Vi6RQ9B4wHxcksteCA
	pDh9xoh1aUMVu8=; b=ZxZr7iMUfx3UCEwrAD/WM46x/qBX8uY4jNsONScpsgrpD
	kfgCOd3L/qWGc+Ai9Cn9CYw20zbTr8HpRwy9SNnzUyzngoits9U/GX8QsEAxy2Cn
	mbJUauZFWvhuMOsW7GOZ4YW4/Xb0QB4JxxiqZLFaRLDHRAnRrfwvi/ANtbsKdBTn
	/htUlZSRihgvnyG3atseyApDp5VnOsQJfP4gfBuJJeEWimVVOUTtj4Zx76Sew9yw
	hZVYM8wQoH9CCNnvE810hWtMyowRmc5FYF1wYllmCB7Lc/Vvb2XdlF93gBFMy+rA
	i2tdU/VDmuIkwHh/GnPS6dPtTg/YIBnEEd2v+e0sw==
X-ME-Proxy: <xmx:97ZEWwOZG41h8rJQxAyKKzKNr9C9I6zTaXj73NKp9kib2bBZ9eOdpw>
    <xmx:97ZEW3LORb0X4q5Ujf6JfTCtehMGyAu_nKp3vrHK-9H0Du0ZuwYp2A>
    <xmx:97ZEW5GbJaO8Hqh9So5DB-iufpHD9TLg8PTvjeAAp8NRfH0Awxx3PQ>
    <xmx:97ZEW3QAOlKncIiOlcu2OeMFOsZj1tcelCJOefHc5j4jjQb4FmFXGg>
    <xmx:97ZEW9FUor8Ol1OMsRPcW27T-bGF4CbgQJE_G3w2y1jMGafRjaVN4w>
    <xmx:97ZEW_gmZMTHUQCR-d-VDw6gHNXXA5uqxunhEWX0o7TQL02dcNu0Ig>
X-ME-Sender: <xms:97ZEWz4NTKwYKW92xoPpFZgxTb4ro7JUBDMe85dz1_Ut9IltIIwuzA>
Message-ID: <20180710133901.GC20816@kroah.com>
References: <20180706160937.C94687200D7@webmail.sinamail.sina.com.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180706160937.C94687200D7@webmail.sinamail.sina.com.cn>
User-Agent: Mutt/1.10.0 (2018-05-17)
Cc: Solar Designer <solar@openwall.com>
Date: Tue, 10 Jul 2018 15:39:01 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] mmap vulnerability in motion eye video4linux
 driver for Sony Vaio PictureBook
To: oss-security@lists.openwall.com, zrlw@sina.com

On Sat, Jul 07, 2018 at 12:09:37AM +0800, zrlw@sina.com wrote:
> I  sent a email to the original authors which i found in the head of
> meye.c, but i don't receive any response util now.

Always use the scripts/get_maintainer.pl tool to find who to send stuff
like this to.  It will include a public mailing list or two.

> I don't think
> commit be83bbf80682  will work on this case, this driver derived from
> v4l2-core which not use inode,  maybe i'm wrong.  

I think you are wrong, but it would be great if you could test to verify
it or not.

thanks,

greg k-h
