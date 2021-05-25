X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["36179" "Tuesday" "25" "May" "2021" "18:26:23" "+0200" "X41 D-Sec GmbH Advisories" "advisories@x41-dsec.de" nil "719" "[oss-security] X41 D-Sec GmbH Security Advisory X41-2021-002: nginx DNS Resolver Off-by-One Heap Write Vulnerability" nil nil nil "5" nil nil (number mark "U       advisories@x May 25  719/36179 " thread-indent "\"[oss-security] X41 D-Sec GmbH Security Advisory X41-2021-002: nginx DNS Resolver Off-by-One Heap Write Vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] X41 D-Sec GmbH Security Advisory X41-2021-002: nginx DNS Resolver Off-by-One Heap Write Vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5553 invoked by uid 550); 25 May 2021 16:27:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5517 invoked from network); 25 May 2021 16:27:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=x41-dsec.de
	; s=selector1; h=Content-Type:MIME-Version:Date:Message-ID:To:Subject:From;
	 bh=3NxEU4uQH/L+Bz5fumjN82RkqvjkqlDwSgl6xcjywAA=; b=HtHLxM6u+H0QSSThe/LX6Pe2p
	IPbWIHDPYikOIM8CZC2LQfif8D+H2YnebXfNJQfXUM4X17yZOKuYyvhHletjDUYqTHvsvLuxTIzos
	A1B3N+kRz9/v8AAM2V9q266rxQR9mbpx0GvEGNgQ7dcsqD8WhOWp4KCVvj9LzwfazJrxho5FtVHiX
	Oai4aNoH3XfKzxHOJGi6m+6gz07qJ0pDE8YUX0rCT7eTD8zurAsa5skcHhTlDW7MLLKJZoJ8emhTA
	/rxXZTVPTJLZff6oZjng6Ikl1CaBlC7aDCWNXD0TrK47ZDEmdiQof8uYvtMJwlJlyOZclLtqLYofA
	5pP7P7JSA==;
From: X41 D-Sec GmbH Advisories <advisories@x41-dsec.de>
To: oss-security@lists.openwall.com
Message-ID: <723099d8-1178-aa23-9f8f-df83dabddc4e@x41-dsec.de>
Date: Tue, 25 May 2021 18:26:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------1F2DDB31D2A9C28962364EA2"
Content-Language: en-US
Subject: [oss-security] X41 D-Sec GmbH Security Advisory X41-2021-002: nginx DNS Resolver
 Off-by-One Heap Write Vulnerability

--------------1F2DDB31D2A9C28962364EA2
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit


Advisory X41-2021-002: nginx DNS Resolver Off-by-One Heap Write
Vulnerability
=============================================================================
Severity Rating: High
Confirmed Affected Versions: 0.6.18 - 1.20.0
Confirmed Patched Versions: 1.21.0, 1.20.1
Vendor: F5, Inc.
Vendor URL: https://nginx.org/
Vendor Reference:
http://mailman.nginx.org/pipermail/nginx-announce/2021/000300.html
Vector: Remote / DNS
Credit: X41 D-SEC GmbH, Luis Merino, Markus Vervier, Eric Sesterhenn
Status: Public
CVE: CVE-2021-23017
CWE: 193
CVSS Score: 8.1
CVSS Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H/E:U/RL:O/RC:C
Advisory-URL:
https://www.x41-dsec.de/lab/advisories/x41-2021-002-nginx-resolver-copy/


Summary and Impact
------------------
An off-by-one error in ngx_resolver_copy() while processing DNS
responses allows a network attacker to write a dot character ('.', 0x2E)
 out of bounds in a heap allocated buffer. The vulnerability can be
triggered by a DNS response in reply to a DNS request from nginx when
the resolver primitive is configured. A specially crafted packet allows
overwriting the least significant byte of next heap chunk metadata with
0x2E. A network attacker capable of providing DNS responses to a nginx
server can achieve Denial-of-Service and likely remote code execution.
Due to the lack of DNS spoofing mitigations in nginx and the fact that
the vulnerable function is called before checking the DNS Transaction
ID, remote attackers might be able to exploit this vulnerability by
flooding the victim server with poisoned DNS responses in a feasible
amount of time.


Root Cause Analysis
-------------------
nginx DNS resolver (core/ngx_resolver.c) is used to resolve hostnames
via DNS for several modules when the resolver primitive is set.
ngx_resolver_copy() is called to validate and decompress each DNS domain
name contained in a DNS response, receiving the network packet as input
and a pointer to the name being processed, and returning a pointer to a
 newly allocated buffer containing the uncompressed name on success.
This is done in two steps,

1) The uncompressed domain name sizelenis calculated and the input
packet is validated, discarding names containing more than 128 pointers
 or containing pointers that fall out of the input buffer boundaries.
2) An output buffer is allocated, and the uncompressed name is copied
into it.

A mismatch between size calculation in part 1 and name decompression in
 part 2 leads to an off-by-one error inlen, allowing to write a dot
character one byte off name->data boundaries.
The miscalculation happens when the last part of the compressed name
contains a pointer to a NUL byte. While the calculation step only
accounts dots between labels, the decompression step writes a dot
character every time a label has been processed and next character is
not NUL. When a label is followed by a pointer that leads to a NUL byte,
the decompression procedure will:

// 1) copy the label to the output buffer,
 ngx_strlow(dst, src, n);
            dst += n;
            src += n;
// 2) read next character,
            n = *src++;
// 3) as its a pointer, its not NUL,
            if (n != 0) {
// 4) so a dot character that was not accounted for is written out of
bounds
                *dst++ = '.';
            }
// 5) Afterwards, the pointer is followed,
        if (n & 0xc0) {
            n = ((n & 0x3f) << 8) + *src;
            src = &buf[n];
            n = *src++;
        }
// 6) and a NULL byte is found, signaling the end of the function
        if (n == 0) {
            name->len = dst - name->data;
            return NGXOK;
        }


If the calculated size happens to align with the heap chunk size, the
dot character, written out of bounds, will overwrite the least
significant byte of next heap chunk size metadata. This might modify the
 size of the next heap chunk, but also overwrite 3 flags, resulting in
PREV_INUSE being cleared and IS_MMAPPED being set:


==7863== Invalid write of size 1
==7863==    at 0x137C2E: ngx_resolver_copy (ngx_resolver.c:4018)
==7863==    by 0x13D12B: ngx_resolver_process_a (ngx_resolver.c:2470)
==7863==    by 0x13D12B: ngx_resolver_process_response (ngx_resolver.c:1844)
==7863==    by 0x13D46A: ngx_resolver_udp_read (ngx_resolver.c:1574)
==7863==    by 0x14AB19: ngx_epoll_process_events (ngx_epoll_module.c:901)
==7863==    by 0x1414D4: ngx_process_events_and_timers (ngx_event.c:247)
==7863==    by 0x148E57: ngx_worker_process_cycle (ngx_process_cycle.c:719)
==7863==    by 0x1474DA: ngx_spawn_process (ngx_process.c:199)
==7863==    by 0x1480A8: ngx_start_worker_processes
(ngx_process_cycle.c:344)
==7863==    by 0x14952D: ngx_master_process_cycle (ngx_process_cycle.c:130)
==7863==    by 0x12237F: main (nginx.c:383)
==7863==  Address 0x4bbcfb8 is 0 bytes after a block of size 24 alloc'd
==7863==    at 0x483E77F: malloc (vg_replace_malloc.c:307)
==7863==    by 0x1448C4: ngx_alloc (ngx_alloc.c:22)
==7863==    by 0x137AE4: ngx_resolver_alloc (ngx_resolver.c:4119)
==7863==    by 0x137B26: ngx_resolver_copy (ngx_resolver.c:3994)
==7863==    by 0x13D12B: ngx_resolver_process_a (ngx_resolver.c:2470)
==7863==    by 0x13D12B: ngx_resolver_process_response (ngx_resolver.c:1844)
==7863==    by 0x13D46A: ngx_resolver_udp_read (ngx_resolver.c:1574)
==7863==    by 0x14AB19: ngx_epoll_process_events (ngx_epoll_module.c:901)
==7863==    by 0x1414D4: ngx_process_events_and_timers (ngx_event.c:247)
==7863==    by 0x148E57: ngx_worker_process_cycle (ngx_process_cycle.c:719)
==7863==    by 0x1474DA: ngx_spawn_process (ngx_process.c:199)
==7863==    by 0x1480A8: ngx_start_worker_processes
(ngx_process_cycle.c:344)
==7863==    by 0x14952D: ngx_master_process_cycle (ngx_process_cycle.c:130)


More information about general exploitability of a similar bug class
found in

* Chrome OS exploit: one byte overflow and symlinks
https://googleprojectzero.blogspot.com/2016/12/chrome-os-exploit-one-byte-overflow-and.html

* Project Zero's Poisoned NULL Byte
https://googleprojectzero.blogspot.com/2014/08/the-poisoned-nul-byte-2014-edition.html

