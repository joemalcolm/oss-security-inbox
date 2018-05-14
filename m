X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1367" "Monday" "14" "May" "2018" "12:29:51" "+0200" "Christian Brabandt" "cb@256bit.org" "<20180514102951.GD18567@256bit.org>" "34" "Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities" "^Date:" nil nil "5" "2018051410:29:51" "[oss-security] PGP/MIME and S/MIME mail clients vulnerabilities" (number mark "        cb@256bit.or May 14   34/1367  " thread-indent "\"Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities\"\n") "<6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org>" ("<6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1949 invoked by uid 550); 14 May 2018 10:30:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1923 invoked from network); 14 May 2018 10:30:03 -0000
Message-ID: <20180514102951.GD18567@256bit.org>
References: <6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Date: Mon, 14 May 2018 12:29:51 +0200
From: Christian Brabandt <cb@256bit.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities
To: oss-security@lists.openwall.com


On Mo, 14 Mai 2018, Yves-Alexis Perez wrote:

> I guess most people have already saw  this, but just in case, it seems that a
> vulnerability in PGP/MIME and S/MIME handling in various mail clients will be
> published tomorrow.
> 
> Debian Security team didn't get any private information yet, but there have
> been multiple twitter threads and blog posts published already:
> 
> https://twitter.com/seecurity/status/995906576170053633
> https://arstechnica.com/information-technology/2018/05/critical-pgp-and-smime-
> bugs-can-reveal-encrypted-e-mails-uninstall-now/
> https://www.eff.org/deeplinks/2018/05/attention-pgp-users-new-vulnerabilities-
> require-you-take-action-now
> 
> GnuPG has posted a tweet (https://twitter.com/gnupg/status/995931083584757760)
> indicating it's likely a vulnerability in mail clients themselves and not in
> the protocol, and which is related to HTML mail handling.
> 
> The vulnerabilities apparently enable an attacker to decrypt previous mails,
> but my (wild) guess is that the attack actually requests decryption from the
> mail client (which has access to the private key), rather than by actually
> decrypting itself.

Looks like details have just been published:
https://efail.de/

Best,
Christian
-- 
Ein Flirt ohne tiefere Absicht ist ungefähr so sinnvoll wie ein
Fahrplan ohne Eisenbahn.
		-- William Somerset Maugham
