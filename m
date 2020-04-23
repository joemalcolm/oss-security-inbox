X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4197" "Thursday" "23" "April" "2020" "15:31:48" "+0200" "Solar Designer" "solar@openwall.com" "<20200423133148.GA19214@openwall.com>" "81" "Re: [oss-security] spoofing of local email sender via a homoglyph attack" "^Cc:" nil nil "4" "2020042313:31:48" "[oss-security] spoofing of local email sender via a homoglyph attack" (number mark "        solar@openwa Apr 23   81/4197  " thread-indent "\"Re: [oss-security] spoofing of local email sender via a homoglyph attack\"\n") "<ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net>" ("<20200422152047.3196780D981@smtprhmv1.mitre.org>" "<2843537f5deb3a7987c8485bcc56a260@promiselabs.net>" "<ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net>") nil nil nil nil nil nil nil "Re: [oss-security] spoofing of local email sender via a homoglyph attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14272 invoked by uid 550); 23 Apr 2020 13:32:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13749 invoked from network); 23 Apr 2020 13:31:59 -0000
Message-ID: <20200423133148.GA19214@openwall.com>
References: <20200422152047.3196780D981@smtprhmv1.mitre.org> <2843537f5deb3a7987c8485bcc56a260@promiselabs.net> <ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Thu, 23 Apr 2020 15:31:48 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] spoofing of local email sender via a homoglyph attack
To: PromiseLabs Pentest Research <pentest@promiselabs.net>

Hi,

As list moderator, I took the liberty of changing the Subject of this
posting to include the (claimed) vulnerability type, and not to single
out the possibly irrelevant choice of software/version.  The original
message Subject was:

Subject: Fwd: Re: [scr882459] postfix 2.10.1 (other versions may be affected)

To make having this in here reasonable, I think we should first consider
discussing the general (non-)issue and only then specific software.

Speaking mostly in general, not focusing on Postfix:

On Thu, Apr 23, 2020 at 03:10:55PM +0300, PromiseLabs Pentest Research wrote:
> >> Postfix allows an email from unsanitized input, pretending to be from
> >> an existing user on the mail system, which may look exactly the same.
> >> For example, it is possible sending an email using the hex character
> >> \xce\ xbf, which looks exactly like the letter 'o'. In case the user
> >> john.doe exists on the mail server, postfix would not allow to send an
> >> email from this email account unless an unauthorized attempt is made.
> >> However, in case we substitute the letter 'o' with the hex character
> >> \xce\xbf, it will look exactly like it's being sent from john.doe,
> >> although john.doe (j<\xce\xbf)hn.doe) is actually different from
> >> the other.

How exactly would a mail server block a message from an existing
username (even without the homoglyph attack for now), and under what
scenario - message being submitted locally or via SMTP?

For locally submitted messages, depending on mail server architecture,
it may be technically possible to infer the real sender (e.g., which
user invoked an SGID program to submit the message to the queue, or
which user connected to a Unix domain socket).  However, if so the mail
server would reasonably not merely block sending mail from other
existing local usernames (and allow mail from non-existent local-looking
usernames) but would rather insist on the message having the one correct
username specified as its sender (retrieving the username by UID and
either substituting it or comparing exact strings, so a homoglyph attack
is irrelevant).

For messages received via SMTP, the exact sender can generally not be
determined, but a message appearing to come from a locally hosted domain
name may be accepted or rejected or inbetween depending on anti-spam
settings and such (which may also provide limited anti-spoofing).  I'd
expect such configuration to be per-domain (applying regardless of
whether the claimed sender's name exists locally or not), not per-user.
While use cases can exist where it'd make sense to reject only messages
from usernames that exist locally, that feels like a special case, and I
doubt is a default configuration - or is it a default somewhere?  Even
if it is, is it an expected security feature (rather than a best-effort
anti-spam filter, perhaps one of many)?  That's highly doubtful.

Finally, are we talking about envelope-from, header From, header Sender,
or/and something else?

With these questions, I am trying to show that PromiseLabs' report
leaves so much unspecified that claiming a specific attack is premature.
Let alone request (and even successfully obtain) a CVE ID.

> > Use CVE-2020-12063.

So now we have a CVE ID specifically against Postfix while the issue is
probably generic (or possibly a non-issue, depending on how you look at
it) and if there's anything specific to Postfix here then it's possibly
Postfix actually trying to prevent spoofing (or just spam) in some
cases, but not doing so perfectly.  Should either of these cases really
result in a CVE ID against Postfix?

Also, is the issue (if one exists) potentially fixable?  Probably not
directly - that is, there's probably no reliable way to prevent just the
homoglyph attacks.  Instead, either whatever check possibly exists can
be removed or relaxed (also accept messages appearing from usernames
that do exist locally) for the sake of consistency, or the check can be
changed to be per-domain.  Either way, it'd not care about the usernames
anymore (assuming it currently somehow does).

I suggest that PromiseLabs research and describe the issue for real,
which in my opinion they did not yet.

Alexander