* Hiroki Matsukama's House of Einherjar
  https://www.slideshare.net/codeblue_jp/cb16-matsukuma-en-68459606
  https://www.youtube.com/watch?v=tq3mPjsl-H0
Given the rich interaction opportunities in nginx with user controller
data and the documented precedents this bug is considered exploitable
for remote code execution on some operating systems and architectures.


Attack Vector Analysis
----------------------

There are several ways in which a DNS response can trigger the
vulnerability.

First, nginx must have sent a DNS request and must be waiting for a
response.

Then, a poisoned name can be injected in several parts of a DNS response:

* DNS Questions QNAME,
* DNS Answers NAME,
* DNS Answers RDATA for CNAME and SRV responses,

Keep in mind that the vulnerable function can be hit several times while
processing a response, effectively performing several off-by-one writes,
by crafting a response with several poisoned QNAME, NAME or RDATA  values.
Furthermore, when the attacker delivers a poisoned CNAME, it will be
resolved recursively, triggering an additional OOB write during
ngx_resolve_name_locked() call to ngx_strlow() (ngx_resolver.c:594) and
additional OOB reads during ngx_resolver_dup() (ngx_resolver.c:790) and
ngx_crc32_short() (ngx_resolver.c:596).

<for example payloads please see the attached advisory .txt file>

Fix / Workarounds
-----------------

Allocating an extra byte for the spurious dot character written at the
end of the poisoned domain names mitigates the issue.


--- ngxresolver.c  2021-04-06 15:59:50.293734070 +0200
+++ src/nginx-1.19.8/src/core/ngxresolver.c    2021-04-06
15:54:10.232975235 +0200
@@ -3943,7 +3928,7 @@
     ngx_uint_t   i, n;

     p = src;
