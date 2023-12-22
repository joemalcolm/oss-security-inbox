Received: (qmail 30622 invoked by uid 550); 22 Dec 2023 16:42:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22483 invoked from network); 22 Dec 2023 16:41:19 -0000
Date: Fri, 22 Dec 2023 17:41:56 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20231222164156.GA6189@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Fwd: [pfx-ann] Postfix stable release 3.8.4

----- Forwarded message from Wietse Venema via Postfix-announce <postfix-announce@postfix.org> -----

To: Postfix announce <postfix-announce@postfix.org>
Date: Fri, 22 Dec 2023 11:30:21 -0500 (EST)
CC: Postfix users <postfix-users@postfix.org>
Subject: [pfx-ann] Postfix stable release 3.8.4
From: Wietse Venema via Postfix-announce <postfix-announce@postfix.org>
Reply-To: Wietse Venema <wietse@porcupine.org>

[An on-line version of this announcement will be available at https://www.postfix.org/announcements/postfix-3.8.4.html]

Fixed with Postfix 3.8.4:

  * Security: this release adds support to defend
    against an email spoofing attack (SMTP smuggling) on
    recipients at a Postfix server. For background, see
    https://www.postfix.org/smtp-smuggling.html.

    Sites concerned about SMTP smuggling attacks should enable this
    feature on Internet-facing Postfix servers. For compatibility
    with non-standard clients, Postfix by default excludes clients
    in mynetworks from this countermeasure.

    The recommended settings are:

	# Optionally disconnect remote SMTP clients that send bare newlines,
	# but allow local clients with non-standard SMTP implementations
	# such as netcat, fax machines, or load balancer health checks.
	#
	smtpd_forbid_bare_newline = yes
	smtpd_forbid_bare_newline_exclusions = $mynetworks

    The smtpd_forbid_bare_newline feature is disabled by default.

You can find the updated Postfix source code at the mirrors listed at
https://www.postfix.org/.

	Wietse
_______________________________________________
Postfix-announce mailing list -- postfix-announce@postfix.org
To unsubscribe send an email to postfix-announce-leave@postfix.org

----- End forwarded message -----
