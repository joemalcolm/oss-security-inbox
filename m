X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1126" "Saturday" "2" "May" "2015" "11:27:35" "+0100" "Eddie Chapman" "eddie@ehuk.net" "<5544A697.3020701@ehuk.net>" "22" "Re: [oss-security] On sanctioned MITMs" nil nil nil "5" "2015050210:27:35" "[oss-security] On sanctioned MITMs" (number mark "        eddie@ehuk.n May  2   22/1126  " thread-indent "\"Re: [oss-security] On sanctioned MITMs\"\n") "<20150501233935.GB18039@zoho.com>" ("<20150501191522.GA18039@zoho.com>" "<5543DDB5.7030900@redhat.com>" "<20150501233935.GB18039@zoho.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22048 invoked by uid 550); 2 May 2015 10:27:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22030 invoked from network); 2 May 2015 10:27:48 -0000
X-DKIM: Sendmail DKIM Filter v2.8.3 mail.steelbluetech.co.uk t42ARaZn003863
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=manchestervps.co.uk;
	s=mvps; t=1430562456;
	bh=uH50HAQ4UcHAEk9WHqQ6jXchmuyEisWW485mkmLKOPU=;
	h=Subject:references:To:From:Cc:Reply-To:message-id:Date:
	 mime-version:in-reply-to:Content-Type:Content-Transfer-Encoding;
	b=N4sFgD6OvqwwvQBWGWKZVoiQ1ZaJg7dmTSCUSTJZBxj72lEmTeuL4KXDvFH2VBDAc
	 VcJZAd+VAOPBru3i6qYpzMFewXhfcjYfJdbxwTGFYdd5PwZb88iLU8a8LgoxMHqk4Z
	 jj6MgJq3/iKEqHjwLJ6sYQzOYUHeKUaZswYzCn2M=
references: <20150501191522.GA18039@zoho.com> <5543DDB5.7030900@redhat.com>
 <20150501233935.GB18039@zoho.com>
message-id: <5544A697.3020701@ehuk.net>
user-agent: 
 Mozilla/5.0 (X11; Linux x86_64; rv:37.0) Gecko/20100101 Thunderbird/37.0
mime-version: 1.0
in-reply-to: <20150501233935.GB18039@zoho.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com
Date: Sat, 2 May 2015 11:27:35 +0100
From: Eddie Chapman <eddie@ehuk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] On sanctioned MITMs
To: mancha1@zoho.com

On 02/05/15 00:39, mancha wrote:
> Those are good suggestions for service providers seeking to outsource
> part of their processes but not so relevant to grandma e-banking or
> checking her medical results from her chalet in the Swiss Alps. As
> grannie is finding out, more and more sensitive transactions are being
> conducted over HTTPS these days. So, she's happy when she sees a lock in
> the url bar and gets no alerts from Firefox.

Despite whatever infrastructure and other real world challenges a 
company/organisation faces, what you write above is the most important 
issue. When we all see the lock in the URL bar, we expect and hope that 
the communications between our browser and the company/organisation is 
encrypted *all the way* to the company/org we identify in the URL.

This is a fundamental issue of trust which cannot be broken at all 
costs, even if it means more disruption to services. There is very 
little trust left out there and we cannot afford to erode it further, as 
this is more damaging than less service availability.

Apologies for continuing the off topic nature of this thread.

Eddie
