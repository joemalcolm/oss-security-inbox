X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/25
Message-ID: <CAK3hNHbx-CKaZO4370vWzsbpaSb-yymprXvqfY6MCyDwKPJicg@mail.gmail.com>
Date: Thu, 30 Jul 2026 12:26:19 -0700
From: Abhinav Agarwal <abhinavagarwal1996@...il.com>
To: oss-security@...ts.openwall.com
Subject: o6 Automation open62541: multiple CISA-coordinated OPC UA vulnerabilities
Content-Type: text/plain; charset=utf-8

CISA has published an advisory for four vulnerabilities in open62541, the
open-source OPC UA (IEC 62541) implementation maintained by o6 Automation
GmbH, affecting 1.3.0-1.3.17, 1.4.0-1.4.16, 1.5.0-1.5.4 and master:

  https://www.cisa.gov/news-events/ics-advisories/icsa-26-211-08

Fix status:

  All four fixes are in v1.3.19, v1.4.18 and v1.5.6, released 2026-07-27.
  I do not find them in v1.3.18, v1.4.17 or v1.5.5, so those three
  releases look affected as well.

  https://github.com/open62541/open62541/releases/tag/v1.5.6
  https://github.com/open62541/open62541/releases/tag/v1.4.18
  https://github.com/open62541/open62541/releases/tag/v1.3.19

Vulnerabilities and fixes (CVSS as published by CISA):

1. CVE-2026-63362 - PubSub signature verification integer underflow
   CVSS v3.1: 5.9 Medium (v4.0: 8.2)
   Fixed in: v1.3.19, v1.4.18, v1.5.6 (o6 advisory SA-2026-0014)
   Credit: Abhinav Agarwal

   verifyAndDecrypt() worked out the length of the signed region by
   subtracting the signature size from the buffer length, without
   checking that the buffer was at least that long. Both values are
   unsigned, so a short message wraps the result to near SIZE_MAX. In
   the tested mbedTLS build that length reaches the HMAC routine, which
   reads past the end of the allocation into unmapped memory and the
   process dies.

   Reaching it needs a build with PubSub encryption and a ReaderGroup in
   SIGN or SIGNANDENCRYPT mode, which is not the default. No session or
   client authentication is involved: the receive path decodes the
   headers, matches them against a configured DataSetReader and only
   then verifies, so the subtraction happens before the signature is
   known to be valid. The advisory describes the vector as a crafted UDP
   packet, which is what I tested; source review suggests MQTT reaches
   the same path, untested.

2. CVE-2026-63035 - TransferSubscriptions use-after-free
   CVSS v3.1: 8.1 High (v4.0: 7.2)
   Fixed in: v1.3.19, v1.4.18, v1.5.6 (o6 advisory SA-2026-0015)
   Credit: Abhinav Agarwal

   TransferSubscriptions moves a subscription between sessions. It
   copied the subscription struct and moved three of its intrusive lists
   to the new owner, but not samplingMonitoredItems. That list's head
   entry kept an le_prev back-pointer into the old struct, so once the
   old struct was freed, removing the item wrote through a stale
   pointer.

   Reproduced as a heap use-after-free write under AddressSanitizer on
   macOS arm64 and Linux x86-64. The uninstrumented release build kept
   running, so the sanitizer proves the write, not an outage, and I am
   not claiming code execution. On the build I tested (branch 1.4 at
   c132505de) a default server gave sessions to anonymous clients and
   the transfer needed only ordinary service calls, no malformed input.
   v1.4.17 and v1.5.5 stopped default access control from allowing
   transfer of a detached subscription - a separate finding by another
   researcher, fixed under o6 advisory SA-2026-0005 - but the list bug
   itself survived until v1.4.18 and v1.5.6.

3. CVE-2026-65423 - UA_Variant arrayDimensions integer overflow,
   out-of-bounds write
   CVSS v3.1: 8.8 High
   Fixed in: v1.3.19, v1.4.18, v1.5.6 (o6 advisories SA-2026-0012 and
   SA-2026-0013; one upstream commit covers both CVEs)
   Credit: Asher Davila and Malav Vyas

   The advisory describes an overflow in the arrayDimensions product
   computation that lets a remote attacker trigger an out-of-bounds
   write.

4. CVE-2026-63559 - UA_Variant arrayDimensions integer overflow,
   out-of-bounds read
   CVSS v3.1: 7.5 High
   Fixed in: v1.3.19, v1.4.18, v1.5.6 (same commit as above)
   Credit: Asher Davila and Malav Vyas

   The read side of the same computation: the advisory describes an
   out-of-bounds heap read that may disclose memory contents.

Coordination timeline:

  2026-05-07  Reported three issues to o6 Automation (one of the issue
              had been reported earlier by Lorenzo Cannella)
  2026-05-13  CERT/CC case opened
  2026-07-27  v1.3.19, v1.4.18 and v1.5.6 released
  2026-07-30  CISA advisory published as ICSA-26-211-08

Mitigation notes:

  * Update to v1.5.6, v1.4.18 or v1.3.19.
  * If you vendor open62541 into a product, check the copy you ship
    rather than your build host's package, and check the build options -
    what is compiled in decides which of these issues apply.
  * Keep OPC UA endpoints on trusted networks.

Several downstream vendors shipping affected versions were identified
from public sources. I notified their PSIRTs and they are remediating,
so I am not naming them.

PoC withheld at the vendor's request.

Additional background:

  https://abhinavagarwal07.github.io/posts/open62541-pubsub-transfersubscriptions-cves/

-- Abhinav Agarwal
