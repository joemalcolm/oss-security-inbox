X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["887" "Wednesday" "16" "May" "2018" "17:22:32" "+1000" "Brian May" "bam@debian.org" "<87sh6s5akn.fsf@silverfish.pri>" "21" "Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities" nil nil nil "5" "2018051607:22:32" "[oss-security] PGP/MIME and S/MIME mail clients vulnerabilities" (number mark "U       bam@debian.o May 16   21/887   " thread-indent "\"Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities\"\n") "<8c240b53-09e0-c365-ebac-c35da1714817@gaspard.io>" ("<6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org>" "<20180514102951.GD18567@256bit.org>" "<e4671df7733e6783cb7dd9ecce3062f4964fbf71.camel@debian.org>" "<8c240b53-09e0-c365-ebac-c35da1714817@gaspard.io>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26605 invoked by uid 550); 16 May 2018 10:20:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15574 invoked from network); 16 May 2018 07:22:48 -0000
From: Brian May <bam@debian.org>
To: oss-security@lists.openwall.com
In-Reply-To: <8c240b53-09e0-c365-ebac-c35da1714817@gaspard.io>
Organization: Debian
References: <6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org> <20180514102951.GD18567@256bit.org> <e4671df7733e6783cb7dd9ecce3062f4964fbf71.camel@debian.org> <8c240b53-09e0-c365-ebac-c35da1714817@gaspard.io>
Date: Wed, 16 May 2018 17:22:32 +1000
Message-ID: <87sh6s5akn.fsf@silverfish.pri>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities

Leo Gaspard <oss-security@leo.gaspard.ninja> writes:

> Just to add in about Thunderbird with Enigmail after 2.0.0:
>
> https://lists.gnupg.org/pipermail/gnupg-users/2018-May/060325.html
> https://lists.gnupg.org/pipermail/gnupg-users/2018-May/060327.html
> https://lists.gnupg.org/pipermail/gnupg-users/2018-May/060329.html
>
> So it looks like data encrypted with CAST5 (and possibly 3DES?) may be
> at risk even with Enigmail 2.0.0, with what I guess is latest GnuPG
> (don't know whether it is with 1.4, 2.2 or both, though), likely due to
> a GnuPG bug.

>From https://lists.gnupg.org/pipermail/gnupg-users/2018-May/060361.html:

"We should also be very careful to note that none of this discussion
thread applies to the MIME concatenation vulnerability, which is a
problem in Thunderbird and other mail clients, and which cannot be
solved by gnupg."
-- 
Brian May <bam@debian.org>
