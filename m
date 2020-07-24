X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["492" "Friday" "24" "July" "2020" "09:18:13" "+0200" "Greg KH" "greg@kroah.com" nil "13" nil "^Cc:" nil nil "7" nil nil (number mark "        greg@kroah.c Jul 24   13/492   " thread-indent "\"Re: [oss-security] Flatcar membership on the linux-distros list\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Flatcar membership on the linux-distros list" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6014 invoked by uid 550); 24 Jul 2020 07:18:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5993 invoked from network); 24 Jul 2020 07:18:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=CrZvR6fqf/rstbtss8isb7UKRei
	lsmx1+71Za1HSwN0=; b=U+l0zlc+5rM/uFiCIRwRNpIE6otNpFwd38xNImu+bvO
	buJlWkWgFMFnSHc70GC3/bzzHlkntMUpuIj4QF5MG/upy2mngAaO6VvbRmOrvEgx
	ByTyAflbSjbaiTQmY55Taxt2waBuN0QjDWpji6xJxN39BRGzOqA+D3U9TCvBIGMq
	sK3PA+7M9QGqvyGM9cI5LLdkscysj1dER0KXf2VgRgIlOEtedvLSJlnhchbD0fOB
	HDW/92z0cD9oOEXVHscBSyy0P/TArfgwgkTAuOPAaklEy4UHyUN7ow3zPSThRyQc
	KqBDtg2gGoJ72lFVO4kkX7HqGC05L4l2YraOf+hNHZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=CrZvR6
	fqf/rstbtss8isb7UKReilsmx1+71Za1HSwN0=; b=WsTAWuGiRb+r4q7GG7dmm3
	CrFJ/k86p0yL6hUkGNTJeneL3ip446cbEzpY151ZGcv4uSr4trZv7sYWENAW6efI
	ZoOFAUZo9SCO8SgJIB0o6eXisDA5Vm8uHO2BiackcJgPe4zzJFBRnJ89JGBqweCe
	igHaSRTml81jR9Yd4N/vzN3uG+Tk28lm7h2OxIIXAx59pegTGRpAlxlB4Qt3Zum1
	VN7em+G1bfM7SMa7s3DoVjshEkknKrweUfYT7lwko4ZXfJWWiJRP0Z2nsnUTqwcP
	zLlDmg7fn99BooqHjLBpK/may4nX6hYKHIq6fTCyYfbNUAHWr94TlbPHHC5yaGqQ
	==
X-ME-Sender: <xms:M4saX0_DC-9vNWdA-upF5_QXT6tY7PoSqUjvwSfnkuAI_WP9yk19ww>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrhedvgdduudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeevueehje
    fgfffgiedvudekvdektdelleelgefhleejieeugeegveeuuddukedvteenucfkphepkeef
    rdekiedrkeelrddutdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
    hilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:M4saX8s-RTB1Iy-XY7G_3EehyxsVlR3-ex-e5HHrG-yRUzkfdRpl0g>
    <xmx:M4saX6B2aqiJDrwnZnJagZXwyoifaGumvGYACNekD--yXLcf61GOVg>
    <xmx:M4saX0euS7yQ222RVES0fLIIk4N_78x3ILCvWlCHdwaGiiuWoRSq-Q>
    <xmx:NIsaXwZgCNO6yitZu8e9Z_y5zJbeoLOPKQmWv-oeGzneaBa7s9GNMw>
Message-ID: <20200724071813.GC3948185@kroah.com>
References: <CAHp2X_Q=2=8qauHjTQRqUOdfUxW5s7pypwLYBwpNQ5yFyE4p+w@mail.gmail.com>
 <20200720183532.GA11008@openwall.com>
 <CAHp2X_S_3DC00CE8Yt_RkY+dhYH-BJX2sj9EzP_ip9Sp2T+DJQ@mail.gmail.com>
 <20200723184514.GA22802@openwall.com>
 <ec15f352a25a3322ca1feb435266b53b1901d340.camel@redhat.com>
 <20200723220124.GA23394@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200723220124.GA23394@openwall.com>
Cc: "Alban Crequy (Kinvolk)" <alban@kinvolk.io>, volkerdi@slackware.com
Date: Fri, 24 Jul 2020 09:18:13 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Flatcar membership on the linux-distros list
To: oss-security@lists.openwall.com

On Fri, Jul 24, 2020 at 12:01:24AM +0200, Solar Designer wrote:
> So someone who's on (linux-)distros "or at least someone else who has
> been active on oss-security for years but is not affiliated" should
> state in here that they vouch for Vincent.  They may optionally make
> this more specific (yet convincing) if they like, but that isn't
> required.

I think I meet this requirement, and have known Vincent for a number of
years and would be glad to "vouch" for him.

thanks,

greg k-h
