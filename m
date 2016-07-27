X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["672" "Wednesday" "27" "July" "2016" "16:27:58" "-0700" "Greg KH" "greg@kroah.com" "<20160727232758.GA21326@kroah.com>" "23" "Re: [oss-security] Re: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver." "^Cc:" nil nil "7" "2016072723:27:58" "[oss-security] Re: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver." (number mark "        greg@kroah.c Jul 27   23/672   " thread-indent "\"Re: [oss-security] Re: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver.\"\n") "<87d1lyiuhk.fsf@camandro.org>" ("<CALJHwhS5Qin0-snXT458ARcXDPTHAdpsS3ax1CCPFdWSeLeLAQ@mail.gmail.com>" "<CALJHwhSoHKvrNxFbYL4HJk4GtxHxaetQWBZQQf8ROVYqm+N=dg@mail.gmail.com>" "<87d1lyiuhk.fsf@camandro.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17837 invoked by uid 550); 27 Jul 2016 23:27:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17819 invoked from network); 27 Jul 2016 23:27:57 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=hCiFA6TSZARvyqmLvFJHoXLnXDc=; b=c33Av
	1/RjufckQnDyT6eFdKTGHv5V9zBvMa6NQjNB1XIYmqXPA/qSvK8y8jIJdDS15HyK
	RbGe7NJ8PHgn1MfXzlDwHN60ylVkHlLMpdEhGW7Ww023JFP3qdRXkTHfzWydbgv5
	R3P5q9b00RgN6rV4NaRMnrQxKXUpB17kB9D/4c=
X-Sasl-enc: CGkq93Mk0WwtsVNayI+PfVYIA4pLNgJSEfuJNjgYWYxG 1469662064
Message-ID: <20160727232758.GA21326@kroah.com>
References: <CALJHwhS5Qin0-snXT458ARcXDPTHAdpsS3ax1CCPFdWSeLeLAQ@mail.gmail.com>
 <CALJHwhSoHKvrNxFbYL4HJk4GtxHxaetQWBZQQf8ROVYqm+N=dg@mail.gmail.com>
 <87d1lyiuhk.fsf@camandro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87d1lyiuhk.fsf@camandro.org>
User-Agent: Mutt/1.6.2 (2016-07-01)
Cc: Wade Mealing <wmealing@redhat.com>
Date: Wed, 27 Jul 2016 16:27:58 -0700
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE-2016-5400 - linux kernel: denial of
 service in airspy USB driver.
To: oss-security@lists.openwall.com

On Wed, Jul 27, 2016 at 11:31:03PM +0100, Luis Henriques wrote:
> Wade Mealing <wmealing@redhat.com> writes:
> 
> > Hit send too early,
> >
> >
> > Upstream patch:
> > https://git.linuxtv.org/media_tree.git/commit/?id=eca2d34b9d2ce70165a50510659838e28ca22742
> >
> 
> I believe the above commit isn't really related with CVE-2016-5400;
> the following commit in mainline claims to fix this issue:
> 
> commit aa93d1fee85c890a34f2510a310e55ee76a27848
> Author: James Patrick-Evans <james@jmp-e.com>
> Date:   Fri Jul 15 16:40:45 2016 +0100
> 
>     media: fix airspy usb probe error path

Ah, thanks, that will show up in the next round of stable kernel
updates.

greg k-h
