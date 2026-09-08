X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/09/2
Message-ID: <20260909002018.2a455cbb@atlas-11>
Date: Wed, 9 Sep 2026 00:20:18 +0100
From: Denis Ovsienko <denis@...ienko.info>
To: oss-security@...ts.openwall.com
Subject: libpcap 1.10.7 fixes 7 vulnerabilities
Content-Type: text/plain; charset=utf-8

Hello all.

libpcap 1.10.7 has been published on 2026-09-05, its main focus is
fixing of the seven vulnerabilities briefly discussed below.  The full
record of each CVE (not included in this message) gives a more detailed
account of the problem and refers to a git commit with an even more
detailed explanation.

All users are advised to update.  For the CVE-2026-31912 fix to have
effect, application that use the now deprecated bpf_filter() must be
migrated to pcap_offline_filter().

Also this release makes it clear that the remote packet capture code is
still an experimental work in progress and is not yet safe enough for
production or non-trusted environments.  In practical terms, if you
package libpcap and specify any non-default build options, please
double-check the build does not enable remote packet capture by an
accident.  If it enables the feature deliberately, please make it clear
to the package users that the package includes experimental code that
has potential to be exploited remotely.  This applies to both the
client (libpcap) and the server (rpcapd) ends of an rpcap connection.

* CVE-2026-0799 (reported by Include Security in 2018, sponsored by
  Mozilla under the Secure Open Source program, but reproduced only in
  2026): In BPF instructions that load/store a value from/to a scratch
  memory register the register index is an unsigned 32-bit integer and
  must not exceed 15, but libpcap BPF interpreter does not validate the
  value.  In particular uncommon use cases a crafted filter program can
  cause the interpreter to try reading and writing the OS process
  memory in the 16GiB starting at the current stack frame on 64-bit
  architectures and in the entire address space on 32-bit architectures.

* CVE-2026-31912: libpcap BPF interpreter detects neither reaching the
  end of the filter program buffer due to lack of a return instruction
  nor executing a jump instruction with an offset that translates to a
  pointer outside of the buffer.  In particular uncommon use cases a
  crafted filter program can cause the interpreter to try reading the
  OS process memory in the 32GiB around the buffer on 64-bit
  architectures and in the entire address space on 32-bit architectures.

* CVE-2026-31911 (reported by FuzzAnything Organization): libpcap BPF
  interpreter calls abort() if it encounters a BPF instruction that has
  an invalid opcode.  In particular uncommon use cases a crafted filter
  program can terminate the OS process.

* CVE-2026-6244: libpcap BPF interpreter for the 'div #k' and 'mod #k'
  ALU instructions does not check whether the immediate value is zero.
  In particular uncommon use cases a crafted filter program can cause a
  division by zero.

* CVE-2026-6554 (reported by Kaixuan LI): libpcap BPF interpreter
  treats the offset in the 'ja L' BPF instruction as a signed integer
  to implement looping via backward jumps, but it does not limit the
  number of loop iterations.  In particular uncommon use cases a
  crafted filter program can cause the interpreter to loop infinitely.

* CVE-2026-18313: rpcapd can allocate up to 65536 bytes per each
  RPCAP_MSG_UPDATEFILTER_REQ or RPCAP_MSG_STARTCAP_REQ message received
  from the client, but it never frees the memory, so it leaks memory
  even under normal use.  A malicious client can cause the server to
  leak memory substantially faster.

* CVE-2026-18238: The rpcap client code that processes a
  RPCAP_MSG_PACKET message received from the server incorrectly
  validates its headers.  A malicious server can send a crafted message
  and cause the client to treat up to 20 bytes of the client process
  memory beyond the end of the buffer as if it was a part of the
  captured packet.

-- 
    Denis Ovsienko
