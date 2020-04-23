X-VM-v5-Data: ([nil nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3202" "Thursday" "23" "April" "2020" "12:46:10" "-0400" "Wietse Venema" "wietse@porcupine.org" "<497NVB50jKzJrNv@spike.porcupine.org>" "80" "Re: [oss-security] spoofing of local email sender via a homoglyph attack" "^CC:" nil nil "4" "2020042316:46:10" "[oss-security] spoofing of local email sender via a homoglyph attack" (number mark "D       wietse@porcu Apr 23   80/3202  " thread-indent "\"Re: [oss-security] spoofing of local email sender via a homoglyph attack\"\n") "<20200423151430.GA21258@openwall.com>" nil nil nil nil nil nil nil nil "Re: [oss-security] spoofing of local email sender via a homoglyph attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0009
X-Mozilla-Status2: 00000000
Received: (qmail 11296 invoked by uid 550); 23 Apr 2020 16:53:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30488 invoked from network); 23 Apr 2020 16:46:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=porcupine.org;
	s=dktest; t=1587660370;
	bh=+a9N2hmwA/Iqlwf3uBLyblV8dYSdNDzbj+Rm+xD2aQc=;
	h=Subject:In-Reply-To:To:Date:CC:MIME-Version:
	 Content-Transfer-Encoding:Content-Type:Message-Id:From;
	b=cUdYXPejwViH7qdaul6jpyND0uEjiawJArSOGIDaenH0PSCEMRD0J3ZHb1T+GdPo3
	 vxqPA0qUSyTc5/Ik6j+4rXN6Qw2ZgRmkZYbpgV9mN6k3b7yej9/zTERRs9+JWr3N68
	 7P/cMkYV+B1N1YSnxKI3U6qE81kD5A9iDMydjDPE=
In-Reply-To: <20200423151430.GA21258@openwall.com>
X-Mailer: ELM [version 2.4ME+ PL124d (25)]
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="US-ASCII"
Message-Id: <497NVB50jKzJrNv@spike.porcupine.org>
CC: oss-security@lists.openwall.com, 
 PromiseLabs Pentest Research <pentest@promiselabs.net>, 
 Wietse Venema <wietse@porcupine.org>
Date: Thu, 23 Apr 2020 12:46:10 -0400 (EDT)
From: Wietse Venema <wietse@porcupine.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] spoofing of local email sender via a
 homoglyph attack
To: Solar Designer <solar@openwall.com>

Solar Designer:
> On Thu, Apr 23, 2020 at 05:32:15PM +0300, PromiseLabs Pentest Research wrote:
> > To follow up on your questions:
> 
> Thanks!  Now this is specific.
> 
> > The current configuration actually blocks any non-authorized requests as 
> > explained in the description. The use-case of this (from my perspective) 
> > is that it could be used to advance a social-engineer attack into 
> > tricking the recipients believing that they are getting an email from a 
> > high-level position at the company.
> > 
> > It's related to the from header.
> > 
> > Issuing a regular unauthenticated request, trying to send an email from 
> > john.doe, which is a high-level user at the company:
> > $ nc -v *** OMITTED *** 25
> > Connection to *** OMITTED *** 25 port [tcp/smtp] succeeded!
> > 220 *** OMITTED *** ESMTP Postfix
> > mail from: john.doe@server.com
> > 250 2.1.0 Ok
> > rcpt to: existing.user@server.com
> > 553 5.7.1 <john.doe@server.com>: Sender address rejected: not logged in
> > 
> > As you can see, the mail server rejects the request as the existing user 
> > hasn't authenticated himself.

There is only one place on Postfix that says "Sender address
rejected: not logged in". See code at end; it has not changed
in a decade.

Yoour Postfix SMTP server has been configured to require that an
SMTP client can send mail with envelope sender john.doe@server.com
ONLY if the client is logged in as the 'owner' of that address.

/etc/postfix/main.cf:
    smtpd_sender_login_maps = hash:/etc/postfix/sender_login

/etc/postfix/sender_login:
    # sender address    authorized logins
    john.doe@server.com sasluser1, sasluser2, ...

Sending email with a different envelope sender address, not in the
above table, would not be blocked by the smtpd_sender_login_maps
feature (but might still be blocked for other reasons).

So your concern has nothing to do with whether the addess
john.doe@server.com is a valid email address. Instead you're
probing the smtpd_sender_login_maps table.

Additionally, Postfix will reply with 5.1.1 User unknown if a local
recipient address is known to not exist. This is because the
alternative would be to accept all such email and silently discard
it, which violates RFCs, violates legislation in some countries
where rejecting email is allowed but accept+discard is not, and
which would saturate everyone's network with a continuous flood of
bogus email.

	Wietse

static int reject_unauth_sender_login_mismatch(SMTPD_STATE *state, const char *sender)
{
    const RESOLVE_REPLY *reply;

    /*
     * Reject if the client is not logged in and the sender address has an
     * owner.
     */
    if (smtpd_sender_login_maps && !state->sasl_username) {
        reply = smtpd_resolve_addr(state->recipient, sender);
        if (reply->flags & RESOLVE_FLAG_FAIL)
            reject_dict_retry(state, sender);
        if (check_mail_addr_find(state, sender, smtpd_sender_login_maps,
                                 STR(reply->recipient), (char **) 0) != 0)
            return (smtpd_check_reject(state, MAIL_ERROR_POLICY, 553, "5.7.1",
                   "<%s>: Sender address rejected: not logged in", sender));
    }
    return (SMTPD_CHECK_DUNNO);
}

