X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["615" "Friday" "19" "January" "2018" "14:58:37" "+0100" "Greg KH" "greg@kroah.com" "<20180119135837.GA1212@kroah.com>" "16" "Re: [oss-security] How to deal with reporters who don't want their bugs fixed?" "^Date:" nil nil "1" "2018011913:58:37" "[oss-security] How to deal with reporters who don't want their bugs fixed?" (number mark "        greg@kroah.c Jan 19   16/615   " thread-indent "\"Re: [oss-security] How to deal with reporters who don't want their bugs fixed?\"\n") "<CA+-XxSE1d+8b7cbfs7BknJQ9yy7w4sw=0EVwf=gpz43JAVWyhQ@mail.gmail.com>" ("<20180118220124.GA9185@openwall.com>" "<efa92101-facb-84ff-7582-78583e8c7381@hpe.com>" "<CA+-XxSE1d+8b7cbfs7BknJQ9yy7w4sw=0EVwf=gpz43JAVWyhQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15683 invoked by uid 550); 19 Jan 2018 13:58:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15656 invoked from network); 19 Jan 2018 13:58:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=zO+x/dyRRjkyOCSbII04M/3OPWw1S
	++4koM+OmwaLlc=; b=FyTURWSc1TYMxy0UZi3h7gNIUevv8AmXiDNwahd57ozqN
	WUKF9rl938y2kUAyPUIq8N6oA4FtkMub8aVZ2vVkFSl7AcYv6cogFo3sd0ZbRhW3
	0V15ZvosdbN5z3sx3ZRphIGsMuGEXVRTxBaB1jqOCvsQDYw0OWvD6Hsz1vYRCUVe
	bdGdWhuvlz/vuIS0NX8EPDmko85Wgpln6Iu1kQM15X0Vs0l5GzzvfmwLb+AEA4IP
	uCmjon7NxdJysVapIGhefU5o14fzhX04/8l6taLndo3K1/JGE04iECecnF2xe73y
	iugZQw9AL6at5skw9QQ0AzmAtcxekFos3hKrPXGLg==
X-ME-Sender: <xms:k_lhWpLBPPJxpUrCDuxkyxp52_hg0HKQx8lecdcieBJhAWlR-j_vLw>
Message-ID: <20180119135837.GA1212@kroah.com>
References: <20180118220124.GA9185@openwall.com>
 <efa92101-facb-84ff-7582-78583e8c7381@hpe.com>
 <CA+-XxSE1d+8b7cbfs7BknJQ9yy7w4sw=0EVwf=gpz43JAVWyhQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+-XxSE1d+8b7cbfs7BknJQ9yy7w4sw=0EVwf=gpz43JAVWyhQ@mail.gmail.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
Date: Fri, 19 Jan 2018 14:58:37 +0100
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to deal with reporters who don't want their
 bugs fixed?
To: oss-security@lists.openwall.com

On Fri, Jan 19, 2018 at 05:22:58AM -0800, i@cloudlinux.com wrote:
> We have seen "semi-public" with Meltdown -- I think it was dreadful. I
> would prefer private to "semi-public" any day.

Meltdown was not semi-public, it was private and siloed and a whole
bunch of other horrible things.  If it were semi-public, we would have
had it fixed sooner :)

And yes, a number of us involved are probably going to be writing up a
post-mortum of that whole horrid affair, feel free to let me know if
anyone wants to help out with it.  I think it's a great example of what
not to ever do in the future...

thanks,

greg k-h
