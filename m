X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8944" "Tuesday" "27" "June" "2017" "18:58:29" "+0100" "Chris Coulson" "chris.coulson@canonical.com" "<03ffaee7-2345-db4b-b16c-b859ed5637cd@canonical.com>" "285" "[oss-security] CVE-2017-9445: Out-of-bounds write in systemd-resolved with crafted TCP payload" "^Date:" nil nil "6" "2017062717:58:29" "[oss-security] CVE-2017-9445: Out-of-bounds write in systemd-resolved with crafted TCP payload" (number mark "U       chris.coulso Jun 27  285/8944  " thread-indent "\"[oss-security] CVE-2017-9445: Out-of-bounds write in systemd-resolved with crafted TCP payload\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13752 invoked by uid 550); 27 Jun 2017 18:01:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9276 invoked from network); 27 Jun 2017 17:58:41 -0000
Message-ID: <03ffaee7-2345-db4b-b16c-b859ed5637cd@canonical.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:54.0) Gecko/20100101
 Thunderbird/54.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="IJ8NW3IsFb7fKMUW6EgonRQn4qDkpF2Qb"
Date: Tue, 27 Jun 2017 18:58:29 +0100
From: Chris Coulson <chris.coulson@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-9445: Out-of-bounds write in systemd-resolved with crafted
 TCP payload
To: oss-security@lists.openwall.com

--IJ8NW3IsFb7fKMUW6EgonRQn4qDkpF2Qb
Content-Type: multipart/mixed; boundary="r59KXBDeP5aWPDgLWxa9e86QPDlkOoAHv";
 protected-headers="v1"
From: Chris Coulson <chris.coulson@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <03ffaee7-2345-db4b-b16c-b859ed5637cd@canonical.com>
Subject: CVE-2017-9445: Out-of-bounds write in systemd-resolved with crafted
 TCP payload

--r59KXBDeP5aWPDgLWxa9e86QPDlkOoAHv
Content-Type: multipart/mixed;
 boundary="------------576993185C3D25082D5CF40E"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------576993185C3D25082D5CF40E
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

I recently discovered an out-of-bounds write in systemd-resolved in
Ubuntu, which is possible to trigger with a specially crafted TCP payload.

Details from the Ubuntu bug follow:
https://launchpad.net/bugs/1695546

----
Certain sizes passed to dns_packet_new can cause it to allocate a buffer
that's too small. A page-aligned number - sizeof(DnsPacket) +
sizeof(iphdr) + sizeof(udphdr) will do this - so, on x86 this will be a
page-aligned number - 80. Eg, calling dns_packet_new with a size of 4016
on x86 will result in an allocation of 4096 bytes, but 108 bytes of this
are for the DnsPacket struct.

A malicious DNS server can exploit this by responding with a specially
crafted TCP payload to trick systemd-resolved in to allocating a buffer
that's too small, and subsequently write arbitrary data beyond the end
of it.

I believe this was introduced by
https://github.com/systemd/systemd/commit/a0166609f782da91710dea9183d1bf138=
538db37
(v223) and affects all subsequent versions up to and including v233.
----

A patch to resolve this has been provided by Zbigniew
J=C4=99drzejewski-Szmek, along with an additional patch to implement a test.
Both of these are attached.

Many thanks,
Chris

--------------576993185C3D25082D5CF40E
Content-Type: text/x-patch;
 name="0001-test-resolved-packet-add-a-simple-test-for-our-alloc.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename*0="0001-test-resolved-packet-add-a-simple-test-for-our-alloc.pa";
 filename*1="tch"

=46rom c67ed7b00f62b3ea6f9476b491fd5db590d04cf4 Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Zbigniew=3D20J=3DC4=3D99drzejewski-Szmek?=3D <zbyszek@in.=
waw.pl>
Date: Sun, 18 Jun 2017 15:53:15 -0400
Subject: [PATCH 1/2] test-resolved-packet: add a simple test for our
 allocation functions

---
 .gitignore                         |  1 +
 Makefile.am                        | 14 ++++++++++++
 src/resolve/meson.build            |  9 ++++++++
 src/resolve/test-resolved-packet.c | 45 ++++++++++++++++++++++++++++++++++=
