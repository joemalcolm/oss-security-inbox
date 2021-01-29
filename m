X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["26730" "Friday" "29" "January" "2021" "11:13:02" "+0100" "X41 D-Sec GmbH Advisories" "advisories@x41-dsec.de" "<4ee63fdd-7258-a690-c95b-bf50c22c0173@x41-dsec.de>" "637" "[oss-security] X41 D-Sec GmbH Security Advisory X41-2021-001: Multiple Vulnerabilities in YARA" nil nil nil "1" "2021012910:13:02" "[oss-security] X41 D-Sec GmbH Security Advisory X41-2021-001: Multiple Vulnerabilities in YARA" (number mark "U       advisories@x Jan 29  637/26730 " thread-indent "\"[oss-security] X41 D-Sec GmbH Security Advisory X41-2021-001: Multiple Vulnerabilities in YARA\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] X41 D-Sec GmbH Security Advisory X41-2021-001: Multiple Vulnerabilities in YARA" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12052 invoked by uid 550); 29 Jan 2021 10:14:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12022 invoked from network); 29 Jan 2021 10:14:35 -0000
From: X41 D-Sec GmbH Advisories <advisories@x41-dsec.de>
To: oss-security@lists.openwall.com
Message-ID: <4ee63fdd-7258-a690-c95b-bf50c22c0173@x41-dsec.de>
Date: Fri, 29 Jan 2021 11:13:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------6B198DECB630DE3E4000D4FD"
Content-Language: en-US
Subject: [oss-security] X41 D-Sec GmbH Security Advisory X41-2021-001: Multiple
 Vulnerabilities in YARA

--------------6B198DECB630DE3E4000D4FD
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

X41 D-Sec GmbH Security Advisory: X41-2021-001

Multiple Vulnerabilities in YARA
================================
Highest Severity Rating: Medium
Confirmed Affected Versions:  YARA v4.0.3 and earlier
Confirmed Patched Versions: YARA v4.0.4
Vendor: VirusTotal (Google Inc.)
Vendor URL: https://virustotal.github.io/yara
Credit: X41 D-Sec GmbH, Luis Merino
Status: Public
Advisory-URL: https://www.x41-dsec.de/lab/advisories/x41-2021-001-yara


Summary and Impact
------------------
An integer overflow and several buffer overflow reads in
libyara/modules/macho/macho.c in YARA v4.0.3 and earlier could allow an
attacker to either cause denial of service or information disclosure
via a malicious Mach-O file.


Product Description
-------------------
According to the official project description:


Integer overflow in macho_parse_fat_file()
==========================================
Severity Rating: Medium
Vector: Mach-O file sample
CVE: Pending
CWE: 190


Analysis
--------
An integer overflow in macho_parse_fat_file() while processing the
fat Mach-O file header can lead to arbitrary read.

    if (size < arch.offset + arch.size)
      continue;

    /* Force 'file' array entry creation. */
    set_integer(YR_UNDEFINED, object, "file[%i].magic", i);

    /* Get specific Mach-O file data. */
    macho_parse_file(
        data + arch.offset,
        arch.size,
        get_object(object, "file[%i]", i),
        context);

When the arch.offset + arch.size result does not fit in the uint64_t type
the result will wrap around and might allow to bypass the
size < arch.offset + arch.size sanity check. Afterwards,
macho_parse_file() will be called with buffer and size values that
could be invalid, resulting in arbitrary read and plausible infoleakage or a
denial of service.

Proof of Concept
----------------
Parse the
https://github.com/x41sec/advisories/tree/master/X41-2021-001/yara-reproducers/int-overflow-macho-parse-fat-file
sample via yr_rules_scan_mem().


Out-of-bounds reads in macho_parse_file() and others
====================================================
Severity Rating: Medium
Vector: Mach-O file sample
CVE: Pending
CWE: 125


Analysis
--------
Two for-loops iterate over input buffer data to extract and process
segments and other commands. Incorrect sanity checks lead to out of
bounds reads in several places.

It is also recommended to perform a sanity check on
command_struct.cmdsize, discarding those values where
command_struct.cmdsize<sizeof(yr_load_command_t).

   for (unsigned i = 0; i < header.ncmds; i++)
   {
- -    if (command - data < sizeof(yr_load_command_t))
+    if (data + size < command + sizeof(yr_load_command_t))
       break;

     memcpy(&command_struct, command, sizeof(yr_load_command_t));

    if (should_swap)
      swap_load_command(&command_struct);

- -    if (size < header_size + command_struct.cmdsize)
+    if (size - (command - data) < command_struct.cmdsize ||
command_struct.cmdsize < sizeof(yr_load_command_t))
       break;

Please note that this needs to be patched in the two similar for-loops.


Proof of Concept
----------------
Parse the
https://github.com/x41sec/advisories/tree/master/X41-2021-001/yara-reproducers/oob-macho-parse-file
sample via yr_rules_scan_mem().


Out-of-bounds reads in macho_handle_segment_64() and others
===========================================================
Severity Rating: Medium
Vector: Mach-O file sample
CVE: Pending
CWE: 125


Analysis
--------
macho_handle_segment_64() reads sizeof(yr_segment_command_64_t) bytes
from command without checking if the buffer is big enough.

  memcpy(&sg, command, sizeof(yr_segment_command_64_t));

This results in an out of bounds read when command is not big enough.
Infoleak
or denial of service could be a plausible outcome.

It is recommended to check at least sizeof(yr_segment_command_64_t)
bytes are available in command before calling macho_handle_segment64().

The same issue occurs when calling macho_handle_segment(),
macho_handle_unixthread() and macho_handle_main().

{
     case LC_SEGMENT:
+      if(command_struct.cmdsize < sizeof(yr_segment_command_32_t))
+        break;
       macho_handle_segment(command, seg_count++, object);
       break;
     case LC_SEGMENT_64:
+      if(command_struct.cmdsize < sizeof(yr_segment_command_64_t))
+        break;
       macho_handle_segment_64(command, seg_count++, object);
       break;
}

{
    case LC_UNIXTHREAD:
+     if(command_struct.cmdsize < sizeof(yr_thread_command_t))
+         break;
      macho_handle_unixthread(command, object, context);
      break;
    case LC_MAIN:
+     if(command_struct.cmdsize < sizeof(yr_entry_point_command_t))
+         break;
      macho_handle_main(command, object, context);
      break;
    }

}

