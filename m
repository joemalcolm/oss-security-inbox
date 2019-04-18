X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1561" "Thursday" "18" "April" "2019" "19:23:49" "+0200" "Greg KH" "greg@kroah.com" "<20190418172349.GA24716@kroah.com>" "34" "Re: [oss-security] Linux kernel address leaks" "^Date:" nil nil "4" "2019041817:23:49" "[oss-security] Linux kernel address leaks" (number mark "        greg@kroah.c Apr 18   34/1561  " thread-indent "\"Re: [oss-security] Linux kernel address leaks\"\n") "<20190418170058.GA22985@openwall.com>" ("<CABXRUiQpWVeHYZeN_=P+n8ghVA=VWDPAeddpsZj38P0sZADeNA@mail.gmail.com>" "<20190418170058.GA22985@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel address leaks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5849 invoked by uid 550); 18 Apr 2019 17:47:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13688 invoked from network); 18 Apr 2019 17:24:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=ykoL+IR3gBUUB19WbeNDbTOUPih
	rxg1UrK/RwvPGWuQ=; b=JVkAlFwgTaLTtXKgs+8OEvkTugR4ApHd4+qiFKFXbuM
	b+Y1NDvL1uWtjSbAjbf+6gsb5K4S0PivAIOKepzKWt1vWQG7d5aPznG26ihpwe1s
	fZoPwSNFjJb+IBmERjlssX4oQqiv2d99KyP8l7O2rbUp/6tuXTigQHUpm9w1aR+1
	ly4kgq1krfoXr80iTI3FRRPYiChvAx9u+8ilE7hyWKF7DrcVQ5xwCN0FzTlBup7y
	g2kzabywF/stSYFzbuxLCaNBKNIxVAeiPlli49jHA+DYWT3Bz5zheQQleFBlV00R
	gvzgwq/nLlZDUbwhUeGtvwvuWSWAWM4I2lizzT8UFLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ykoL+I
	R3gBUUB19WbeNDbTOUPihrxg1UrK/RwvPGWuQ=; b=bkfdI32yMuf9GDSUTVumsT
	zWYF6DPBzMyButUAGNHJtmIBSDQOU4yTJqYNcYA3dl22+w2p66SBoKFG6SDll7aJ
	xYSIthcEf5h68+7s2A52Bc4Ra0tgp4C++wvF6pYC74DAeTKXh2SPU5Ve7gnD+rnT
	S9IC5W6mixzdgj5wog+Cqm6RRJR4V3KP6HyqRKuo0w/lAn00KEZAznLUA4GJaAwE
	6tUVKTIRg45SoWtYRMlYPHi2R+Oov46DwJFXRGHAW91HdrUGOZ/npqeTMXttDRwI
	ZrZxEQm0AggCIav9Rw6CkQ7gkFy/Y80OfVLO64xB45yltqeR5ICmG5FUGZzjl/nQ
	==
X-ME-Sender: <xms:qLK4XIO-4NfCi4oZyeP67t8Da95r4AlMs3WuUmq6uYmLV8BIQTrb7w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrfeehgdehtdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjfgesthdtre
    dttdervdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necukfhppeekfedrkeeirdekledruddtjeenucfrrghrrghmpehmrghilhhfrhhomhepgh
    hrvghgsehkrhhorghhrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:qbK4XHYqYllELcVVNPlbcih7K08h9FBVRj3jLNSg-_LebiksD1SpWQ>
    <xmx:qbK4XPuHp52bl3-rNZXGuxZHbd6AM5IL-2QK7AFiro8zrPm1XQr2xw>
    <xmx:qbK4XBM3WhDkXGSVWnoHIsUORiQ1vSM9F_qzlfg43n7ogkC93p5NaQ>
    <xmx:qbK4XHHq_OjuJY1rSAvoO_1Z4LRSfFgAbKQe_eK1piNB2EFuQQn-Yg>
Message-ID: <20190418172349.GA24716@kroah.com>
References: <CABXRUiQpWVeHYZeN_=P+n8ghVA=VWDPAeddpsZj38P0sZADeNA@mail.gmail.com>
 <20190418170058.GA22985@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190418170058.GA22985@openwall.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
Date: Thu, 18 Apr 2019 19:23:49 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel address leaks
To: oss-security@lists.openwall.com

On Thu, Apr 18, 2019 at 07:00:58PM +0200, Solar Designer wrote:
> Hi,
> 
> Fuqian just sent us all 13 of these in 2 days, and I guess there might
> be many more to come.  Do we really want to see them in here?  And in
> that many individual messages?  I doubt it - but not enough to have used
> my moderator powers to outright reject the messages without discussion.

If you look at the original commit that added the pointer masking logic
to the kernel in the 4.15 release:
	ad67b74d2469 ("printk: hash addresses printed with %p")

it points out that there are currently about 14000 different uses of
this in the kernel at the time, so the proper way to "fix" this is to
just make it so %p does not print out the pointer address.

Today, I responded to one patch that the author sent to the stable
mailing list with the following message:
	I suggest, if you really care about this issue in your
	4.14-based kernel tree, that you just backport these pointer
	printk patches and be done with it.  That's too big of a change
	to accept into the 4.14.y LTS kernel, but as the lifespan for
	4.14.y running on a "general purpose" system is probably only a
	few more months at most, I would recomment just using 4.19.y
	instead as this isn't an issue at all there.

So in short, use 4.15 or newer if you care about this issue.  If you
rely on an older kernel, please backport the above patch, and a few
others, to your kernel and be done with the issue.  That's what Android
has done, so all of those devices do not have this issue anymore either.

thanks,

greg k-h
