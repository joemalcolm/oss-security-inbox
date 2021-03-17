X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["634" "Wednesday" "17" "March" "2021" "16:17:05" "+0100" "Greg KH" "greg@kroah.com" nil "19" "Re: [oss-security] CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       greg@kroah.c Mar 17   19/634   " thread-indent "\"Re: [oss-security] CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23856 invoked by uid 550); 17 Mar 2021 15:17:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23838 invoked from network); 17 Mar 2021 15:17:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=LFuVzeti/Nx8m1vdpiOKKo44AFG
	jKWvNMMuVOozUhGs=; b=a/Kyh5GKz3Yh7ucDzkgp0FkIacmjCNSC5BT6Se7VvLB
	JoKyRqcLRXmVfbzi9P5CZKZ/JausY7BzVpYFwD+aaRvlCm5NY9Htv5+jb4CAgXaW
	dWwx8HqIyWyOjkAdH6i51FuO0z57YrBk3Wg1Qfl4yvqu98Gg1YoeyIdqv9YLYKCX
	Bk45yACLnTeBFIfi6pOtvNjrhUkYF2575Q4aY7G0XGsnuwMermEJxRhcgbLBBe8+
	Z41+Cmhy0qsE7g2Y403VC3S3ROOGV+SOsc1NWIhoaY7DwPMJHiz9XfqekiHhYfX8
	o5vqCvuGgAw8b9BJw+ifPjlpT7ozdgxfLriuqB/ZbTw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=LFuVze
	ti/Nx8m1vdpiOKKo44AFGjKWvNMMuVOozUhGs=; b=YJ5WrP53+L+q4Uxnve78Kz
	HINPCjJsEQhPU2gYJI728vkSllUVnFL/JJXJgGpE83y6H8IqLwKomN/KP5qSBlsY
	2Ry/9NCj82ixBZ1ugTAu4Wnhd55rKitNjYpzTmqq2iUm3PjklD0cEkYLv9UNK5MI
	rEpX5Fu8y6gtndSQf+UakEA/LaXIS/cFcJvCzI7YfPerkRRJ94qkwMbGtPtYBJa2
	urBsUU7PjKS5fj23vhQQsJLIvDzIgU/3OAAOyK9eby6FmM8QfU5Cs50c+39pP30D
	TvAKwPFeGEhU189o87bYgy7a8ht/O+MdCRDOzE5saXvQYLWled0BqL95mzF1kncw
	==
X-ME-Sender: <xms:dB1SYMikmUKvtlJKxi9JAhmcAGotYwnGDv7UjUrsqaFhEcUDvx55ZA>
    <xme:dB1SYN9Wnaex9MXY_F2v2oaOkKYaq-nVHBCzpE9NiG2IPjzvMBSTDO5NAfDKe3qXT
    LxPCD0bl-R-pw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefgedgjeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepveeuheejgfffgfeivddukedvkedtleelleeghfeljeeiue
    eggeevueduudekvdetnecukfhppeekfedrkeeirdejgedrieegnecuvehluhhsthgvrhfu
    ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtoh
    hm
X-ME-Proxy: <xmx:dB1SYGBCNs8O1Bca2G-ol5KngHl2EX79JdXqQlWZ0vl7d0yzLTykbA>
    <xmx:dB1SYKI10UXSoZFDb7TEUXT-OHuHeQCYHOoS5shGBOjqwyPhL8E67g>
    <xmx:dB1SYJlZbU8aS9_5yUrZbh5aZiTbNSJAt7blAeorEQUd4rs9b955aA>
    <xmx:dR1SYIFdATqzfrdnrhHMjI_VI5XUDm-5xY5tpElkr-f59ouCalcSOQ>
Date: Wed, 17 Mar 2021 16:17:05 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <YFIdcSI6NvjeqFKp@kroah.com>
References: <CAKx+4-qgvO4_R8fTqwxKLqwud42wUkG3V2POGeXE6C6Bv+zrxg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKx+4-qgvO4_R8fTqwxKLqwud42wUkG3V2POGeXE6C6Bv+zrxg@mail.gmail.com>
Subject: Re: [oss-security] CVE-2021-20219 Linux kernel: improper
 synchronization in flush_to_ldisc() can lead to DoS

On Wed, Mar 17, 2021 at 07:45:59PM +0530, Rohit Keshri wrote:
> Hello Team,
> 
> A denial of service vulnerability was found in n_tty_receive_char_special
> in drivers/tty/n_tty.c of the Linux kernel.  In this flaw a local attacker
> with a normal user privilege could delay the loop (due to a changing
> ldata->read_head, and a missing sanity check) and cause a threat to the
> system availability.
> 
> 'CVE-2021-20219' was assigned by Red Hat.
> 
> Acknowledgements: Evgenii Shatokhin (Virtuozzo Research LLC)

Really?  Not the tools or people that reported this issue and fixed it
in the community back in 2018?

{sigh}

greg k-h
