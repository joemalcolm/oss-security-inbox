X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1282" "Monday" "21" "September" "2015" "09:53:37" "-0700" "Greg KH" "greg@kroah.com" "<20150921165337.GA17627@kroah.com>" "27" "Re: [oss-security] s/party/hack like it's 1999" nil nil nil "9" "2015092116:53:37" "[oss-security] s/party/hack like it's 1999" (number mark "        greg@kroah.c Sep 21   27/1282  " thread-indent "\"Re: [oss-security] s/party/hack like it's 1999\"\n") "<20150921164346.GA11060@netbsd.org>" ("<20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>" "<CAJWnFaP4QGvJxsJes7fmud787xG=vuh+AFiYPh79kiSLOe-rOA@mail.gmail.com>" "<20150919233415.GA31305@openwall.com>" "<20150920022811.GJ17773@brightrain.aerifal.cx>" "<20150920032631.GA2301@openwall.com>" "<20150921164346.GA11060@netbsd.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24394 invoked by uid 550); 21 Sep 2015 16:54:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24368 invoked from network); 21 Sep 2015 16:54:13 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=fS8duewSQvslyoaOvp4tSfcQRIw=; b=JgV/r
	2ZEsrnqeRTOAA8a2pKnGQOm8dOIFseiVV1yxIc2pelbl9U106LEtLZZx9MS7Y9Rj
	MWzcRyF76EjrZStruQUC8R56chtTK7h75ZiVc8cs1zTYnBaBp0G84NHSXGQBYXYk
	Z120ExXU1XPsdr56wWyiPz8H6gdr7Wr1GjDEVQ=
X-Sasl-enc: ihlx4lLNrW+p/QxTXdtI1RVgXSNag2IZMyyNqb1hbRP8 1442854441
Message-ID: <20150921165337.GA17627@kroah.com>
References: <20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>
 <CAJWnFaP4QGvJxsJes7fmud787xG=vuh+AFiYPh79kiSLOe-rOA@mail.gmail.com>
 <20150919233415.GA31305@openwall.com>
 <20150920022811.GJ17773@brightrain.aerifal.cx>
 <20150920032631.GA2301@openwall.com>
 <20150921164346.GA11060@netbsd.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150921164346.GA11060@netbsd.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Mon, 21 Sep 2015 09:53:37 -0700
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] s/party/hack like it's 1999
To: oss-security@lists.openwall.com

On Mon, Sep 21, 2015 at 04:43:46PM +0000, David Holland wrote:
> On Sun, Sep 20, 2015 at 06:26:31AM +0300, Solar Designer wrote:
>  > > Note that all that was needed for this to happen was for a stray C2
>  > > byte from one writer to get injected just before the character-final
>  > > 9B byte of a multibyte character from another writer. I specifically
>  > > chose my example so that both writers output data which is well-formed
>  > > and printable UTF-8, but that was not necessary.
>  > > 
>  > > Since I see no reasonable application-side mitigation for this, I
>  > 
>  > Yeah.  A user's mitigation may be to avoid running multiple programs at
>  > a time on a UTF-8 terminal.  E.g. running "ps &" appears unsafe
>  > (although is indeed unlikely to actually be used in a successful
>  > attack), even if "ps" replaces control characters with question marks.
> 
> I have been arguing for years (but without success) that vt bomb
> injection needs to be blocked in the tty driver. This problem
> (corruption of concurrent UTF-8 streams) needs to be too, as a matter
> of correctness and not even security.

How exactly would a tty driver "block" anything like this?  A tty driver
never looks at the data stream in the kernel, as that way lies
madness...

thanks,

greg k-h
