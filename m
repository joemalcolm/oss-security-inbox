X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["88" "Tuesday" "16" "August" "2016" "12:46:05" "+0200" "Greg KH" "greg@kroah.com" "<20160816104605.GA28026@kroah.com>" "6" "Re: [oss-security] Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master" "^Date:" nil nil "8" "2016081610:46:05" "[oss-security] Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master" (number mark "        greg@kroah.c Aug 16    6/88    " thread-indent "\"Re: [oss-security] Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master\"\n") "<CAFkTriJ7-kN_KH-pOJCDkZHen=6uiJKhL775PTV17zcX-YMHSQ@mail.gmail.com>" ("<CAFkTriL_5WgBrDLLujB=83-RXNYFW3bhNxi6Dr99vKnob_M3Rg@mail.gmail.com>" "<20160815075453.GE6359@kroah.com>" "<CAFkTriKKuwHjAMgY7N6OCt2p=8SYL_coQFy+rXy1PzksF2+uyA@mail.gmail.com>" "<20160815083632.GA1172@kroah.com>" "<CAFkTriJ7-kN_KH-pOJCDkZHen=6uiJKhL775PTV17zcX-YMHSQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9951 invoked by uid 550); 16 Aug 2016 10:46:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9933 invoked from network); 16 Aug 2016 10:46:06 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=OTTx1zD0PozteD03S7McVzA15U8=; b=WTnvI
	jvkcLgCNg6FatT9S8xzbqQFbmW9Vlke25BvCET+8ErKoArlYB8WZXufbMqxMqI8Z
	7UkUHCbF4UWse72aDpnL2Nb0/AbgYelIsrKT2fwHc7yt2qx/tWMH/6Sis7F8/3+I
	l3yD5yG9O+U/BMVKqnhP81m91xO3Jz2wmW94Rg=
X-Sasl-enc: jTSBn814GrwS1qHysV9xhwt3fGVyIxwale3wdJfGoMQQ 1471344354
Message-ID: <20160816104605.GA28026@kroah.com>
References: <CAFkTriL_5WgBrDLLujB=83-RXNYFW3bhNxi6Dr99vKnob_M3Rg@mail.gmail.com>
 <20160815075453.GE6359@kroah.com>
 <CAFkTriKKuwHjAMgY7N6OCt2p=8SYL_coQFy+rXy1PzksF2+uyA@mail.gmail.com>
 <20160815083632.GA1172@kroah.com>
 <CAFkTriJ7-kN_KH-pOJCDkZHen=6uiJKhL775PTV17zcX-YMHSQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFkTriJ7-kN_KH-pOJCDkZHen=6uiJKhL775PTV17zcX-YMHSQ@mail.gmail.com>
User-Agent: Mutt/1.6.2 (2016-07-01)
Date: Tue, 16 Aug 2016 12:46:05 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux tcp_xmit_retransmit_queue use after free on
 4.8-rc1 / master
To: oss-security@lists.openwall.com

On Mon, Aug 15, 2016 at 04:37:31PM +0800, Marco Grassi wrote:
> yes please

Now done.


