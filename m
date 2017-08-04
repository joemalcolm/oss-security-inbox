X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["491" "Friday" "4" "August" "2017" "11:00:37" "-0700" "Greg KH" "greg@kroah.com" "<20170804180037.GB18494@kroah.com>" "13" "Re: [oss-security] Reporting and disclosing Linux kernel vulnerabilities" "^Cc:" nil nil "8" "2017080418:00:37" "[oss-security] Reporting and disclosing Linux kernel vulnerabilities" (number mark "        greg@kroah.c Aug  4   13/491   " thread-indent "\"Re: [oss-security] Reporting and disclosing Linux kernel vulnerabilities\"\n") "<20170804173658.GA31208@openwall.com>" ("<CA+fCnZe3QtwBGRTsL=p9ju-NUkXeQp_1osz0mmZtKFaKUBvY_A@mail.gmail.com>" "<20170804173658.GA31208@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28632 invoked by uid 550); 4 Aug 2017 18:00:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28608 invoked from network); 4 Aug 2017 18:00:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=yi4NHIzT+83nFNLoX7
	jfnWixMTYnDcAgTrYlWo9Ol6c=; b=HbD//SWJsmkW07GbKEAnut7E9ck5jzhwL8
	Nv7U55Jbi3kMYxm530tOT50AN0uxqtzAvaDwhqp0EhoU6qV8uV0adVeTTlZ3+Ljo
	JTvHF8g97N5b2bwKvb2MNnoWXt5iVg66CyvSFYkrdy5W43odftzDTGrT1nUQJnUI
	Ztzy5jyTsGuru+EgwCvOrFY3s3K23lO22LxuZf3OT1PPp34Zxrdl5j/WRZiMixJL
	1HqDGdJO2cmL0KnVRfdrVwNSOO2VF5RK1nhcYlGaYqEr0fjSLpZ6xtUJ6vXH+6C7
	55And5cRjw0p2IsYKG0aZ+M+YAnaK+Up4gg8TOsNSnf5Lz0Hd5uA==
X-ME-Sender: <xms:R7aEWVNT8bxb1Zuxy3-BplDNVY4tKyD3UmJnCJTa1bjnKjapWffwmw>
X-Sasl-enc: R2+ne1OcNrI3LribZrJ9eIB8JYO+6lJD8Ya3m8/Hpu22 1501869639
Message-ID: <20170804180037.GB18494@kroah.com>
References: <CA+fCnZe3QtwBGRTsL=p9ju-NUkXeQp_1osz0mmZtKFaKUBvY_A@mail.gmail.com>
 <20170804173658.GA31208@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170804173658.GA31208@openwall.com>
User-Agent: Mutt/1.8.3 (2017-05-23)
Cc: Andrey Konovalov <andreyknvl@gmail.com>,
	willemdebruijn.kernel@gmail.com, Dmitry Vyukov <dvyukov@google.com>,
	Kostya Serebryany <kcc@google.com>
Date: Fri, 4 Aug 2017 11:00:37 -0700
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Reporting and disclosing Linux kernel
 vulnerabilities
To: oss-security@lists.openwall.com

On Fri, Aug 04, 2017 at 07:36:58PM +0200, Solar Designer wrote:
> I hear that for netdev bugs, security@k.o is likely to ask you to post
> such bugs to the public netdev list right away, without any embargo.
> You could want to see whether this is in fact the case, and adjust your
> instructions if so.

Yes, that is the case, and has happened in the past, but now
security@k.o has a few network developers on it to help out before it
hits the public list, if necessary.

thanks,

greg k-h
