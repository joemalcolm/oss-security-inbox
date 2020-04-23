X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2613" "Thursday" "23" "April" "2020" "20:12:34" "+0200" "Solar Designer" "solar@openwall.com" "<20200423181234.GA23035@openwall.com>" "57" "Re: [oss-security] spoofing of local email sender via a homoglyph attack" "^Cc:" nil nil "4" "2020042318:12:34" "[oss-security] spoofing of local email sender via a homoglyph attack" (number mark "        solar@openwa Apr 23   57/2613  " thread-indent "\"Re: [oss-security] spoofing of local email sender via a homoglyph attack\"\n") "<8c73ccfed18df9cf7c01e9be05710a5e@promiselabs.net>" ("<20200422152047.3196780D981@smtprhmv1.mitre.org>" "<2843537f5deb3a7987c8485bcc56a260@promiselabs.net>" "<ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net>" "<20200423133148.GA19214@openwall.com>" "<2236ad47936a87f144248f9ab6c7340f@promiselabs.net>" "<20200423151430.GA21258@openwall.com>" "<8c73ccfed18df9cf7c01e9be05710a5e@promiselabs.net>") nil nil nil nil nil nil nil "Re: [oss-security] spoofing of local email sender via a homoglyph attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1611 invoked by uid 550); 23 Apr 2020 18:13:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1157 invoked from network); 23 Apr 2020 18:12:39 -0000
Message-ID: <20200423181234.GA23035@openwall.com>
References: <20200422152047.3196780D981@smtprhmv1.mitre.org> <2843537f5deb3a7987c8485bcc56a260@promiselabs.net> <ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net> <20200423133148.GA19214@openwall.com> <2236ad47936a87f144248f9ab6c7340f@promiselabs.net> <20200423151430.GA21258@openwall.com> <8c73ccfed18df9cf7c01e9be05710a5e@promiselabs.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8c73ccfed18df9cf7c01e9be05710a5e@promiselabs.net>
User-Agent: Mutt/1.4.2.3i
Cc: Wietse Venema <wietse@porcupine.org>
Date: Thu, 23 Apr 2020 20:12:34 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] spoofing of local email sender via a homoglyph attack
To: oss-security@lists.openwall.com

On Thu, Apr 23, 2020 at 07:03:14PM +0300, PromiseLabs Pentest Research wrote:
> I am not sure that the "from" header applies to user probing, as the 

You mean the MAIL FROM aka envelope-from.

> actual mail server configuration on which I'm testing would accept any 
> user as a sender:
> 
> # nc -v *** OMITTED *** 25
> Connection to *** OMITTED *** 25 port [tcp/smtp] succeeded!
> 220 *** OMITTED *** ESMTP Postfix
> mail from: userdoesnotexists@target.com
> 250 2.1.0 Ok
> rcpt to: test@target.com
> 550 5.1.1 <test@target.com>: Recipient address rejected: User unknown in 
> local recipient table
> rcpt to: j??hn.doe@target.com
> 550 5.1.1 <j??hn.doe@target.com>: Recipient address rejected: User 
> unknown in local recipient table
> rcpt to: existing.user@target.com
> 250 2.1.5 Ok
> 
> However, a non-existing user would not be accepted in the "rcpt-to" 
> header, so this is another possible vector. This was discovered while 
> doing a black box test on one of our clients, and it should be noted 
> that the VRFY command has been enabled on the server, hence there was no 
> reason to look for another way. However I'm unaware whether disabling 
> VRFY would alter this behaviour. As you can see, the reported issue 
> itself is may be actually due to the possibility of relaying a local 
> email from a non-existing user.
> 
> Having said this, if not then I assume then you are correct, in case we 
> take the "to" header into consideration in relation to user probing, 
> unless I'm missing your logic.

I actually meant probing via the "Sender address rejected: not logged
in" messages, which while delivered in response to a RCPT TO depend on
the MAIL FROM address.  However, as Wietse tells us this merely probes
the smtpd_sender_login_maps table, so is very limited and
configuration-specific.  Besides, as Wietse and you correctly remind us,
the possibility to probe for valid addresses via RCPT TO is in practice
unavoidable on modern Internet.  So the point of blocking probing of
which sender addresses can vs. can not (do not need to) authenticate is
moot given that in typical setups those addresses are also potential
recipient addresses and thus could also be probed via RCPT TO.

What you reported originally, where you bypass something that just
happens that way in some configurations and wasn't meant to provide any
security against sender address spoofing, looks like even less of an
issue to me.

Does anyone see any reasonable action on these (non-)issues?  If not, I
think the CVE should be rejected.  It's a case of "works as intended."

> >>>>> Use CVE-2020-12063.

Alexander
