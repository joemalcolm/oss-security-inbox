X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["211" "Tuesday" "25" "August" "2015" "11:13:55" "-0500" "Mark Felder" "feld@feld.me" "<1440519235.1817961.365674337.0BC4CF7A@webmail.messagingengine.com>" "9" "Re: [oss-security] Several low impact ntp.org ntpd issues" nil nil nil "8" "2015082516:13:55" "[oss-security] Several low impact ntp.org ntpd issues" (number mark "        feld@feld.me Aug 25    9/211   " thread-indent "\"Re: [oss-security] Several low impact ntp.org ntpd issues\"\n") "<55DC3431.6000008@redhat.com>" ("<55DC3431.6000008@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19954 invoked by uid 550); 25 Aug 2015 16:14:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19931 invoked from network); 25 Aug 2015 16:14:07 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=Yo0HITdmWJKwOxjKuvaUSrao2Nc=; b=gJXl4q
	+CxkPXixstMXkXJQ58wgbnpjD68gPCSnxrHfJdvrR2Gu19RoP6XTgis1rTYSHa+a
	GItotCOweHxbkw5/VZjNOX5gbhGSBhg/KMkwfMnhW+mspYs/58/N6nsvSzwVIsKv
	AkvpBNdLMvbNOQYKFTo/58fjpzqWZozZnYA2M=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=Yo0HITdmWJKwOxj
	KuvaUSrao2Nc=; b=FQdPgKuvYm1A4/s2fHjO+jPUxOQmPnMJn2pAnCOX1DiyfYG
	LBgliM2Q7s839erEfNpbZzdkGMwp1cjpjo4NAnm9Nf3qcEySfyIgJy47HNux1ziM
	gC+qJUdTP6gzMOy47PyKJc5tQT3r15U2bC5QLbke0NKld1LJDGaHcQS4YRsw=
Message-Id: <1440519235.1817961.365674337.0BC4CF7A@webmail.messagingengine.com>
X-Sasl-Enc: +EP5fq/IFBztNhRsMx61mgjwEHBCXltE0ibbIBu2pOps 1440519235
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-4500bf93
In-Reply-To: <55DC3431.6000008@redhat.com>
References: <55DC3431.6000008@redhat.com>
Date: Tue, 25 Aug 2015 11:13:55 -0500
From: Mark Felder <feld@feld.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Several low impact ntp.org ntpd issues
To: oss-security@lists.openwall.com



On Tue, Aug 25, 2015, at 04:24, Florian Weimer wrote:
> 
> (Impact may be higher if ntpd runs with root privileges.)
> 

Doesn't ntpd have to run as root to steer the clock? Are there any OSes
where it's not?
