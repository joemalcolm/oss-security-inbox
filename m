Received: (qmail 22206 invoked by uid 550); 10 Apr 2026 02:58:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21958 invoked from network); 10 Apr 2026 02:58:06 -0000
Date: Fri, 10 Apr 2026 04:58:03 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20260410025803.GA20948@openwall.com>
References: <82bd2839-9db9-4ab4-9a7a-915e225a4450@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <82bd2839-9db9-4ab4-9a7a-915e225a4450@oracle.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Go 1.26.2 and Go 1.25.9 are released with 10 security fixes

On Wed, Apr 08, 2026 at 04:24:34PM -0700, Alan Coopersmith wrote:
> https://groups.google.com/g/golang-announce/c/0uYbvbPZRWU announces:
> >We have just released Go versions 1.26.2 and 1.25.9, minor point releases.
> >
> >These releases include 10 security fixes following the security policy:

This includes 2 issues in the compiler itself, which made some Go
programs not memory safe:

> >  * cmd/compile: no-op interface conversion bypasses overlap checking
> >
> >    Previously, the compiler failed to unwrap pointers contained within
> >    a no-op interface conversion leading to an incorrect determination
> >    of a non-overlapping move.
> >
> >    To prevent unsafe move operations, the compiler will now unwrap all
> >    such conversions before considering a move non-overlapping.
> >
> >    Thank you to Jakub Ciolek - https://ciolek.dev/ for reporting this 
> >    issue.
> >
> >    This is CVE-2026-27144 and Go issue https://go.dev/issue/78371.
> >
> >  * cmd/compile: possible memory corruption after bound check elimination
> >
> >    Previously, slices and arrays accessed using induction variables
> >    were sometimes incorrectly proved in-bound. If the induction variable
> >    used for indexing were to overflow or underflow, it could allow access
> >    to memory beyond the scope of the original slice or array.
> >
> >    To prevent this behavior, the compiler ensures that any mutated 
> >    induction
> >    variable that overflows/underflows with respect to its loop condition
> >    is not used for bound check elimination.
> >
> >    Thank you to Jakub Ciolek - https://ciolek.dev/ for reporting this 
> >    issue.
> >
> >    This is CVE-2026-27143 and Go issue https://go.dev/issue/78333.

