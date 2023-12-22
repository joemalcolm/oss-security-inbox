Received: (qmail 5895 invoked by uid 550); 22 Dec 2023 22:44:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5665 invoked from network); 22 Dec 2023 22:44:44 -0000
Date: Fri, 22 Dec 2023 23:45:27 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20231222224527.GA6513@openwall.com>
References: <20231222164156.GA6189@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231222164156.GA6189@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Fwd: [pfx-ann] Postfix stable release 3.8.4

On Fri, Dec 22, 2023 at 05:41:56PM +0100, Solar Designer wrote:
> Subject: [pfx-ann] Postfix stable release 3.8.4

This was followed by almost identical announcements for 3 other stable
branches of Postfix, with the fix included in 3.7.9, 3.6.13, and 3.5.23.
I'm not forwarding those individual messages in here, but I thought it's
relevant to mention that these 4 branches/releases got the fix now.

> [An on-line version of this announcement will be available at https://www.postfix.org/announcements/postfix-3.8.4.html]
> 
> Fixed with Postfix 3.8.4:
> 
>   * Security: this release adds support to defend
>     against an email spoofing attack (SMTP smuggling) on
>     recipients at a Postfix server. For background, see
>     https://www.postfix.org/smtp-smuggling.html.
> 
>     Sites concerned about SMTP smuggling attacks should enable this
>     feature on Internet-facing Postfix servers. For compatibility
>     with non-standard clients, Postfix by default excludes clients
>     in mynetworks from this countermeasure.
> 
>     The recommended settings are:
> 
> 	# Optionally disconnect remote SMTP clients that send bare newlines,
> 	# but allow local clients with non-standard SMTP implementations
> 	# such as netcat, fax machines, or load balancer health checks.
> 	#
> 	smtpd_forbid_bare_newline = yes
> 	smtpd_forbid_bare_newline_exclusions = $mynetworks
> 
>     The smtpd_forbid_bare_newline feature is disabled by default.
> 
> You can find the updated Postfix source code at the mirrors listed at
> https://www.postfix.org/.
> 
> 	Wietse
> _______________________________________________
> Postfix-announce mailing list -- postfix-announce@postfix.org
> To unsubscribe send an email to postfix-announce-leave@postfix.org
> 
> ----- End forwarded message -----

Alexander
