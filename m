X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["968" "Monday" "11" "May" "2015" "07:13:20" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150511051320.GA14900@lorien.valinor.li>" "30" "Re: [oss-security] CVE Request: zeromq downgrade attack" nil nil nil "5" "2015051105:13:20" "[oss-security] CVE Request: zeromq downgrade attack" (number mark "        carnil@debia May 11   30/968   " thread-indent "\"Re: [oss-security] CVE Request: zeromq downgrade attack\"\n") "<20150507144908.GA1677@kronk.local>" ("<20150507144908.GA1677@kronk.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23928 invoked by uid 550); 11 May 2015 05:13:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23907 invoked from network); 11 May 2015 05:13:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ECrUC4WuZw5m+Vs7SQsl/WjX/h+flzsfTQFOxPCm9eE=;
        b=VD4wW7isH7C7tqxqi+lbjnnJFGCVXgt16SIacvMiRgixYlvffOWVftuKwKc/yqnQaq
         dbyOqWN5BVpB5KMb7XqYdGh3FjOerNqc6jZCKblXDuVo2pNZNeJee+Bc0LeDSw250CgV
         Zxw7jsoUS/cVQbA9TzHW1L45bojvLItAKpHoeizSQpQkdUtXOJJH28OZ9FDC+jSzfvIt
         OB+N8xqLSpkrO6OPV28ssYSTWDvG/f3sPs/UzfbBZd/qSpq37Qp8N+f3+2HW07nli0o2
         SlL+3KMOV4OHPyi7m5Zb8nElzS9zDR+HS0TFp/ZCul2w34qZv/GHJhMCg461s+40tE2G
         tkkw==
X-Received: by 10.194.205.37 with SMTP id ld5mr17217071wjc.14.1431321202252;
        Sun, 10 May 2015 22:13:22 -0700 (PDT)
Message-ID: <20150511051320.GA14900@lorien.valinor.li>
References: <20150507144908.GA1677@kronk.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150507144908.GA1677@kronk.local>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: zeromq-dev@lists.zeromq.org,
	CVE Assignments MITRE <cve-assign@mitre.org>
Date: Mon, 11 May 2015 07:13:20 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] CVE Request: zeromq downgrade attack
To: oss-security@lists.openwall.com

Hi,

On Thu, May 07, 2015 at 04:49:08PM +0200, Alessandro Ghedini wrote:
> [ CCing upstream mailing list ]
> 
> Hello,
> 
> From https://github.com/zeromq/libzmq/issues/1273 :
> 
> > It is easy to bypass the security mechanism in 4.1.0 and 4.0.5 by sending a
> > ZMTP v2 or earlier header. The library accepts such connections without
> > applying its security mechanism.
> > 
> > Solution: if security is defined on a socket, reject all V2 and earlier
> > connections, unconditionally.
> 
> A patch for the zeromq 4.0.x stable series is available at
> https://github.com/zeromq/zeromq4-x/commit/b6e3e0f601e2c1ec1f3aac880ed6a3fe63043e51
> 
> AFAICT no CVE has been assigned (or requested) for this, and the issue has
> been public since December of last year.
> 
> Could a CVE be assigned please?

For reference, an update for this issue has been released yesterday in
Debian as
https://lists.debian.org/debian-security-announce/2015/msg00144.html

Regards,
Salvatore
