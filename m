X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1471" "Tuesday" "20" "October" "2015" "20:26:55" "+0300" "gremlin@gremlin.ru" "gremlin@gremlin.ru" "<20151020172655.GA23437@gremlin.ru>" "36" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015102017:26:55" "[oss-security] Prime example of a can of worms" (number mark "        gremlin@grem Oct 20   36/1471  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<CANO=Ty2kaJ3cyiq=-QAoSK3+0cw9QXdnam0H3Mqx6gNHVAcKrQ@mail.gmail.com>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "<CANO=Ty2ffi_iLEzRzX4rBi-7xLg8p8BmbfxZZVPZdh1ORmPFsw@mail.gmail.com>" "<76804C86-B1DC-44C1-9CD8-65A9A3915EB7@shub-internet.org>" "<CANO=Ty2kaJ3cyiq=-QAoSK3+0cw9QXdnam0H3Mqx6gNHVAcKrQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12125 invoked by uid 550); 20 Oct 2015 17:27:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12107 invoked from network); 20 Oct 2015 17:27:09 -0000
Message-ID: <20151020172655.GA23437@gremlin.ru>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com> <CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com> <20151019193411.GA15710@hunt> <87eggqmta9.fsf@alice.fifthhorseman.net> <CANO=Ty2ffi_iLEzRzX4rBi-7xLg8p8BmbfxZZVPZdh1ORmPFsw@mail.gmail.com> <76804C86-B1DC-44C1-9CD8-65A9A3915EB7@shub-internet.org> <CANO=Ty2kaJ3cyiq=-QAoSK3+0cw9QXdnam0H3Mqx6gNHVAcKrQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANO=Ty2kaJ3cyiq=-QAoSK3+0cw9QXdnam0H3Mqx6gNHVAcKrQ@mail.gmail.com>
OpenPGP: id=8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8
X-PGP-PubKey: 0xEF3B1FA8
X-PGP-Fingerprint: 8832 FE9F A791 F796 8AC9 6E4E 909D AC45 EF3B 1FA8
Date: Tue, 20 Oct 2015 20:26:55 +0300
From: gremlin@gremlin.ru
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security@lists.openwall.com

On 2015-10-20 10:22:40 -0600, Kurt Seifried wrote:

 > 1) in openssl does the -2/-5 option matter with respect to
 > security?

Actually, no: it's just a "generator", so it can be almost any small
prime number - say, 3 or 7 or whatever. It can even be just co-prime
to group modulo base.

However, the value 2 is the default in OpenSSL, so there may be some
space for experiments with birthdays paradox... especially when the
modulo is small.

 > 2) Openssl/gnutls (and likely others) all apparently have
 > slight variations on how they generate/test primes [...]
 > this worries me, diversity is good, but if not implemented
 > correctly. Do any best practices actually exist?

All implementations I know of simply use the randomized algorithms
with Miller-Rabin primality test.

 > 3) in testing for primeness how sure are we? Reading
[wikipedia: "Miller-Rabin primality test"]
 > and so on these tests are all "probably prime" but I can't find
 > any data to show that e.g. given this set of large primes, tested
 > against the various traditional primality methods, and then brute
 > forced to confirm they are prime/not prime, what % failed?

There's the Agrawal-Kayal-Saxena primality test, but I'm unaware of
any attempts to use it for checking the prime candidates which passed
the Miller-Rabin primality test.


-- 
Alexey V. Vissarionov aka Gremlin from Kremlin <gremlin נעי gremlin פ‏כ ru>
GPG: 8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8 @ hkp://keys.gnupg.net
