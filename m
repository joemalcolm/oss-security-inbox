Received: (qmail 14299 invoked by uid 550); 22 Jan 2024 14:27:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13983 invoked from network); 22 Jan 2024 14:27:11 -0000
Date: Mon, 22 Jan 2024 15:29:06 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Wietse Venema <wietse@porcupine.org>
Message-ID: <20240122142906.GA4821@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Postfix updated SMTP smuggling countermeasure

If I'm reading this right, the initial implementation of Postfix
smtpd_forbid_bare_newline disallowed bare LF not only at the end of
DATA, but also elsewhere in the SMTP session.  This is now relaxed in
the recommended "smtpd_forbid_bare_newline = normalize" mode to apply
only to the end of DATA, while allowing bare LFs elsewhere.  This is
sufficient to prevent the attack while having better compatibility with
existing SMTP clients.

----- Forwarded message from Wietse Venema via Postfix-announce <postfix-announce@postfix.org> -----

To: Postfix announce <postfix-announce@postfix.org>
Date: Mon, 22 Jan 2024 09:01:59 -0500 (EST)
Subject: [pfx-ann] Postfix stable release 3.8.5, 3.7.10, 3.6.14, 3.5.24
From: Wietse Venema via Postfix-announce <postfix-announce@postfix.org>
Reply-To: Wietse Venema <wietse@porcupine.org>

[An on-line version of this announcement will be available at
https://www.postfix.org/announcements/postfix-3.8.5.html]

[Fixes for Postfix versions < 3.5 will be announced at
https://www.postfix.org/smtp-smuggling.html]

Postfix stable release 3.8.5, 3.7.10, 3.6.14, 3.5.24

Security: this release improves support to defend against an email
spoofing attack (SMTP smuggling) on recipients at a Postfix server. For
background, see https://www.postfix.org/smtp-smuggling.html.

The improvements provide better logging, and better compatibility with
existing SMTP clients (less need to allowlist clients).

Sites concerned about SMTP smuggling attacks should enable this feature
on Internet-facing Postfix servers. For compatibility with non-standard
clients, Postfix by default excludes clients in mynetworks from this
countermeasure.

The recommended settings are:

    # Require the standard End-of-DATA sequence <CR><LF>.<CR><LF>.
    # Otherwise, allow bare <LF> and process it as if the client sent
    # <CR><LF>.
    #
    # This maintains compatibility with many legitimate SMTP client
    # applications that send a mix of standard and non-standard line
    # endings, but will fail to receive email from client implementations
    # that do not terminate DATA content with the standard End-of-DATA
    # sequence <CR><LF>.<CR><LF>.
    #
    # Such clients can be allowlisted with smtpd_forbid_bare_newline_exclusions.
    # The example below allowlists SMTP clients in trusted networks.
    #
    smtpd_forbid_bare_newline = normalize
    smtpd_forbid_bare_newline_exclusions = $mynetworks

Notes:

  * The default setting is "smtpd_forbid_bare_newline = no" in Postfix
    releases < 3.9, for compatibility reasons. This means that Postfix
    is by default vulnerable to SMTP smuggling.

  * The new setting "smtpd_forbid_bare_newline = normalize" is the
    default for Postfix releases 3.9 and later.

  * The old setting "smtpd_forbid_bare_newline = yes" is now an alias for
    "smtpd_forbid_bare_newline = normalize".

  * The new setting "smtpd_forbid_bare_newline = reject" will refuse
    commands or message content with a bare newline. For details see
    the RELEASE_NOTES or the postconf(5) documentation.

You can find the updated Postfix source code at the mirrors listed
at https://www.postfix.org/.

	Wietse
_______________________________________________
Postfix-announce mailing list -- postfix-announce@postfix.org
To unsubscribe send an email to postfix-announce-leave@postfix.org

----- End forwarded message -----
