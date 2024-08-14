Received: (qmail 5716 invoked by uid 550); 14 Aug 2024 11:35:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11816 invoked from network); 14 Aug 2024 01:33:29 -0000
Date: Tue, 13 Aug 2024 21:32:14 -0400
From: "Mike O'Connor" <mjo@dojo.mi.org>
To: oss-security@lists.openwall.com
Message-ID: <ZrwJHjO8c5IFN-JZ@dojo.mi.org>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
X-Greylist: inspected by milter-greylist-4.5.11 (angus.mystery.com [127.0.0.1]); Tue, 13 Aug 2024 21:33:21 -0400 (EDT) for IP:'127.0.0.1' DOMAIN:'localhost' HELO:'angus.mystery.com' FROM:'mjo@dojo.mi.org' RCPT:''
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.11 (angus.mystery.com [127.0.0.1]); Tue, 13 Aug 2024 21:33:21 -0400 (EDT)
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

:OpenSSL is currently considering the deprecation of the TLS 1.0/1.1
:protocols.  Currently TLS1.1 and TLS 1.0 are disabled at run time, and
:requires enablement by reducing the ssl security level value.
:
:The current proposal under consideration is to explicitly disable TLS
:1.0/1.1 at build time, in our 4.0 release (tentatively scheduled to release
:in the next 12-18 months), with an eye to completely remove the impacted
:code in a future major release.  The default configuration could be
:overridden to re-enable TLS 1.0/1.1 at build time.
:
:Questions to the community are:
:
:1) Are distributions/users comfortable with this approach in the time frame
:proposed?

Not really.  Entities who control the OpenSSL they run on their
systems, OSes, etc. don't necessarily control all the broken things
that said systems/OSes need to interact with.   

:2) Would builders of OpenSSL consider using the default configuration (with
:TLS1.0/1.1 disabled in 4.0), or would they ship with these protocols
:re-enabled in their builds?

Either it'd be re-enabled in the build, or there'll be a fork that
supports TLS 1.0/1.1 in relative perpetuity.  It was only recently
that some mainstream Linuxes stopped shipping a compat openssl 0.9.8
and all the stale protocol baggage that goes along with that, for
support of some "business critical" commercial apps.  

:3) If the deprecated protocols are re-enabled, what would constitute a
:reasonable warning mechanism to inform users that these protocols are going
:away at some point in the future to pressure users to update to a newer,
:more secure protocol?

I'd be inclined to position such a move and associated warning message
in terms of PQC, which AFAIK doesn't and won't support TLS 1.0/1.1.
As PQC gets "refined", it wouldn't surprise me to see the quantum
computing boogeyman drive out TLS 1.0/1.1 in critical applications.
Let PQC be the spike that kills TLS 1.0/1.1 dead.  

I've been leery to post this for fear of going too far down some
"quantum" rat's nest.  So please, be gentle.


Take FWIW...
-Mike

-- 
 Michael J. O'Connor                                          mjo@dojo.mi.org
 =--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--=
"You can't teach an old dogma new tricks."                    -Dorothy Parker
