X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["12810" "Monday" "28" "March" "2016" "17:19:29" "-0700" "Ben Pfaff" "blp@ovn.org" "<20160329001929.GM28186@ovn.org>" "335" "[oss-security] CVE-2016-2074: MPLS buffer overflow vulnerabilities in Open vSwitch" nil nil nil "3" "2016032900:19:29" "[oss-security] CVE-2016-2074: MPLS buffer overflow vulnerabilities in Open vSwitch" (number mark "U       blp@ovn.org  Mar 28  335/12810 " thread-indent "\"[oss-security] CVE-2016-2074: MPLS buffer overflow vulnerabilities in Open vSwitch\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9431 invoked by uid 550); 29 Mar 2016 00:21:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7989 invoked from network); 29 Mar 2016 00:19:47 -0000
X-Virus-Scanned: Debian amavisd-new at mfilter15-d.gandi.net
X-Originating-IP: 208.91.2.3
Date: Mon, 28 Mar 2016 17:19:29 -0700
From: Ben Pfaff <blp@ovn.org>
To: oss-security@lists.openwall.com
Message-ID: <20160329001929.GM28186@ovn.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YToU2i3Vx8H2dn7O"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE-2016-2074: MPLS buffer overflow vulnerabilities in Open vSwitch

--YToU2i3Vx8H2dn7O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Multiple versions of Open vSwitch are vulnerable to remote buffer
overflow attacks, in which crafted MPLS packets could overflow the
buffer reserved for MPLS labels in an OVS internal data structure.
The MPLS packets that trigger the vulnerability and the potential for
exploitation vary depending on version:

    - Open vSwitch 2.1.x and earlier are not vulnerable.

    - In Open vSwitch 2.2.x and 2.3.x, the MPLS buffer overflow can be
      exploited for arbitrary remote code execution.

    - In Open vSwitch 2.4.x, the MPLS buffer overflow does not
      obviously lead to a remote code execution exploit, but testing
      shows that it can allow a remote denial of service.  See the
      mitigation section for details.

    - Open vSwitch 2.5.x is not vulnerable.

The Common Vulnerabilities and Exposures project (cve.mitre.org) has
assigned the identifier CVE-2016-2074 to this issue.


Mitigation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

For any version of Open vSwitch, preventing MPLS packets from reaching
Open vSwitch mitigates the vulnerability.  We do not recommend
attempting to mitigate the vulnerability this way because of the
following difficulties:

    - Open vSwitch obtains packets before the iptables host firewall,
      so iptables on the Open vSwitch host cannot ordinarily block the
      vulnerability.

    - If Open vSwitch is configured to support tunnels, MPLS packets
      encapsulated within tunnels must also be prevented from reaching
      the host.

    - If Open vSwitch runs on a hypervisor, MPLS packets from VMs can
      also trigger the vulnerability.

We believe that Open vSwitch 2.4 is subject to denial of service only
when debug logging is enabled.  By default, debug logging is not
enabled.  Users most commonly enable debug logging at runtime using
the "ovs-appctl" utility.  When this is the case, the buffer overflow
will crash the ovs-vswitchd daemon once, and then when it
automatically restarts debug logging will be disabled; thus, in this
situation, the vulnerability can only cause a single, brief
interruption in service.  Debug logging can also be enabled
persistently using a command-line flag; in this situation, a stream of
crafted MPLS packets could cause an extended denial of service.


Fix
=3D=3D=3D

Patches to fix these vulnerabilities in Open vSwitch 2.3.x and 2.4.x
are appended.  The patch for Open vSwitch 2.3.x also applies to and is
effective for Open vSwitch 2.2.x.


Recommendation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We recommend that users of Open vSwitch 2.3.x or 2.4.x apply the
respective patch, or upgrade to Open vSwitch 2.5.0.

For Open vSwitch 2.4.x only, if it cannot be upgraded expeditiously,
we recommend verifying that debug logging is not enabled on the
command line.  This is not effective mitigation for Open vSwitch
2.3.x.

Open vSwitch 2.2.x was never officially released.  If you use a
prerelease version, we recommend that you upgrade to Open vSwitch
2.5.0.


Acknowledgements
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The Open vSwitch team wishes to thank the reporters: Kashyap
Thimmaraju <kashyap.thimmaraju@sec.t-labs.tu-berlin.de> and Bhargava
Shastry <bshastry@sec.t-labs.tu-berlin.de>.


Open vSwitch 2.3.x Vulnerability Check
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This procedure can be used to check whether a given copy of Open
vSwitch 2.3.x is vulnerable to CVE-2016-2074.  This procedure will
crash a vulnerable installation (although in most installations it
will automatically restart itself), so do not run the test on a
mission-critical production system.

This procedure has been tested with i386 and x86-64 builds of Open
vSwitch on GNU/Linux systems.

To test:

1. Start Open vSwitch, if it is not already running.  (If you are
   working from an Open vSwitch source tree, as opposed to an
   installed copy, you may use the OVS sandbox environment by running
   "make sandbox".)

2. Choose some Open vSwitch bridge; which one is not important.  If you
   do not know what Open vSwitch bridges exist, run "ovs-vsctl list-br".
   If no bridges exist, create one with a command like "ovs-vsctl add-br
   br0".

3. Run the following command, substituting the name of your bridge for
   br0:

       ovs-appctl ofproto/trace br0 in_port=3D1 ffffffffffff000000000000884=
7$(for i in $(seq 512); do printf cccc; done)

   If Open vSwitch is vulnerable, this command will crash
   ovs-vswitchd, and you will see output similar to the following:

       2016-03-12T01:34:28Z|00001|unixctl|WARN|error communicating with uni=
x:/home/blp/nicira/ovs/tutorial/sandbox/ovs-vswitchd.18399.ctl: Unknown err=
or -1
       ovs-appctl: ovs-vswitchd: transaction error (End of file)

   If OVS is not vulnerable, ovs-vswitchd will not crash.  You will see
   output much different from that above, and likely similar to the
   following:

       Bridge: br0
       Flow: mpls,metadata=3D0,in_port=3D1,vlan_tci=3D0x0000,dl_src=3D00:00=
:00:00:00:00,dl_dst=3Dff:ff:ff:ff:ff:ff,mpls_label=3D838860,mpls_tc=3D6,mpl=
s_ttl=3D204,mpls_bos=3D0,mpls_lse1=3D3435973836,mpls_lse2=3D3435973836
       Rule: table=3D0 cookie=3D0 priority=3D0
       OpenFlow actions=3DNORMAL
       no input bundle, dropping

       Final flow: unchanged
       Megaflow: recirc_id=3D0,skb_priority=3D0,mpls,in_port=3D1,vlan_tci=
=3D0x0000/0x1fff,dl_src=3D00:00:00:00:00:00,dl_dst=3Dff:ff:ff:ff:ff:ff
       Datapath actions: drop

4. If you started an OVS sandbox environment, you may now exit it with
   the "exit" command.


Open vSwitch 2.4.x Vulnerability Check
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We have not developed a procedure to check Open vSwitch 2.4.x for this
vulnerability.  The procedure described for Open vSwitch 2.3.x is not
effective for Open vSwitch 2.4.x.


Open vSwitch 2.2.x and 2.3.x Patch
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

From: Ben Pfaff <blp@ovn.org>
Date: Mon, 7 Mar 2016 15:30:39 -0800
Subject: [PATCH branch-2.3] flow: Fix buffer overflow for crafted MPLS pack=
ets.

A bug in MPLS parsing could cause a crafted MPLS packet to overflow the
buffer reserved for MPLS labels in the OVS internal flow structure.  This
fixes the problem.

This commit also fixes a secondary problem where an MPLS packet with zero
labels could cause an out-of-range shift that would overwrite memory.
There is no obvious way to control the data used in the overwrite, so this
is harder to exploit.

Vulnerability: CVE-2016-2074
Reported-by: Kashyap Thimmaraju <kashyap.thimmaraju@sec.t-labs.tu-berlin.de>
Reported-by: Bhargava Shastry <bshastry@sec.t-labs.tu-berlin.de>
Signed-off-by: Ben Pfaff <blp@ovn.org>
Acked-by: Jesse Gross <jesse@kernel.org>
---
 lib/flow.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/lib/flow.c b/lib/flow.c
index 52a384e..61a66ec 100644
--- a/lib/flow.c
+++ b/lib/flow.c
@@ -1,5 +1,5 @@
 /*
- * Copyright (c) 2008, 2009, 2010, 2011, 2012, 2013, 2014 Nicira, Inc.
+ * Copyright (c) 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2016 Nicira, In=
c.
  *
  * Licensed under the Apache License, Version 2.0 (the "License");
  * you may not use this file except in compliance with the License.
@@ -159,7 +159,7 @@ struct mf_ctx {
=20
 /* Data at 'valuep' may be unaligned. */
 #define miniflow_push_words_(MF, OFS, VALUEP, N_WORDS)          \
-{                                                               \
+if (N_WORDS) {                                                  \
     int ofs32 =3D (OFS) / 4;                                      \
                                                                         \
     MINIFLOW_ASSERT(MF.data + (N_WORDS) <=3D MF.end && (OFS) % 4 =3D=3D 0 =
    \
@@ -210,7 +210,7 @@ parse_mpls(void **datap, size_t *sizep)
             break;
         }
     }
-    return MAX(count, FLOW_MAX_MPLS_LABELS);
+    return MIN(count, FLOW_MAX_MPLS_LABELS);
 }
=20
 static inline ovs_be16
--=20
2.1.3


Open vSwitch 2.4.x Patch
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

From: Ben Pfaff <blp@ovn.org>
Date: Fri, 26 Feb 2016 15:00:13 -0800
Subject: [PATCH branch-2.4] flow: Fix remote DoS for crafted MPLS packets w=
ith
 debug logging enabled.

A crafted MPLS packet yields a zero 'count' in this excerpt from
miniflow_extract():

        count =3D parse_mpls(&data, &size);
        miniflow_push_words_32(mf, mpls_lse, mpls, count);

In turn, miniflow_push_words_32() updated mf.map as follows:

    MF.map |=3D ((UINT64_MAX >> (64 - DIV_ROUND_UP(N_WORDS, 2))) << ofs64);

which expanded to:

    mf.map |=3D (UINT64_MAX >> 64) << ofs64;

Unforunately, C renders shifting a 64-bit constant by 64 bits undefined.
On common x86 platforms, 'n << 64' is equal to 'n', so this behaves as:

    mf.map |=3D UINT64_MAX << ofs64;

In this particular case, ofs64 is 15, so this sets the most-significant 48
bits of mf.map (a 63-bit bit-field) to 1.  Only the least-significant 28
bits of mf.map should ever be set to 1, so this sets 35 bits to 1 that
should never be.  Because of the structure of the data structure that
mf.map is embedded within, this makes it possible later to overwrite 8*35
=3D=3D 280 bytes of data in the stack.  However, there is no obvious way to
control the data used in the overwrite--it is memcpy'd from one place to
another but the source data does not come from the network.  In the bug
reporter's testing, this overwrite caused a userspace crash if debug
logging was enabled, but not otherwise.

This commit fixes the problem by avoiding the out-of-range shift.

Vulnerability: CVE-2016-2074
Reported-by: Kashyap Thimmaraju <kashyap.thimmaraju@sec.t-labs.tu-berlin.de>
Reported-by: Bhargava Shastry <bshastry@sec.t-labs.tu-berlin.de>
Signed-off-by: Ben Pfaff <blp@ovn.org>
Acked-by: Jesse Gross <jesse@kernel.org>
---
 lib/flow.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/lib/flow.c b/lib/flow.c
index 5df23a9..03c175a 100644
--- a/lib/flow.c
+++ b/lib/flow.c
@@ -1,5 +1,5 @@
 /*
- * Copyright (c) 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015 Nicira, In=
c.
+ * Copyright (c) 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016 Nici=
ra, Inc.
  *
  * Licensed under the Apache License, Version 2.0 (the "License");
  * you may not use this file except in compliance with the License.
@@ -197,7 +197,7 @@ BUILD_MESSAGE("FLOW_WC_SEQ changed: miniflow_extract() =
will have runtime "
=20
 /* Data at 'valuep' may be unaligned. */
 #define miniflow_push_words_(MF, OFS, VALUEP, N_WORDS)          \
-{                                                               \
+if (N_WORDS) {                                                  \
     int ofs64 =3D (OFS) / 8;                                      \
                                                                         \
     MINIFLOW_ASSERT(MF.data + (N_WORDS) <=3D MF.end && (OFS) % 8 =3D=3D 0 =
    \
@@ -210,7 +210,7 @@ BUILD_MESSAGE("FLOW_WC_SEQ changed: miniflow_extract() =
will have runtime "
=20
 /* Push 32-bit words padded to 64-bits. */
 #define miniflow_push_words_32_(MF, OFS, VALUEP, N_WORDS)               \
-{                                                                       \
+if (N_WORDS) {                                                          \
     int ofs64 =3D (OFS) / 8;                                              \
                                                                         \
     MINIFLOW_ASSERT(MF.data + DIV_ROUND_UP(N_WORDS, 2) <=3D MF.end        \
--=20
2.1.3


--YToU2i3Vx8H2dn7O
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW+coPAAoJEIUZnejGZI6QVEEP/3b8C5u+8kRmTNG39/+lZ7JH
S3XDxdWZEWwMvPTMPz/J9lzJImXMEOPLzZDkwvehfS8CFiYflCVHV3WvmtBPx3r5
FIN3tsf1+xDEbbTR/j3qdeCvdCzX9dqLQG7UllA9z5M1Qaa5MOxUjDAuBxoELytU
fdi/RQUxC8ztffPy51kqJNyelij88a2UwLpQulYCb7ECN9qpoCwLqbiLmVjogOFH
gWCKHOJe33nq0NJG9n3y+nCOOjrlgAh/zLOEeVnFSo+JNGcJheksHX2v1rMzVx/o
r/E4prWPExmzMTQ1u5cdEUB2cQbCAbxo1Wr5YHKRI+qGkbXjQesCPJ8OJ90pO+0k
XS6iGfqcaP6k6dXwTndHT2R96uCracU80Ay4sgGyz7GTS7Xh001c3Sf+pM9GYmOp
X4I1r1WfuUuM5cbIwhpNuQNKtmNikPNY3hn7n6VzwEwh1YtFhtxHXj3HJfwO/DNP
zODI8TIl9ILNpIa49gcQBz65PbdMlJXvHmChJNN7VOgRRrUCGCnXxPBkI7uPfkMc
AIImTLhyhxOg0GETnRZAF3LBZb0dKao+jHXYrcoaDtZ7ysG/IMd+0N4LiAsJKoeK
fcFUGvPjiS/WHxkrvon3ukujNaZ6bFEQNPdzh6/X42wnLO9UvORc0R/PZlpFtxqW
RjHv1pDRg4UlIQuG/dHN
=+Af4
-----END PGP SIGNATURE-----

--YToU2i3Vx8H2dn7O--
