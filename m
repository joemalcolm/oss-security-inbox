X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["500" "Monday" "13" "April" "2015" "10:17:27" "-0500" "Mark Felder" "feld@feld.me" "<1428938247.1254338.253090497.164C53F0@webmail.messagingengine.com>" "15" "Re: [oss-security] CVE request: freebsd/sh stack overflow vulnerability" nil nil nil "4" "2015041315:17:27" "[oss-security] CVE request: freebsd/sh stack overflow vulnerability" (number mark "        feld@feld.me Apr 13   15/500   " thread-indent "\"Re: [oss-security] CVE request: freebsd/sh stack overflow vulnerability\"\n") "<CAEQi4beSswmoiqOsGHDH8U6rqWDXtyNgHnMmKrYsh+PhZ9PxMw@mail.gmail.com>" ("<CAEQi4beSswmoiqOsGHDH8U6rqWDXtyNgHnMmKrYsh+PhZ9PxMw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32317 invoked by uid 550); 13 Apr 2015 15:17:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32298 invoked from network); 13 Apr 2015 15:17:39 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=liGDy2jCeYiRUCuClehxcCo6NWU=; b=Zz8VMY
	/dW9/DTtYpnZwzdOp7ggio12gS1cwYV93U3BFYmKkRnWpll4EU5q7FYqwjdg1VGV
	x2CwnJmVKigTIOEuCp8N9nFXIwwv4aXfdGKIZBBP9Lj5byV6MYgBUE2tK1ADfz26
	3QITrpVlou5YNHYJiY3uku+K5vh/qrA+7Pf4o=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=liGDy2jCeYiRUCu
	ClehxcCo6NWU=; b=QJEjMOz7gw/ydjkBoaXYqqjcWaOPCoo8s1jehtYINEzd91A
	GV8AtAt6QTU5UkKEQ6dOnz0uf26HwT+kZicQFw5OJSTMVVM0GxfHrHNgIgcJfOMr
	SrcMd8ISg5Rv+/LlusCNgyGVVIaZxH4ax7XBidinId+0Q+sBUAdTwKqvpKio=
Message-Id: <1428938247.1254338.253090497.164C53F0@webmail.messagingengine.com>
X-Sasl-Enc: Yy0w1HwFVk+i/fijimwfmHjlhkuMH7iZAlY3C3M/nbpZ 1428938247
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Mailer: MessagingEngine.com Webmail Interface - ajax-0b3c2300
In-Reply-To: <CAEQi4beSswmoiqOsGHDH8U6rqWDXtyNgHnMmKrYsh+PhZ9PxMw@mail.gmail.com>
References: <CAEQi4beSswmoiqOsGHDH8U6rqWDXtyNgHnMmKrYsh+PhZ9PxMw@mail.gmail.com>
Date: Mon, 13 Apr 2015 10:17:27 -0500
From: Mark Felder <feld@feld.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: freebsd/sh stack overflow vulnerability
To: oss-security@lists.openwall.com



On Tue, Mar 31, 2015, at 05:42, wzt wzt wrote:
> hi=EF=BC=9A
>     I found sh have a stack overflow bug on freebsd(9.0-10.0),  it may be
> triggered on all freebsd systems, but i have not tested yet. the poc
> below
> is tested on freebsd10.0 amd64 arch:
>=20

I brought this to the attention of jilles@, the current sh(1) maintainer
in FreeBSD. He responded:

"Since unset command is equivalent to unset -v command in our sh, this
is equivalent to sh -c 'f() { f; }; f', and not a vulnerability."
