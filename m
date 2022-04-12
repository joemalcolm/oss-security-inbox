Received: (qmail 16046 invoked by uid 550); 12 Apr 2022 12:12:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15977 invoked from network); 12 Apr 2022 12:12:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1649765524; x=1649851924; bh=p4zAWFFkk3
	KJidQD1jndhGbjsIZd9aVSvyqamhaK5bI=; b=EQL9uqUkAi5/3Qy5rjwIBK90aA
	mge07kNQBEZpzWPn2txKFqLgK3k52iJOWikgTuke0sSKb1+Ha76o8EkT6BuqLElw
	YIXRgvm0dZT5Lg4fKDXxyB5H+PIw8MJo8ThKMN2jJIlloK2O+eZj3OUyQYr5X7yP
	Nu8vh2k/MHtqkTZG4UDjFk88AYsicxu4+PKuOuHfe6d5eYRRU+ZA+VraBl2jtg7S
	f0hxRdIdTRc2N9qp59Q4DtqGgT3JozRwLmdLFmdHrxOIf0Lxu9hhv7Fsb2K9ARX9
	IZWxWo64ZMIF78lradLJ4nZ0NDP98L472zTd74IP1RaSeIUPFa8TClMSzpmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1649765524; x=
	1649851924; bh=p4zAWFFkk3KJidQD1jndhGbjsIZd9aVSvyqamhaK5bI=; b=k
	HU3rhBocNSYN2LQo3Omirq5LsfKsdcfIZYb+15JKTb15FZ/KAnK0gyzN3K53n7iH
	Q+CQcmsfjCgP6sxMG0C2bqe/xVLO4LOQtBEICSwHxoB4ve0Nka7gT01l8U3KvE0/
	ppyf5ZTDcP+w3kcsUoWzayRe9DVhCkzhNG7FiTmnAU+lvKrqoWOWh8S1mZIaPJlv
	0ClGJa4pT5pvtBB8zoobf+KCWU9YTje5Y3yon7b9pasqrAz3YLSZdoRrKapBobPX
	rnd78RfQwNZMnbU7wJP0DhRZ6EmcxI1q4GET5cWNshbF4qyDoc66Gi0IET7SbtkA
	7WBkFkn/2gW1eVmSxbKpQ==
X-ME-Sender: <xms:lGxVYjF1tBy69RyRWEb7NQ0sbs9yQd7jPZjTnnB17MPqFHm6Yvq5ZA>
    <xme:lGxVYgUIQinHJhcwwPChXGc_xk24s39oRY46argQoJUcdgekW0f6rmmeZ8zzgDcH2
    QTJeRSdHcG4HA>
X-ME-Received: <xmr:lGxVYlJATpZ0jAtscr9D2_9svT2HJPwYpFMVoGSN1cW8rj95jtaLkC_ujYICwpOwXlyjimugDM36t_7mINGxX3WYEGuTL2H6>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekkedggeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepveeuheejgfffgfeivddukedvkedtleelleeghfeljeeiue
    eggeevueduudekvdetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
    lhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:lGxVYhF7lvnexFnhw1BvSoAD6DbDaFkpWyI8GR29UVSD6Wmt3Io3Xg>
    <xmx:lGxVYpVwk-UbfX40rFUQturb8-CtngDohAHJfSjcRkZLCjzSe9HP0Q>
    <xmx:lGxVYsNpL7dorMpHN6DdQtKZOojTcReR9Y4mzW1ccXabNLeGgbXKuQ>
    <xmx:lGxVYqdVMFzl-O0R6O2WNnAVc7cdnlsLPEyGlDKPdI9PCyMi4KRutw>
Date: Tue, 12 Apr 2022 14:12:02 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <YlVskpTa7twfTtwK@kroah.com>
References: <CAH5WSp6-nveUGNR8cEdXbFQs0m3AsDmhoN9sDx+WXfn2JsdjHg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH5WSp6-nveUGNR8cEdXbFQs0m3AsDmhoN9sDx+WXfn2JsdjHg@mail.gmail.com>
Subject: Re: [oss-security] Linux kernel: A concurrency use-after-free
 between drm_setmaster_ioctl and drm_mode_getresources

On Tue, Apr 12, 2022 at 07:42:04PM +0800, Minh Yuan wrote:
> Hi guys,
> 
> We recently discovered a concurrency uaf in drm of the latest kernel
> version (Linux 4.19.237).

Note, this issue is not a problem for kernel versions 5.15 and newer,
the relevant commits have not yet been backported to older stable kernel
trees.  I have a list (as does the author of this report) of the needed
commits if anyone wishes to help in backporting (and testing.)

5.10.y and 5.4.y have some of the needed changes (as does 4.19.y), but
not all of them, so I do not know if the reproducer works on those trees
at this point in time.

> int fd1 = open("/dev/dri/card0",0);
> fd = open("/dev/dri/card0",0);

Also note that this issue requires access to these device nodes.

thanks,

greg k-h