Jakub Ciolek who found these 2 issues (and had inadvertently introduced
"the underlying issue behind the first bug [...] more than three years
earlier") posted an excellent write-up about them here:

https://ciolek.dev/posts/when-the-compiler-lies

Here's my quick attempt at a plain text conversion:

> When the compiler lies: breaking memory safety in safe Go
> 0001 go / memory safety / compilers
> 
> Early in March, I reported two compiler bugs affecting Go releases up to
> 1.26.1 which broke the Go memory safety guarantees using only safe Go
> code.
> 
> This means the proof-of-concepts did not import unsafe, did not use CGO
> and did not rely on custom assembly nor data races. Using specially
> constructed code, I was able to turn both bugs into control-flow hijack,
> and with the loop bug I also got execution of injected instructions.
> 
> I’m not including the full end-to-end exploits, to allow the fixed
> releases to become more widely available. I’ll briefly describe the
> issues and show the problematic code patterns though. An interesting
> learning from this, perhaps obvious to some people, is that memory
> safety is a property of the whole toolchain, not only the language
> itself.
> 
> I found the bugs after I decided to have a closer look at the compiler.
> I had reported several denial-of-service issues in the standard library
> before. I have spent a few years contributing smaller patches to the
> compiler on-and-off so it was a codebase I understood reasonably well.
> In late November I found two errors in the devel version of the prove
> optimization pass (the step that infers limits and “proves”
> facts about SSA values, among others to perform bounds check
> elimination).
> 
> If you exclude the generated rewrite tables, prove is basically the
> second largest backend SSA optimization pass, behind only the register
> allocator itself. It also deals with arithmetic and signedness, two easy
> ways to shoot yourself in the foot. It turned out, the hunch was correct
> as there were more problems lurking in that area. This time in the
> release versions of Go.
> 
> BUG 1: A LOOP THAT WRAPPED AND THE COMPILER SWORE IT DIDN’T
> 
> CVE-2026-27143
> 
> The first problem existed in the prove/loopbce reasoning about induction
> variables and bound checks.
> 
> The triggering shape is surprisingly simple:
> 
> for i := int8(0); i <= int8(120); i += int8(10) {
>     arr[i] = value
> }
> 
> Question to you: if i == 120 and you perform the iteration, then add 10
> to it, what will you get? What’s the answer? 130? It turns out the
> answer is -126. int8 has eight bits, it wraps.
> 
> That’s literally the whole bug. The compiler believed something
> different though.
> 
> If you make prove emit debug data, these are the facts it inferred:
> 
>     Induction variable: limits [0,120], increment 10
>     Proved IsInBounds
> 
> Once it takes those facts, it will confidently remove bound checking for
> array access if the array size fits within the induction variable
> limits. In this case, the index can become negative. With correct
> arrangement of surrounding code, we can make the program jump to an
> arbitrary address, change control flow or even inject instructions.
> 
> I must admit I could not believe this at first and reran the program
> many times on different machines and different versions of the compiler.
> Vulnerability hunting gives a large thrill when you finally confirm
> something is a real security bug. When I found it, I was really
> ecstatic, as bad as it sounds. That feeling would change soon, but more
> about that later.
> 
> BUG 2: A NO-OP CONVERSION THAT CHANGED NOTHING AND BROKE EVERYTHING
> 
> CVE-2026-27144
> 
> The second problem lived in another place, slightly later, in the SSA
> lowering phase. The compiler knows to be careful when copying from one
> part of an array into an overlapping nearby part. This is important for
> safety. It turns out, if you wrapped the source into a conversion that
> didn’t really change anything, the compiler forgot to do that.
> 
> type T [N][]uint64
> 
> // buggy shape
> *p = T(*q)
> 
> // control shape
> *p = *q
> 
> Those two lines should mean the same thing here. The conversion does not
> really matter, the overlap does. p and q can point at partially
> overlapping windows of the same underlying array. Once that is true, the
> compiler should use the careful copy path. If it does not do that, it
> can overwrite data it has not read yet. If you do that over simple data,
> you get a wrong result. If you do that over more complex composite
> values it gets more interesting. If you do that to slice values, later
> code still trusts the result. A harmless-looking assignment then turns
> into memory corruption.
> 
> TWO DISTINCT PROBLEMS, BUT REALLY THE SAME CAUSE
> 
> Those two bugs resided in two different parts of the compiler, but the
> root cause was the same. In the first case, the compiler erased the
> possibility of signed wrap. In the second one, it excluded the
> possibility of overlap.
> 
> Those were two different mechanisms of failure, but both caused by the
> same problem: counterfeit certainty. I guess that’s how compilers
> break, you can write some compiler code and it looks reasonable,
> there’s math and tests and everything seems correct. Things get
> reviewed by multiple people and merged, but it turns out you may
> accidentally upgrade “probably safe” into “proved safe”
> way too soon.
> 
> Then, once the compiler starts to generate and optimize code based on
> that promise, it will miscompile. Sometimes, like in those cases, you
> can make the code dance around it and break security boundaries.
> 
> THEN GIT BLAME GOT PERSONAL
> 
> As I was wrapping up the email to the Go security team, I sat down to
> write the last part of the advisory. I was still ecstatic about the
> find. The final part was to figure out when this was introduced. I did
> the routine thing and ran git blame.
> 
> It came back with my own name. That was not ideal and I did not like it.
> I got a sinking feeling in my stomach and went from feeling really smart
> to feeling really dumb, real fast.
> 
> It turns out that the underlying issue behind the first bug came from a
> CL I landed more than three years earlier.
> 
> I got over it by the next day and now see it as an amusing story, but it
> was quite an experience.
> 
> DISCLOSURE
> 
> I reported both issues back in March.
> 
> I must commend the Go security team as they are always excellent. Neal
> got back to me within 3 minutes of the first report and within 4 minutes
> of the second report. Mind you, those were sent days apart. Typically,
> the Go security advisories take up to a week to get a response. I guess
> seeing “memory corruption” and “compiler bug” in the
> same email thread speeds the process up.
> 
> I’ll publish the full minimized reproducers, deeper technical dive
> and more once the fixed releases become more broadly available.
> 
> LEARNINGS
> 
> The main learning for myself is that a memory-safe language is only as
> safe as the entire toolchain enforcing its invariants. Frontend,
> optimizer, lowering, runtime and code generation. All of those parts sit
> within the trust boundary. If parts of it start certifying wrong proofs
> and generating code on top of that, the source code can stay safe while
> the compiled program stops being memory-safe.
> 
> Every optimization is a security claim and most of the time those claims
> are true. In this case, those two were not.
> 
> STATUS
> 
> Disclosure in progress
> 
> Full end-to-end exploits and minimized reproducers are intentionally
> omitted until the fixed releases are more widely available.
> 
> AFFECTED
> 
> Two compiler bugs affecting release versions of Go up to 1.26.1.

Alexander
