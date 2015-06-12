X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1091" "Friday" "12" "June" "2015" "14:46:57" "-0400" "Colin Walters" "walters@verbum.org" "<1434134817.2401034.294147457.50394F3B@webmail.messagingengine.com>" "29" "[oss-security] Re: CVE request for polkit" nil nil nil "6" "2015061218:46:57" "[oss-security] Re: CVE request for polkit" (number mark "        walters@verb Jun 12   29/1091  " thread-indent "\"[oss-security] Re: CVE request for polkit\"\n") "<1433793978.2356598.290097129.7DC53180@webmail.messagingengine.com>" ("<20150608194405.113338BC0D4@smtpvmsrv1.mitre.org>" "<1433793978.2356598.290097129.7DC53180@webmail.messagingengine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28150 invoked by uid 550); 12 Jun 2015 18:47:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28132 invoked from network); 12 Jun 2015 18:47:10 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=yPRn7/aGqOuVlet
	jAPUVwJs7J7Y=; b=lc3WXhUdTBO/tpNPvoSDz9xmu1vH0M+NLTbDVUPX2HP/00a
	lAxrqx13kdCySD6yFqfDAfJFVsE11GAHzWiGxsYcJ4nnoMIasZlYzjxW1QocY0tz
	DWVfW5rUqL2VegTgXjx7v0cXvj24mNVlSa5fbXXD1QvaWk7mtq6JeGtzTvos=
Message-Id: <1434134817.2401034.294147457.50394F3B@webmail.messagingengine.com>
X-Sasl-Enc: R8LQVCBG71l/U78ltuG6XsrKcAJ86YsanFe5VARs9WYL 1434134817
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-ff004c4b
In-Reply-To: <1433793978.2356598.290097129.7DC53180@webmail.messagingengine.com>
References: <20150608194405.113338BC0D4@smtpvmsrv1.mitre.org>
 <1433793978.2356598.290097129.7DC53180@webmail.messagingengine.com>
Cc: oss-security@lists.openwall.com,
 =?utf-8?Q?Miloslav=20Trma=C4=8D?= <mitr@redhat.com>
Date: Fri, 12 Jun 2015 14:46:57 -0400
From: Colin Walters <walters@verbum.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for polkit
To: cve-assign@mitre.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512


Hi,

On Mon, Jun 8, 2015, at 04:06 PM, Colin Walters wrote:
>
> > For purposes of CVE, we may be able to model this as a situation in
> > which the (realistically exploitable) counter wraparound is a clear
> > implementation error and can have a CVE ID,

I'm sure you're busy and I don't want to bother too much, but is
there an approximate time by which we could expect a CVE assignment?
We'd like to get an update out relatively soon, since the issue is public.

Is there any more information needed from us?

Thanks in advance for the help (and maintaining a very critical service!)
-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVeykdAAoJENxF/VkhwT8LZ/YH/1ibT5eSOOzEpxtUO9gJgov3
YSJcpzXGbiBetS2oKBjGLbljwuwwLNS8dOaC+n/yomfmWhB9IpFgRHfmpW0P5TpA
QsjrOMiOHY64rXsTDatqxJLUvVWcjdubS+9NSd70Wl5EwwQm7Wd1/Ja09VeFvs3a
zsZE8nq8P4Lr77ZssW1CG3ja2BCxaOtm7cmdPyuVmlVQWog0KVI2ItPNWMG/qBs1
egegU7XHCG5dtie8agoRDPZJSMczIuDFOgC1LoD+QKcFi5Ne58Jo85NkD8vWViQ6
GWDs9jbEzLtrCT37aNLP/crZvyaSJYuTPaxSvgWqpaHt3ipCBSPHY3s44qTpP6w=
=FHHB
-----END PGP SIGNATURE-----
