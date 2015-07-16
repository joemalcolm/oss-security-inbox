X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["284" "Thursday" "16" "July" "2015" "14:33:43" "-0500" "Mark Felder" "feld@feld.me" "<1437075223.2577435.325653033.63304E89@webmail.messagingengine.com>" "19" "Re: [oss-security] libav: divide-by-zero in ff_h263_decode_mba()" nil nil nil "7" "2015071619:33:43" "[oss-security] libav: divide-by-zero in ff_h263_decode_mba()" (number mark "        feld@feld.me Jul 16   19/284   " thread-indent "\"Re: [oss-security] libav: divide-by-zero in ff_h263_decode_mba()\"\n") "<13202626.As8AotmUy7@willoughby>" ("<13202626.As8AotmUy7@willoughby>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16278 invoked by uid 550); 16 Jul 2015 19:33:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16260 invoked from network); 16 Jul 2015 19:33:55 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=bWjoCyKPWGBaxQ9H5hXREe8F80E=; b=gw1mzZ
	rcqQOGgluBxMUjIXRIvutwWMifzmFchISL7QAn4ze0GXw5TcOebSslspBH1l+3mW
	cfDMIp8LHQURTGrxSsKnh6/E6CvxlX0pjou85QKdg7WADzzqsrejl4Vo83YlbUKm
	TluTN5hYUUSdmvf+LPUUE2DXEnAtdNcXD7eDw=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=bWjoCyKPWGBaxQ9
	H5hXREe8F80E=; b=WLhzf737+7QaZetZnmbMgkRJLMEAiSwazS5Tp/u5noDkDyo
	Wk2rOoQ+oEMkW3/FzVVdjpeY6zzIoayXl/kJxKlOewHKDoITmzQX7wMqkFgNKwf7
	YgYqeod/bUJJbEEW+EW1MnRF/7L2t1VasXcidCwNLT9nDWi+hJppNzAv1PFc=
Message-Id: <1437075223.2577435.325653033.63304E89@webmail.messagingengine.com>
X-Sasl-Enc: ZMSNESlkaY6ccR7TsKGYu3MtAo21vsGZlsASnyqEkm5j 1437075223
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-63a5d8c6
In-Reply-To: <13202626.As8AotmUy7@willoughby>
References: <13202626.As8AotmUy7@willoughby>
Date: Thu, 16 Jul 2015 14:33:43 -0500
From: Mark Felder <feld@feld.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] libav: divide-by-zero in ff_h263_decode_mba()
To: oss-security@lists.openwall.com



On Thu, Jul 16, 2015, at 05:34, Agostino Sarubbo wrote:
>
> Affected version:
> 11.3 (and maybe past versions)
> 
> Fixed version:
> 11.5 and 12.0
> 

11.5 and 12.0 do not exist yet

http://libav.org/releases/

Is there a known ETA for an official release with the patch?


Thanks!