++++
 4 files changed, 69 insertions(+)
 create mode 100644 src/resolve/test-resolved-packet.c

diff --git a/.gitignore b/.gitignore
index 60eda2b8ce..bc47db6481 100644
--- a/.gitignore
+++ b/.gitignore
@@ -271,6 +271,7 @@
 /test-replace-var
 /test-resolve
 /test-resolve-tables
+/test-resolved-packet
 /test-ring
 /test-rlimit-util
 /test-sched-prio
diff --git a/Makefile.am b/Makefile.am
index 3b9ed874e5..59899c65cc 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -5748,6 +5748,7 @@ dist_zshcompletion_data +=3D \
 tests +=3D \
 	test-dns-packet \
 	test-resolve-tables \
+	test-resolved-packet \
 	test-dnssec
=20
 manual_tests +=3D \
@@ -5769,6 +5770,19 @@ test_resolve_tables_LDADD =3D \
 	$(GCRYPT_LIBS) \
 	-lm
=20
+test_resolved_packet_SOURCES =3D \
+	src/resolve/test-resolved-packet.c \
+	$(basic_dns_sources)
+
+test_resolved_packet_CFLAGS =3D \
+	$(AM_CFLAGS) \
+	$(GCRYPT_CFLAGS)
+
+test_resolved_packet_LDADD =3D \
+	libsystemd-shared.la \
+	$(GCRYPT_LIBS) \
+	-lm
+
 test_dns_packet_SOURCES =3D \
 	src/resolve/test-dns-packet.c \
 	$(basic_dns_sources)
diff --git a/src/resolve/meson.build b/src/resolve/meson.build
index f3c411ffee..fe228784fa 100644
--- a/src/resolve/meson.build
+++ b/src/resolve/meson.build
@@ -160,6 +160,15 @@ tests +=3D [
           libm],
          'ENABLE_RESOLVED'],
