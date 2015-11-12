X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1325" "Thursday" "12" "November" "2015" "15:52:47" "-0600" "Mark Felder" "feld@feld.me" "<1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>" "35" "Re: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" "^Cc:" nil nil "11" "2015111221:52:47" "[oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "        feld@feld.me Nov 12   35/1325  " thread-indent "\"Re: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<56445609.9050301@gmail.com>" ("<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" "<5640442C.1050501@redhat.com>" "<20151109215303.GN1213@sentinelchicken.org>" "<5641360D.8070102@eenterphace.org>" "<20151111002307.GP1213@sentinelchicken.org>" "<56431D4F.7090006@eenterphace.org>" "<20151111160641.GQ1213@sentinelchicken.org>" "<56445609.9050301@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13788 invoked by uid 550); 12 Nov 2015 21:53:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13762 invoked from network); 12 Nov 2015 21:53:01 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=bvSW1FZ+WarMzVQrMTbquGJ3t3E=; b=MWVsLm
	z1Yp5lxh6tcT6V4cMLEqDLZNs7MAxe4mPUEVDdgEbwTZ/v/QtAFRYx0b8wPGAOL3
	37UDT6NAERFhYzK35FKHRau71dBBm+zkK/DRK1+29acIhaUNqHfFtZM5B0ULAuHT
	Gql2Ry4M/9DU29v4j0M3HwxiexCcuSQ4yYBWM=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=bvSW1FZ+WarMzVQ
	rMTbquGJ3t3E=; b=snOSz95BzTFk0hTpUDaHGiXsyv+lKTkoe0I0VMG7yGUyha5
	+4mDsQeabvDEh2PKFJWti0E+0RaTeDz5Mpg8Ti0wFqzGfNwtzK8XiB07HbTHOeHM
	JJxcpm0Aeg3RvnX24jGgcFlZ48/cF+0f/gMA2O6ZBDZD1TUx+euV8idclnLo=
Message-Id: <1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>
X-Sasl-Enc: /YAx6U6V48qyubiHXjSYnPvrphYxQ1tA9TTFEjTcB6rM 1447365167
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-37ba1837
In-Reply-To: <56445609.9050301@gmail.com>
References: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
 <5640442C.1050501@redhat.com>
 <20151109215303.GN1213@sentinelchicken.org>
 <5641360D.8070102@eenterphace.org>
 <20151111002307.GP1213@sentinelchicken.org>
 <56431D4F.7090006@eenterphace.org>
 <20151111160641.GQ1213@sentinelchicken.org>
 <56445609.9050301@gmail.com>
Cc: cve-assign@mitre.org
Date: Thu, 12 Nov 2015 15:52:47 -0600
From: Mark Felder <feld@feld.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-Request: Assign CVE for common-collections remote
 code execution on deserialisation flaw
To: oss-security@lists.openwall.com



On Thu, Nov 12, 2015, at 03:04, Gsunde Orangen wrote:
> CVE-Request:
> I appreciate this general discussion around deserialization issues and
> hope this will make a jump-start for sustainable improvements on both
> Java and application level in the long run.
> Aside of that however, I'd like to go back to Jason's original request
> to Mitre to get a CVE ID assigned to this particular issue with the
> Apache Commons Collections functors package (specifically in the
> InvokerTransformer class).

Is there any proof that Apache Commons Collections functors package
isn't doing what it's intended to be doing? Everything I'm reading
indicates that the problem is with applications believing they can
*trust* the input, not that there's a bug in the functors package, ie,
bad design.

> So people (esp. Java applications developers) have a unique reference
> when analysing and fixing this particluar one (by e.g. removing the
> class, make it non-serializable or wait for a new Commons Collections
> release that includes that fix - whatever is most appropriate to their
> application's context).
> 

The currently proposed "fix"[1] is to disable functionality that is
being used. This will break applications that need them.

[1] https://issues.apache.org/jira/browse/COLLECTIONS-580



-- 
  Mark Felder
  feld@feld.me
