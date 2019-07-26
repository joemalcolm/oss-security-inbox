X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1256" "Friday" "26" "July" "2019" "10:14:08" "+0200" "Greg KH" "greg@kroah.com" "<20190726081408.GA32730@kroah.com>" "28" "Re: [oss-security] Security release pre-announcement messages" "^Date:" nil nil "7" "2019072608:14:08" "[oss-security] Security release pre-announcement messages" (number mark "        greg@kroah.c Jul 26   28/1256  " thread-indent "\"Re: [oss-security] Security release pre-announcement messages\"\n") "<aa6TE4xteynh2_Ca6HNTpGBRXN0UKjaeO1QKfmh9JLPDcl0GZvbZgnMqCqUIjY7tqZ7EfR1cxFot8QGtkhtBlQrlcpMdnmnCH6qxIcETRas=@protonmail.ch>" ("<20190722100013.GJ1168@jumper.schlittermann.de>" "<20190722112146.z4ey7777h5zci2zl@local>" "<20190722112953.GT67124@symphytum.spacehopper.org>" "<20190722115009.GA4117@openwall.com>" "<110f8440-7612-6014-fd40-2f8c72097b9a@catalyst.net.nz>" "<aa6TE4xteynh2_Ca6HNTpGBRXN0UKjaeO1QKfmh9JLPDcl0GZvbZgnMqCqUIjY7tqZ7EfR1cxFot8QGtkhtBlQrlcpMdnmnCH6qxIcETRas=@protonmail.ch>") nil nil nil nil nil nil nil "Re: [oss-security] Security release pre-announcement messages" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32142 invoked by uid 550); 26 Jul 2019 08:14:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32124 invoked from network); 26 Jul 2019 08:14:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=tqeFkr1sbKP1r7GAcJ7G/3/l0YS
	MwZxdgxm3E8mm8V8=; b=VbenL9EDeL7jyrTIci8VZP0FNa8tAzPzbNXylDZnD/o
	zp4K2wDQMzQe/6eIJixf4SzA5wHK0Wzts7ps+pF4c4OhSzecEKLKAbvKtj7fhAI8
	1ZPMIYDZfZIPJxMnaOxOiT1Jtx+v0PHH7bDKIMRIVITP0LwNAbngxyfa8sIW9+8p
	UNo1cPquvtZ2gT2G/N8JUneqPfILeOeHviLzwKE8okRV7sK8URkh7ViIYQji+B3X
	kNdHqEGnFJdd2dBAwaBjVmAjZjwmBcW01OOlGGKyqkHnbA7Y7BRNCb0VTTAPaRf7
	BbE/QRhzsEbu1lWksC7WAC+7TF/vAh9e4uhQnd1nFBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=tqeFkr
	1sbKP1r7GAcJ7G/3/l0YSMwZxdgxm3E8mm8V8=; b=yMjNzBLEHXLupem44e/GrR
	PY6A8FQOor0cfcJZKxrt2ldKIE1szYB1rrKFvA06tWdKFfr3W4CbMfTiCeSMt94L
	mTgmRAW65BZWCxJ5ehBc6PLZEC+koDfqJTGpZHj0+tGL2pOOEGgPodLV3vQ+l2Qq
	HZ7yFMJkLx/jGjtSKX8HS6zYrHBs9fzRCSnwpGBxrxFUrtU0jetHSBg01uCAJdGa
	l9qvojteRrSkcn0P6NdD/VXWwjHVoz9c7aPQv2es/4RaE31lwbMWlhC+5DZc2fRe
	+lgTiO8wb+bcKmUPfFKTyf/3MB2grOHnWROfru28hZw4EDy6fkCpiLyq8XO01PgA
	==
X-ME-Sender: <xms:UrY6XVOZSRIyDLT9wtCuuJ2j0TGXVmjitukIHdSf7WqQfUtEFjn0VQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeeggddtvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjfgesthdtre
    dttdervdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necukfhppeekfedrkeeirdekledruddtjeenucfrrghrrghmpehmrghilhhfrhhomhepgh
    hrvghgsehkrhhorghhrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:UrY6XcPPv9y1hKhg5BV4g6EXFQFxil_gPmTPpLkyzBEeMCvRlvAcYg>
    <xmx:UrY6XfSUw7USaLovha7Xsm37_QshRKKV9bDgTNrXj84njKI-w2jgzg>
    <xmx:UrY6XWCtCBQw1CRut6erEbUbxDkLP_sPBY1ShmMLLLKLuLXlOmLxJA>
    <xmx:UrY6Xd2TsP4umuFAYndICAwN04u1GiQxCDpsMmmYx9yBAYk6YAt51w>
Message-ID: <20190726081408.GA32730@kroah.com>
References: <20190722100013.GJ1168@jumper.schlittermann.de>
 <20190722112146.z4ey7777h5zci2zl@local>
 <20190722112953.GT67124@symphytum.spacehopper.org>
 <20190722115009.GA4117@openwall.com>
 <110f8440-7612-6014-fd40-2f8c72097b9a@catalyst.net.nz>
 <aa6TE4xteynh2_Ca6HNTpGBRXN0UKjaeO1QKfmh9JLPDcl0GZvbZgnMqCqUIjY7tqZ7EfR1cxFot8QGtkhtBlQrlcpMdnmnCH6qxIcETRas=@protonmail.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aa6TE4xteynh2_Ca6HNTpGBRXN0UKjaeO1QKfmh9JLPDcl0GZvbZgnMqCqUIjY7tqZ7EfR1cxFot8QGtkhtBlQrlcpMdnmnCH6qxIcETRas=@protonmail.ch>
User-Agent: Mutt/1.12.1 (2019-06-15)
Date: Fri, 26 Jul 2019 10:14:08 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Security release pre-announcement messages
To: oss-security@lists.openwall.com

On Thu, Jul 25, 2019 at 09:35:45PM +0000, Stiepan wrote:
> I would like to congratulate the teams that do that. If public
> disclosure is deemed too dangerous before a patch is available, this
> looks like The reasonable tradeoff. Wish it was the same with Linux...

I too want a pony :)

> Rationale: people could switch meanwhile to a known safe kernel. That
> would provide peace of mind to the "rest of us" who don't have the
> keys to the linux-distros kingdom of the elected few, yet wish to have
> secure OSes, without a window of vulnerability open to whoever hacked
> into the elected few's machines (or are entitled another way to this
> secret information).
> It would also make Linux governance way more democratic, which seems
> to be a must for such a "too big to fail" core open-source software.

The "best known safe kernel" is the latest one we release from the
stable kernel series.  It has all of the fixes that that the kernel
developers possibly know about at that point in time.

There's no need to worry about being on linux-distros or anything else,
just keep updating your kernel, test in in your infrastructure to ensure
it all works properly, and then push it out to all of your other systems
and all is good.

thanks,

greg k-h