-    len = -1;
+    len = 0;

     /*
      * compression pointers allow to create endless loop, so we set limit;
@@ -3986,7 +3971,7 @@
         return NGX_OK;
     }

-    if (len == -1) {
+    if (len == 0) {
         ngx_str_null(name);
         return NGX_OK;
     }


Official fix can be found at
http://nginx.org/download/patch.2021.resolver.txt


Proof-of-Concept
----------------

A dummy DNS server delivering a poisoned payload that triggers this
vulnerability can be downloaded from
https://github.com/x41sec/advisories/blob/master/X41-2021-002/poc.py

The described vulnerability can be tested by running nginx with the
provided config as follows under valgrind (https://www.valgrind.org/):

   valgrind --trace-children=yes objs/nginx -p ../runtime -c
conf/reverse-proxy.conf

Then run the DNS server (will listen on port 1053 by default):

   python poc.py

and trigger a request to the server:

   curl http://127.0.0.1:8080/

Depending on the heap layout when the bug triggers, the malloc
mitigations might detect or not the effect. Several ways of showing up
in the logs arise:

corrupted size vs. prev_size
2021/04/16 13:35:15 [alert] 2501#0: worker process 2502 exited on signal
6 (core dumped)
malloc(): invalid next size (unsorted)
2021/04/16 13:35:34 [alert] 2525#0: worker process 2526 exited on signal
6 (core dumped)


Nevertheless, valgrind and AdressSanitizer will always detect the memory
corruption.


nginx config used
-----------------

daemon off;
http{
    access_log logs/access.log;
    server{
        listen 8080;
        location / {
            resolver 127.0.0.1:1053;
            set $dns http://example.net;
            proxy_pass $dns;
        }
    }
}
events {
    worker_connections  1024;
}


Timeline
--------

2021-04-30 Issue reported to maintainers
2021-05-17 Issue reported to distros mailing list
2021-05-18 CVE assigned
2021-05-25 Public disclosure

About X41 D-SEC GmbH
====================
X41 is an expert provider for application security services. Having
extensive industry experience and expertise in the area of information
security, a strong core security team of world class security experts
enables X41 to perform premium security services.
Fields of expertise in the area of application security are security
centered code reviews, binary reverse engineering and vulnerability
discovery. Custom research and IT security consulting and support
services are core competencies of X41.



--------------1F2DDB31D2A9C28962364EA2
Content-Type: text/plain; charset=UTF-8;
 name="x41-2021-002-nginx-resolver-copy.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="x41-2021-002-nginx-resolver-copy.txt"

CkFkdmlzb3J5IFg0MS0yMDIxLTAwMjogbmdpbnggRE5TIFJlc29sdmVyIE9m
Zi1ieS1PbmUgSGVhcCBXcml0ZSBWdWxuZXJhYmlsaXR5Cj09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09ClNldmVyaXR5IFJhdGluZzogSGlnaApD
b25maXJtZWQgQWZmZWN0ZWQgVmVyc2lvbnM6IDAuNi4xOCAtIDEuMjAuMApD
b25maXJtZWQgUGF0Y2hlZCBWZXJzaW9uczogMS4yMS4wLCAxLjIwLjEKVmVu
ZG9yOiBGNSwgSW5jLgpWZW5kb3IgVVJMOiBodHRwczovL25naW54Lm9yZy8K
VmVuZG9yIFJlZmVyZW5jZTogaHR0cDovL21haWxtYW4ubmdpbngub3JnL3Bp
cGVybWFpbC9uZ2lueC1hbm5vdW5jZS8yMDIxLzAwMDMwMC5odG1sClZlY3Rv
cjogUmVtb3RlIC8gRE5TCkNyZWRpdDogWDQxIEQtU0VDIEdtYkgsIEx1aXMg
TWVyaW5vLCBNYXJrdXMgVmVydmllciwgRXJpYyBTZXN0ZXJoZW5uClN0YXR1
czogUHVibGljCkNWRTogQ1ZFLTIwMjEtMjMwMTcKQ1dFOiAxOTMKQ1ZTUyBT
Y29yZTogOC4xCkNWU1MgVmVjdG9yOiBDVlNTOjMuMS9BVjpOL0FDOkgvUFI6
Ti9VSTpOL1M6VS9DOkgvSTpIL0E6SC9FOlUvUkw6Ty9SQzpDCkFkdmlzb3J5
LVVSTDogaHR0cHM6Ly93d3cueDQxLWRzZWMuZGUvbGFiL2Fkdmlzb3JpZXMv
eDQxLTIwMjEtMDAyLW5naW54LXJlc29sdmVyLWNvcHkvCgoKU3VtbWFyeSBh
bmQgSW1wYWN0Ci0tLS0tLS0tLS0tLS0tLS0tLQpBbiBvZmYtYnktb25lIGVy
cm9yIGluIG5neF9yZXNvbHZlcl9jb3B5KCkgd2hpbGUgcHJvY2Vzc2luZyBE
TlMgcmVzcG9uc2VzCmFsbG93cyBhIG5ldHdvcmsgYXR0YWNrZXIgdG8gd3Jp
dGUgYSBkb3QgY2hhcmFjdGVyICgnLicsIDB4MkUpIG91dCBvZiBib3VuZHMK
aW4gYSBoZWFwIGFsbG9jYXRlZCBidWZmZXIuIFRoZSB2dWxuZXJhYmlsaXR5
IGNhbiBiZSB0cmlnZ2VyZWQgYnkgYSBETlMKcmVzcG9uc2UgaW4gcmVwbHkg
dG8gYSBETlMgcmVxdWVzdCBmcm9tIG5naW54IHdoZW4gdGhlIHJlc29sdmVy
IHByaW1pdGl2ZQppcyBjb25maWd1cmVkLiBBIHNwZWNpYWxseSBjcmFmdGVk
IHBhY2tldCBhbGxvd3Mgb3ZlcndyaXRpbmcgdGhlIGxlYXN0IApzaWduaWZp
Y2FudCBieXRlIG9mIG5leHQgaGVhcCBjaHVuayBtZXRhZGF0YSB3aXRoIDB4
MkUuIEEgbmV0d29yayBhdHRhY2tlcgpjYXBhYmxlIG9mIHByb3ZpZGluZyBE
TlMgcmVzcG9uc2VzIHRvIGEgbmdpbnggc2VydmVyIGNhbiBhY2hpZXZlCkRl
bmlhbC1vZi1TZXJ2aWNlIGFuZCBsaWtlbHkgcmVtb3RlIGNvZGUgZXhlY3V0
aW9uLgpEdWUgdG8gdGhlIGxhY2sgb2YgRE5TIHNwb29maW5nIG1pdGlnYXRp
b25zIGluIG5naW54IGFuZCB0aGUgZmFjdCB0aGF0IHRoZQp2dWxuZXJhYmxl
IGZ1bmN0aW9uIGlzIGNhbGxlZCBiZWZvcmUgY2hlY2tpbmcgdGhlIEROUyBU
cmFuc2FjdGlvbiBJRCwgcmVtb3RlCmF0dGFja2VycyBtaWdodCBiZSBhYmxl
IHRvIGV4cGxvaXQgdGhpcyB2dWxuZXJhYmlsaXR5IGJ5IGZsb29kaW5nIHRo
ZQp2aWN0aW0gc2VydmVyIHdpdGggcG9pc29uZWQgRE5TIHJlc3BvbnNlcyBp
biBhIGZlYXNpYmxlIGFtb3VudCBvZiB0aW1lLgoKClJvb3QgQ2F1c2UgQW5h
bHlzaXMKLS0tLS0tLS0tLS0tLS0tLS0tLQpuZ2lueCBETlMgcmVzb2x2ZXIg
KGNvcmUvbmd4X3Jlc29sdmVyLmMpIGlzIHVzZWQgdG8gcmVzb2x2ZSBob3N0
bmFtZXMgdmlhIEROUwpmb3Igc2V2ZXJhbCBtb2R1bGVzIHdoZW4gdGhlIHJl
c29sdmVyIHByaW1pdGl2ZSBpcyBzZXQuCm5neF9yZXNvbHZlcl9jb3B5KCkg
aXMgY2FsbGVkIHRvIHZhbGlkYXRlIGFuZCBkZWNvbXByZXNzIGVhY2ggRE5T
IGRvbWFpbiBuYW1lCmNvbnRhaW5lZCBpbiBhIEROUyByZXNwb25zZSwgcmVj
ZWl2aW5nIHRoZSBuZXR3b3JrIHBhY2tldCBhcyBpbnB1dCBhbmQgYQpwb2lu
dGVyIHRvIHRoZSBuYW1lIGJlaW5nIHByb2Nlc3NlZCwgYW5kIHJldHVybmlu
ZyBhIHBvaW50ZXIgdG8gYSBuZXdseQphbGxvY2F0ZWQgYnVmZmVyIGNvbnRh
aW5pbmcgdGhlIHVuY29tcHJlc3NlZCBuYW1lIG9uIHN1Y2Nlc3MuIFRoaXMg
aXMgZG9uZQppbiB0d28gc3RlcHMsCjEpIFRoZSB1bmNvbXByZXNzZWQgZG9t
YWluIG5hbWUgc2l6ZWxlbmlzIGNhbGN1bGF0ZWQgYW5kIHRoZSBpbnB1dCBw
YWNrZXQgaXMKdmFsaWRhdGVkLCBkaXNjYXJkaW5nIG5hbWVzIGNvbnRhaW5p
bmcgbW9yZSB0aGFuIDEyOCBwb2ludGVycyBvciBjb250YWluaW5nCnBvaW50
ZXJzIHRoYXQgZmFsbCBvdXQgb2YgdGhlIGlucHV0IGJ1ZmZlciBib3VuZGFy
aWVzLgoyKSBBbiBvdXRwdXQgYnVmZmVyIGlzIGFsbG9jYXRlZCwgYW5kIHRo
ZSB1bmNvbXByZXNzZWQgbmFtZSBpcyBjb3BpZWQgaW50byBpdC4KQSBtaXNt
YXRjaCBiZXR3ZWVuIHNpemUgY2FsY3VsYXRpb24gaW4gcGFydCAxIGFuZCBu
YW1lIGRlY29tcHJlc3Npb24gaW4gcGFydCAyCmxlYWRzIHRvIGFuIG9mZi1i
eS1vbmUgZXJyb3IgaW5sZW4sIGFsbG93aW5nIHRvIHdyaXRlIGEgZG90IGNo
YXJhY3RlciBvbmUgYnl0ZQpvZmYgbmFtZS0+ZGF0YSBib3VuZGFyaWVzLgpU
aGUgbWlzY2FsY3VsYXRpb24gaGFwcGVucyB3aGVuIHRoZSBsYXN0IHBhcnQg
b2YgdGhlIGNvbXByZXNzZWQgbmFtZSBjb250YWlucyBhCnBvaW50ZXIgdG8g
YSBOVUwgYnl0ZS4gV2hpbGUgdGhlIGNhbGN1bGF0aW9uIHN0ZXAgb25seSBh
Y2NvdW50cyBkb3RzIGJldHdlZW4KbGFiZWxzLCB0aGUgZGVjb21wcmVzc2lv
biBzdGVwIHdyaXRlcyBhIGRvdCBjaGFyYWN0ZXIgZXZlcnkgdGltZSBhIGxh
YmVsIGhhcwpiZWVuIHByb2Nlc3NlZCBhbmQgbmV4dCBjaGFyYWN0ZXIgaXMg
bm90IE5VTC4gV2hlbiBhIGxhYmVsIGlzIGZvbGxvd2VkIGJ5IGEKcG9pbnRl
ciB0aGF0IGxlYWRzIHRvIGEgTlVMIGJ5dGUsIHRoZSBkZWNvbXByZXNzaW9u
IHByb2NlZHVyZSB3aWxsOgoKLy8gMSkgY29weSB0aGUgbGFiZWwgdG8gdGhl
IG91dHB1dCBidWZmZXIsCiBuZ3hfc3RybG93KGRzdCwgc3JjLCBuKTsKICAg
ICAgICAgICAgZHN0ICs9IG47CiAgICAgICAgICAgIHNyYyArPSBuOwovLyAy
KSByZWFkIG5leHQgY2hhcmFjdGVyLAogICAgICAgICAgICBuID0gKnNyYysr
OwovLyAzKSBhcyBpdHMgYSBwb2ludGVyLCBpdHMgbm90IE5VTCwKICAgICAg
ICAgICAgaWYgKG4gIT0gMCkgewovLyA0KSBzbyBhIGRvdCBjaGFyYWN0ZXIg
dGhhdCB3YXMgbm90IGFjY291bnRlZCBmb3IgaXMgd3JpdHRlbiBvdXQgb2Yg
Ym91bmRzCiAgICAgICAgICAgICAgICAqZHN0KysgPSAnLic7CiAgICAgICAg
ICAgIH0KLy8gNSkgQWZ0ZXJ3YXJkcywgdGhlIHBvaW50ZXIgaXMgZm9sbG93
ZWQsCiAgICAgICAgaWYgKG4gJiAweGMwKSB7CiAgICAgICAgICAgIG4gPSAo
KG4gJiAweDNmKSA8PCA4KSArICpzcmM7CiAgICAgICAgICAgIHNyYyA9ICZi
dWZbbl07CiAgICAgICAgICAgIG4gPSAqc3JjKys7CiAgICAgICAgfQovLyA2
KSBhbmQgYSBOVUxMIGJ5dGUgaXMgZm91bmQsIHNpZ25hbGluZyB0aGUgZW5k
IG9mIHRoZSBmdW5jdGlvbgogICAgICAgIGlmIChuID09IDApIHsKICAgICAg
ICAgICAgbmFtZS0+bGVuID0gZHN0IC0gbmFtZS0+ZGF0YTsKICAgICAgICAg
ICAgcmV0dXJuIE5HWE9LOwogICAgICAgIH0KCgpJZiB0aGUgY2FsY3VsYXRl
ZCBzaXplIGhhcHBlbnMgdG8gYWxpZ24gd2l0aCB0aGUgaGVhcCBjaHVuayBz
aXplLCB0aGUgZG90CmNoYXJhY3Rlciwgd3JpdHRlbiBvdXQgb2YgYm91bmRz
LCB3aWxsIG92ZXJ3cml0ZSB0aGUgbGVhc3Qgc2lnbmlmaWNhbnQgYnl0ZQpv
ZiBuZXh0IGhlYXAgY2h1bmsgc2l6ZSBtZXRhZGF0YS4gVGhpcyBtaWdodCBt
b2RpZnkgdGhlIHNpemUgb2YgdGhlIG5leHQgaGVhcApjaHVuaywgYnV0IGFs
c28gb3ZlcndyaXRlIDMgZmxhZ3MsIHJlc3VsdGluZyBpbiBQUkVWX0lOVVNF
IGJlaW5nIGNsZWFyZWQKYW5kIElTX01NQVBQRUQgYmVpbmcgc2V0OgoKCj09
Nzg2Mz09IEludmFsaWQgd3JpdGUgb2Ygc2l6ZSAxCj09Nzg2Mz09ICAgIGF0
IDB4MTM3QzJFOiBuZ3hfcmVzb2x2ZXJfY29weSAobmd4X3Jlc29sdmVyLmM6
NDAxOCkKPT03ODYzPT0gICAgYnkgMHgxM0QxMkI6IG5neF9yZXNvbHZlcl9w
cm9jZXNzX2EgKG5neF9yZXNvbHZlci5jOjI0NzApCj09Nzg2Mz09ICAgIGJ5
IDB4MTNEMTJCOiBuZ3hfcmVzb2x2ZXJfcHJvY2Vzc19yZXNwb25zZSAobmd4
X3Jlc29sdmVyLmM6MTg0NCkKPT03ODYzPT0gICAgYnkgMHgxM0Q0NkE6IG5n
eF9yZXNvbHZlcl91ZHBfcmVhZCAobmd4X3Jlc29sdmVyLmM6MTU3NCkKPT03
ODYzPT0gICAgYnkgMHgxNEFCMTk6IG5neF9lcG9sbF9wcm9jZXNzX2V2ZW50
cyAobmd4X2Vwb2xsX21vZHVsZS5jOjkwMSkKPT03ODYzPT0gICAgYnkgMHgx
NDE0RDQ6IG5neF9wcm9jZXNzX2V2ZW50c19hbmRfdGltZXJzIChuZ3hfZXZl
bnQuYzoyNDcpCj09Nzg2Mz09ICAgIGJ5IDB4MTQ4RTU3OiBuZ3hfd29ya2Vy
X3Byb2Nlc3NfY3ljbGUgKG5neF9wcm9jZXNzX2N5Y2xlLmM6NzE5KQo9PTc4
NjM9PSAgICBieSAweDE0NzREQTogbmd4X3NwYXduX3Byb2Nlc3MgKG5neF9w
cm9jZXNzLmM6MTk5KQo9PTc4NjM9PSAgICBieSAweDE0ODBBODogbmd4X3N0
YXJ0X3dvcmtlcl9wcm9jZXNzZXMgKG5neF9wcm9jZXNzX2N5Y2xlLmM6MzQ0
KQo9PTc4NjM9PSAgICBieSAweDE0OTUyRDogbmd4X21hc3Rlcl9wcm9jZXNz
X2N5Y2xlIChuZ3hfcHJvY2Vzc19jeWNsZS5jOjEzMCkKPT03ODYzPT0gICAg
YnkgMHgxMjIzN0Y6IG1haW4gKG5naW54LmM6MzgzKQo9PTc4NjM9PSAgQWRk
cmVzcyAweDRiYmNmYjggaXMgMCBieXRlcyBhZnRlciBhIGJsb2NrIG9mIHNp
emUgMjQgYWxsb2MnZAo9PTc4NjM9PSAgICBhdCAweDQ4M0U3N0Y6IG1hbGxv
YyAodmdfcmVwbGFjZV9tYWxsb2MuYzozMDcpCj09Nzg2Mz09ICAgIGJ5IDB4
MTQ0OEM0OiBuZ3hfYWxsb2MgKG5neF9hbGxvYy5jOjIyKQo9PTc4NjM9PSAg
ICBieSAweDEzN0FFNDogbmd4X3Jlc29sdmVyX2FsbG9jIChuZ3hfcmVzb2x2
ZXIuYzo0MTE5KQo9PTc4NjM9PSAgICBieSAweDEzN0IyNjogbmd4X3Jlc29s
dmVyX2NvcHkgKG5neF9yZXNvbHZlci5jOjM5OTQpCj09Nzg2Mz09ICAgIGJ5
IDB4MTNEMTJCOiBuZ3hfcmVzb2x2ZXJfcHJvY2Vzc19hIChuZ3hfcmVzb2x2
ZXIuYzoyNDcwKQo9PTc4NjM9PSAgICBieSAweDEzRDEyQjogbmd4X3Jlc29s
dmVyX3Byb2Nlc3NfcmVzcG9uc2UgKG5neF9yZXNvbHZlci5jOjE4NDQpCj09
Nzg2Mz09ICAgIGJ5IDB4MTNENDZBOiBuZ3hfcmVzb2x2ZXJfdWRwX3JlYWQg
KG5neF9yZXNvbHZlci5jOjE1NzQpCj09Nzg2Mz09ICAgIGJ5IDB4MTRBQjE5
OiBuZ3hfZXBvbGxfcHJvY2Vzc19ldmVudHMgKG5neF9lcG9sbF9tb2R1bGUu
Yzo5MDEpCj09Nzg2Mz09ICAgIGJ5IDB4MTQxNEQ0OiBuZ3hfcHJvY2Vzc19l
dmVudHNfYW5kX3RpbWVycyAobmd4X2V2ZW50LmM6MjQ3KQo9PTc4NjM9PSAg
ICBieSAweDE0OEU1Nzogbmd4X3dvcmtlcl9wcm9jZXNzX2N5Y2xlIChuZ3hf
cHJvY2Vzc19jeWNsZS5jOjcxOSkKPT03ODYzPT0gICAgYnkgMHgxNDc0REE6
IG5neF9zcGF3bl9wcm9jZXNzIChuZ3hfcHJvY2Vzcy5jOjE5OSkKPT03ODYz
PT0gICAgYnkgMHgxNDgwQTg6IG5neF9zdGFydF93b3JrZXJfcHJvY2Vzc2Vz
IChuZ3hfcHJvY2Vzc19jeWNsZS5jOjM0NCkKPT03ODYzPT0gICAgYnkgMHgx
NDk1MkQ6IG5neF9tYXN0ZXJfcHJvY2Vzc19jeWNsZSAobmd4X3Byb2Nlc3Nf
Y3ljbGUuYzoxMzApCgoKTW9yZSBpbmZvcm1hdGlvbiBhYm91dCBnZW5lcmFs
IGV4cGxvaXRhYmlsaXR5IG9mIGEgc2ltaWxhciBidWcgY2xhc3MgZm91bmQg
aW4KKiBDaHJvbWUgT1MgZXhwbG9pdDogb25lIGJ5dGUgb3ZlcmZsb3cgYW5k
IHN5bWxpbmtzCiAgaHR0cHM6Ly9nb29nbGVwcm9qZWN0emVyby5ibG9nc3Bv
dC5jb20vMjAxNi8xMi9jaHJvbWUtb3MtZXhwbG9pdC1vbmUtYnl0ZS1vdmVy
Zmxvdy1hbmQuaHRtbAoqIFByb2plY3QgWmVybydzIFBvaXNvbmVkIE5VTEwg
Qnl0ZQogIGh0dHBzOi8vZ29vZ2xlcHJvamVjdHplcm8uYmxvZ3Nwb3QuY29t
LzIwMTQvMDgvdGhlLXBvaXNvbmVkLW51bC1ieXRlLTIwMTQtZWRpdGlvbi5o
dG1sCiogSGlyb2tpIE1hdHN1a2FtYSdzIEhvdXNlIG9mIEVpbmhlcmphcgog
IGh0dHBzOi8vd3d3LnNsaWRlc2hhcmUubmV0L2NvZGVibHVlX2pwL2NiMTYt
bWF0c3VrdW1hLWVuLTY4NDU5NjA2CiAgaHR0cHM6Ly93d3cueW91dHViZS5j
b20vd2F0Y2g/dj10cTNtUGpzbC1IMApHaXZlbiB0aGUgcmljaCBpbnRlcmFj
dGlvbiBvcHBvcnR1bml0aWVzIGluIG5naW54IHdpdGggdXNlciBjb250cm9s
bGVyIGRhdGEKYW5kIHRoZSBkb2N1bWVudGVkIHByZWNlZGVudHMgdGhpcyBi
dWcgaXMgY29uc2lkZXJlZCBleHBsb2l0YWJsZSBmb3IgcmVtb3RlCmNvZGUg
ZXhlY3V0aW9uIG9uIHNvbWUgb3BlcmF0aW5nIHN5c3RlbXMgYW5kIGFyY2hp
dGVjdHVyZXMuCgoKQXR0YWNrIFZlY3RvciBBbmFseXNpcwotLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCgpUaGVyZSBhcmUgc2V2ZXJhbCB3YXlzIGluIHdoaWNo
IGEgRE5TIHJlc3BvbnNlIGNhbiB0cmlnZ2VyIHRoZSB2dWxuZXJhYmlsaXR5
LgpGaXJzdCwgbmdpbnggbXVzdCBoYXZlIHNlbnQgYSBETlMgcmVxdWVzdCBh
bmQgbXVzdCBiZSB3YWl0aW5nIGZvciBhIHJlc3BvbnNlLgpUaGVuLCBhIHBv
aXNvbmVkIG5hbWUgY2FuIGJlIGluamVjdGVkIGluIHNldmVyYWwgcGFydHMg
b2YgYSBETlMgcmVzcG9uc2U6CiogRE5TIFF1ZXN0aW9ucyBRTkFNRSwKKiBE
TlMgQW5zd2VycyBOQU1FLAoqIEROUyBBbnN3ZXJzIFJEQVRBIGZvciBDTkFN
RSBhbmQgU1JWIHJlc3BvbnNlcywKS2VlcCBpbiBtaW5kIHRoYXQgdGhlIHZ1
bG5lcmFibGUgZnVuY3Rpb24gY2FuIGJlIGhpdCBzZXZlcmFsIHRpbWVzIHdo
aWxlCnByb2Nlc3NpbmcgYSByZXNwb25zZSwgZWZmZWN0aXZlbHkgcGVyZm9y
bWluZyBzZXZlcmFsIG9mZi1ieS1vbmUgd3JpdGVzLApieSBjcmFmdGluZyBh
IHJlc3BvbnNlIHdpdGggc2V2ZXJhbCBwb2lzb25lZCBRTkFNRSwgTkFNRSBv
ciBSREFUQSB2YWx1ZXMuCkZ1cnRoZXJtb3JlLCB3aGVuIHRoZSBhdHRhY2tl
ciBkZWxpdmVycyBhIHBvaXNvbmVkIENOQU1FLCBpdCB3aWxsIGJlCnJlc29s
dmVkIHJlY3Vyc2l2ZWx5LCB0cmlnZ2VyaW5nIGFuIGFkZGl0aW9uYWwgT09C
IHdyaXRlIGR1cmluZwpuZ3hfcmVzb2x2ZV9uYW1lX2xvY2tlZCgpIGNhbGwg
dG8gbmd4X3N0cmxvdygpIChuZ3hfcmVzb2x2ZXIuYzo1OTQpCmFuZCBhZGRp
dGlvbmFsIE9PQiByZWFkcyBkdXJpbmcgbmd4X3Jlc29sdmVyX2R1cCgpIChu
Z3hfcmVzb2x2ZXIuYzo3OTApCmFuZCBuZ3hfY3JjMzJfc2hvcnQoKSAobmd4
X3Jlc29sdmVyLmM6NTk2KS4KQW4gZXhhbXBsZSBwYXlsb2FkIG9mIEROUyBy
ZXNwb25zZSBmb3IgYSAnZXhhbXBsZS5uZXQnIHJlcXVlc3QsIGNvbnRhaW5p
bmcKYSBwb2lzb25lZCBDTkFNRToKCmJjYjg4MTgwMDAwMTAwMDEwMDAwMDAw
MDA3NjU3ODYxNmQ3MDZjNjUwMzZlNjU3NDAwMDAxYzAwMDFjMDBjMDAwNTAw
MDEwMDAwMGUxMDAwMGIwMTQxYzAwNAogICAgICAgICBeICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAgIF4gcG9pbnRlciB0byBwb3NpdGlvbiAweDA0
IC18CiAgICAgICAgIE5VTEwgYnl0ZSA8LS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLXwKICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIF4gMSBieXRlIGxhYmVsCgpBIHNsaWdodGx5IGRp
ZmZlcmVudCBwYXlsb2FkICh0aGUgb25lIGluIHBvYy5weSkgZmlsbHMgZW5v
dWdoIGJ5dGVzIHRvCm92ZXJ3cml0ZSB0aGUgbmV4dGNodW5rLm1jaHVua19z
aXplIGxlYXN0IHNpZ25pZmljYW50IGJ5dGUgd2l0aCBhIGRvdDoKCmJjYjg4
MTgwMDAwMTAwMDEwMDAwMDAwMDA3NjU3ODYxNmQ3MDZjNjUwMzZlNjU3NDAw
MDAxYzAwMDFjMDBjMDAwNTAwMDEwMDAwMGUxMDAwMGIxODQxNDE0MTQxNDE0
MTQxNDE0MTQxNDE0MTQxNDE0MTQxNDE0MTQxNDE0MTQxNDE0MWMwMDQKICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5eXl5eXl5eXl5e
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eCiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMjQgYnl0ZXMgbGFiZWwK
CgpBIDI0IGJ5dGVzIGxhYmVsIGxlYWRzIHRvIGEgMjQgYnl0ZXMgYnVmZmVy
IGFsbG9jYXRlZCwgd2hpY2ggaXMgZmlsbGVkIHdpdGggMjQKYnl0ZXMgKyBh
biBvdXQgb2YgYm91bmRzIGRvdCBjaGFyYWN0ZXIuCgoKRml4IC8gV29ya2Fy
b3VuZHMKLS0tLS0tLS0tLS0tLS0tLS0KCkFsbG9jYXRpbmcgYW4gZXh0cmEg
Ynl0ZSBmb3IgdGhlIHNwdXJpb3VzIGRvdCBjaGFyYWN0ZXIgd3JpdHRlbiBh
dCB0aGUgZW5kCm9mIHRoZSBwb2lzb25lZCBkb21haW4gbmFtZXMgbWl0aWdh
dGVzIHRoZSBpc3N1ZS4KCgotLS0gbmd4cmVzb2x2ZXIuYyAgMjAyMS0wNC0w
NiAxNTo1OTo1MC4yOTM3MzQwNzAgKzAyMDAKKysrIHNyYy9uZ2lueC0xLjE5
Ljgvc3JjL2NvcmUvbmd4cmVzb2x2ZXIuYyAgICAyMDIxLTA0LTA2IDE1OjU0
OjEwLjIzMjk3NTIzNSArMDIwMApAQCAtMzk0Myw3ICszOTI4LDcgQEAKICAg
ICBuZ3hfdWludF90ICAgaSwgbjsKIAogICAgIHAgPSBzcmM7Ci0gICAgbGVu
ID0gLTE7CisgICAgbGVuID0gMDsKIAogICAgIC8qCiAgICAgICogY29tcHJl
c3Npb24gcG9pbnRlcnMgYWxsb3cgdG8gY3JlYXRlIGVuZGxlc3MgbG9vcCwg
c28gd2Ugc2V0IGxpbWl0OwpAQCAtMzk4Niw3ICszOTcxLDcgQEAKICAgICAg
ICAgcmV0dXJuIE5HWF9PSzsKICAgICB9CiAKLSAgICBpZiAobGVuID09IC0x
KSB7CisgICAgaWYgKGxlbiA9PSAwKSB7CiAgICAgICAgIG5neF9zdHJfbnVs
bChuYW1lKTsKICAgICAgICAgcmV0dXJuIE5HWF9PSzsKICAgICB9CgoKT2Zm
aWNpYWwgZml4IGNhbiBiZSBmb3VuZCBhdCBodHRwOi8vbmdpbngub3JnL2Rv
d25sb2FkL3BhdGNoLjIwMjEucmVzb2x2ZXIudHh0CgoKUHJvb2Ytb2YtQ29u
Y2VwdAotLS0tLS0tLS0tLS0tLS0tCgpBIGR1bW15IEROUyBzZXJ2ZXIgZGVs
aXZlcmluZyBhIHBvaXNvbmVkIHBheWxvYWQgdGhhdCB0cmlnZ2VycyB0aGlz
CnZ1bG5lcmFiaWxpdHkgY2FuIGJlIGRvd25sb2FkZWQgZnJvbSBodHRwczov
L2dpdGh1Yi5jb20veDQxc2VjL2Fkdmlzb3JpZXMvYmxvYi9tYXN0ZXIvWDQx
LTIwMjEtMDAyL3BvYy5weQpUaGUgZGVzY3JpYmVkIHZ1bG5lcmFiaWxpdHkg
Y2FuIGJlIHRlc3RlZCBieSBydW5uaW5nIG5naW54IHdpdGggdGhlIHByb3Zp
ZGVkCmNvbmZpZyBhcyBmb2xsb3dzIHVuZGVyIHZhbGdyaW5kIChodHRwczov
L3d3dy52YWxncmluZC5vcmcvKToKCiAgIHZhbGdyaW5kIC0tdHJhY2UtY2hp
bGRyZW49eWVzIG9ianMvbmdpbnggLXAgLi4vcnVudGltZSAtYyBjb25mL3Jl
dmVyc2UtcHJveHkuY29uZgoKVGhlbiBydW4gdGhlIEROUyBzZXJ2ZXIgKHdp
bGwgbGlzdGVuIG9uIHBvcnQgMTA1MyBieSBkZWZhdWx0KToKCiAgIHB5dGhv
biBwb2MucHkKCmFuZCB0cmlnZ2VyIGEgcmVxdWVzdCB0byB0aGUgc2VydmVy
OgoKICAgY3VybCBodHRwOi8vMTI3LjAuMC4xOjgwODAvCgpEZXBlbmRpbmcg
b24gdGhlIGhlYXAgbGF5b3V0IHdoZW4gdGhlIGJ1ZyB0cmlnZ2VycywgdGhl
IG1hbGxvYyBtaXRpZ2F0aW9ucwptaWdodCBkZXRlY3Qgb3Igbm90IHRoZSBl
ZmZlY3QuIFNldmVyYWwgd2F5cyBvZiBzaG93aW5nIHVwIGluIHRoZSBsb2dz
IGFyaXNlOgoKY29ycnVwdGVkIHNpemUgdnMuIHByZXZfc2l6ZQoyMDIxLzA0
LzE2IDEzOjM1OjE1IFthbGVydF0gMjUwMSMwOiB3b3JrZXIgcHJvY2VzcyAy
NTAyIGV4aXRlZCBvbiBzaWduYWwgNiAoY29yZSBkdW1wZWQpCm1hbGxvYygp
OiBpbnZhbGlkIG5leHQgc2l6ZSAodW5zb3J0ZWQpCjIwMjEvMDQvMTYgMTM6
MzU6MzQgW2FsZXJ0XSAyNTI1IzA6IHdvcmtlciBwcm9jZXNzIDI1MjYgZXhp
dGVkIG9uIHNpZ25hbCA2IChjb3JlIGR1bXBlZCkKCgpOZXZlcnRoZWxlc3Ms
IHZhbGdyaW5kIGFuZCBBZHJlc3NTYW5pdGl6ZXIgd2lsbCBhbHdheXMgZGV0
ZWN0IHRoZSBtZW1vcnkKY29ycnVwdGlvbi4KCgpuZ2lueCBjb25maWcgdXNl
ZAotLS0tLS0tLS0tLS0tLS0tLQoKZGFlbW9uIG9mZjsKaHR0cHsKICAgIGFj
Y2Vzc19sb2cgbG9ncy9hY2Nlc3MubG9nOwogICAgc2VydmVyewogICAgICAg
IGxpc3RlbiA4MDgwOwogICAgICAgIGxvY2F0aW9uIC8gewogICAgICAgICAg
ICByZXNvbHZlciAxMjcuMC4wLjE6MTA1MzsKICAgICAgICAgICAgc2V0ICRk
bnMgaHR0cDovL2V4YW1wbGUubmV0OwogICAgICAgICAgICBwcm94eV9wYXNz
ICRkbnM7CiAgICAgICAgfQogICAgfQp9CmV2ZW50cyB7CiAgICB3b3JrZXJf
Y29ubmVjdGlvbnMgIDEwMjQ7Cn0KCgpUaW1lbGluZQotLS0tLS0tLQoKMjAy
MS0wNC0zMCBJc3N1ZSByZXBvcnRlZCB0byBtYWludGFpbmVycwoyMDIxLTA1
LTE3IElzc3VlIHJlcG9ydGVkIHRvIGRpc3Ryb3MgbWFpbGluZyBsaXN0CjIw
MjEtMDUtMTggQ1ZFIGFzc2lnbmVkCjIwMjEtMDUtMjUgUHVibGljIGRpc2Ns
b3N1cmUKCkFib3V0IFg0MSBELVNFQyBHbWJICj09PT09PT09PT09PT09PT09
PT09Clg0MSBpcyBhbiBleHBlcnQgcHJvdmlkZXIgZm9yIGFwcGxpY2F0aW9u
IHNlY3VyaXR5IHNlcnZpY2VzLiBIYXZpbmcgZXh0ZW5zaXZlIGluZHVzdHJ5
IGV4cGVyaWVuY2UgYW5kIGV4cGVydGlzZSBpbiB0aGUgYXJlYSBvZiBpbmZv
cm1hdGlvbiBzZWN1cml0eSwgYSBzdHJvbmcgY29yZSBzZWN1cml0eSB0ZWFt
IG9mIHdvcmxkIGNsYXNzIHNlY3VyaXR5IGV4cGVydHMgZW5hYmxlcyBYNDEg
dG8gcGVyZm9ybSBwcmVtaXVtIHNlY3VyaXR5IHNlcnZpY2VzLgpGaWVsZHMg
b2YgZXhwZXJ0aXNlIGluIHRoZSBhcmVhIG9mIGFwcGxpY2F0aW9uIHNlY3Vy
aXR5IGFyZSBzZWN1cml0eSBjZW50ZXJlZCBjb2RlIHJldmlld3MsIGJpbmFy
eSByZXZlcnNlIGVuZ2luZWVyaW5nIGFuZCB2dWxuZXJhYmlsaXR5IGRpc2Nv
dmVyeS4gQ3VzdG9tIHJlc2VhcmNoIGFuZCBJVCBzZWN1cml0eSBjb25zdWx0
aW5nIGFuZCBzdXBwb3J0IHNlcnZpY2VzIGFyZSBjb3JlIGNvbXBldGVuY2ll
cyBvZiBYNDEuCg==

--------------1F2DDB31D2A9C28962364EA2
Content-Type: text/plain; charset=UTF-8;
 name="x41-2021-002-nginx-resolver-copy.txt.asc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="x41-2021-002-nginx-resolver-copy.txt.asc"

LS0tLS1CRUdJTiBQR1AgTUVTU0FHRS0tLS0tCgpvd0h0V1gyUUhNVjFsMlJz
bEFGa1NnRi9nVU1yT05hdGJ1ZHJ2Mi9GZ1ZaM0orNE1rbzViblNTZzRPaWQ2
ZDBkCjNlek1NQiszdDN3WWJGSVlEREUyVkNBeHRnSjJ3QUVLSEFkWHFPQmdD
aWNrbGRnQlVuRmtLallob2tpYzRKUlQKQ1NtSFNoVWg3M1hQN003ZUxiYXBn
dkkvWGttbjI1bnUxNi9mKzczWDcvMzZzNmU4YTRPMDhjdTMzM2YvbHZDawpV
emMrTEovWStNaHFRWmR6V2s2WE5TMG5PeTNMV1pWOUZyajJDdk5sdy9WNlNy
Z2FYdkh3MlNkTE5YUEZDbHkvClJ3Nm5abFFKbjBLbTk5WEpRanlON0c4MjVV
WlAzdTh3TXN1b1J3NzVWc2pJd2NoMm1FOGJsbTJGUFdueTdmeEkKZFFicmds
aXlRRVBMYVZYSnJOVnFTMU91MDdUOERqTkpyZGxrUmdpL0hHUitZTGxPVUNX
YVVsTDBDcEdKcnVRMApSVXNObnFlaDBSNGFDME4wUmN1S29icDBrRG1tNjFm
Sm5tS1d6RG1HRWo4Z2l3c1hWa2s3REwyZ3FxcmNMb3JyCnQ5VGs5UUpyTXA4
NUJoT0RZRXlIV25hSE9zcGdyR2Q1ek1mSFlyNU1IY2VOWUlxS0JsYzFUY3Ry
bXRJT096WUkKTlVKVVlvRjFYTEN1aWk2UXBueG1XbUVWWFVTbTVmck1GRG0v
MDVqTmtnc2pLeUI3d1VTT215VjdxYjhjQmJpOQpGWXY1V1RMald3YXBzeUJr
ZnBzNWpsUVBhUmpCcnVlamhtMFowdFRCbVNxQkg4TG51YnltbDZXcFEvQk1u
OGpECnkzcWQxQTNYaDAxVndEVDhlNklhZnFubUZWMnRIYXp1VTJ0VDFWbDFm
Z0YrVzV5REgvWHFvb3BQNXVCZkRmN04Kd0hldzMzNTFZYW82MVFlYlBHVFRi
cmVySUY3TmdCbUt5VlNiTmxRcVJsb3NVSDhXbEZWSmt1cFJwME1CeE5ReAp5
VnpIbzBZb3llcytVczBocmdDeEN5Qm12Zy91c3h6QSt1cFNJbkVKSlk1bFNM
ZHQyWXg0dm11d0lBRHM4VkNBClFSNGdod1VTdFcyM0d4QktIQloyWFgrWjBE
Q2t4akpFU2VpU0xnOE1Ta3czSkVhYitxQU52Qmpicm16UEVtMDEKTjVNaGJo
U0NKcVFCSURBRENWU2dwSTBoaFdJTmlvaHVSSUJ0WHlFSDJveXNwRU9NR05R
aERVWkMzMnExQUhndwpGTGJOWVpLb2gzdnltV2YzVUJrYWEzNWxCRkFnVGQv
dHhMSGRCVlNRRU1Rblc0ZmRXaDBydEZhWUJMQXlNSEJhCkVTeWdrQm9KUEda
WW9CMHM3OU1tS3VqaGRrTVNHOEtGK2JodHRCVEt0Qm1GMWFUQWFqbFcwd0tW
UTFBVGpBS2IKZHRocUtIWnJ0Q05ubVhSWVNFMGFVdEsxd2phM0R5NjQxcTZT
UVQzYXNMa0U4TXFLWmE1eml0aXQyRndBVVFBNwpRbHRSbzIxQkhwR21tUU03
a04ybVhNY1FNUmdIaTIwdE05aVZMOExOY0UzQXhTb3pvaEJTaENKTlJ3eWw4
aDJCCkdyZzRMZ2tMdWsxY0g4M1ZvamcyRUVEQ3RWRXN6bWlDMytFWGlqK1ls
RGdSdHRDRTBNYzVCTTBNQmtRZnNpWUUKRzFpRUdjdUpEWEdsQXo1MUFpcEd6
MDFuWXoybHhDb0JhTkJxaDRnSExobDBaYXVlN1ZxNEprZ2ZSZzRBcFdtNwpy
aGt2SUlFUlFxdVQySXFiMzNNaDZoeFFhTml5SEtGTjhLbUZxOUFPNEpZREdL
WXpCY0p2d1FXb1Q5RUlzRmR6CnFOMExyR0JFL01uUzRGVHBnMjRNczR5YURr
SEZ5S0JsUUppSkc0b2ZrN1liaEE3dGdEWXJsc0E3bUF5VWh4blUKSmgzWGpH
eDQ5MU5RalVJREZpclNxSGdmdUFLV1hLRzJCWkFVQ0RHWjRYWThHQjhRQmxq
aTJwc3VKSFB3TjZnagpRYUNFOEFWbWNpdWxEWWYrTXBpMWtuZzBBWFVTTzJo
WUQxSUJMa01sc0wwVGlnekNCNE53Y0N6T2pkTVFNN044CnFNL0N5SGZ3QlNX
cFNaaU11blpQV3B0RVNLeGhvZ1dnTDk0UURPR3JBTGlDeU1BbE1PR0FLZUN2
Q1REQXpBUWEKRXpoRHZDQXI2Um1lam9ibXB5eEJBdXNxWmtPVWNWTWFrYzEx
U0tKQjdEVGVPY0Fqc1RIc3liUUNnL29jbHNMQgpLWVU3R0JZUVJBN1JjNVZr
dDVCdjBydVMrbzk1dERYQkFFbUdIYXdjMjRLblhJcm5paUxsTWdSUGhDaE12
UWZsCisvYkw5cFZmYnpLZUlUMkxleDFzYndHc2FoQ01RUWVyREhCYjJHVUFS
TFJJM3hnODRoMHdnUjhTbll2bWtnYjQKU2cvSVNaQkNUWkhUUnA1YVlPaXN5
TDdjcjI5MjZ1QVV6THdTaU9EcnllZnlaSnUyQXpxMWd6NFk2Tm1tbnNlYwpW
RGpabU0rNVpyRlYxeG9rZGtjd0RHUks5aTFleUJWUXlDRitwUEs1cVpVUVc2
QWw1R0JxR0poWEVIcndJemFoCkJNVUFzNE1zbnpkc0tqNlQ3enBZdDIzTUNq
MmVudUFWRndGYkNxUUdPcVVmVGNJSGVCd05Kb0pmSFpBRVdxUEMKek9sUGh4
ZE5GODBkbjdpRFhTTG1CczdxYjNpVXlueHBFdzVWeUxhMlhaVWtWU1VRVlpp
RFlpdmpVbkVDR0FKbQpWdUpsU2hENm9NS1lHWVJaRXZoR2xqaVpuUkpKZmVB
TkdaOGt6dkJUR0JvL2hRVUI5ajZvdTJibjJhRUpEcGtrCk8yRFcrRGlma3Mv
d1pCVUdnNHlUNVY5ald3MVB0cHBrekNIYkpvbVdJVmZqOUVLR0JPNDZIM0hE
ZGFrUUVqc2YKakl0WkhZeU5qZzJaczZaVUltcytPMkMvNCtPZ0xCUlh3MXUr
RmhjdVFvUkR0ZUozSWIzRUdFcmNsdkxuUUh1aAorVWVoQ2pHNDdtdE5NaGEv
elRjejVKeHpTQ1ZEeHJtWjFsdDdrbndVSEhlcGM5bk9ON1hya0thbGpEZ0Yw
Sm9DClAwSkQyRFY0R3Nvb1NKZHgvb2EySXduQ3BKSllzNEhKMlBSREsvUFlo
NndCR2lCSTVGUTJHTlpSSEM5azMvbUgKOTErUTFsS1M1cHBENFF2TzRna3VT
UllJZnh0VUZhVUVqa3lWZVRneURnazNsQWF3Ryszb0xBK1FmbG5KVWtYbAoy
cHBTR2xGVGNyV1N3akkrMDBTbEJIV0MxUlRCeGdmRmh1d0xrTGlBTEVRZDFy
YUEyb0VLZWFpZWFDdkFRejJJCmJGN3FRcmFlWDVnNXVEUzNiN0UrRXgvV0Jx
Z0pWYlBFVzVINjB0Njl0Zm41bWVuNEpkUWZFUFhRSnBjcnBUeTQKYWM3aDUy
Q2N2RUVacnBRK0dBQWZpQkp0VmMrWHAzSXoxZlc5Q3ZoN3FIYXFGalM5a2hr
U0FPa0tCVXpydWQxcgpCTVNwY0ltdWs1SXJsTFczS3FYZmY2d1ZwbGNLaGRI
Q0NxWGFHbUdSNlMzeDlMUk9TTEU4VWtpaHRsdWZFRUtZCkJ4SGRWd2ZPQUR4
TnhnWnZSSkVJc2lZMGZhUW92VEJkRUtLR2hTeUJNNWZ3TlBFVGVmaFltR21r
b01wTXNTd0UKWWNHWHNwSFJBM3dJR1VPUFFGWlpueGdwcTF5WWpvMFVlTFRy
SlBPR2hLQjlKa1pQcjJpMVNqdzloUE43alVJcwpHSzFNZnJUSENoUEYzTFNR
MXFGSUxmdzhHOVB6STZHVXkrWExlNnFFMTQ5amdpdUJkU3Y1OU5pYWFmTEtX
MXN0Ck5CcEdzMUhCcktqeHVJZXpDRk03cE13RzFHdkwvZURKRlVRRnQ5MWNI
MFdGU242bUxCYkZJV1JzcGJXRW5USTEKMkpKNGhDcG9vMzFhcUV6RjRJZ245
MzlGSU9SR0FyeGNteW1zQVhocWNqcHE5ZEhlejVkMzUwby9UOWpuSnliZQpK
TVorR2ZhL0RQdGZXTmhMMGw3czRDd0h5cnFPcVBocEE0LzZGbk40NHg3ekZR
bEhBVkZNSVk0N2xrMmhXWXZ3Ck9LVkJYQWlCRkdrSG1XcjdMcFQxKyt2SjFH
cS95ZUdIZFJOcU9sNUxCYjBPMUV6TFdEUW1UR1BMZFZzMkEwV1AKTUNPOGl2
bXVBcm1qQmZBRnA3b2ROYWZwSlZYUHFRWmZRbllET1Y0Q095OFpWNUNURldS
WVFUQzJPOGk4a0VjdQpBWUhiQXpLZmNDaThsTnVOSmNwYjBhQ2dhaFVWYWhJ
NTRXSmtKN0xGNHZoV1Jpb1l5YWw0OFZuTGQ1Y3RzcGVHClFiUk1PeFFVbUhX
UmlBRkx6bGhPbS9sSHFKOVNBTW5XQUVvT0ZrQUp4aFNIaFNxeVhnMDdZa3RI
UE5WbzZDVzUKdzRWRkhTb3pSeTVWQ3NXSmtsWmFJNk1IVG93YWpHdmR4YWIz
dkpYSjhNcDhaLzVJWU11em1uUyt0Wkl3TVJaMAp4THpvam9rczEvTmNQNHdj
MkFkTDhXYThhZ1ROUld2dlErVENyMWpBU1VrYmJycEcxR0c4Uy9DUVdURjVw
SE9tCkM2RWlXTXNBOW9hMGFCOVl5TGhCVHhGVFo4TVVINmMrRUU2dUIrcnht
aTdvQWNBN2dTakhmYU1OaFprQkJURTIKeXBKVTQ4UmJUSVgvVks0TDZTN3Ny
QUg4WU9jK1Q5V2xQYjdsYmh1dE1rd1hjYm95NW5YNWZvZm9PMFhhWS9uWQo5
d2xyZFNLb2hkdDBCVVZESlR4TTg2THVmRUFET2swcWFGbTBBZTJ2eGJ0K1pC
QUdsSjlvNHdXN2JEbEh4TTBLCnFKcW9qdDEvSUFJMHJYVVZRSWpmTDhLVk9S
TjYwYjdhM3Bscy9Mam1CRjNNbjZPZUxVelhEdFM0WWxQNG1xdGQKWHpnNElC
NnowZ1VNbW54UW9tTnhEQWd5bFl3aVUyUE53Vjk5alRGMUI0TEtsMUpVUGsw
UmRJeGZJUUZXN1I0QgpDR0NXRW5XNmtKQWlYZ1RUa0pVYU1RYytMRW1ndDIr
cXhLYkNGSHp6eUZtSkRVUEpIeUdjOWtRK2JNWkhpaXM3CllGcjZOd2ttczBF
dlAwajdhRXJJZ3ozeS9xakJwUGlvUkZiUWlQeUE3eVNib0lqckNCblhGRGtE
Tk51L2YzZmMKYkpnUnZrNlRvVXVJZ0NVc3BwZzVsdUY4S1BaMEtkNGhzKzU0
TG1MVndVTmxlQTJmRXlKaWplR1Qzb3k4RVhMSwpFNXFRZzg4TjM4am5sb0ky
WkltUlM1WXlDdDdsc0ZYYThmQ1dodlpzbDVvSk85OTNpVUQ4OW5nWXBycnRT
WVJrCjAvVGhXdnRDaDlZd0dwV0tYdEhnbzhmL3hLZGNLc0xocUpmTXNsWXlT
a1V0WDJMd3BNQUhHdkVQL0wvWW44WDQKZncxSTNmaXVNR2kxTHlkdjArY2FM
aXpGdW5sdXdIMEJSN2RXSVBJMWd6VUg3TUk1bzNQVzIvVzVaaDFWOHpicwo4
eDJRZVRuUmhUMDQ5UVlKbnNEaDJHcUhrQTVNcThsdmRzTSt3TVk0TGVmd0N6
WVB5bjZ2bHlGTmlNT0FNTWVOCld1MjRMd2xkYVppNFFIYUI4d3BLaC8rM3hC
dVYwWFNHU0NTY0szdEhjQWhGdWY3Vy9neWo5dTJ6L0Z2K3ZBTksKdkRPZ0l0
aUVDaXpFc0FKY0RUOUtNOGI5Ti9FZFJPb0NRcFFKeUFSYS9IS0tneU5Ya01U
NGNYNDNrT2JOaGlsVwpyRmoyV0t0RUpZZWcrcWUrNEZCSDFDazFzV0o4WEFC
YWZTckFpQ21VYzJVZVpISW9LOWRRdUFsM0Z4L0x6REdsCm1GRHJaOVRVQlZH
UTNKZGlqT0RGVEJCRS9Qb1FkTUM4UDhqeFlFQXRwOHRhUWRaS1JDOUN5cThX
TlNVM2tTL24KQzFwWkkrTmFUdE9rOGZGeDVGcFZYaERKdXFKUEtCVVZIeVJY
aW1tQjYwUVdxanFJek9jbXlzVmN2aGlMM0xXTAp5UG1KUWo1Ykp1UDVpVndG
L3QrMVN5QUVUNkVJVXV4U0NGK3NMS2ZZeFJ1UFRCSk9Bc3Y0VFZDc3NyNVRH
aDk4CjFmcUQxUjB4NEhhUW9adUI1QXFMWCtrZ0xndzRRa051VXh2YlB0dDF2
U3pTNkYycytFSmk0NjNtemxqaFNra28KWE5aVEN1Tm53T1V1OWNuY2EwRVZy
aW1TeFZ3OVZCZjU0dkUxVDRkSjVMZ09XSUoyeEI1RGY2YXZIa1l2SkVuNwpt
NURiTENnS21vRER1RVFUelJ4Z0J2c0phQ2NFOStQNkxkVjB1dzVtV3RYRGpr
SkJqeWw5SjRhcklRaUVac3R0Cnl2QjN5blVNNW9YcjRJeXhaa2FkVG84WEEv
SGxkbHhMOWU5TUJUYVR2QzdxU2xFeWlYNUNHaXE5RThVVDlmQ1cKQWpyRVFW
TUhVUmsxZUN1MFd0QURacWpVWElFMThIcE5oZjZ1b1lxdVdUMWMwR1VCUXky
bmloT0UzNzVCTjJiNApWZ1Bramx3WEFpWVUxMDUrNURpaW91cDNURHphZkhj
RjJoNFRMNk9iVmdzdmE4VGxSa0RBMUxCL0tEbGJQcGJRClkra2VMbm5LYlor
QjR3YWMxaDhweTVBRkRDWkRCMlNiY0F4TzlpQnMzY2FSUVBpTHlCNVJGQlVV
NHJkc3NvRVYKVlZQMXNRSU9vSG4xM2RXZWdvOTRGK1NnNWx6VmxGUEdlQTFy
V3dHbi96RUc4R1pVSytaeHB5WnIwc2dPWTYyOApYdGgyazBOWEVnMWgzQ2pS
ZnRjVDM1c0o2V0llbE1SMkFqTTlWMVkwK0tOWEsxcEZVeVZwbW5rUVhXaE8x
eGxjClY5Z1VXOXRCUFk2ZFpZSU5jWUVSazRkeE1zT1dSeEtYQ3liRFhoRUxm
YnpTNGhtUnR4Y0txYWZiUDJRcTIrTGUKTnVMTkRiL2NjRnNRL0w2RkRSVzQw
ZmNqcjMvQnNoSW8yUEN1OExwQlFnQ3BXa0hWSVkvbHEvbGlWUytTU3lrMAp5
K0ZsSkZmVTlMTzFLaEZzVDNMVmlZOXprTll0bElnZEw3OVBJaVV5aHBrU284
Vmpaa1lTK3hyTFZFRW5jUzNCCnIwVzRDbU9SQTNnT2NkaTY5Zk9GMVBxNTRz
ajFjNldmdmI0azdVTXpnVFV3NDJVSFVFUjMxemdSWEtmSUdseUYKUnc5aWg5
cmNvTEhkdVcrZ3kvZDdpUUdSSndHeEFyQnhiRVFCeE1tSU05Q2tNTlhCam0r
bmhJZ1JtWThhbk5NQwo3M0FQcWVLN0FyK0xKQ2ZBTnNpU01ab1JZWVBzS0E1
WEVLNnV1WlJMY2hzWllCUHh2K1k2RWJMOVIwem9xMk1jCnAvcVo0WUU4NXBZ
ODVNdHdmUHJ1VHZ5OFZvckpVYUZGVEFtQ1hSeG1pTllkd2k5WDJDbGg1ajRB
WVcxYkRwTUcKSmtwTzBMeEc1dkRzQnYwOURnb01QVHptc2FPQ01Ja0hGbVc5
UEdLZ0NTYnkzUUFuOER0Tk5ObGdSb1ZNSFp5QgpCSVlZQVVjbHozTkZNaDgx
Yk12QTZZYnRCcEhQSU5OektoR3lLcG1XNnpOVDVQeE9ZMWFhSFBHUmNJd1Zp
T29HCit2d3dTWm0rNkJJOUQwUUxId1hZUjJQeVJkZGE0RzJGek5JVlZCU0Nn
VG5ZWVVOOG1CRnNvaWVFV1F4T0lnNVMKSVJ0aU9JbHFDb2M0eG51YS8wd1dR
UElGTFlGM2hpNm5pT0tGUTBZN09BbjhZNXN4QWRwL0taYkFqZ1BwajRCdgpI
bHMrd1YxZ211aFlVV2ZFTHFBU1pMYkpzOCticWpuU0RqU3RtNEgwRzlKcm5F
ZURuR1N4TG9ScXczSW9tQ1BPCi9xQWNSQnhMK0llMXB4cDZFQnVrbmtLbXdJ
eHdrRUljTU9UYStPQzVBNm5sQUpUeFhTdW5kQ05PSGZZM3hYWGoKeHNOYUNy
S0FZeUNsQ0RzQnN5alN6WnN1T0dIRFJtbEQ4WDNiVHZqS3lZdjdUdDYxN1ds
MTM3OXUvdkx0OTkyLwpKVHpwMUhkdnV1TGhzMDkrLzVtRDAzb1huTit5Q2Nz
ckp0c2cvY3FweWNqUzl2ZStVWC9obTFjZU8vZk9QL3pZCkQ3NnVmKzJLMWtX
bk9SY3JuN3pyN3o3ellPN3hyZDZSbC9iZjgwOHZaUDd5eml0dVBZbU8zYlI0
eWZ1M0gzK2kKc1hqbysxSG1lMmR0L3E4N2ovL2U2cXRmdUMzNDY0MFRMMjk4
OU5NejloblBQclgxbnUrZE1iN3RQWjlUVHYvOQp4ZGN2dnlUNmFxTjQrWlpm
Mi9Zdk4weGU5ZS9YYnpqKzhJZE8ramZybGVpbEQ3NW51WDc1SzdlZjJpbmVW
YTdkCi9zTFdpNm45dVFlZXF0OTlNWlV1ZU5mUkxUOStmZCtmbGpiOHpySHVW
ODU0NkkwRG43cGh3K1ovK005WG5ROHMKUGpTMSs3Rm5icm54bGkvZSsxZVAv
dk9lNzhoYnYvbTE0TW1adjk5MTIybjN2dnkzbTl1Zm42emZlVUMrNStYNwoz
cnZydE9Qalp4ejdkT0hnN0xFL00rOTRScDcrNFZrblB2LzU3K1p1K01kTjQx
K2RmK3JFMDYrNTlQQWpGOS85CnhtOUgvM0gwdUpaOTlxYUZ5ZW12djNMODBR
ZHV2UG1PbVdPMVB3b1BQSDNYMXU4KzlZSEY2NS9mOU1EOUU1KzkKK2ZvN3Zx
Uy91MmtmMWo3MHBVY3lPMTdYdDh0Ynp0d3hFYXhld1g3cmlULy94dmJ2UC82
Sk8rLytteE9lT04zbwpQdnZyaTgvOHlTUFBiWHJ0bE9kK3RmYXhqMWRmL2Zh
bFQzLzh4Znk1ai8zdzRyODQ1YVlmWC8zaXhFdG5YbnYyClQ2NzczUTgvTlgx
SWZlQ3NlNzl0Rko3NHdtc0xPeDk5NXFMbVhULzVrYkh3R3pMOTVPeU9zWTNm
dXZXNVAzNHcKdi9UOHQwcGJidDBiM3ZLK3oydys2azU4Nm9zM25sZDQ3TEt6
RjdiZXNFbSsvWCt6ci9zL09IcFkrZUNEdmY5egp4OXdMTC9tRGt6Y1ZQbEg3
NytJcGo3MzR3bkw0K0cxSFgzenR3SFhQYkh0cC8wTlhYL3ZoLzVtOTdzYVRm
bVNlCjkrUjM1cFpmT2ZhYjlNa252dkgvCj1yYVZaCi0tLS0tRU5EIFBHUCBN
RVNTQUdFLS0tLS0K

--------------1F2DDB31D2A9C28962364EA2--
