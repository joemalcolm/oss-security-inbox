X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3787" "Thursday" "23" "April" "2020" "17:14:30" "+0200" "Solar Designer" "solar@openwall.com" "<20200423151430.GA21258@openwall.com>" "88" "Re: [oss-security] spoofing of local email sender via a homoglyph attack" "^Cc:" nil nil "4" "2020042315:14:30" "[oss-security] spoofing of local email sender via a homoglyph attack" (number mark "        solar@openwa Apr 23   88/3787  " thread-indent "\"Re: [oss-security] spoofing of local email sender via a homoglyph attack\"\n") "<2236ad47936a87f144248f9ab6c7340f@promiselabs.net>" ("<20200422152047.3196780D981@smtprhmv1.mitre.org>" "<2843537f5deb3a7987c8485bcc56a260@promiselabs.net>" "<ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net>" "<20200423133148.GA19214@openwall.com>" "<2236ad47936a87f144248f9ab6c7340f@promiselabs.net>") nil nil nil nil nil nil nil "Re: [oss-security] spoofing of local email sender via a homoglyph attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18359 invoked by uid 550); 23 Apr 2020 15:15:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18057 invoked from network); 23 Apr 2020 15:14:42 -0000
Message-ID: <20200423151430.GA21258@openwall.com>
References: <20200422152047.3196780D981@smtprhmv1.mitre.org> <2843537f5deb3a7987c8485bcc56a260@promiselabs.net> <ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net> <20200423133148.GA19214@openwall.com> <2236ad47936a87f144248f9ab6c7340f@promiselabs.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2236ad47936a87f144248f9ab6c7340f@promiselabs.net>
User-Agent: Mutt/1.4.2.3i
Cc: PromiseLabs Pentest Research <pentest@promiselabs.net>,
	Wietse Venema <wietse@porcupine.org>
Date: Thu, 23 Apr 2020 17:14:30 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] spoofing of local email sender via a homoglyph attack
To: oss-security@lists.openwall.com

On Thu, Apr 23, 2020 at 05:32:15PM +0300, PromiseLabs Pentest Research wrote:
> To follow up on your questions:

Thanks!  Now this is specific.

> The current configuration actually blocks any non-authorized requests as 
> explained in the description. The use-case of this (from my perspective) 
> is that it could be used to advance a social-engineer attack into 
> tricking the recipients believing that they are getting an email from a 
> high-level position at the company.
> 
> It's related to the from header.
> 
> Issuing a regular unauthenticated request, trying to send an email from 
> john.doe, which is a high-level user at the company:
> $ nc -v *** OMITTED *** 25
> Connection to *** OMITTED *** 25 port [tcp/smtp] succeeded!
> 220 *** OMITTED *** ESMTP Postfix
> mail from: john.doe@server.com
> 250 2.1.0 Ok
> rcpt to: existing.user@server.com
> 553 5.7.1 <john.doe@server.com>: Sender address rejected: not logged in
> 
> As you can see, the mail server rejects the request as the existing user 
> hasn't authenticated himself.

My guess is this works when the server is configured to support SMTP
AUTH for potentially relaying mail from local users to other servers,
but as you show under that configuration the authentication requirement
applies even for messages intended for local users.  That's curious.

I don't know whether that behavior is documented and expected, and
whether it is considered a security feature or not.  I hope Wietse can
weigh in on this.

> However, issuing a request using a homoglyph character:
> $ echo -ne "j\xce\xbfhn.doe@server.com" | xclip -selection clipboard
> $ nc -v *** OMITTED ***  25
> Connection to *** OMITTED ***  25 port [tcp/smtp] succeeded!
> 220 *** OMITTED ***  ESMTP Postfix
> mail from: j??hn.doe@server.com
> 250 2.1.0 Ok
> rcpt to: existing.user@server.com
> 250 2.1.5 Ok
> data
> 354 End data with <CR><LF>.<CR><LF>
> 
> The victim would get an email thinking it's from the actual john.doe 
> user.

OK.  To me, the real unexpected issue here is not the possibility to
spoof (in fact, it's unexpected to me that it wasn't possible in your
first example), but rather the possibility to probe for valid usernames.
That other aspect is more likely CVE-worthy, in my opinion.  There's
precedent that such easy probing for usernames shouldn't work, and is
getting CVEs against services where it does work.

There's probably room for hardening here where in cases when SMTP AUTH
is enforced for local users, mail from other local-looking addresses yet
with non-existent usernames be rejected in exactly the same way (and
with the same timings - tricky!) as mail from existing local usernames
when SMTP AUTH is not attempted (like in your example).  There should
also be no visible (and ideally no measurable) difference for existing
and non-existent usernames when SMTP AUTH is attempted but fails.

Alternatively, mail to local users could be accepted consistently
regardless of whether the claimed sender username exists locally or not,
thus without requiring authentication.  However, this would leave
unfixed the username probing possibility on attempting to relay mail to
external servers, where bypassing authentication is certainly not an
option.  So overall that isn't a valid fix for the username probing.

I assume the tests above are with postfix-2.10.1-7.el7.x86_64 as you had
mentioned previously, and behavior could very well vary between builds.

> Whether this is applicable for assigning a CVE it's up to you decide, 

No, technically it's up to MITRE, and they've already assigned one - but
I complain that they did so without sufficient detail on the issue.

> the only actual risk here discovered so far is a social-engineering 
> attack.

And username probing.

> >>> Use CVE-2020-12063.

Alexander
