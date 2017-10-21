X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1156" "Saturday" "21" "October" "2017" "12:03:37" "+0200" "Bastian Blank" "waldi@debian.org" "<20171021100336.2q44qr4hl76lmj2c@shell.thinkmo.de>" "28" "Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" "^Date:" nil nil "10" "2017102110:03:37" "[oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" (number mark "        waldi@debian Oct 21   28/1156  " thread-indent "\"Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync\"\n") "<20171020223757.GA28323@hunt>" ("<20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>" "<CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>" "<CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>" "<CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>" "<20171019194428.GK20315@hunt>" "<CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>" "<20171020223757.GA28323@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13429 invoked by uid 550); 21 Oct 2017 10:24:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21586 invoked from network); 21 Oct 2017 10:03:48 -0000
Message-ID: <20171021100336.2q44qr4hl76lmj2c@shell.thinkmo.de>
Mail-Followup-To: Bastian Blank <waldi@debian.org>,
	oss-security@lists.openwall.com
References: <20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>
 <CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>
 <CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>
 <CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>
 <20171019194428.GK20315@hunt>
 <CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>
 <20171020223757.GA28323@hunt>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20171020223757.GA28323@hunt>
User-Agent: NeoMutt/20170113 (1.7.2)
Date: Sat, 21 Oct 2017 12:03:37 +0200
From: Bastian Blank <waldi@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in
 Debian mirror script ftpsync
To: oss-security@lists.openwall.com

Hi Seth

On Fri, Oct 20, 2017 at 03:37:58PM -0700, Seth Arnold wrote:
> I'm not sure what 'script' vs 'not-script' has to do with anything.
> 'Script' really just means "interpreted programming language" and says
> nothing about the threat model in use.

Almost none of the so called script languages are interpreted.  They
include a compiler, usually compile the input to some form of byte-code
and executed it within a VM.  But that's just definition.

> Probably other programs use rsync without --safe-links when they should.
> I didn't know the option existed until this thread was started (seriously,
> rsync(1) is a HUGE manpage) so I'm grateful to the original reporter
> for sending it along.

Raising awareness was one reason why I asked for a CVE id instead of
just fixing it.  rsync, even if the protocol is really bad, is widly
used to mirror all sorts of software.  It is also a generic tool, so the
defaults are there to replicate the input as much as possible, not to be
safe from problematic things.

Regards,
Bastian

-- 
Humans do claim a great deal for that particular emotion (love).
		-- Spock, "The Lights of Zetar", stardate 5725.6
