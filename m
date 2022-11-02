Received: (qmail 23979 invoked by uid 550); 2 Nov 2022 11:55:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32452 invoked from network); 2 Nov 2022 11:34:08 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Tavis Ormandy <taviso@gmail.com>
Date: Wed, 2 Nov 2022 11:33:50 -0000 (UTC)
Message-ID: <tjtkiu$jeu$1@ciao.gmane.io>
References: <20221101170833.GA10470@openwall.com>
 <Y2FhxvA/2e7xFUiF@itl-email>
 <alpine.BSF.2.21.9999.2211020631160.34372@aneurin.horsfall.org>
 <CAPWQ=1TzQ_e2yHZMXx6Tm4UJG3owZypShvm+VDoxEMcDSDxX+A@mail.gmail.com>
 <CAH8yC8mzcw-C257znYHH+qSyXoFVJWaAD=3dbvH3ZxymUtZU0A@mail.gmail.com>
User-Agent: slrn/pre1.0.4-5 (Linux)
Subject: [oss-security] Re: OpenSSL X.509 Email Address 4-byte Buffer Overflow
 (CVE-2022-3602), X.509 Email Address Variable Length Buffer Overflow
 (CVE-2022-3786)

On 2022-11-01, Jeffrey Walton wrote:
> On Tue, Nov 1, 2022 at 3:55 PM Pavan Maddamsetti
><pavan.maddamsetti@gmail.com> wrote:
>>
>> https://github.com/RustCrypto
>

I don't know rust, so serious question - if this same buggy punycode
routine had been written in rust, what would have happened?

- I assume you *could* write similar logic, but perhaps the argument is
  that idiomatic rust discourages it?
- Would rustc have been able to reason about the code well enough at
  compile time to error out?
- Just detect it at runtime and abort()?

If the answer is "error out", then I think that's a pretty convincing win.

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

