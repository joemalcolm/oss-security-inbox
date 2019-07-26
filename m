X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1621" "Friday" "26" "July" "2019" "10:16:40" "+0200" "Greg KH" "greg@kroah.com" "<20190726081640.GA4778@kroah.com>" "35" "Re: [oss-security] Security release pre-announcement messages" "^Date:" nil nil "7" "2019072608:16:40" "[oss-security] Security release pre-announcement messages" (number mark "U       greg@kroah.c Jul 26   35/1621  " thread-indent "\"Re: [oss-security] Security release pre-announcement messages\"\n") "<20190726081408.GA32730@kroah.com>" ("<20190722100013.GJ1168@jumper.schlittermann.de>" "<20190722112146.z4ey7777h5zci2zl@local>" "<20190722112953.GT67124@symphytum.spacehopper.org>" "<20190722115009.GA4117@openwall.com>" "<110f8440-7612-6014-fd40-2f8c72097b9a@catalyst.net.nz>" "<aa6TE4xteynh2_Ca6HNTpGBRXN0UKjaeO1QKfmh9JLPDcl0GZvbZgnMqCqUIjY7tqZ7EfR1cxFot8QGtkhtBlQrlcpMdnmnCH6qxIcETRas=@protonmail.ch>" "<20190726081408.GA32730@kroah.com>") nil nil nil nil nil nil nil "Re: [oss-security] Security release pre-announcement messages" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15791 invoked by uid 550); 26 Jul 2019 08:16:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15770 invoked from network); 26 Jul 2019 08:16:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=4jqNrS+PMIyumW4BUOAJzSp6tvR
	aPiPBYcMCk76PBWc=; b=P/nIqeX8Mp8IaIX9KsDYEBVvsB3Z/1xQp1RYCkfuoUU
	MXZkDP/jYdExXBNrkrU1aQE9p5vBVwPmawUDHVpqt7JeGISp/Omj9jCvxf2vY9ye
	Yq647JnhkuYjb85EzZuheD5rYo8tRFO5xse6bWDrl84ilFPN1KuMx2EYPD5vvr7N
	/dAQQmJ6vw91/Z39hB8NzMVtC85a8PqFwjKwhCMAKNf/Sh+W8IMxc7k64xbJFrho
	H+T0Ig1B4eQv0ccAT9Yy/Il2TUdbrlrociUpvwTO3cVfGyOIklJr3ZKkuML2dQNA
	HE2EYUwjumbBtfyocZPgrCUffmXZXMO3c2/82JUpg6A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=4jqNrS
	+PMIyumW4BUOAJzSp6tvRaPiPBYcMCk76PBWc=; b=BaTxodQkH+1Wg1rlTlcPju
	s5ltPXrlp/YxiKqMqpEhRD2bJdxJtYXTIvkhO5qcbPZvZkCI8lFFgzQKEYKdBtAP
	VRJo6leiqOykmScTAH8EsTisLo2L//KdRdfVzqnzi2yQkbK2VuaoiQbAEzOEBZvF
	uFMYl2V9qAJrypMOnrbzkns1oPmlKxUHpsrA/Da2Hmj3weGBrvy85UO025lOxvz3
	877JOgJI/qklmiMsZGdzlTQMxf9nhRd+ccyMd7gvJWQqE3FO7lnZbSjswawcw6bm
	eohbvbybk+wK5/rohcRCv6evgJ9Tod+Pvq+Ig5lQez3NyRb0V+Gn+3BEgn5V5Z+A
	==
X-ME-Sender: <xms:6rY6XdgbBYfE5btVd2txxoNIs6lojQWlq0f9vKdJLZDoBWKVtvyG6A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeeggddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjfgesthdtre
    dttdervdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuffhomhgrihhnpehkrhhorghhrdgtohhmnecukfhppeekfedrkeeirdekledruddtje
    enucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmnecuvehl
    uhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:6rY6XQwJM5gOA8MbEczTtMjFhHm4YQhZOtbT_lvZvDnk4X7F_i04dg>
    <xmx:6rY6XcoqSWwOpSx79NJZ972xY65KULV6wVfRk9tB3zDa8Au6U3L4Ng>
    <xmx:6rY6Xcn5Bxcne5KqJffVuy0XB_wyaZpixpVgRsjf_jcZ3k4xVnHtMg>
    <xmx:6rY6XTd0qNpSKgWoAJG-bJcnJeYfEryijIdiWiC7LiyaqRrnyW97yw>
Message-ID: <20190726081640.GA4778@kroah.com>
References: <20190722100013.GJ1168@jumper.schlittermann.de>
 <20190722112146.z4ey7777h5zci2zl@local>
 <20190722112953.GT67124@symphytum.spacehopper.org>
 <20190722115009.GA4117@openwall.com>
 <110f8440-7612-6014-fd40-2f8c72097b9a@catalyst.net.nz>
 <aa6TE4xteynh2_Ca6HNTpGBRXN0UKjaeO1QKfmh9JLPDcl0GZvbZgnMqCqUIjY7tqZ7EfR1cxFot8QGtkhtBlQrlcpMdnmnCH6qxIcETRas=@protonmail.ch>
 <20190726081408.GA32730@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190726081408.GA32730@kroah.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Date: Fri, 26 Jul 2019 10:16:40 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Security release pre-announcement messages
To: oss-security@lists.openwall.com

On Fri, Jul 26, 2019 at 10:14:08AM +0200, Greg KH wrote:
> On Thu, Jul 25, 2019 at 09:35:45PM +0000, Stiepan wrote:
> > I would like to congratulate the teams that do that. If public
> > disclosure is deemed too dangerous before a patch is available, this
> > looks like The reasonable tradeoff. Wish it was the same with Linux...
> 
> I too want a pony :)
> 
> > Rationale: people could switch meanwhile to a known safe kernel. That
> > would provide peace of mind to the "rest of us" who don't have the
> > keys to the linux-distros kingdom of the elected few, yet wish to have
> > secure OSes, without a window of vulnerability open to whoever hacked
> > into the elected few's machines (or are entitled another way to this
> > secret information).
> > It would also make Linux governance way more democratic, which seems
> > to be a must for such a "too big to fail" core open-source software.
> 
> The "best known safe kernel" is the latest one we release from the
> stable kernel series.  It has all of the fixes that that the kernel
> developers possibly know about at that point in time.
> 
> There's no need to worry about being on linux-distros or anything else,
> just keep updating your kernel, test in in your infrastructure to ensure
> it all works properly, and then push it out to all of your other systems
> and all is good.

And before all of the usual objections take place, please read this long
write up:
	http://kroah.com/log/blog/2018/02/05/linux-kernel-release-model/
specifically the "Security" section for details as to why the kernel
does not do "pre-release" announcements.

thanks,

greg k-h
