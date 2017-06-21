X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["852" "Wednesday" "21" "June" "2017" "11:33:59" "-0600" "Jeff Law" "law@redhat.com" "<c5d05c8e-ae1e-e570-beb5-1c070b87e1a5@redhat.com>" "20" "Re: [oss-security] Re: Qualys Security Advisor -- The Stack Clash" "^Date:" nil nil "6" "2017062117:33:59" "[oss-security] Re: Qualys Security Advisor -- The Stack Clash" (number mark "        law@redhat.c Jun 21   20/852   " thread-indent "\"Re: [oss-security] Re: Qualys Security Advisor -- The Stack Clash\"\n") "<1497941077.15414.1.camel@gmail.com>" ("<7dbe76e8-99b8-4f8b-fa8d-2ec4708a85a1@redhat.com>" "<1497898323.1005.1.camel@gmail.com>" "<748a3bed-a04e-a82e-0459-4627af0d6387@redhat.com>" "<1497941077.15414.1.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23842 invoked by uid 550); 21 Jun 2017 17:34:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23823 invoked from network); 21 Jun 2017 17:34:11 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com DE7B530AF5B
Authentication-Results: ext-mx05.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx05.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=law@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com DE7B530AF5B
References: <7dbe76e8-99b8-4f8b-fa8d-2ec4708a85a1@redhat.com>
 <1497898323.1005.1.camel@gmail.com>
 <748a3bed-a04e-a82e-0459-4627af0d6387@redhat.com>
 <1497941077.15414.1.camel@gmail.com>
Message-ID: <c5d05c8e-ae1e-e570-beb5-1c070b87e1a5@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <1497941077.15414.1.camel@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Wed, 21 Jun 2017 17:34:00 +0000 (UTC)
Date: Wed, 21 Jun 2017 11:33:59 -0600
From: Jeff Law <law@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Qualys Security Advisor -- The Stack Clash
To: Daniel Micay <danielmicay@gmail.com>, oss-security@lists.openwall.com

On 06/20/2017 12:44 AM, Daniel Micay wrote:

> I think it's also worth mentioning the segmented stack support in GCC
> and LLVM that was added for Go. It's possible to use it for C with the
> __morestack call set up to simply abort when stack space is exhausted.
> 
> That's what Rust was doing after it dropped segmented stacks, but they
> wanted to move to stack probes for efficiency and prematurely dropped
> these function prelude checks.
> 
> It's not efficient, but it works, unlike -fstack-check.
> 
> I don't think it makes sense for general purpose distributions to adopt
> it but it's an available option for others with more concern about this
> issue.
Yup.  go's split-stacks are another option.  As you mention, probably
not performant enough for a general purpose distribution, but could be
interesting for more specialized needs.

jeff
