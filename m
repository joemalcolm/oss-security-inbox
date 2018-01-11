X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1531" "Thursday" "11" "January" "2018" "21:33:02" "+0000" "halfdog" "me@halfdog.net" "<1052-1515706382.849134@g0OE.W9FL.fhCU>" "42" "[oss-security] util-linux mount/unmount ASLR bypass via environment variable" "^Date:" nil nil "1" "2018011121:33:02" "[oss-security] util-linux mount/unmount ASLR bypass via environment variable" (number mark "U       me@halfdog.n Jan 11   42/1531  " thread-indent "\"[oss-security] util-linux mount/unmount ASLR bypass via environment variable\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11628 invoked by uid 550); 11 Jan 2018 21:33:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11589 invoked from network); 11 Jan 2018 21:33:46 -0000
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Message-ID: <1052-1515706382.849134@g0OE.W9FL.fhCU>
Date: Thu, 11 Jan 2018 21:33:02 +0000
From: halfdog <me@halfdog.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] util-linux mount/unmount ASLR bypass via environment variable
To: oss-security@lists.openwall.com

Hello list,

Just FYI. The issue was not rated important, hence reported in
public mailing list, see [0]. Copy of message:


Cleaning up another issue, I noticed that I haven't reported this
one yet. Debugging of libmount can be activated, also in SUID
binaries, thus spilling out the heap addresses. Note that "CXT"
structure contains function pointers to overwrite.

Test:

LIBMOUNT_DEBUG=all /bin/umount /

Output:

2401: libmount:      CXT: [0x562d3abb0760]: ----> allocate [RESTRICTED]
2401: libmount:      CXT: [0x562d3abb0760]: umount: /
2401: libmount:      CXT: [0x562d3abb0760]: umount: lookup FS for '/'
2401: libmount:      CXT: [0x562d3abb0760]: checking for writable tab files
2401: libmount:    UTILS: utab: /run/mount/utab
2401: libmount:    CACHE: [0x562d3abb1950]: alloc
2401: libmount:    CACHE: [0x562d3abb1950]: canonicalize path /
2401: libmount:    CACHE: [0x562d3abb1950]: add entry [ 1] (path): /: /
2401: libmount:      CXT: [0x562d3abb0760]: tabfilter ENABLED!
2401: libmount:      TAB: [0x562d3abb35b0]: alloc
...

The output can easily be used by creating a local domain socket
with only 4k buffer size, filling it up until writes are blocking
and then start umount with that socket as stdout. This allows
race-free reading of the address output before umount accesses
other user-controlled resource. Thus any error during the downstream
procedure creating some kind of write-where vulnerability will
always find the correct target.

hd

[0] https://www.spinics.net/lists/util-linux-ng/msg14978.html


