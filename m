X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["467" "Monday" "15" "August" "2016" "09:54:53" "+0200" "Greg KH" "greg@kroah.com" "<20160815075453.GE6359@kroah.com>" "14" "Re: [oss-security] Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master" "^Cc:" nil nil "8" "2016081507:54:53" "[oss-security] Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master" (number mark "        greg@kroah.c Aug 15   14/467   " thread-indent "\"Re: [oss-security] Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master\"\n") "<CAFkTriL_5WgBrDLLujB=83-RXNYFW3bhNxi6Dr99vKnob_M3Rg@mail.gmail.com>" ("<CAFkTriL_5WgBrDLLujB=83-RXNYFW3bhNxi6Dr99vKnob_M3Rg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5449 invoked by uid 550); 15 Aug 2016 07:54:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5431 invoked from network); 15 Aug 2016 07:54:52 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=ja5LKSMd8w2Z8t+2oBV0MPKHzQM=; b=VMw4j
	JqHDQoDp3iAuYWsK1xscSGhcV7UkePmiJxHN9DPLoJy1I7keS6/bD5xJOXrQhRCb
	gtvPgXvd2LTiejdJitTtEhI85HENWke9OK66K4FSSTzhHtxkguy3wsgdRt0TroW5
	NZTGIbqUQ6XmFsIJqtcld8uhdZy0cWvXct2mSE=
X-Sasl-enc: jvDG8bfDxTt2kSi0S9LnWJ7DlELpIc6OWjeaxOa0F8MO 1471247680
Message-ID: <20160815075453.GE6359@kroah.com>
References: <CAFkTriL_5WgBrDLLujB=83-RXNYFW3bhNxi6Dr99vKnob_M3Rg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFkTriL_5WgBrDLLujB=83-RXNYFW3bhNxi6Dr99vKnob_M3Rg@mail.gmail.com>
User-Agent: Mutt/1.6.2 (2016-07-01)
Cc: cve-assign@mitre.org
Date: Mon, 15 Aug 2016 09:54:53 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux tcp_xmit_retransmit_queue use after free on
 4.8-rc1 / master
To: oss-security@lists.openwall.com

On Mon, Aug 15, 2016 at 09:20:17AM +0800, Marco Grassi wrote:
> Hello, this program will cause a use after free of read 4 in
> tcp_xmit_retransmit_queue or other tcp_ functions, often in another totally
> unrelated process.
> 
> reproducer + KASAN report is provided, tested on master available at the
> time of writing and on 4.8 rc1

Did you send this to the netdev@vger.kernel.org mailing list so that it
can get fixed?  I don't see it there :(

thanks,

greg k-h