Please note that we rely here on cmdsize having a safe value, which is
checked in the fix proposed for the previous finding.


Proof of Concept
----------------
Parse the
https://github.com/x41sec/advisories/tree/master/X41-2021-001/yara-reproducers/oob-macho-handle-segment,
https://github.com/x41sec/advisories/tree/master/X41-2021-001/yara-reproducers/oob-macho-handle-segment-64
samples via yr_rules_scan_mem().


Several out-of-bounds reads in macho_handle_unixthread()
========================================================
Severity Rating: Medium
Vector: Mach-O file sample
CVE: Pending
CWE: 125


Analysis
--------
macho_handle_unixthread() reads from command buffer without checking if
the buffer is big enough.

Firstly, sizeof(yr_thread_command_t) bytes are skipped in command,

  command = (void*) ((uint8_t*) command + sizeof(yr_thread_command_t));

which could result in command pointing out of bounds and triggering
invalid reads in subsequent command dereferences. It is recommended
to check at least sizeof(yr_thread_command_t) bytes are available
before calling macho_handle_unixthread().

    case LC_UNIXTHREAD:
+     if(size - (command - data) < sizeof(yr_thread_command_t))
+         break;
      macho_handle_unixthread(command, object, context);
      break;

Secondly, when reading the entry point for the different architectures,
it is
assumed the buffer is big enough to read the corresponding
yr_*_thread_state_t object. A not big enough buffer would lead to out
of bounds reads and maybe denial of service or infoleaks. It is
recommended to check at least enough bytes are available.

  int should_swap = should_swap_bytes(get_integer(object, "magic"));
  bool is64 = false;
  uint32_t s = ((yr_thread_command_t*)command)->cmdsize -
