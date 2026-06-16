X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/16/6
Message-ID: <CAOGQQ2-=F3aUoHka5W1=GQjRXZb4wULkRK+wHKLJsw6jp-OWkw@mail.gmail.com>
Date: Tue, 16 Jun 2026 12:43:00 -0300
From: Marco Benatto <mbenatto@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Pacemaker: Denial of Service via integer overflow in remote message decompression (CVE-2026-10649)
Content-Type: text/plain; charset=utf-8

Hello,

on behalf of Red Hat Product Security I'm writing to disclose a new
vulnerability on Pacemaker software that upstream is making public
today.

You can find the full report at the end of this message.

The patches for this vulnerability can be found at:
https://github.com/clusterLabs/pacemaker/pull/4128

The CVE ID should be published to CVE.ORG later today.
Please let me know if you have any questions.

Thanks,

==== CVE Report ====

CVE-2026-10649
CVSSv3.1: 8.6 CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L/A:H
Severity rating
(https://access.redhat.com/security/updates/classification/):
Important

Description:

A flaw was found in Pacemaker. An unauthenticated remote attacker can
exploit an integer overflow vulnerability in the remote message
decompression process. By sending a specially crafted compressed
remote message before authentication, an attacker can cause memory
corruption, leading to a denial of service (DoS) in the CIB remote
listener. This can cause the affected service to crash.

Acknowledgements: Found by AISLE in partnership with Red Hat

Notes: Although the original report mentions only the DoS as a
consequence, it doesn't rule out further memory corruption or RCE
(although unlikely).
Because of this, we decided to adopt CI:L in CVSS as the attacker may
be able to corrupt in-memory sensitive data or, in some cases, use
this vulnerability to try to exfiltrate data, but the lack
of total control over which data is corrupted seems very unlikely.

Original Report:
Summary: Integer Overflow in Remote Message Decompression: crafted pre-auth
compressed remote messages can wrap size calculations before allocation,
leading to memory corruption and denial of service in the CIB remote
listener.
Requirements to exploit: Network reachability to a `pacemaker-based` CIB
remote listener configured with `remote-port` or `remote-tls-port`, and the
ability to send a crafted compressed remote message before authentication.
The reproduction below demonstrates the fault on a 32-bit build with a
memory sanitizer.
Component affected: `pacemaker-3.0.1-5.el10`, `lib/common/remote.c`,
`pcmk__remote_message_xml()`, with the pre-auth call path through the CIB
remote listener in `daemons/based/based_remote.c`

Vulnerability Details: In the remote message decompression path,
attacker-controlled header values are used in size calculations before
allocation:
```c
if (header->payload_compressed) {
int rc = 0;
unsigned int size_u = 1 + header->payload_uncompressed;
char *uncompressed =
pcmk__assert_alloc(1, header->payload_offset + size_u);
...
rc = BZ2_bzBuffToBuffDecompress(uncompressed + header->payload_offset,
&size_u,
remote->buffer + header->payload_offset,
header->payload_compressed, 1, 0);
```
`payload_offset`, `payload_compressed`, and `payload_uncompressed` are
taken from the received remote message header, and there are no preceding
bounds or consistency checks on these fields before `size_u` and the
allocation length are derived. A crafted message can therefore cause `1 +
payload_uncompressed` or `payload_offset + size_u` to wrap before
allocation, leaving a small destination buffer while the decompressor is
still asked to produce a much larger output region.
This parsing occurs before client authentication on the CIB remote
listener, so an unauthenticated client that can reach that listener can
trigger the vulnerable path before `cib_remote_auth()` completes. The
available evidence supports a denial-of-service outcome through memory
corruption and crash. It does not establish confidentiality, integrity, or
code-execution impact, so those effects should be treated as unproven.
Steps to reproduce:
1. Build and run a 32-bit `pacemaker-based` with ASan or another memory
sanitizer, and enable `remote-port` or `remote-tls-port`.
2. Connect to the CIB remote listener and send one packet with
`payload_offset = 0x00000028`, `payload_uncompressed = 0xFFFFFFC0`,
`payload_compressed = len(bz2_payload)` where `bz2_payload =
bz2.compress(b"A"*512 + b"\x00")`, and `size_total = payload_offset +
payload_compressed`.
3. Send the header and `bz2_payload` as a single remote message.
4. Observe an out-of-bounds write or crash inside or immediately around
`BZ2_bzBuffToBuffDecompress()` from `pcmk__remote_message_xml()` before
authentication completes.
Note: `payload_uncompressed = UINT32_MAX` alone is not the best trigger.
Values near `UINT32_MAX` that make `payload_offset + (1 +
payload_uncompressed)` wrap are the more reliable case.
Mitigation: Disable the CIB remote listener where it is not required. If it
must remain enabled, restrict network access to trusted peers only. These
steps reduce exposure but do not correct the underlying validation flaw.

Marco Benatto
Red Hat Product Security
secalert@...hat.com for urgent response

