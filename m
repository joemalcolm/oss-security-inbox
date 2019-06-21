X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1535" "Friday" "21" "June" "2019" "11:53:00" "+0200" "Greg KH" "greg@kroah.com" "<20190621095300.GA9934@kroah.com>" "31" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062109:53:00" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        greg@kroah.c Jun 21   31/1535  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<02594cdc8ff7c6ff19a3042d824fb27f9d3302c3.camel@debian.org>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190615155740.GA2960@kroah.com>" "<02594cdc8ff7c6ff19a3042d824fb27f9d3302c3.camel@debian.org>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1245 invoked by uid 550); 21 Jun 2019 11:12:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14216 invoked from network); 21 Jun 2019 09:53:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:content-transfer-encoding:in-reply-to; s=fm1; bh=u
	Uui4fE+A8GzSlDyw+0EjI5yckENAFyxHzeBqPYfipc=; b=N7FB37YqwG/cgcE6j
	XUO/h/ON0pNR2oAsLo0cs6M83lfq6kFjvte36ScZv8C1KR8gXckwIyIgh9PkMJ5z
	a4cEcaQze3OSt8y1x/J4FfUV6cxDj7x431nFk2kriteC9tC59knZI3Mq3Vb54d+d
	GQntGm+28m0+msdyAXsNQZiyw+Htx0p6z4NhZcbBBMy5ZV7NypiiTkCVFN65eCk0
	WUFhs2ax7v2KVCHVAjcaQ6L2JoS+iaDNghOJx1i8x2OftxLnFV+Z33KR5q4Kc70B
	JlMxxCgWYmjexauupekQs1KbuoLI6tmF7wmAH5qEH/sC+3CXHQYfGiH+aqkh9E6M
	lZFqA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; bh=uUui4fE+A8GzSlDyw+0EjI5yckENAFyxHzeBqPYfi
	pc=; b=cswGRz70euH8f9OPEv/9ewUfXNOEOJacqRMUzt7J0CI7W8J9ZILPdkW/7
	mKttE/LrBQuLyR/OV1BFehTTaOhWble75CdxoLwmIWioi0CBeJwZuyJicj0oJZ5A
	kqef8PX+Sxp63FTpq5rh1okzFOnFmPlo7CImt3gy+lhyVK3sfJFFdFvxxgeBIUDC
	MdF+v2PmHuurwhiDRSc4wGBjDpwOQOq8aDGjJUHnOSiGpGR2aq9LMQobFcpPaqcs
	NbCOT3mac28o1gyYrCjtuXmji6UMMYyO54HXfBr4Ey8WlU2nh2r0ioh+VF0KhyN9
	phGILFLgUxNeBgoGBuM/62NBJsFUQ==
X-ME-Sender: <xms:_qgMXT-qN4xZmCVs6mT02U-WV5fgIvI7vly2XfGvrE7Knj8Won-32g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrtdeigddvfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtugfgjggfsehtke
    ertddtreejnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
    qeenucfkphepkeefrdekiedrkeelrddutdejnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hgrhgvgheskhhrohgrhhdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:_qgMXUkKDU3TnRqclZI9oQpZd7niH59_1YoD6vY_moHqqRZuOhiGog>
    <xmx:_qgMXekHQ6d4iyYChbkC5dY7tXvbjXFv9FkCPtfMPiNv89HmWbj5IQ>
    <xmx:_qgMXRiEFNYAYDoZJQMLSrsjYkieE-dOGBw3NRjqpaqTqRptqsqnGA>
    <xmx:_6gMXb6y_0_YjDWeE9TFGOrXBXskR6LRM_k-ARv3iYos0CXNVzCl2g>
Message-ID: <20190621095300.GA9934@kroah.com>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190615155740.GA2960@kroah.com>
 <02594cdc8ff7c6ff19a3042d824fb27f9d3302c3.camel@debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <02594cdc8ff7c6ff19a3042d824fb27f9d3302c3.camel@debian.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
Date: Fri, 21 Jun 2019 11:53:00 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

On Fri, Jun 21, 2019 at 11:32:05AM +0200, Yves-Alexis Perez wrote:
> On Sat, 2019-06-15 at 17:57 +0200, Greg KH wrote:
> > On Sat, Jun 15, 2019 at 11:49:03AM -0400, Alex Gaynor wrote:
> > > I do not have a solution to this problem. I wanted to raise awareness of
> > > it, in the hope that it would start a discussion which might come to a
> > > solution.
> > 
> > Why not just do a simple "you must upgrade to the latest version X to
> > fix a bunch of bugs" type of announcement?  No need to worry about crazy
> > backports and cherry-picking, that always fails in the end.
> 
> I sympathize with this view, and I think we need to get better at updating,
> but I really think not all projects can be “safely” just updated to the latest
> version. End-users and IT admins still value stability and regressions is
> still a thing in a lot of cases. And once a regression is introduced, it's not
> always a short time before it's fixed upstream.

So it's a matter of "do I live with all of the bugs that everyone else
knows about and how to exploit, or do I live with a potential
regression?"  That sounds like an easy choice given that the reason you
should be updating is to resolve all of those known bugs :)

Regressions always happen, we are human, but there are ways to mitigate
them (testing, roll-back, preventing developers from not breaking things
on purpose, etc.)  And projects that do not do this type of work to
prevent regressions need to learn that they should change, or users will
go elsewhere.

thanks,

greg k-h
