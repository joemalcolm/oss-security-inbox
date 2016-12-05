X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["145" "Monday" "5" "December" "2016" "13:56:54" "-0500" "Leo Famulari" "leo@famulari.name" "<20161205185654.GA13378@jasmine>" "4" "Re: [oss-security] CVE-2016-8740: Apache HTTPD 2.4.17-2.4.23: Server memory can be exhausted and service denied when HTTP/2 is used" nil nil nil "12" "2016120518:56:54" "[oss-security] CVE-2016-8740: Apache HTTPD 2.4.17-2.4.23: Server memory can be exhausted and service denied when HTTP/2 is used" (number mark "U       leo@famulari Dec  5    4/145   " thread-indent "\"Re: [oss-security] CVE-2016-8740: Apache HTTPD 2.4.17-2.4.23: Server memory can be exhausted and service denied when HTTP/2 is used\"\n") "<20161205182210.GA28847@openwall.com>" ("<20161205182210.GA28847@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17526 invoked by uid 550); 5 Dec 2016 19:13:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30498 invoked from network); 5 Dec 2016 18:57:09 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=famulari.name; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=aHZZoG7dfLO6dc8cYeSoCo1eX78=; b=iTD155
	r0p7R4begDrSK9gj2UNvD4SBXzPrWE3UScEdTCx4X+JdoWNxUt6MyET4OTL+UB82
	FfmmT0f+7b5nwR69MbkkmMvb1dVTOWlJsGxQE1yDogegw64scAgk7nGd0B3rCHAm
	duuu0pHyQ1X3STA2nCOaz98o0bDtKOBB7cjp4=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=smtpout; bh=aHZZoG7dfLO6dc
	8cYeSoCo1eX78=; b=iTLw+lLOLbPA54yZ218mMJPEiTFMwdjGzas4tqHbjds8y8
	tjQ8f+NtKMT1ZKr9HtW7BgTROFdL4V5y8gGlC388GYsKrLX63Ljj8TogrnoW1nm6
	qvaOOEpoxCQJukSstFwJjNq59wIFueEN32tYea4mvyD3nnMMXxLbEmfLmtoDM=
X-ME-Sender: <xms:eLhFWBOIt3YlwBcS9h6ZcHgrl4ROcN4NbN6chacwgc1W-ZnkiMYdEw>
X-Sasl-enc: Nk0c3nD0l/E1jE3qWmmX3Lfiw+sEzBvu8E+uKlPkb4gt 1480964216
Date: Mon, 5 Dec 2016 13:56:54 -0500
From: Leo Famulari <leo@famulari.name>
To: oss-security@lists.openwall.com
Message-ID: <20161205185654.GA13378@jasmine>
References: <20161205182210.GA28847@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161205182210.GA28847@openwall.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Subject: Re: [oss-security] CVE-2016-8740: Apache HTTPD 2.4.17-2.4.23: Server
 memory can be exhausted and service denied when HTTP/2 is used

On Mon, Dec 05, 2016 at 07:22:10PM +0100, Solar Designer wrote:
> Patch against 2.4.23 release source:

I think you forgot to forward the patch.
