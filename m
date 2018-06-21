X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["891" "Thursday" "21" "June" "2018" "10:37:54" "+0100" "Stuart Henderson" "stu@spacehopper.org" "<20180621093754.GY53290@symphytum.spacehopper.org>" "25" "Re: [oss-security] Intel hyper-threading security issues" "^Cc:" nil nil "6" "2018062109:37:54" "[oss-security] Intel hyper-threading security issues" (number mark "        stu@spacehop Jun 21   25/891   " thread-indent "\"Re: [oss-security] Intel hyper-threading security issues\"\n") "<20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$>" ("<CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>" "<20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10179 invoked by uid 550); 21 Jun 2018 09:38:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10150 invoked from network); 21 Jun 2018 09:38:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1529573874; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ByLMtydY9b2xQgfdWWHw5zQbvRqstb9g1jlqsTVn9Bg=;
	b=XpHdGhVzreLzaqCqSHKCzGk5UWkJpEws2XnnNB3QhSzl2QSgMWZndAjauKqljv+aZl+V9l
	0Q5xBPhU1hREkg6v/zFkER9LGPjoG5vhZ/3uoozx8M4OrYMfaacWFTKCydg4mzunX8R6c3
	90bjV7/QPuoyvwFIXJlp+MyAT6mYuU+GR8GiqX61YFlEJc1lBUxtIJl9Tjg3UJq/hvIcOs
	AqrAvMyHu55B4o76bk2Fonrv4f6c/56hLACfUtAjh18/pVRxwIm57utbvp25KVJ5jqiCEw
	OZE8ERvR6BcfJcj+nu9hV87isq6heUKLknuBQ/xRiPEhaZRC+NUIcB53Swz+cA==
Message-ID: <20180621093754.GY53290@symphytum.spacehopper.org>
References: <CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>
 <20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$>
User-Agent: Mutt/1.10.0 (2018-05-17)
Cc: secure@intel.com
Date: Thu, 21 Jun 2018 10:37:54 +0100
From: Stuart Henderson <stu@spacehopper.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Intel hyper-threading security issues
To: oss-security@lists.openwall.com

On 2018/06/21 07:56, Georgi Guninski wrote:
> On Wed, Jun 20, 2018 at 12:48:55AM +0400, Loganaden Velvindron wrote:
> > Hi all,
> > 
> > OpenBSD has gone ahead and disabled Intel Hyper threading with a
> > fairly detailed comment about the reasons behind:
> > 
> > https://www.mail-archive.com/source-changes@openbsd.org/msg99141.html
> >
> 
> Freebsd:
> 
> https://www.freebsd.org/security/advisories/FreeBSD-SA-05:09.htt.asc
> Topic:          information disclosure when using HTT
> Announced:      2005-05-13
> When running on processors supporting Hyper-Threading Technology, it is
> possible for a malicious thread to monitor the execution of another
> thread.
> V.   Solution
> 
> Disable Hyper-Threading Technology on processors that support it.

That isn't possible with some BIOS. For example, newer Lenovo machines
removed the option apparently due to perceived lack of demand...

