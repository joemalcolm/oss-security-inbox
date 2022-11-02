Received: (qmail 28477 invoked by uid 550); 2 Nov 2022 17:17:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29773 invoked from network); 2 Nov 2022 16:32:55 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Tavis Ormandy <taviso@gmail.com>
Date: Wed, 2 Nov 2022 16:32:36 -0000 (UTC)
Message-ID: <tju633$t4h$1@ciao.gmane.io>
References: <20221101170833.GA10470@openwall.com>
 <Y2FhxvA/2e7xFUiF@itl-email>
 <alpine.BSF.2.21.9999.2211020631160.34372@aneurin.horsfall.org>
 <CAPWQ=1TzQ_e2yHZMXx6Tm4UJG3owZypShvm+VDoxEMcDSDxX+A@mail.gmail.com>
 <CAH8yC8mzcw-C257znYHH+qSyXoFVJWaAD=3dbvH3ZxymUtZU0A@mail.gmail.com>
 <tjtkiu$jeu$1@ciao.gmane.io>
 <CAFRnB2Wyc9uLMz8O-YLQ3JZ1-fUYWr+NpFecYyFYdA1YyB+sfA@mail.gmail.com>
User-Agent: slrn/pre1.0.4-5 (Linux)
Subject: [oss-security] Re: OpenSSL X.509 Email Address 4-byte Buffer Overflow
 (CVE-2022-3602), X.509 Email Address Variable Length Buffer Overflow
 (CVE-2022-3786)

On 2022-11-02, Alex Gaynor wrote:
> In Rust, assuming you wrote normal safe Rust[0], and you had code that
> overran a buffer on the stack, you'd get a panic() -- which is roughly
> an abort (there's even a mode where it literally is an abort. By
> default it unwinds and runs destructors and such). As a general rule,
> bounds check issues aren't caught at compile time (in contrast with
> temporal safety, which mostly is enforced at compile time.)
>

Got it - thanks! It seems like in the specific case of non-exploitable
overflows, rust wouldn't have made too much difference (abort() vs
panic())... although obviously that doesn't mean other issues wouldn't
have been mitigated.

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

