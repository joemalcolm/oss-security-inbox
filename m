X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["341" "Monday" "15" "August" "2016" "10:36:32" "+0200" "Greg KH" "greg@kroah.com" "<20160815083632.GA1172@kroah.com>" "12" "Re: [oss-security] Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master" "^Cc:" nil nil "8" "2016081508:36:32" "[oss-security] Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master" (number mark "        greg@kroah.c Aug 15   12/341   " thread-indent "\"Re: [oss-security] Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master\"\n") "<CAFkTriKKuwHjAMgY7N6OCt2p=8SYL_coQFy+rXy1PzksF2+uyA@mail.gmail.com>" ("<CAFkTriL_5WgBrDLLujB=83-RXNYFW3bhNxi6Dr99vKnob_M3Rg@mail.gmail.com>" "<20160815075453.GE6359@kroah.com>" "<CAFkTriKKuwHjAMgY7N6OCt2p=8SYL_coQFy+rXy1PzksF2+uyA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10238 invoked by uid 550); 15 Aug 2016 08:36:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10220 invoked from network); 15 Aug 2016 08:36:33 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=/O+1mn7jvcXjYHz8ccfKaEA1tTA=; b=GJdY9
	yE/hEIbWxY3RjCyd0IEicinRlpJ6LCW1GAgdg4FmLQunQhExaExspj6vDlqphoMV
	foOUkycp3X0YVmxA6zHgrkI0f2MGY/oVCQVnz33DlgqApiidSJUBJG4nggBmrCL6
	CAQ5TShElXfnNJ6GzlBF41qgDh0RZgUTAroBeI=
X-Sasl-enc: ZZw4DXP3zZ0OhePNlgczbHqeYn/6xy8hFbiw+U9vJnA9 1471250181
Message-ID: <20160815083632.GA1172@kroah.com>
References: <CAFkTriL_5WgBrDLLujB=83-RXNYFW3bhNxi6Dr99vKnob_M3Rg@mail.gmail.com>
 <20160815075453.GE6359@kroah.com>
 <CAFkTriKKuwHjAMgY7N6OCt2p=8SYL_coQFy+rXy1PzksF2+uyA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFkTriKKuwHjAMgY7N6OCt2p=8SYL_coQFy+rXy1PzksF2+uyA@mail.gmail.com>
User-Agent: Mutt/1.6.2 (2016-07-01)
Cc: cve-assign@mitre.org
Date: Mon, 15 Aug 2016 10:36:32 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux tcp_xmit_retransmit_queue use after free on
 4.8-rc1 / master
To: oss-security@lists.openwall.com

On Mon, Aug 15, 2016 at 04:10:57PM +0800, Marco Grassi wrote:
> I just tried several times, but there is some filter that doesn't get along
> well with the content or with my gmail.
> 
> The message keeps not getting delivered.

You can't send html email to the vger.kernel.org lists.  If you want, I
can forward this on.

thanks,

greg k-h
