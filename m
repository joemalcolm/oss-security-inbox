X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["983" "Friday" "23" "November" "2018" "19:09:14" "+0100" "Greg KH" "greg@kroah.com" "<20181123180914.GA10084@kroah.com>" "26" "Re: [oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)" "^Date:" nil nil "11" "2018112318:09:14" "[oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)" (number mark "        greg@kroah.c Nov 23   26/983   " thread-indent "\"Re: [oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)\"\n") "<20181123172208.GA16585@scapa.corsac.net>" ("<20181123172208.GA16585@scapa.corsac.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21834 invoked by uid 550); 23 Nov 2018 18:09:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21808 invoked from network); 23 Nov 2018 18:09:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm2; bh=femvj3LGKWQH+niSqUu/oJaJCWb
	YoiWMv3L+STgpbEA=; b=puRJ77vczyeip1JGKBd12PDuF6x7cmPMWqiUg56sX4a
	WoqB2iBPvLaZGAoqMgih8yPglieEOTsxoJoQ8VPvOoDuvMvgBzuKSsMVkUiNcW1X
	PqWIq7JWy04/7hAUwfV+z2FNi/KbBC8sdtE3fKebNZGVyBxEYlrCapMhLSTIFHW4
	Vw24XmH85bv1sgIDyJRu9A45ErAk7Vr66A1oDPIZ1s/bC2RuH9pP69dTT9UP+Sxp
	CCiptjZClFqC2B17bsPEOM0LjvnxjGcfSxDs2GNacrvuc9D56Y4Y8D4uu1Jmlsrx
	hHW6DLc+N39BhUhTXya6FLedAibbioDuGdRLVrO/v5Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=femvj3
	LGKWQH+niSqUu/oJaJCWbYoiWMv3L+STgpbEA=; b=eEJ9bay9oAgPgmwN1kJGSK
	1gQrWy7PdpjYVaiMTkkzx0PvRt66OGW4OgFprIzHThqTDVq82WoaY/BYv7oAxtVJ
	sjw9CIKWUT2evgbnfcLsVYM4oWtQcw1RSlweaMCjPZ7pBqdnlD1iCtkQV5/4SBXY
	BCf1THc4pTbwxoHU2ouhjn+Vg4Rb6t1E7w6XpPnu/e0VYibYZbJ9CsJIKtkJK6Q8
	WmgyXT/Yw5OJCflDq2Bnt76ofzN3pJUtqeLcf6JbXrVxKMtrQ/JlFMNgOhFj2sHH
	FKUT+a/rp2CR8HOxPdJW7s7GdFnaq99YLRp59NrXJM4pNshEz+n3CCKfDHorSRVA
	==
X-ME-Sender: <xms:TEL4Wx23L33ZkVdmJm5sQzxCbd4K9Qmuq3wjbzey23nIrZMo7J8Mfg>
X-ME-Proxy: <xmx:TEL4W87MDySXypiowp36EIffipSWlEZ6F4HnGcFp1NgEp9jSRXqzqw>
    <xmx:TEL4WxM2NfXDms6aDZeehmQ7rT5k1wGTx6FasPjbw-ea91DT52Mt7w>
    <xmx:TEL4W_jB-JejMOerbUMNoo7X3HE1pZiFopf5GTPxpsNbWix-NIg7ag>
    <xmx:TEL4W3iwnkhQe3h1fIxM_XKHFBYiDR6GP78gtbwA4yYZ2Qy0zgVzfQ>
    <xmx:TEL4W2E2kYzIOkql6COTepDX3p1qQ7NPLX1STNhNvfnkhHVAlkiLMg>
    <xmx:TEL4W60mgAQwwExSyGvEfGCJsaTHYQt43R5zKMUCRpAyAfe1CKh2Kw>
Message-ID: <20181123180914.GA10084@kroah.com>
References: <20181123172208.GA16585@scapa.corsac.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181123172208.GA16585@scapa.corsac.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Fri, 23 Nov 2018 19:09:14 +0100
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] fwd: [vs-plain] Kernel heap overflow in bpf
 leading to LPE (exploit provided)
To: oss-security@lists.openwall.com, Wei Wu <ww9210@gmail.com>

On Fri, Nov 23, 2018 at 06:22:09PM +0100, Yves-Alexis Perez wrote:
> Hi list,
> 
> we were notified on the Linux distros list of a vulnerability in the bpf
> subsystem of the Linux kernel.
> 
> I asked the reported (Wei Wu) if security@k.o had been notified, and
> this was done in the following mail, leading Eric Dumazet to suggest
> posting this on netdev.
> 
> In turn, this has been done just afterwards [1] so the issue is now
> public. According to the linux-distros list policy, the original
> reporter should also have made the issue public here, but failed to do
> that.
> 
> I'm posting this right now in order to raise awareness for the
> distributions already including 4.19 in a supported release.

As was discussed further on one of the threads on this topic, it looks
like this is a 4.20-rc issue only, and that 4.19 does not have this
issue.  So it might not be relevant to any distro at all, but I suggest
that people test themselves to be sure.

thanks,

greg k-h
