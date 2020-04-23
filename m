X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5552" "Thursday" "23" "April" "2020" "19:03:14" "+0300" "PromiseLabs Pentest Research" "pentest@promiselabs.net" "<8c73ccfed18df9cf7c01e9be05710a5e@promiselabs.net>" "144" "Re: [oss-security] spoofing of local email sender via a homoglyph attack" "^Date:" nil nil "4" "2020042316:03:14" "[oss-security] spoofing of local email sender via a homoglyph attack" (number mark "        pentest@prom Apr 23  144/5552  " thread-indent "\"Re: [oss-security] spoofing of local email sender via a homoglyph attack\"\n") "<20200423151430.GA21258@openwall.com>" ("<20200422152047.3196780D981@smtprhmv1.mitre.org>" "<2843537f5deb3a7987c8485bcc56a260@promiselabs.net>" "<ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net>" "<20200423133148.GA19214@openwall.com>" "<2236ad47936a87f144248f9ab6c7340f@promiselabs.net>" "<20200423151430.GA21258@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] spoofing of local email sender via a homoglyph attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5983 invoked by uid 550); 23 Apr 2020 16:52:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17673 invoked from network); 23 Apr 2020 16:03:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=promisedev.com; s=default; h=Message-ID:References:In-Reply-To:Subject:To:
	From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To
	:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=FBH2/tyEQW6AwgVN7CLaClekkelYoesNjpMEFxw3Ixo=; b=MrutW/7aSTK1eP8u6vtAqZnEuX
	hLV/lBFij5JQntDE1JEoF4cfCoX93zie4xK2QoR1zIrCNKea8jHN2WZytO0eZdo0bBXOGsKJ3zlz0
	Pg2TFFpfvdYFxTt7iBuaA/WRwCDXq3053LFAxfwEwgPCroXzmdYvJC/W3vvxg/jUcsai3quyl2FF/
	SrKccSrmJebycVElK4GaBBUFBKCs0/rnpQSKNufUN0JPvlkO32coKQVNM5QHAhlFboIWK9tvjm5Oq
	yPMzgJYTMm5BscniwbN10MVg/9y5+EPEfLnQUkJ/FjoOixo7letfH2tEGO8RP7otdQL0iLm4uSwFr
	57b1ZMog==;
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Organization: PromiseLabs
In-Reply-To: <20200423151430.GA21258@openwall.com>
References: <20200422152047.3196780D981@smtprhmv1.mitre.org>
 <2843537f5deb3a7987c8485bcc56a260@promiselabs.net>
 <ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net>
 <20200423133148.GA19214@openwall.com>
 <2236ad47936a87f144248f9ab6c7340f@promiselabs.net>
 <20200423151430.GA21258@openwall.com>
Message-ID: <8c73ccfed18df9cf7c01e9be05710a5e@promiselabs.net>
X-Sender: pentest@promiselabs.net
User-Agent: Roundcube Webmail/1.3.8
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - lego.superhosting.bg
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - promiselabs.net
X-Get-Message-Sender-Via: lego.superhosting.bg: authenticated_id: pentest@promisedev.com
X-Authenticated-Sender: lego.superhosting.bg: pentest@promisedev.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Date: Thu, 23 Apr 2020 19:03:14 +0300
From: PromiseLabs Pentest Research <pentest@promiselabs.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] spoofing of local email sender via a homoglyph
 attack
To: oss-security@lists.openwall.com

I am not sure that the "from" header applies to user probing, as the 
actual mail server configuration on which I'm testing would accept any 
user as a sender:

# nc -v *** OMITTED *** 25
Connection to *** OMITTED *** 25 port [tcp/smtp] succeeded!
220 *** OMITTED *** ESMTP Postfix
mail from: userdoesnotexists@target.com
250 2.1.0 Ok
rcpt to: test@target.com
550 5.1.1 <test@target.com>: Recipient address rejected: User unknown in 
local recipient table
rcpt to: j??hn.doe@target.com
550 5.1.1 <j??hn.doe@target.com>: Recipient address rejected: User 
unknown in local recipient table
rcpt to: existing.user@target.com
250 2.1.5 Ok

However, a non-existing user would not be accepted in the "rcpt-to" 
header, so this is another possible vector. This was discovered while 
doing a black box test on one of our clients, and it should be noted 
that the VRFY command has been enabled on the server, hence there was no 
reason to look for another way. However I'm unaware whether disabling 
VRFY would alter this behaviour. As you can see, the reported issue 
itself is may be actually due to the possibility of relaying a local 
email from a non-existing user.

