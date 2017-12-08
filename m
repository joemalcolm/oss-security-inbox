X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6213" "Friday" "8" "December" "2017" "13:47:56" "+0100" "Marcus Brinkmann" "marcus.brinkmann@ruhr-uni-bochum.de" "<64350e00-a8db-0000-557f-30663fa41812@ruhr-uni-bochum.de>" "115" "Re: [oss-security] Re: Recommendations GnuPG-2 replacement" nil nil nil "12" "2017120812:47:56" "[oss-security] Re: Recommendations GnuPG-2 replacement" (number mark "U       marcus.brink Dec  8  115/6213  " thread-indent "\"Re: [oss-security] Re: Recommendations GnuPG-2 replacement\"\n") "<87r2s5xz3x.fsf@gnu.org>" ("<780d4f26-0803-6ef8-3a21-bcf8ea480a29@ruhr-uni-bochum.de>" "<87r2s5xz3x.fsf@gnu.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18150 invoked by uid 550); 8 Dec 2017 13:11:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5887 invoked from network); 8 Dec 2017 12:48:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ruhr-uni-bochum.de;
	s=mail-2017; t=1512737278;
	bh=g2TeWXxzbPjHYOEQjQELzpon8IXwyNGsD/lg0Dc3rlE=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=iWBMSE2Kl8I0U8kus2uuC51CwEpnjKB5Pml80C9z7jxLLwUuLVjSI1iSH7m/mywF4
	 /5mnprfmYl0q2gc2a+E01tuvR2xYrTA55L1y17d9Ee45gOnmqQMBQIaAS875mWmuXv
	 PgdHApsxdYQrmGZ5SB226BY+kVRZthVnGZmazkbY=
X-Envelope-Sender: <marcus.brinkmann@ruhr-uni-bochum.de>
X-RUB-Notes: Internal origin=134.147.42.227
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.99.2 at mx1.mail.ruhr-uni-bochum.de
To: =?UTF-8?Q?Ludovic_Court=c3=a8s?= <ludo@gnu.org>
Cc: oss-security@lists.openwall.com
References: <780d4f26-0803-6ef8-3a21-bcf8ea480a29@ruhr-uni-bochum.de>
 <87r2s5xz3x.fsf@gnu.org>
From: Marcus Brinkmann <marcus.brinkmann@ruhr-uni-bochum.de>
Message-ID: <64350e00-a8db-0000-557f-30663fa41812@ruhr-uni-bochum.de>
Date: Fri, 8 Dec 2017 13:47:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <87r2s5xz3x.fsf@gnu.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.99.2 at mail1.mail.ruhr-uni-bochum.de
X-Virus-Status: Clean
Subject: Re: [oss-security] Re: Recommendations GnuPG-2 replacement

On 12/08/2017 12:01 PM, Ludovic Courtès wrote:
> Hi Marcus,
> 
> Marcus Brinkmann <marcus.brinkmann@ruhr-uni-bochum.de> skribis:
> 
>> I started neopg.io two months ago to provide a modern replacement for
>> GnuPG.  It will go back to a single-binary architecture like gpg1 was,
>> but move forward on just about every other issue:
>>
>> * Written in C++
>> * based on the Botan crypto library instead of libgcrypt
>> * typical library + CLI (with subcommands) architecture
>> * better testing (CI, static analysis)
> 
> Given that you worked on GnuPG, can you give some background?  It isn’t
> clear to me why using C++/Botan/CMake to give a “modern” feel (what does
> it mean?) will lead to “better” software (under which criteria?).

These should all be blog entries.  In fact, I commented on CMake here:
https://neopg.io/blog/why-cmake/ The short version is: cmake has much
less boilerplate, more stable interfaces, and it is snappier to use
during development.  It is also well supported by all five major
platforms (Windows, MacOS, Linux, Android and iOS).

Efficiency is the major theme here.  I am a good programmer, I can solve
all the problems that C++, Botan and CMake solve for me.  But it doesn't
make sense, because then I would be bogged down in tangent issues that
don't help the users.

For C++: if you look at GnuPG source code, a huge part of it is about
memory management.  For example, there are several implementations of a
dynamically growing string buffer (membuf_t, es_fopenmem, several ad-hoc
implementations based on realloc).  The iobuf_t filter/pipe mechanism is
object-oriented.  The libgcrypt API is object oriented.  In theory, you
can write nice code in any language.  In practice, C++ has solved all
these problems years ago, and the language is evolving to include new
features (C++11, C++14, C++17), while C has stalled.  With C++ STL and
boost, you can kick out most platform dependent code.  std::mutex and
std::thread are now the same on Windows and Unix.  Boost::locale
replaces iconv and gettext.  It is much more efficient to program in C++
than in C. (BTW, C++ is a compromise.  I have a love-hate relationship
with the language, but I am picking languages for the job at hand, and
for a fork of GnuPG, it is the obvious choice to me).

For Botan: libgcrypt is a major maintenance burden on the GnuPG project.
 There have also been several embarassing CVEs this year, and crypto
researchers have commented negatively on Twitter.  To justify that,
you'd expect the library to be used by many.  Unfortunately, libgcrypt
has never seen much use outside the GnuPG project.  The only other major
user I am aware of was gnutls, which switched to libnettle in 2011
(http://lists.gnu.org/archive/html/gnutls-devel/2011-02/msg00079.html).
I also don't like how libgcrypt handles entropy. It makes a difference
between "weak" random and "strong" random, and it will block if it can't
get enough "entropy" from the system.  It is a very conservative
approach, and leads to bad user experience.

Botan on the other hand is actively developed, and provides several very
useful interfaces that not only replace libgcrypt for me, but also the
iobuf (pipe/filter) interface in GnuPG, libksba (GnuPG's ASN.1 parser
and X.509 support library), and several parts in dirmngr (certificate
cache).  Oh, and it has TLS support, while the GnuPG project is
currently working on its own TLS library ntbtls (which is based on an
old fork of PolarSSL). The maintainer is friendly and the project is
very active.  It has also been audited (and continues to be audited) by
a local IT security company in a contract with the BSI (German Federal
Office for Information Security).  They chose Botan after evaluating
many candidates, I hope that the documentation for the project will
eventually be released to the public, so we can all learn their reasons
and have better documentation of Botan internals.

> The multiple-process design in GnuPG had clear justifications
> AFAIK—e.g., having ‘dirmngr’ and ‘gnupg-agent’ in separate address
> spaces makes sense from a security standpoint.  Do you think these
> justifications no longer hold, or that the decisions were misguide?

I am not per se opposed to a multi-process design, but I'd rather have
short-lived processes that are started for a single task (like
decrypting a single message) than long-running daemons.  And I'd
actually use operating system features to actively isolate these
processes.  This is a complicated discussion, but note that gnupg's
implementation does not protect you from attackers who gain remote code
access to any process running under your uid[1], so the only protection
here is against accidental memory disclosure akin to heartbleed.  And
yes, heartbleed happened, so there is obviously some value to it, but so
far it is a single incident.  When it comes to prioritizing concerns,
process isolation comes somewhere below memory safety, code efficiency,
refactorisation, readability, etc.  So I'd argue that the "clear
justification" is not as clear as you make it sound.  The GnuPG project
is bouncing between "defense in depth" and "it's game over if your uid
is compromised" without a clear threat model from which to derive a
priority of concerns.

[1] https://dev.gnupg.org/T1211

> I’m also skeptical about “better testing” bit: GnuPG and libgcrypt are
> among the first pieces of software that crypto and security researchers
> look at, and they’re also the first ones to get fixes when new attack
> scenarios are devised.

I agree, and that would be a good reason for GnuPG to use openssl!
However, those researchers focus on the MPI multiplication in RSA, and
not on the porcelain around it.

>From a software engineering point of view: Does the current master
version pass the test suite? What is the code coverage of GnuPG's test
suite?  Which compilers and platforms are tested?  How often is the code
base fuzzed?  Is there any static code analysis done regularly?

> I’m sure you have a clear view on this but neopg.io doesn’t reflect> that.

Yes, I am lagging behind in documentation. I plan to write all this
down, and much more.

Thank you for your interest,
Marcus
