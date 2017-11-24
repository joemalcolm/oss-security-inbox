X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["411" "Friday" "24" "November" "2017" "10:08:23" "+0100" "Greg KH" "greg@kroah.com" "<20171124090823.GA6922@kroah.com>" "16" "Re: [oss-security] New Linux kernel XFRM privilege escalation" nil nil nil "11" "2017112409:08:23" "[oss-security] New Linux kernel XFRM privilege escalation" (number mark "U       greg@kroah.c Nov 24   16/411   " thread-indent "\"Re: [oss-security] New Linux kernel XFRM privilege escalation\"\n") "<20171124084800.GB4755@suse.de>" ("<20171124084800.GB4755@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24207 invoked by uid 550); 24 Nov 2017 09:08:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24186 invoked from network); 24 Nov 2017 09:08:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=HLShEbdIvLk3/NgzXMWD1YdRCZ0E2
	eTKzXpYLAkYlYg=; b=NqCc3GkN9QMvsKye4HVWnE/sgl6UKUZracUxsNS6/bfGU
	ZItXq43wtsEBF4MfEIMpFpI/p1u9YQikVGlXZEbRanK+xsy2NCj49j11XM+XT8gz
	4Eeu8Q5OjjtXgjBzpu5+PQhs37GU+/jknCQxYd8JLLQwnJFWHf3piIUDmYhC5JdF
	O9GAwrs0V8pvc/cBW1GLd2P7WHNl6aD4DP6J48EIygh1AcJiYG1yTdhdvqyeWV1p
	lFjKYuGiEcDyTy82ETNVQfmEY4Wt4n+ptQvoXST3d2M3T0pjzneuSWdChU/8q9+r
	+pJW5F1xUjS7HLvixWrA6xoDEnnaIx+pCQ9bSzmtA==
X-ME-Sender: <xms:geEXWvbTqU1uR6O8ls3R5mA8sbjpsxPZ3laSvRzAfcyfrCnDfVr_dw>
Date: Fri, 24 Nov 2017 10:08:23 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <20171124090823.GA6922@kroah.com>
References: <20171124084800.GB4755@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171124084800.GB4755@suse.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
Subject: Re: [oss-security] New Linux kernel XFRM privilege escalation

On Fri, Nov 24, 2017 at 09:48:00AM +0100, Marcus Meissner wrote:
> Hi,
> 
> posted to bugtraq:
> 
> http://seclists.org/fulldisclosure/2017/Nov/40
> https://blogs.securiteam.com/index.php/archives/3535
> https://github.com/torvalds/linux/commit/1137b5e2529a8f5ca8ee709288ecba3e68044df2
> 
> affects 2.6.28 up to 4.14 I would say.

Looks like this was fixed in 4.14-rc7, so 4.14 should be ok.

thanks,

greg k-h