=20
+        [['src/resolve/test-resolved-packet.c',
+          basic_dns_sources,
+          dns_type_headers],
+         [],
+         [libgcrypt,
+          libgpg_error,
+          libm],
+         'ENABLE_RESOLVED'],
+
         [['src/resolve/test-dnssec.c',
           basic_dns_sources,
           dns_type_headers],
diff --git a/src/resolve/test-resolved-packet.c b/src/resolve/test-resolved=
-packet.c
new file mode 100644
index 0000000000..8b7da1408d
--- /dev/null
+++ b/src/resolve/test-resolved-packet.c
@@ -0,0 +1,45 @@
+/***
+  This file is part of systemd
+
+  Copyright 2017 Zbigniew J=C4=99drzejewski-Szmek
+
+  systemd is free software; you can redistribute it and/or modify it
+  under the terms of the GNU Lesser General Public License as published by
+  the Free Software Foundation; either version 2.1 of the License, or
+  (at your option) any later version.
+
+  systemd is distributed in the hope that it will be useful, but
+  WITHOUT ANY WARRANTY; without even the implied warranty of
+  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+  Lesser General Public License for more details.
+
+  You should have received a copy of the GNU Lesser General Public License
+  along with systemd; If not, see <http://www.gnu.org/licenses/>.
+***/
+
+#include "log.h"
+#include "resolved-dns-packet.h"
+
+static void test_dns_packet_new(void) {
+        size_t i;
+
+        for (i =3D 0; i < DNS_PACKET_SIZE_MAX + 2; i++) {
+                _cleanup_(dns_packet_unrefp) DnsPacket *p =3D NULL;
+
+                assert_se(dns_packet_new(&p, DNS_PROTOCOL_DNS, i) =3D=3D 0=
);
+
+                log_debug("dns_packet_new: %zu =E2=86=92 %zu", i, p->alloc=
ated);
+                assert_se(p->allocated >=3D MIN(DNS_PACKET_SIZE_MAX, i));
+        }
+}
+
+int main(int argc, char **argv) {
+
+        log_set_max_level(LOG_DEBUG);
+        log_parse_environment();
+        log_open();
+
+        test_dns_packet_new();
+
+        return 0;
+}
--=20
2.13.0



--------------576993185C3D25082D5CF40E
Content-Type: text/x-patch;
 name="0002-resolved-simplify-alloc-size-calculation.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="0002-resolved-simplify-alloc-size-calculation.patch"

=46rom 8587c3351003b1613ad2e439cebbb20fbae07e70 Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Zbigniew=3D20J=3DC4=3D99drzejewski-Szmek?=3D <zbyszek@in.=
waw.pl>
Date: Sun, 18 Jun 2017 16:07:57 -0400
Subject: [PATCH 2/2] resolved: simplify alloc size calculation

The allocation size was calculated in a complicated way, and for values
close to the page size we would actually allocate less than requested.

Reported by Chris Coulson <chris.coulson@canonical.com>.
---
 src/resolve/resolved-dns-packet.c | 8 +-------
 src/resolve/resolved-dns-packet.h | 2 --
 2 files changed, 1 insertion(+), 9 deletions(-)

diff --git a/src/resolve/resolved-dns-packet.c b/src/resolve/resolved-dns-p=
acket.c
index 240ee448f4..821b66e266 100644
--- a/src/resolve/resolved-dns-packet.c
+++ b/src/resolve/resolved-dns-packet.c
@@ -47,13 +47,7 @@ int dns_packet_new(DnsPacket **ret, DnsProtocol protocol=
, size_t mtu) {
=20
         assert(ret);
=20
-        if (mtu <=3D UDP_PACKET_HEADER_SIZE)
-                a =3D DNS_PACKET_SIZE_START;
-        else
-                a =3D mtu - UDP_PACKET_HEADER_SIZE;
-
-        if (a < DNS_PACKET_HEADER_SIZE)
-                a =3D DNS_PACKET_HEADER_SIZE;
+        a =3D MAX(mtu, DNS_PACKET_HEADER_SIZE);
=20
         /* round up to next page size */
         a =3D PAGE_ALIGN(ALIGN(sizeof(DnsPacket)) + a) - ALIGN(sizeof(DnsP=
acket));
diff --git a/src/resolve/resolved-dns-packet.h b/src/resolve/resolved-dns-p=
acket.h
index 2c92392e4d..3abcaf8cf3 100644
--- a/src/resolve/resolved-dns-packet.h
+++ b/src/resolve/resolved-dns-packet.h
@@ -66,8 +66,6 @@ struct DnsPacketHeader {
 /* With EDNS0 we can use larger packets, default to 4096, which is what is=
 commonly used */
 #define DNS_PACKET_UNICAST_SIZE_LARGE_MAX 4096
=20
-#define DNS_PACKET_SIZE_START 512
-
 struct DnsPacket {
         int n_ref;
         DnsProtocol protocol;
--=20
2.13.0



--------------576993185C3D25082D5CF40E--

--r59KXBDeP5aWPDgLWxa9e86QPDlkOoAHv--

--IJ8NW3IsFb7fKMUW6EgonRQn4qDkpF2Qb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJZUpzFAAoJEGEfvezVlG4PfiwIAI7yHlv99GkzErKBOIGdq1cd
KRsAgl8lNqNGvGl7cYnCjhwzJVQBrUrNXnficNEb+WeA34GO6XfU+yCbWUbalXKO
pj7pTds2CKJnXh6vjZfoijrtcqhC4SE8VZYbgQh16aBARMDweso7H8/tRowupyUQ
0VzXIrq93FOuBEQanKJ7JXWePtZ2mbcjd1ZqMfQzrDCLohUg2de6uyeXop0I3gZV
+ZqEscKPAYTlpH3nWRJCFzSx2KL7Ljmr4ApDJtWvX+9MZLFE9LUTisbOx14++C2Q
uDCzIgsctAtSQseJU5TkasDopXCPX086TPehyLIJnZp4eTsf4hWbcAcgT4UQhGI=
=RNgb
-----END PGP SIGNATURE-----

--IJ8NW3IsFb7fKMUW6EgonRQn4qDkpF2Qb--
