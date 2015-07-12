X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["414" "Sunday" "12" "July" "2015" "15:07:23" "-0500" "Mark Felder" "feld@feld.me" "<1436731643.387238.321761353.0709E5EF@webmail.messagingengine.com>" "15" "Re: [oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow" nil nil nil "7" "2015071220:07:23" "[oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow" (number mark "        feld@feld.me Jul 12   15/414   " thread-indent "\"Re: [oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow\"\n") "<CAEr-gPECMXMc6S79EEHOfSKfGCkSLrNDd1FJcC8DxWu_ipWxeQ@mail.gmail.com>" ("<CAEr-gPENyN7yex+Ra7UWMaLTAzVKA+9+YNX=H7jcY4G6CsfPLQ@mail.gmail.com>" "<CAEr-gPHWcYrk2+JCLYGQsDbTTh5OH94tMBQejjt3sbP_f9p2Xw@mail.gmail.com>" "<CAEr-gPECMXMc6S79EEHOfSKfGCkSLrNDd1FJcC8DxWu_ipWxeQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7588 invoked by uid 550); 12 Jul 2015 20:07:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7563 invoked from network); 12 Jul 2015 20:07:37 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=0RxNN/QNzKfj6bFvxncb/M9I7p8=; b=oC0m1o
	cza/JYe9zYG4iDyoR8qR6LeVNQZJPvf/sQa2v/GuI739S6MN0Y/q3WPtlPUVVuf1
	2VAgpI43aYRslS8FpDByhNDunuTjzsWRlrbyw7IzIHeeO29gpB0tl93321X5KjpY
	Q5rvOJfv9aJepF8E8m0Nhyfh/dcTcVHqkOhyU=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=0RxNN/QNzKfj6bF
	vxncb/M9I7p8=; b=GnQYUxk0+RHqBXGs2YxTq95w4TNbqDPSjA4CJoFIVngy/5F
	Nl1qhZKWhj1y1lan5E5Am8H76zubRJ7m0SvJNpNVFAT4tzbCLMT1HjLzEHTab/Xe
	MrVR7EOuKwQGU/7LwDdCsPSJxuubrYsFqjFnE9Wik/Yhs1CiyiaCMzVVHsAQ=
Message-Id: <1436731643.387238.321761353.0709E5EF@webmail.messagingengine.com>
X-Sasl-Enc: jxk2cxeRs9EZ/GOSLyI8UHcqUt+KejYBafXz7UhJ/H7z 1436731643
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: MessagingEngine.com Webmail Interface - ajax-bfc056ae
In-Reply-To: <CAEr-gPECMXMc6S79EEHOfSKfGCkSLrNDd1FJcC8DxWu_ipWxeQ@mail.gmail.com>
References: <CAEr-gPENyN7yex+Ra7UWMaLTAzVKA+9+YNX=H7jcY4G6CsfPLQ@mail.gmail.com>
 <CAEr-gPHWcYrk2+JCLYGQsDbTTh5OH94tMBQejjt3sbP_f9p2Xw@mail.gmail.com>
 <CAEr-gPECMXMc6S79EEHOfSKfGCkSLrNDd1FJcC8DxWu_ipWxeQ@mail.gmail.com>
Date: Sun, 12 Jul 2015 15:07:23 -0500
From: Mark Felder <feld@feld.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request - tidy 0.99 / tidy5
 heap-buffer-overflow
To: oss-security@lists.openwall.com



On Fri, Jul 10, 2015, at 19:45, Fernando Mu=F1oz wrote:
> I'm sorry, should I just give up about trying to get a CVE here?
>=20
> I've just noticed this issue is also being tracked at Red Hat at the
> moment:
>=20
> https://bugzilla.redhat.com/show_bug.cgi?id=3D1228297
>=20
> - F

FreeBSD has a vuxml entry for this vulnerability as well.

http://www.vuxml.org/freebsd/bd1ab7a5-0e01-11e5-9976-a0f3c100ae18.html
