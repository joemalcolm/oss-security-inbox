X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/1
Message-ID: <CAKtDSqBBsGgfgF4rBYYHvQ7Snxg0FDhCDYgBg1XXC9_f7XN7vg@mail.gmail.com>
Date: Thu, 6 Aug 2026 13:13:32 +0300
From: Sergei G <serg.gordey@...il.com>
To: oss-security@...ts.openwall.com
Subject: rust-in-peace: results from agent-assisted Rust OSS vulnerability research
Content-Type: text/plain; charset=utf-8

Hi list,

I want to share results from running an agent-assisted vulnerability-research
pipeline, rust-in-peace, against real-world Rust open source. I built it for
defensive-security work, then tested it on a mix of popular Rust crates and a
few larger consumers, including Chromium's Rust components and openai/codex.

Repository and methodology:
https://github.com/scadastrangelove/rust-in-peace

Full disclosure log:
https://github.com/scadastrangelove/rust-in-peace/blob/main/DISCLOSURES-PUBLIC.md

Numbers as of today:

- 63 findings independently confirmed with a dynamic proof-of-concept
- 71 reports sent to maintainers
- 33 fixes merged or otherwise resolved
- 7 private GHSAs currently accepted, drafting, or under review
- 2 bugs in Chromium's Rust-based image-processing code
- 3 in the HarfBuzz / Google Fonts text-shaping stack
- 6 in openai/codex (agent vs agent, hehe)

A few observations:

1. It works! But dynamic confirmation is the main quality gate

The pipeline is useful when every candidate has to reproduce against
the real crate or consumer build before it is reported. Static-only
findings are where most AI-assisted security work turns into noise. In
this project, candidates without a working proof-of-concept are
discarded or downgraded before they reach maintainers.

2. Rust removes many memory-safety bugs, but not security bugs

The confirmed findings include panics and denial-of-service on
untrusted input, algorithmic-complexity blowups, integer truncation
reaching unsafe code, soundness issues, and ordinary logic or "owasp"
bugs. These are not new classes of vulnerability, but the scale and
cost of finding reproducible instances has changed.

3. Dependency depth matters

Several findings became more interesting because the affected crate
was used two or three layers below a larger application. A bug in a
parser or codec can be reachable from a browser, CLI tool, or service
without being obvious from the top-level project.

For maintainers:

For maintainers specifically:
- If you reflexively shut the door on AI-assisted reports, you can
lose real signal along with the noise. The reports being AI-assisted
didn't make the underlying bugs less real. I'm not asking anyone to
lower your bar for report quality (please don't) — just to separate
"this report is poorly written / poorly scoped" from "this class of
report is worthless," because those are different problems with
different fixes. Use LLM triage agents (agent vs agent, hehe).
- Test your own code with AI agents. SAST failed/LLM works. It's cheap
now — a few dollars and an evening gets you a fuzzing harness or an
agentic pass that would have cost real engineering time two years ago.
If you don't do it, someone else will, and they won't necessarily tell
you first.
- The dependency-depth point above is a maintenance-load problem, not
just a security one. A fix three levels down doesn't help until every
intermediate crate re-publishes and every consumer re-pins. Worth
thinking about as a supply-chain property of the ecosystem, not a
one-off.

The larger point is that exploitability assumptions are changing. A
finding that used to be dismissed as "reachable, but no known exploit"
can now often be turned into a working proof-of-concept quickly and
cheaply. I do not think this means every low-severity crash deserves a
security advisory, but it does mean that triage policies built around
old exploit-development costs need another look. I don't have a clean
answer for what that means for the pile of accepted-risk legacy
findings sitting in every org's backlog, but I don't think "wait and
see" is a plan.

Happy to answer questions about the methodology, false-positive
handling, or any public finding in the disclosure log.

PS. I'd like to thank all the open source maintainers and
contributors. Both those who replied "merged, thanks" and those who
banned me from their repo. The industry is changing dramatically; open
source is the foundation, cybersecurity is the cement between the
bricks. Now, we need to find new approaches, not build fences.

Thanks,
Sergey Gordeychik
https://github.com/scadastrangelove
https://scadastrangelove.blogspot.com/
@scadasl
