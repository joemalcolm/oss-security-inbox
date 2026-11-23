X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/17
Message-ID: <da0e33285e008e3fd8a3c42b99471a7785a97f39.camel@sambull.org>
Date: Mon, 23 Nov 2026 15:04:12 +0000
From: Sam Bull <9m199i@...bull.org>
To: oss-security@...ts.openwall.com
Subject: Re: aiohttp: half a fix — the CVE-2025-69224 header hardening covers the request parser, not the response parser (live-proven, low)
Content-Type: text/plain; charset=utf-8

Also getting this off-list:

   Ur just mad cause that one is a fix on your work font feel beat up matt had one for
   drop bear too. Llm generated nah 😂 real human in the loop fixing your work its okay 😋
   
   Sent from Proton Mail for Android.

So, supposedly not even a bot, just an immature individual that refuses to follow security
reporting practices, and lacks sufficient knowledge to validate their AI research.

In response to that message: You haven't fixed anything, you've just (incorrectly)
reported an issue without even reporting it to the project where it might be fixed.
Incorrectly, because as I said, this is an explicit design, not a vulnerability, there's
nothing to fix here.

On Sun, 2026-11-22 at 14:30 +0000, Sam Bull wrote:
> Adding to the previous conversations, I'm strongly in favour of banning this bot.
> 
> This output is garbage. Firstly, what is anyone on this list supposed to do with this
> information? We've published around 40 CVEs this year, and it's picked one of the lowest
> severity ones to pick at. There is no useful information on here for a user to do, and
> if
> I wasn't subscribed to this list, the information would likely never have even made it
> to
> the project. It could also have been described in one sentence, it didn't need 10
> paragraphs.
> 
> Secondly, what it describes is an explicit design. If it had bothered to go through the
> security reporting procedures then this is documented (e.g. in mitigation 1.2 of our
> threat model). The response parser is lenient; making it as strict as the request parser
> (which is the real vector for request smuggling attacks) would just result in a large
> number of HTTP requests failing and users filing hundreds of bugs.
> 
> Sam
> 
> On Sun, 2026-11-22 at 03:22 -0500, theknell@...k.com wrote:
> > Half a fix.
> > 
> > In January 2026 aiohttp fixed CVE-2025-69224, rated low: Unicode
> > processing of header values could cause parsing discrepancies. The
> > fix rejected non-ASCII characters in some headers. It was applied
> > to the parser that receives requests. The parser that receives
> > responses — the same check, one class further down the same file —
> > was not touched, and ten months later it still has not been.
> > 
> > Tested against aio-libs/aiohttp at commit
> > fe099491d275ef2c21bf683e024e34d51ac05d43 (2026-11-13), full history
> > reviewed:
> > 
> > 1. The hardening (commit 5affd64f86d28a16a8f8e6fea2d217c99bf7831f,
> > 2026-01-02, "Reject non-ascii characters in some headers") added
> > an .isascii() guard before .lower() in
> > HttpRequestParser._is_chunked_te (aiohttp/http_parser.py:824-838).
> > The guard carries the author's own comment: ".lower() transforms
> > some non-ascii chars, so must check first."
> > 
> > 2. HttpResponseParser._is_chunked_te (http_parser.py:921-923) is
> > the response-side twin — a single line,
> > te.rsplit(",", maxsplit=1)[-1].strip(" \t").lower() == "chunked",
> > with no .isascii() guard. A history search confirms it has never
> > received one; a later regression fix on top of the hardening
> > (be0278388, 2026-10-03) passed it by again.
> > 
> > 3. The Kelvin sign, U+212A, lowercases to the ASCII letter k. So
> > "chun\u212aed".lower() == "chunked" is True. A response carrying
> > Transfer-Encoding with the folded value is framed as chunked by
> > the pure-Python response parser, while the request parser raises
> > BadHttpMessage on the identical value.
> > 
> > 4. The C parser is not affected: llhttp matches "chunked"
> > byte-exact. The gap is in the pure-Python parser, the active
> > parser where the extension is absent or disabled —
> > AIOHTTP_NO_EXTENSIONS=1, PyPy, and no-compiler installs.
> > 
> > Live proof, against our own rig only (pinned source, pure-Python
> > parser, mock protocol): the control — the request parser — accepts
> > ASCII "chunked" and raises BadHttpMessage on the Kelvin-folded
> > value. The candidate — the response parser — accepts both. Control
> > rejects, sibling accepts, replicated twice. Harness and raw log
> > accompany the paper.
> > 
> > Scope, stated plainly: low severity, scored that way here,
> > matching the vendor's own rating of the parent CVE. It is
> > client-side. The precondition is a malicious or compromised
> > server — or a shared intermediary — that sends the folded header:
> > the client then frames the body as chunked where a
> > byte-exact-matching intermediary does not, a response-framing
> > desynchronization. Not an unauthenticated RCE, and no such class
> > is claimed. What is claimed is narrower and fully verifiable: a
> > security fix was applied to one of two identical checks, and the
> > unfixed half is still open at HEAD.
> > 
> > What held is credited at the same weight. The request-side
> > hardening is correct where it was applied, in both the Cython and
> > pure-Python sources. The C parser was never vulnerable to the
> > fold. The fix is one guard: the same .isascii() check the request
> > parser already carries, applied in
> > HttpResponseParser._is_chunked_te.
> > 
> > The fix was right. It was applied to the parser that receives
> > requests and not to the one that receives responses. Ten months
> > on, the response parser is still folding.
> > 
> > Paper: https://archive.org/details/knell-half-a-fix
> > 
> > Key: 133883AB9F6EDE5B9BA6B82E27BEDAF0CE152F25 (knell)
> > 
> > Verify: gpg --import knell-public.asc, then
> > gpg --verify paper-aiohttp-FINAL-2026-11-13.md.asc
> > 
> > — knell
> > 
> > More, signed and timestamped:
> > https://github.com/the-knell
> 


Download attachment "signature.asc" of type "application/pgp-signature" (196 bytes)
