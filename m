X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["617" "Friday" "14" "August" "2015" "10:22:07" "+0100" "Stuart Henderson" "stu@spacehopper.org" "<20150814092207.GR24097@symphytum.spacehopper.org>" "12" "Re: [oss-security] Re: Duplicate Wireshark CVEs?" nil nil nil "8" "2015081409:22:07" "[oss-security] Re: Duplicate Wireshark CVEs?" (number mark "        stu@spacehop Aug 14   12/617   " thread-indent "\"Re: [oss-security] Re: Duplicate Wireshark CVEs?\"\n") "<20150814015342.4DE6F6C008C@smtpvmsrv1.mitre.org>" ("<87bnef1kxg.fsf@redhat.com>" "<20150814015342.4DE6F6C008C@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28595 invoked by uid 550); 14 Aug 2015 09:22:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28568 invoked from network); 14 Aug 2015 09:22:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=spacehopper.org;
	 h=user-agent:in-reply-to:content-disposition:content-type
	:content-type:mime-version:references:message-id:subject:subject
	:from:from:date:date:received:received; s=spacehop2; t=
	1439544127; bh=Rqy25CwvfP+7Mg2rNGUpAJpHQuONngveSAd8K7/UnJY=; b=K
	tjr+MOediiss17tpHuIMChjFP6ZZNQrljPmlvoTzxKCFPSUUkPZbkPe/PUVx3/Aq
	QzU0Ac5Yv6s4IO9N2gkr3BvznVz55GC8/5gGqbSQ7X9+7ULz+AkTOzJFZQpWx4pk
	d8LRxWErU+JzUkpFkBNycMP8Mc6RpQ2OMMJ/YClX7U51WtiJMm6+bJn/3afOwScm
	nuxiZ4JSrUiW90+QPbTBjPcDrb6mzKXLJ9x+ba7pqC3E3LqKKD+3Ktn1FhOcY3Vo
	xa3oVJuxcxZrX1NX3ucvyj6uKjNLevydVP4Mz4TTJZzNq3v4Py5p3haz3hNkhCsK
	MG07ZtkiGc6X9ELXFJ9XQ==
X-Virus-Scanned: amavisd-new at spacehopper.org
Message-ID: <20150814092207.GR24097@symphytum.spacehopper.org>
References: <87bnef1kxg.fsf@redhat.com>
 <20150814015342.4DE6F6C008C@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150814015342.4DE6F6C008C@smtpvmsrv1.mitre.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: mprpic@redhat.com, siddharth@redhat.com, cve-assign@mitre.org
Date: Fri, 14 Aug 2015 10:22:07 +0100
From: Stuart Henderson <stu@spacehopper.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Duplicate Wireshark CVEs?
To: oss-security@lists.openwall.com

On 2015/08/13 21:53, cve-assign@mitre.org wrote:
> Our perspective is that multiple sources, including the upstream
> vendor, currently have an error in which wnpa-sec-2015-14 refers to
> bug number 10844, and that the intended bug number for
> wnpa-sec-2015-14 (after that error is corrected) is 10978. We will
> check with the upstream vendor and see whether they can confirm that
> bug number 10978 actually does refer to a non-identical security
> problem that was addressed months after 10844.

I don't know if it's intentional or not, but I've noticed in the past
that Wireshark bug numbers are not permanent.