Having said this, if not then I assume then you are correct, in case we 
take the "to" header into consideration in relation to user probing, 
unless I'm missing your logic.

---
PLPR:
Plamen Dimitrov
Penetration Tester, CEH & OSCP certified

Promise Solutions LTD
Penetration Testing and Managed Security services

https://www.promisedev.com
https://www.promiselabs.net
+359 883 22 05 12

On 2020-04-23 18:14, Solar Designer wrote:
> On Thu, Apr 23, 2020 at 05:32:15PM +0300, PromiseLabs Pentest Research 
> wrote:
>> To follow up on your questions:
> 
> Thanks!  Now this is specific.
> 
>> The current configuration actually blocks any non-authorized requests 
>> as
>> explained in the description. The use-case of this (from my 
>> perspective)
>> is that it could be used to advance a social-engineer attack into
>> tricking the recipients believing that they are getting an email from 
>> a
>> high-level position at the company.
>> 
>> It's related to the from header.
>> 
>> Issuing a regular unauthenticated request, trying to send an email 
>> from
>> john.doe, which is a high-level user at the company:
>> $ nc -v *** OMITTED *** 25
>> Connection to *** OMITTED *** 25 port [tcp/smtp] succeeded!
>> 220 *** OMITTED *** ESMTP Postfix
>> mail from: john.doe@server.com
>> 250 2.1.0 Ok
>> rcpt to: existing.user@server.com
>> 553 5.7.1 <john.doe@server.com>: Sender address rejected: not logged 
>> in
>> 
>> As you can see, the mail server rejects the request as the existing 
>> user
>> hasn't authenticated himself.
> 
> My guess is this works when the server is configured to support SMTP
> AUTH for potentially relaying mail from local users to other servers,
> but as you show under that configuration the authentication requirement
> applies even for messages intended for local users.  That's curious.
> 
> I don't know whether that behavior is documented and expected, and
> whether it is considered a security feature or not.  I hope Wietse can
> weigh in on this.
> 
>> However, issuing a request using a homoglyph character:
>> $ echo -ne "j\xce\xbfhn.doe@server.com" | xclip -selection clipboard
>> $ nc -v *** OMITTED ***  25
>> Connection to *** OMITTED ***  25 port [tcp/smtp] succeeded!
>> 220 *** OMITTED ***  ESMTP Postfix
>> mail from: j??hn.doe@server.com
>> 250 2.1.0 Ok
>> rcpt to: existing.user@server.com
>> 250 2.1.5 Ok
>> data
>> 354 End data with <CR><LF>.<CR><LF>
>> 
>> The victim would get an email thinking it's from the actual john.doe
>> user.
> 
> OK.  To me, the real unexpected issue here is not the possibility to
> spoof (in fact, it's unexpected to me that it wasn't possible in your
> first example), but rather the possibility to probe for valid 
> usernames.
> That other aspect is more likely CVE-worthy, in my opinion.  There's
> precedent that such easy probing for usernames shouldn't work, and is
> getting CVEs against services where it does work.
> 
> There's probably room for hardening here where in cases when SMTP AUTH
> is enforced for local users, mail from other local-looking addresses 
> yet
> with non-existent usernames be rejected in exactly the same way (and
> with the same timings - tricky!) as mail from existing local usernames
> when SMTP AUTH is not attempted (like in your example).  There should
> also be no visible (and ideally no measurable) difference for existing
> and non-existent usernames when SMTP AUTH is attempted but fails.
> 
> Alternatively, mail to local users could be accepted consistently
> regardless of whether the claimed sender username exists locally or 
> not,
> thus without requiring authentication.  However, this would leave
> unfixed the username probing possibility on attempting to relay mail to
> external servers, where bypassing authentication is certainly not an
> option.  So overall that isn't a valid fix for the username probing.
> 
> I assume the tests above are with postfix-2.10.1-7.el7.x86_64 as you 
> had
> mentioned previously, and behavior could very well vary between builds.
> 
>> Whether this is applicable for assigning a CVE it's up to you decide,
> 
> No, technically it's up to MITRE, and they've already assigned one - 
> but
> I complain that they did so without sufficient detail on the issue.
> 
>> the only actual risk here discovered so far is a social-engineering
>> attack.
> 
> And username probing.
> 
>> >>> Use CVE-2020-12063.
> 
> Alexander