sizeof(yr_thread_command_t);
  command = (void*) ((uint8_t*) command + sizeof(yr_thread_command_t));
  uint64_t address = 0;

  switch (get_integer(object, "cputype"))
  {
   case CPU_TYPE_MC680X0:
   {
+    if (s < sizeof(yr_m68k_thread_state_t))
+      break;
     yr_m68k_thread_state_t* m68k_state = (yr_m68k_thread_state_t*) command;
     address = m68k_state->pc;
     break;
   }
   case CPU_TYPE_MC88000:
   {
+    if (s < sizeof(yr_m88k_thread_state_t))
+      break;
     yr_m88k_thread_state_t* m88k_state = (yr_m88k_thread_state_t*) command;
     address = m88k_state->xip;
     break;
   }
   case CPU_TYPE_SPARC:
   {
+    if (s < sizeof(yr_sparc_thread_state_t))
+      break;
     yr_sparc_thread_state_t* sparc_state = (yr_sparc_thread_state_t*)
command;
     address = sparc_state->pc;
     break;
   }
   case CPU_TYPE_POWERPC:
   {
+    if (s < sizeof(yr_ppc_thread_state_t))
+      break;
     yr_ppc_thread_state_t* ppc_state = (yr_ppc_thread_state_t*) command;
     address = ppc_state->srr0;
     break;
   }
   case CPU_TYPE_X86:
   {
+    if (s < sizeof(yr_x86_thread_state_t))
+      break;
     yr_x86_thread_state_t* x86_state = (yr_x86_thread_state_t*) command;
     address = x86_state->eip;
     break;
   }
   case CPU_TYPE_ARM:
   {
+    if (s < sizeof(yr_arm_thread_state_t))
+      break;
     yr_arm_thread_state_t* arm_state = (yr_arm_thread_state_t*) command;
     address = arm_state->pc;
     break;
   }
   case CPU_TYPE_X86_64:
   {
+    if (s < sizeof(yr_x86_thread_state64_t))
+      break;
     yr_x86_thread_state64_t* x64_state = (yr_x86_thread_state64_t*)
command;
     address = x64_state->rip;
     is64 = true;
   }
   case CPU_TYPE_ARM64:
   {
+    if (s < sizeof(yr_arm_thread_state64_t))
+      break;
     yr_arm_thread_state64_t* arm64_state = (yr_arm_thread_state64_t*)
command;
     address = arm64_state->pc;
     is64 = true;
   }
   case CPU_TYPE_POWERPC64:
   {
+    if (s < sizeof(yr_ppc_thread_state64_t))
+      break;
     yr_ppc_thread_state64_t* ppc64_state = (yr_ppc_thread_state64_t*)
command;
     address = ppc64_state->srr0;
     is64 = true;

Please note that we rely here on cmdsize having a safe value, which is
checked in one of the fixes proposed above.

Proof of Concept
-----------------
Parse the
https://github.com/x41sec/advisories/tree/master/X41-2021-001/yara-reproducers/oob-macho-handle-unixthread
sample via yr_rules_scan_mem().


Out-of-bounds read in macho_is_32()
===================================
Severity Rating: Medium
Vector: Mach-O file sample
CVE: Pending
CWE: 125


Analysis
---------
macho_parse_file() calls macho_is_32(data) without checking that size is at
least 4 bytes. An out of bounds read happens when size < 4. Depending on
the initial parsed file size, data buffer could come from a mmaped
region and the OOB read could lead to a denial of service.

It is recommended to return from the function when size < 4.

+  if (size < 4)
+    return;
+
   size_t header_size = macho_is_32(data) ? sizeof(yr_mach_header_32_t)
                                          : sizeof(yr_mach_header_64_t);


Proof of Concept
----------------
Parse the
https://github.com/x41sec/advisories/tree/master/X41-2021-001/yara-reproducers/oob-macho-is-32.v2
sample via yr_rules_scan_mem().


Timeline
========
2021-01-16 Issues found
2021-01-20 Issues and patches reported to the vendor
2021-01-21 Vendor reply with acknowledge and final patches
2021-01-22 CVEs request (pending)
2021-01-27 Fixed release (v4.0.4)
2021-01-28 Advisory published

About X41 D-SEC GmbH
====================
X41 is an expert provider for application security services.
Having extensive industry experience and expertise in the area of
information security, a strong core security team of world class
security experts enables X41 to perform premium security services.

Fields of expertise in the area of application security are security
centered code reviews, binary reverse engineering and vulnerability
discovery. Custom research and IT security consulting and support
services are core competencies of X41.



--------------6B198DECB630DE3E4000D4FD
Content-Type: text/plain; charset=UTF-8;
 name="x41-2021-001-yara.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="x41-2021-001-yara.txt"

WDQxIEQtU2VjIEdtYkggU2VjdXJpdHkgQWR2aXNvcnk6IFg0MS0yMDIxLTAw
MQoKTXVsdGlwbGUgVnVsbmVyYWJpbGl0aWVzIGluIFlBUkEKPT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT0KSGlnaGVzdCBTZXZlcml0eSBSYXRp
bmc6IE1lZGl1bQpDb25maXJtZWQgQWZmZWN0ZWQgVmVyc2lvbnM6ICBZQVJB
IHY0LjAuMyBhbmQgZWFybGllcgpDb25maXJtZWQgUGF0Y2hlZCBWZXJzaW9u
czogWUFSQSB2NC4wLjQKVmVuZG9yOiBWaXJ1c1RvdGFsIChHb29nbGUgSW5j
LikKVmVuZG9yIFVSTDogaHR0cHM6Ly92aXJ1c3RvdGFsLmdpdGh1Yi5pby95
YXJhCkNyZWRpdDogWDQxIEQtU2VjIEdtYkgsIEx1aXMgTWVyaW5vClN0YXR1
czogUHVibGljCkFkdmlzb3J5LVVSTDogaHR0cHM6Ly93d3cueDQxLWRzZWMu
ZGUvbGFiL2Fkdmlzb3JpZXMveDQxLTIwMjEtMDAxLXlhcmEKCgpTdW1tYXJ5
IGFuZCBJbXBhY3QKLS0tLS0tLS0tLS0tLS0tLS0tCkFuIGludGVnZXIgb3Zl
cmZsb3cgYW5kIHNldmVyYWwgYnVmZmVyIG92ZXJmbG93IHJlYWRzIGluCmxp
YnlhcmEvbW9kdWxlcy9tYWNoby9tYWNoby5jIGluIFlBUkEgdjQuMC4zIGFu
ZCBlYXJsaWVyIGNvdWxkIGFsbG93IGFuCmF0dGFja2VyIHRvIGVpdGhlciBj
YXVzZSBkZW5pYWwgb2Ygc2VydmljZSBvciBpbmZvcm1hdGlvbiBkaXNjbG9z
dXJlCnZpYSBhIG1hbGljaW91cyBNYWNoLU8gZmlsZS4KCgpQcm9kdWN0IERl
c2NyaXB0aW9uCi0tLS0tLS0tLS0tLS0tLS0tLS0KQWNjb3JkaW5nIHRvIHRo
ZSBvZmZpY2lhbCBwcm9qZWN0IGRlc2NyaXB0aW9uOgoKCkludGVnZXIgb3Zl
cmZsb3cgaW4gbWFjaG9fcGFyc2VfZmF0X2ZpbGUoKQo9PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KU2V2ZXJpdHkgUmF0aW5n
OiBNZWRpdW0KVmVjdG9yOiBNYWNoLU8gZmlsZSBzYW1wbGUKQ1ZFOiBQZW5k
aW5nCkNXRTogMTkwCgoKQW5hbHlzaXMKLS0tLS0tLS0KQW4gaW50ZWdlciBv
dmVyZmxvdyBpbiBtYWNob19wYXJzZV9mYXRfZmlsZSgpIHdoaWxlIHByb2Nl
c3NpbmcgdGhlCmZhdCBNYWNoLU8gZmlsZSBoZWFkZXIgY2FuIGxlYWQgdG8g
YXJiaXRyYXJ5IHJlYWQuCgogICAgaWYgKHNpemUgPCBhcmNoLm9mZnNldCAr
IGFyY2guc2l6ZSkKICAgICAgY29udGludWU7CgogICAgLyogRm9yY2UgJ2Zp
bGUnIGFycmF5IGVudHJ5IGNyZWF0aW9uLiAqLwogICAgc2V0X2ludGVnZXIo
WVJfVU5ERUZJTkVELCBvYmplY3QsICJmaWxlWyVpXS5tYWdpYyIsIGkpOwoK
ICAgIC8qIEdldCBzcGVjaWZpYyBNYWNoLU8gZmlsZSBkYXRhLiAqLwogICAg
bWFjaG9fcGFyc2VfZmlsZSgKICAgICAgICBkYXRhICsgYXJjaC5vZmZzZXQs
CiAgICAgICAgYXJjaC5zaXplLAogICAgICAgIGdldF9vYmplY3Qob2JqZWN0
LCAiZmlsZVslaV0iLCBpKSwKICAgICAgICBjb250ZXh0KTsKCldoZW4gdGhl
IGFyY2gub2Zmc2V0ICsgYXJjaC5zaXplIHJlc3VsdCBkb2VzIG5vdCBmaXQg
aW4gdGhlIHVpbnQ2NF90IHR5cGUKdGhlIHJlc3VsdCB3aWxsIHdyYXAgYXJv
dW5kIGFuZCBtaWdodCBhbGxvdyB0byBieXBhc3MgdGhlCnNpemUgPCBhcmNo
Lm9mZnNldCArIGFyY2guc2l6ZSBzYW5pdHkgY2hlY2suIEFmdGVyd2FyZHMs
Cm1hY2hvX3BhcnNlX2ZpbGUoKSB3aWxsIGJlIGNhbGxlZCB3aXRoIGJ1ZmZl
ciBhbmQgc2l6ZSB2YWx1ZXMgdGhhdApjb3VsZCBiZSBpbnZhbGlkLCByZXN1
bHRpbmcgaW4gYXJiaXRyYXJ5IHJlYWQgYW5kIHBsYXVzaWJsZSBpbmZvbGVh
a2FnZSBvciBhCmRlbmlhbCBvZiBzZXJ2aWNlLgoKUHJvb2Ygb2YgQ29uY2Vw
dAotLS0tLS0tLS0tLS0tLS0tClBhcnNlIHRoZSBodHRwczovL2dpdGh1Yi5j
b20veDQxc2VjL2Fkdmlzb3JpZXMvdHJlZS9tYXN0ZXIvWDQxLTIwMjEtMDAx
L3lhcmEtcmVwcm9kdWNlcnMvaW50LW92ZXJmbG93LW1hY2hvLXBhcnNlLWZh
dC1maWxlCnNhbXBsZSB2aWEgeXJfcnVsZXNfc2Nhbl9tZW0oKS4KCgpPdXQt
b2YtYm91bmRzIHJlYWRzIGluIG1hY2hvX3BhcnNlX2ZpbGUoKSBhbmQgb3Ro
ZXJzCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0KU2V2ZXJpdHkgUmF0aW5nOiBNZWRpdW0KVmVjdG9yOiBN
YWNoLU8gZmlsZSBzYW1wbGUKQ1ZFOiBQZW5kaW5nCkNXRTogMTI1CgoKQW5h
bHlzaXMKLS0tLS0tLS0KVHdvIGZvci1sb29wcyBpdGVyYXRlIG92ZXIgaW5w
dXQgYnVmZmVyIGRhdGEgdG8gZXh0cmFjdCBhbmQgcHJvY2VzcwpzZWdtZW50
cyBhbmQgb3RoZXIgY29tbWFuZHMuIEluY29ycmVjdCBzYW5pdHkgY2hlY2tz
IGxlYWQgdG8gb3V0IG9mCmJvdW5kcyByZWFkcyBpbiBzZXZlcmFsIHBsYWNl
cy4KCkl0IGlzIGFsc28gcmVjb21tZW5kZWQgdG8gcGVyZm9ybSBhIHNhbml0
eSBjaGVjayBvbgpjb21tYW5kX3N0cnVjdC5jbWRzaXplLCBkaXNjYXJkaW5n
IHRob3NlIHZhbHVlcyB3aGVyZQpjb21tYW5kX3N0cnVjdC5jbWRzaXplPHNp
emVvZih5cl9sb2FkX2NvbW1hbmRfdCkuCgogICBmb3IgKHVuc2lnbmVkIGkg
PSAwOyBpIDwgaGVhZGVyLm5jbWRzOyBpKyspCiAgIHsKLSAtICAgIGlmIChj
b21tYW5kIC0gZGF0YSA8IHNpemVvZih5cl9sb2FkX2NvbW1hbmRfdCkpCisg
ICAgaWYgKGRhdGEgKyBzaXplIDwgY29tbWFuZCArIHNpemVvZih5cl9sb2Fk
X2NvbW1hbmRfdCkpCiAgICAgICBicmVhazsKIAogICAgIG1lbWNweSgmY29t
bWFuZF9zdHJ1Y3QsIGNvbW1hbmQsIHNpemVvZih5cl9sb2FkX2NvbW1hbmRf
dCkpOwoKICAgIGlmIChzaG91bGRfc3dhcCkKICAgICAgc3dhcF9sb2FkX2Nv
bW1hbmQoJmNvbW1hbmRfc3RydWN0KTsKCi0gLSAgICBpZiAoc2l6ZSA8IGhl
YWRlcl9zaXplICsgY29tbWFuZF9zdHJ1Y3QuY21kc2l6ZSkKKyAgICBpZiAo
c2l6ZSAtIChjb21tYW5kIC0gZGF0YSkgPCBjb21tYW5kX3N0cnVjdC5jbWRz
aXplIHx8IGNvbW1hbmRfc3RydWN0LmNtZHNpemUgPCBzaXplb2YoeXJfbG9h
ZF9jb21tYW5kX3QpKQogICAgICAgYnJlYWs7CgpQbGVhc2Ugbm90ZSB0aGF0
IHRoaXMgbmVlZHMgdG8gYmUgcGF0Y2hlZCBpbiB0aGUgdHdvIHNpbWlsYXIg
Zm9yLWxvb3BzLgoKClByb29mIG9mIENvbmNlcHQKLS0tLS0tLS0tLS0tLS0t
LQpQYXJzZSB0aGUgaHR0cHM6Ly9naXRodWIuY29tL3g0MXNlYy9hZHZpc29y
aWVzL3RyZWUvbWFzdGVyL1g0MS0yMDIxLTAwMS95YXJhLXJlcHJvZHVjZXJz
L29vYi1tYWNoby1wYXJzZS1maWxlCnNhbXBsZSB2aWEgeXJfcnVsZXNfc2Nh
bl9tZW0oKS4KCgpPdXQtb2YtYm91bmRzIHJlYWRzIGluIG1hY2hvX2hhbmRs
ZV9zZWdtZW50XzY0KCkgYW5kIG90aGVycwo9PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQpTZXZl
cml0eSBSYXRpbmc6IE1lZGl1bQpWZWN0b3I6IE1hY2gtTyBmaWxlIHNhbXBs
ZQpDVkU6IFBlbmRpbmcKQ1dFOiAxMjUKCgpBbmFseXNpcwotLS0tLS0tLQpt
YWNob19oYW5kbGVfc2VnbWVudF82NCgpIHJlYWRzIHNpemVvZih5cl9zZWdt
ZW50X2NvbW1hbmRfNjRfdCkgYnl0ZXMKZnJvbSBjb21tYW5kIHdpdGhvdXQg
Y2hlY2tpbmcgaWYgdGhlIGJ1ZmZlciBpcyBiaWcgZW5vdWdoLgoKICBtZW1j
cHkoJnNnLCBjb21tYW5kLCBzaXplb2YoeXJfc2VnbWVudF9jb21tYW5kXzY0
X3QpKTsKClRoaXMgcmVzdWx0cyBpbiBhbiBvdXQgb2YgYm91bmRzIHJlYWQg
d2hlbiBjb21tYW5kIGlzIG5vdCBiaWcgZW5vdWdoLiBJbmZvbGVhawpvciBk
ZW5pYWwgb2Ygc2VydmljZSBjb3VsZCBiZSBhIHBsYXVzaWJsZSBvdXRjb21l
LiAKCkl0IGlzIHJlY29tbWVuZGVkIHRvIGNoZWNrIGF0IGxlYXN0IHNpemVv
Zih5cl9zZWdtZW50X2NvbW1hbmRfNjRfdCkKYnl0ZXMgYXJlIGF2YWlsYWJs
ZSBpbiBjb21tYW5kIGJlZm9yZSBjYWxsaW5nIG1hY2hvX2hhbmRsZV9zZWdt
ZW50NjQoKS4KClRoZSBzYW1lIGlzc3VlIG9jY3VycyB3aGVuIGNhbGxpbmcg
bWFjaG9faGFuZGxlX3NlZ21lbnQoKSwKbWFjaG9faGFuZGxlX3VuaXh0aHJl
YWQoKSBhbmQgbWFjaG9faGFuZGxlX21haW4oKS4KCnsKICAgICBjYXNlIExD
X1NFR01FTlQ6CisgICAgICBpZihjb21tYW5kX3N0cnVjdC5jbWRzaXplIDwg
c2l6ZW9mKHlyX3NlZ21lbnRfY29tbWFuZF8zMl90KSkKKyAgICAgICAgYnJl
YWs7CiAgICAgICBtYWNob19oYW5kbGVfc2VnbWVudChjb21tYW5kLCBzZWdf
Y291bnQrKywgb2JqZWN0KTsKICAgICAgIGJyZWFrOwogICAgIGNhc2UgTENf
U0VHTUVOVF82NDoKKyAgICAgIGlmKGNvbW1hbmRfc3RydWN0LmNtZHNpemUg
PCBzaXplb2YoeXJfc2VnbWVudF9jb21tYW5kXzY0X3QpKQorICAgICAgICBi
cmVhazsKICAgICAgIG1hY2hvX2hhbmRsZV9zZWdtZW50XzY0KGNvbW1hbmQs
IHNlZ19jb3VudCsrLCBvYmplY3QpOwogICAgICAgYnJlYWs7Cn0KCnsKICAg
IGNhc2UgTENfVU5JWFRIUkVBRDoKKyAgICAgaWYoY29tbWFuZF9zdHJ1Y3Qu
Y21kc2l6ZSA8IHNpemVvZih5cl90aHJlYWRfY29tbWFuZF90KSkKKyAgICAg
ICAgIGJyZWFrOwogICAgICBtYWNob19oYW5kbGVfdW5peHRocmVhZChjb21t
YW5kLCBvYmplY3QsIGNvbnRleHQpOwogICAgICBicmVhazsKICAgIGNhc2Ug
TENfTUFJTjoKKyAgICAgaWYoY29tbWFuZF9zdHJ1Y3QuY21kc2l6ZSA8IHNp
emVvZih5cl9lbnRyeV9wb2ludF9jb21tYW5kX3QpKQorICAgICAgICAgYnJl
YWs7CiAgICAgIG1hY2hvX2hhbmRsZV9tYWluKGNvbW1hbmQsIG9iamVjdCwg
Y29udGV4dCk7CiAgICAgIGJyZWFrOwogICAgfQoKfQoKUGxlYXNlIG5vdGUg
dGhhdCB3ZSByZWx5IGhlcmUgb24gY21kc2l6ZSBoYXZpbmcgYSBzYWZlIHZh
bHVlLCB3aGljaCBpcwpjaGVja2VkIGluIHRoZSBmaXggcHJvcG9zZWQgZm9y
IHRoZSBwcmV2aW91cyBmaW5kaW5nLgoKClByb29mIG9mIENvbmNlcHQKLS0t
LS0tLS0tLS0tLS0tLQpQYXJzZSB0aGUgaHR0cHM6Ly9naXRodWIuY29tL3g0
MXNlYy9hZHZpc29yaWVzL3RyZWUvbWFzdGVyL1g0MS0yMDIxLTAwMS95YXJh
LXJlcHJvZHVjZXJzL29vYi1tYWNoby1oYW5kbGUtc2VnbWVudCwKaHR0cHM6
Ly9naXRodWIuY29tL3g0MXNlYy9hZHZpc29yaWVzL3RyZWUvbWFzdGVyL1g0
MS0yMDIxLTAwMS95YXJhLXJlcHJvZHVjZXJzL29vYi1tYWNoby1oYW5kbGUt
c2VnbWVudC02NApzYW1wbGVzIHZpYSB5cl9ydWxlc19zY2FuX21lbSgpLgoK
ClNldmVyYWwgb3V0LW9mLWJvdW5kcyByZWFkcyBpbiBtYWNob19oYW5kbGVf
dW5peHRocmVhZCgpCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09ClNldmVyaXR5IFJhdGluZzogTWVk
aXVtClZlY3RvcjogTWFjaC1PIGZpbGUgc2FtcGxlCkNWRTogUGVuZGluZwpD
V0U6IDEyNQoKCkFuYWx5c2lzCi0tLS0tLS0tCm1hY2hvX2hhbmRsZV91bml4
dGhyZWFkKCkgcmVhZHMgZnJvbSBjb21tYW5kIGJ1ZmZlciB3aXRob3V0IGNo
ZWNraW5nIGlmCnRoZSBidWZmZXIgaXMgYmlnIGVub3VnaC4KCkZpcnN0bHks
IHNpemVvZih5cl90aHJlYWRfY29tbWFuZF90KSBieXRlcyBhcmUgc2tpcHBl
ZCBpbiBjb21tYW5kLAoKICBjb21tYW5kID0gKHZvaWQqKSAoKHVpbnQ4X3Qq
KSBjb21tYW5kICsgc2l6ZW9mKHlyX3RocmVhZF9jb21tYW5kX3QpKTsKCndo
aWNoIGNvdWxkIHJlc3VsdCBpbiBjb21tYW5kIHBvaW50aW5nIG91dCBvZiBi
b3VuZHMgYW5kIHRyaWdnZXJpbmcKaW52YWxpZCByZWFkcyBpbiBzdWJzZXF1
ZW50IGNvbW1hbmQgZGVyZWZlcmVuY2VzLiBJdCBpcyByZWNvbW1lbmRlZAp0
byBjaGVjayBhdCBsZWFzdCBzaXplb2YoeXJfdGhyZWFkX2NvbW1hbmRfdCkg
Ynl0ZXMgYXJlIGF2YWlsYWJsZQpiZWZvcmUgY2FsbGluZyBtYWNob19oYW5k
bGVfdW5peHRocmVhZCgpLgoKICAgIGNhc2UgTENfVU5JWFRIUkVBRDoKKyAg
ICAgaWYoc2l6ZSAtIChjb21tYW5kIC0gZGF0YSkgPCBzaXplb2YoeXJfdGhy
ZWFkX2NvbW1hbmRfdCkpCisgICAgICAgICBicmVhazsKICAgICAgbWFjaG9f
aGFuZGxlX3VuaXh0aHJlYWQoY29tbWFuZCwgb2JqZWN0LCBjb250ZXh0KTsK
ICAgICAgYnJlYWs7CgpTZWNvbmRseSwgd2hlbiByZWFkaW5nIHRoZSBlbnRy
eSBwb2ludCBmb3IgdGhlIGRpZmZlcmVudCBhcmNoaXRlY3R1cmVzLCBpdCBp
cwphc3N1bWVkIHRoZSBidWZmZXIgaXMgYmlnIGVub3VnaCB0byByZWFkIHRo
ZSBjb3JyZXNwb25kaW5nCnlyXypfdGhyZWFkX3N0YXRlX3Qgb2JqZWN0LiBB
IG5vdCBiaWcgZW5vdWdoIGJ1ZmZlciB3b3VsZCBsZWFkIHRvIG91dApvZiBi
b3VuZHMgcmVhZHMgYW5kIG1heWJlIGRlbmlhbCBvZiBzZXJ2aWNlIG9yIGlu
Zm9sZWFrcy4gSXQgaXMKcmVjb21tZW5kZWQgdG8gY2hlY2sgYXQgbGVhc3Qg
ZW5vdWdoIGJ5dGVzIGFyZSBhdmFpbGFibGUuCgogIGludCBzaG91bGRfc3dh
cCA9IHNob3VsZF9zd2FwX2J5dGVzKGdldF9pbnRlZ2VyKG9iamVjdCwgIm1h
Z2ljIikpOwogIGJvb2wgaXM2NCA9IGZhbHNlOwogIHVpbnQzMl90IHMgPSAo
KHlyX3RocmVhZF9jb21tYW5kX3QqKWNvbW1hbmQpLT5jbWRzaXplIC0gc2l6
ZW9mKHlyX3RocmVhZF9jb21tYW5kX3QpOwogIGNvbW1hbmQgPSAodm9pZCop
ICgodWludDhfdCopIGNvbW1hbmQgKyBzaXplb2YoeXJfdGhyZWFkX2NvbW1h
bmRfdCkpOwogIHVpbnQ2NF90IGFkZHJlc3MgPSAwOwoKICBzd2l0Y2ggKGdl
dF9pbnRlZ2VyKG9iamVjdCwgImNwdXR5cGUiKSkKICB7CiAgIGNhc2UgQ1BV
X1RZUEVfTUM2ODBYMDoKICAgeworICAgIGlmIChzIDwgc2l6ZW9mKHlyX202
OGtfdGhyZWFkX3N0YXRlX3QpKQorICAgICAgYnJlYWs7CiAgICAgeXJfbTY4
a190aHJlYWRfc3RhdGVfdCogbTY4a19zdGF0ZSA9ICh5cl9tNjhrX3RocmVh
ZF9zdGF0ZV90KikgY29tbWFuZDsKICAgICBhZGRyZXNzID0gbTY4a19zdGF0
ZS0+cGM7CiAgICAgYnJlYWs7CiAgIH0KICAgY2FzZSBDUFVfVFlQRV9NQzg4
MDAwOgogICB7CisgICAgaWYgKHMgPCBzaXplb2YoeXJfbTg4a190aHJlYWRf
c3RhdGVfdCkpCisgICAgICBicmVhazsKICAgICB5cl9tODhrX3RocmVhZF9z
dGF0ZV90KiBtODhrX3N0YXRlID0gKHlyX204OGtfdGhyZWFkX3N0YXRlX3Qq
KSBjb21tYW5kOwogICAgIGFkZHJlc3MgPSBtODhrX3N0YXRlLT54aXA7CiAg
ICAgYnJlYWs7CiAgIH0KICAgY2FzZSBDUFVfVFlQRV9TUEFSQzoKICAgewor
ICAgIGlmIChzIDwgc2l6ZW9mKHlyX3NwYXJjX3RocmVhZF9zdGF0ZV90KSkK
KyAgICAgIGJyZWFrOwogICAgIHlyX3NwYXJjX3RocmVhZF9zdGF0ZV90KiBz
cGFyY19zdGF0ZSA9ICh5cl9zcGFyY190aHJlYWRfc3RhdGVfdCopIGNvbW1h
bmQ7CiAgICAgYWRkcmVzcyA9IHNwYXJjX3N0YXRlLT5wYzsKICAgICBicmVh
azsKICAgfQogICBjYXNlIENQVV9UWVBFX1BPV0VSUEM6CiAgIHsKKyAgICBp
ZiAocyA8IHNpemVvZih5cl9wcGNfdGhyZWFkX3N0YXRlX3QpKQorICAgICAg
YnJlYWs7CiAgICAgeXJfcHBjX3RocmVhZF9zdGF0ZV90KiBwcGNfc3RhdGUg
PSAoeXJfcHBjX3RocmVhZF9zdGF0ZV90KikgY29tbWFuZDsKICAgICBhZGRy
ZXNzID0gcHBjX3N0YXRlLT5zcnIwOwogICAgIGJyZWFrOwogICB9CiAgIGNh
c2UgQ1BVX1RZUEVfWDg2OgogICB7CisgICAgaWYgKHMgPCBzaXplb2YoeXJf
eDg2X3RocmVhZF9zdGF0ZV90KSkKKyAgICAgIGJyZWFrOwogICAgIHlyX3g4
Nl90aHJlYWRfc3RhdGVfdCogeDg2X3N0YXRlID0gKHlyX3g4Nl90aHJlYWRf
c3RhdGVfdCopIGNvbW1hbmQ7CiAgICAgYWRkcmVzcyA9IHg4Nl9zdGF0ZS0+
ZWlwOwogICAgIGJyZWFrOwogICB9CiAgIGNhc2UgQ1BVX1RZUEVfQVJNOgog
ICB7CisgICAgaWYgKHMgPCBzaXplb2YoeXJfYXJtX3RocmVhZF9zdGF0ZV90
KSkKKyAgICAgIGJyZWFrOwogICAgIHlyX2FybV90aHJlYWRfc3RhdGVfdCog
YXJtX3N0YXRlID0gKHlyX2FybV90aHJlYWRfc3RhdGVfdCopIGNvbW1hbmQ7
CiAgICAgYWRkcmVzcyA9IGFybV9zdGF0ZS0+cGM7CiAgICAgYnJlYWs7CiAg
IH0KICAgY2FzZSBDUFVfVFlQRV9YODZfNjQ6CiAgIHsKKyAgICBpZiAocyA8
IHNpemVvZih5cl94ODZfdGhyZWFkX3N0YXRlNjRfdCkpCisgICAgICBicmVh
azsKICAgICB5cl94ODZfdGhyZWFkX3N0YXRlNjRfdCogeDY0X3N0YXRlID0g
KHlyX3g4Nl90aHJlYWRfc3RhdGU2NF90KikgY29tbWFuZDsKICAgICBhZGRy
ZXNzID0geDY0X3N0YXRlLT5yaXA7CiAgICAgaXM2NCA9IHRydWU7CiAgIH0K
ICAgY2FzZSBDUFVfVFlQRV9BUk02NDoKICAgeworICAgIGlmIChzIDwgc2l6
ZW9mKHlyX2FybV90aHJlYWRfc3RhdGU2NF90KSkKKyAgICAgIGJyZWFrOwog
ICAgIHlyX2FybV90aHJlYWRfc3RhdGU2NF90KiBhcm02NF9zdGF0ZSA9ICh5
cl9hcm1fdGhyZWFkX3N0YXRlNjRfdCopIGNvbW1hbmQ7CiAgICAgYWRkcmVz
cyA9IGFybTY0X3N0YXRlLT5wYzsKICAgICBpczY0ID0gdHJ1ZTsKICAgfQog
ICBjYXNlIENQVV9UWVBFX1BPV0VSUEM2NDoKICAgeworICAgIGlmIChzIDwg
c2l6ZW9mKHlyX3BwY190aHJlYWRfc3RhdGU2NF90KSkKKyAgICAgIGJyZWFr
OwogICAgIHlyX3BwY190aHJlYWRfc3RhdGU2NF90KiBwcGM2NF9zdGF0ZSA9
ICh5cl9wcGNfdGhyZWFkX3N0YXRlNjRfdCopIGNvbW1hbmQ7CiAgICAgYWRk
cmVzcyA9IHBwYzY0X3N0YXRlLT5zcnIwOwogICAgIGlzNjQgPSB0cnVlOwoK
UGxlYXNlIG5vdGUgdGhhdCB3ZSByZWx5IGhlcmUgb24gY21kc2l6ZSBoYXZp
bmcgYSBzYWZlIHZhbHVlLCB3aGljaCBpcwpjaGVja2VkIGluIG9uZSBvZiB0
aGUgZml4ZXMgcHJvcG9zZWQgYWJvdmUuCgpQcm9vZiBvZiBDb25jZXB0Ci0t
LS0tLS0tLS0tLS0tLS0tClBhcnNlIHRoZSBodHRwczovL2dpdGh1Yi5jb20v
eDQxc2VjL2Fkdmlzb3JpZXMvdHJlZS9tYXN0ZXIvWDQxLTIwMjEtMDAxL3lh
cmEtcmVwcm9kdWNlcnMvb29iLW1hY2hvLWhhbmRsZS11bml4dGhyZWFkCnNh
bXBsZSB2aWEgeXJfcnVsZXNfc2Nhbl9tZW0oKS4KCgpPdXQtb2YtYm91bmRz
IHJlYWQgaW4gbWFjaG9faXNfMzIoKQo9PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PQpTZXZlcml0eSBSYXRpbmc6IE1lZGl1bQpWZWN0b3I6
IE1hY2gtTyBmaWxlIHNhbXBsZQpDVkU6IFBlbmRpbmcKQ1dFOiAxMjUKCgpB
bmFseXNpcwotLS0tLS0tLS0KbWFjaG9fcGFyc2VfZmlsZSgpIGNhbGxzIG1h
Y2hvX2lzXzMyKGRhdGEpIHdpdGhvdXQgY2hlY2tpbmcgdGhhdCBzaXplIGlz
IGF0CmxlYXN0IDQgYnl0ZXMuIEFuIG91dCBvZiBib3VuZHMgcmVhZCBoYXBw
ZW5zIHdoZW4gc2l6ZSA8IDQuIERlcGVuZGluZyBvbgp0aGUgaW5pdGlhbCBw
YXJzZWQgZmlsZSBzaXplLCBkYXRhIGJ1ZmZlciBjb3VsZCBjb21lIGZyb20g
YSBtbWFwZWQKcmVnaW9uIGFuZCB0aGUgT09CIHJlYWQgY291bGQgbGVhZCB0
byBhIGRlbmlhbCBvZiBzZXJ2aWNlLgoKSXQgaXMgcmVjb21tZW5kZWQgdG8g
cmV0dXJuIGZyb20gdGhlIGZ1bmN0aW9uIHdoZW4gc2l6ZSA8IDQuCgorICBp
ZiAoc2l6ZSA8IDQpCisgICAgcmV0dXJuOworCiAgIHNpemVfdCBoZWFkZXJf
c2l6ZSA9IG1hY2hvX2lzXzMyKGRhdGEpID8gc2l6ZW9mKHlyX21hY2hfaGVh
ZGVyXzMyX3QpCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIDogc2l6ZW9mKHlyX21hY2hfaGVhZGVyXzY0X3QpOwoKClByb29m
IG9mIENvbmNlcHQKLS0tLS0tLS0tLS0tLS0tLQpQYXJzZSB0aGUgaHR0cHM6
Ly9naXRodWIuY29tL3g0MXNlYy9hZHZpc29yaWVzL3RyZWUvbWFzdGVyL1g0
MS0yMDIxLTAwMS95YXJhLXJlcHJvZHVjZXJzL29vYi1tYWNoby1pcy0zMi52
MgpzYW1wbGUgdmlhIHlyX3J1bGVzX3NjYW5fbWVtKCkuCgoKVGltZWxpbmUK
PT09PT09PT0KMjAyMS0wMS0xNiBJc3N1ZXMgZm91bmQKMjAyMS0wMS0yMCBJ
c3N1ZXMgYW5kIHBhdGNoZXMgcmVwb3J0ZWQgdG8gdGhlIHZlbmRvcgoyMDIx
LTAxLTIxIFZlbmRvciByZXBseSB3aXRoIGFja25vd2xlZGdlIGFuZCBmaW5h
bCBwYXRjaGVzCjIwMjEtMDEtMjIgQ1ZFcyByZXF1ZXN0IChwZW5kaW5nKQoy
MDIxLTAxLTI3IEZpeGVkIHJlbGVhc2UgKHY0LjAuNCkKMjAyMS0wMS0yOCBB
ZHZpc29yeSBwdWJsaXNoZWQKCkFib3V0IFg0MSBELVNFQyBHbWJICj09PT09
PT09PT09PT09PT09PT09Clg0MSBpcyBhbiBleHBlcnQgcHJvdmlkZXIgZm9y
IGFwcGxpY2F0aW9uIHNlY3VyaXR5IHNlcnZpY2VzLgpIYXZpbmcgZXh0ZW5z
aXZlIGluZHVzdHJ5IGV4cGVyaWVuY2UgYW5kIGV4cGVydGlzZSBpbiB0aGUg
YXJlYSBvZiBpbmZvcm1hdGlvbgpzZWN1cml0eSwgYSBzdHJvbmcgY29yZSBz
ZWN1cml0eSB0ZWFtIG9mIHdvcmxkIGNsYXNzIHNlY3VyaXR5IGV4cGVydHMg
ZW5hYmxlcwpYNDEgdG8gcGVyZm9ybSBwcmVtaXVtIHNlY3VyaXR5IHNlcnZp
Y2VzLgpGaWVsZHMgb2YgZXhwZXJ0aXNlIGluIHRoZSBhcmVhIG9mIGFwcGxp
Y2F0aW9uIHNlY3VyaXR5IGFyZSBzZWN1cml0eSBjZW50ZXJlZApjb2RlIHJl
dmlld3MsIGJpbmFyeSByZXZlcnNlIGVuZ2luZWVyaW5nIGFuZCB2dWxuZXJh
YmlsaXR5IGRpc2NvdmVyeS4KQ3VzdG9tIHJlc2VhcmNoIGFuZCBJVCBzZWN1
cml0eSBjb25zdWx0aW5nIGFuZCBzdXBwb3J0IHNlcnZpY2VzIGFyZSBjb3Jl
CmNvbXBldGVuY2llcyBvZiBYNDEuCg==

--------------6B198DECB630DE3E4000D4FD
Content-Type: text/plain; charset=UTF-8;
 name="x41-2021-001-yara.txt.asc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="x41-2021-001-yara.txt.asc"

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0KCmlRSkxCQUFCQ2dBMUZp
RUVwd3hWVGd4QUljVXZUdWdJbzVLbHBnNTBDeEFGQW1BVDJFNFhIR0ZrZG1s
emIzSnAKWlhOQWVEUXhMV1J6WldNdVpHVUFDZ2tRbzVLbHBnNTBDeENRZFEv
K09xdWlab2hXck5ZQnVMckxkTWpNb3VIYwp1YUZxZTI5K1lWWE45ZFltNUpT
aHd3QmxiV25RcFlwWEZJN2R0L0NyL0dXVWdvUytoc1NFKzJ1REEvcllYRThG
ClJKMzVJOFRxZlJydEU5ZmEvWXJuenc1QlNjcDk2OW9tNG9DRzZWL0o5ZitU
bW1zWU8xL2hRcVFIUlBIOHBUOVYKaE1FMmloRTZxSG5qVXpUd1Z5cEtZNHhk
WWZwc0Z1VmRWVjZUZXR3d2V0eVNvaWRIU2ZOWlE3eXY1c0ZQcE9UbwpBQ01P
dXh2K25PNjdnNHlYdFhiWURHREU0WnlVcEVBbFJhZXNOVUR4VkU1d09FdFpy
WW0vVW5hNzR4QzUwbXMvCkd4bVE0ZWo1aklxdUFUTTUrajl5ekdrK1h2cDdN
Q0hmdTRzdjJZTGdsNkNZbm85V3o3MFZ5bzdyOEMrbHN4bXcKaVdpL0xuZE5z
a1kvRXhSSXdtbDBmbkZaMHVjbmx4VTJpSDVjV1FSRXRyVGQ2RHpob0NKblMx
cmt3MHE3RFFGbgo0Sy9BZHAzNjR2VjE3RkdZT3g2eHhEb0ovaC9MOENVZEdI
V3NHek0xWlRRLzliU3BVU0pJaHUrOWtlZFJTVVNFCkxFMmlzM085YmhuOWkz
Z3pOeGtsMFk2VklXeEZ1T3orRU9YdUlPVGZucVJDL21ORUFhQ1M5SVJhRHM0
V0NvV2oKemhYaFpQanRLanRCeXMrakd2amFkVVBLZjFCVHZ0SFZaWU9PYmNr
WUE0U1BNaW5rRW04aEszVFRqRVV6dnc4bQpLMVVWNlMyZkNjS0F1VHBOOUl4
MGI4SDNzbGUxSjVncEVSaVduRTJseUw4bDZIMm1yRDNNbVJROEFqV2czMWtS
CnMzRE4zL0h5anpUTVZCTGYybDg9Cj05SWl5Ci0tLS0tRU5EIFBHUCBTSUdO
QVRVUkUtLS0tLQo=

--------------6B198DECB630DE3E4000D4FD--
