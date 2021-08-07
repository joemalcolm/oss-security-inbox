X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["941" "Saturday" "7" "August" "2021" "13:53:28" "+0100" "Stuart Henderson" "stu@spacehopper.org" nil "33" "Re: [oss-security] Re: bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil "8" nil nil (number mark "U       stu@spacehop Aug  7   33/941   " thread-indent "\"Re: [oss-security] Re: bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28113 invoked by uid 550); 7 Aug 2021 12:53:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28092 invoked from network); 7 Aug 2021 12:53:39 -0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3e; t=1628340808; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=XeNr+5wO42g8UHgE2kxxLkYR26E+W1ae8LFFf31KyT8=;
	b=Gnud2edbbzJ9/4HzkoTtKmmG5hf7R5j95sBpoGuhTG/q+/6LNs7BXE4KRyJdawd1G1ATkA
	zVDeSIjdUdoXCODA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1628340808; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=XeNr+5wO42g8UHgE2kxxLkYR26E+W1ae8LFFf31KyT8=;
	b=F+XUV3p4QnbQCVDkF/ME1oa44oolWG9azCAYSF8+p3DBnDJWR0pJuxO3SSRm/iBpHR46xe
	ompkTT/4WzebuHNrsE10LbklP8MzAtNbhJMnihh5UELlc2w5Rk2q9k6freFpe2fE4k5n5e
	hK1oeG0NnEqDThe7oRdcGhKDLezBwo4OSK6pVRlDynwn3M5iEX5cfrBXojkeJ8bW9JjLC+
	oc+Xbrd67eQKr/q9YiThrnxEsgYMW+Gr2tiEBBFJ4RwQosxe2QOttZrt3gCmb5khO7Mhz4
	2TnKOlUEWkCwN9CfbXxjmFKs8Kt7IiMPgrnNrZ/KlESjPK21G/p1GSwpSMgUIA==
Date: Sat, 7 Aug 2021 13:53:28 +0100
From: Stuart Henderson <stu@spacehopper.org>
To: oss-security@lists.openwall.com
Message-ID: <YQ6CSB+ZJfSV0pEE@symphytum.spacehopper.org>
References: <Pine.BSM.4.64L.2108061711590.28219@herc.mirbsd.org>
 <20210807015102.ea4f5immh2l5ku4n@sym.noone.org>
 <Pine.BSM.4.64L.2108070210210.904@herc.mirbsd.org>
 <20210807024937.g43ooqppdm7zozbh@sym.noone.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210807024937.g43ooqppdm7zozbh@sym.noone.org>
Subject: Re: [oss-security] Re: bug in Lynx' SSL certificate validation ->
 leaks password in clear text via SNI (under some circumstances)

On 2021/08/07 04:49, Axel Beckert wrote:
> Hi Thorsten,
> 
> I'm dropping the lynx-specific recipients, i.e. lynx-dev and the bug
> report…
> 
> Thorsten Glaser wrote:
> > Axel Beckert dixit:
> > > This is more severe than it initially looked like: Due to TLS Server
> > > Name Indication (SNI) the hostname as parsed by Lynx (i.e with
> > > "user:pass@" included) is sent in _clear_ text over the wire even
> > 
> > I *ALWAYS* SAID SNI IS A SHIT THING […]
> 
> Don't blame the messenger. ;-)
> 
> > Other browsers also need checking.
> 
> Good idea.
> 
> I just checked in Debian Unstable those tools I'd mostly expect with
> such URLs and commandline usage:
> 
> * Axel (sic! :-) 2.17.10-2
> * ELinks 0.13.2-1+b1
> * LibWWW-Perl (aka LWP) 6.53-1 via /usr/bin/GET
> * Links/Links2 2.21-1+b1
> * Wget (1.21-1+b1)
> * Wget2 (1.99.1-2.2)

I've checked w3m 0.5.3+git20210102, curl 7.78.0, lftp 4.9.2 and OpenBSD's
ftp, those are okay too.

