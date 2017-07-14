X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8633" "Friday" "14" "July" "2017" "09:36:21" "+0200" "Kristian Fiskerstrand" "k_f@gentoo.org" "<453db277-7542-4381-6cbd-8ed99e2af0e3@gentoo.org>" "237" "[oss-security] CVE-2017-7506 spice: Possible buffer overflow via invalid monitor configurations" nil nil nil "7" "2017071407:36:21" "[oss-security] CVE-2017-7506 spice: Possible buffer overflow via invalid monitor configurations" (number mark "U       k_f@gentoo.o Jul 14  237/8633  " thread-indent "\"[oss-security] CVE-2017-7506 spice: Possible buffer overflow via invalid monitor configurations\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32263 invoked by uid 550); 14 Jul 2017 07:36:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32239 invoked from network); 14 Jul 2017 07:36:47 -0000
To: oss-security@lists.openwall.com
From: Kristian Fiskerstrand <k_f@gentoo.org>
Message-ID: <453db277-7542-4381-6cbd-8ed99e2af0e3@gentoo.org>
Date: Fri, 14 Jul 2017 09:36:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="aLfscX54PcKmbG3DHeUQmiCGksE4B46pb"
Subject: [oss-security] CVE-2017-7506 spice: Possible buffer overflow via invalid monitor
 configurations

--aLfscX54PcKmbG3DHeUQmiCGksE4B46pb
Content-Type: multipart/mixed; boundary="l0fPnoIlffsUF0wAV9a3wbQ9fFue8gQne";
 protected-headers="v1"
From: Kristian Fiskerstrand <k_f@gentoo.org>
Reply-To: k_f@gentoo.org
To: oss-security@lists.openwall.com
Message-ID: <453db277-7542-4381-6cbd-8ed99e2af0e3@gentoo.org>
Subject: CVE-2017-7506 spice: Possible buffer overflow via invalid monitor
 configurations

--l0fPnoIlffsUF0wAV9a3wbQ9fFue8gQne
Content-Type: multipart/mixed;
 boundary="------------54CC219724493ADC8AEB30C3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------54CC219724493ADC8AEB30C3
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

The following issue was brought to the distros list during the embargo
period. As per list policy this is the mandatory oss-security posting.

###

> CVE-2017-7506 spice: Possible buffer overflow via invalid monitor
configurations

CVSSv3:  9.1/CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:C/C:L/I:L/A:H

The vulnerability is exposed to authenticated clients.  Malicious SPICE
protocol messages can cause memory exhaustion, leak host memory to the
guest or cause OOB writes.  The writes seem difficult to control, but a
sufficiently crafty attacker could potentially use these to compromise
the host.

This was reported by SPICE maintainers Frediano Ziglio and Christophe
Fergeau, who also provided the attached patchset against the current
stable branch (0.12).

https://bugzilla.redhat.com/show_bug.cgi?id=3D1452606

--=20
Kristian Fiskerstrand
OpenPGP keyblock reachable at hkp://pool.sks-keyservers.net
fpr:94CB AFDD 3034 5109 5618 35AA 0B7F 8B60 E3ED FAE3

--------------54CC219724493ADC8AEB30C3
Content-Type: text/x-patch;
 name="spice-CVE-2017-7506.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="spice-CVE-2017-7506.patch"

=46rom 257f69d619fed407493156c8a7b952abc8a51314 Mon Sep 17 00:00:00 2001
From: Frediano Ziglio <fziglio@redhat.com>
Date: Mon, 15 May 2017 15:57:28 +0100
Subject: [spice-server 1/3] reds: Disconnect when receiving overly big
 ClientMonitorsConfig

Total message size received from the client was unlimited. There is
a 2kiB size check on individual agent messages, but the MonitorsConfig
message can be split in multiple chunks, and the size of the
non-chunked MonitorsConfig message was never checked. This could easily
lead to memory exhaustion on the host.

Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
---
 server/reds.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/server/reds.c b/server/reds.c
index f439a3668..7be85fdfc 100644
--- a/server/reds.c
+++ b/server/reds.c
@@ -993,19 +993,34 @@ static void reds_client_monitors_config_cleanup(void)
 static void reds_on_main_agent_monitors_config(
         MainChannelClient *mcc, void *message, size_t size)
 {
+    const unsigned int MAX_MONITORS =3D 256;
+    const unsigned int MAX_MONITOR_CONFIG_SIZE =3D
+       sizeof(VDAgentMonitorsConfig) + MAX_MONITORS * sizeof(VDAgentMonCon=
fig);
+
     VDAgentMessage *msg_header;
     VDAgentMonitorsConfig *monitors_config;
     RedsClientMonitorsConfig *cmc =3D &reds->client_monitors_config;
=20
+    // limit size of message sent by the client as this can cause a DoS th=
rough
+    // memory exhaustion, or potentially some integer overflows
+    if (sizeof(VDAgentMessage) + MAX_MONITOR_CONFIG_SIZE - cmc->buffer_siz=
e < size) {
+        goto overflow;
+    }
     cmc->buffer_size +=3D size;
     cmc->buffer =3D realloc(cmc->buffer, cmc->buffer_size);
     spice_assert(cmc->buffer);
     cmc->mcc =3D mcc;
     memcpy(cmc->buffer + cmc->buffer_pos, message, size);
     cmc->buffer_pos +=3D size;
+    if (sizeof(VDAgentMessage) > cmc->buffer_size) {
+        spice_debug("not enough data yet. %d", cmc->buffer_size);
+        return;
+    }
     msg_header =3D (VDAgentMessage *)cmc->buffer;
-    if (sizeof(VDAgentMessage) > cmc->buffer_size ||
-            msg_header->size > cmc->buffer_size - sizeof(VDAgentMessage)) {
+    if (msg_header->size > MAX_MONITOR_CONFIG_SIZE) {
+        goto overflow;
+    }
+    if (msg_header->size > cmc->buffer_size - sizeof(VDAgentMessage)) {
         spice_debug("not enough data yet. %d", cmc->buffer_size);
         return;
     }
@@ -1013,6 +1028,12 @@ static void reds_on_main_agent_monitors_config(
     spice_debug("%s: %d", __func__, monitors_config->num_of_monitors);
     red_dispatcher_client_monitors_config(monitors_config);
     reds_client_monitors_config_cleanup();
+    return;
+
+overflow:
+    spice_warning("received invalid MonitorsConfig request from client, di=
sconnecting");
+    red_channel_client_disconnect(main_channel_client_get_base(mcc));
+    reds_client_monitors_config_cleanup();
 }
=20
 void reds_on_main_agent_data(MainChannelClient *mcc, void *message, size_t=
 size)
--=20
2.13.0

=46rom ff2b4ef70181087d5abd50bad76d026ec5088a93 Mon Sep 17 00:00:00 2001
From: Frediano Ziglio <fziglio@redhat.com>
Date: Mon, 15 May 2017 15:57:28 +0100
Subject: [spice-server 2/3] reds: Avoid integer overflows handling monitor
 configuration

Avoid VDAgentMessage::size integer overflows.

Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
---
 server/reds.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/server/reds.c b/server/reds.c
index 7be85fdfc..e1c8c1086 100644
--- a/server/reds.c
+++ b/server/reds.c
@@ -1024,6 +1024,9 @@ static void reds_on_main_agent_monitors_config(
         spice_debug("not enough data yet. %d", cmc->buffer_size);
         return;
     }
+    if (msg_header->size < sizeof(VDAgentMonitorsConfig)) {
+        goto overflow;
+    }
     monitors_config =3D (VDAgentMonitorsConfig *)(cmc->buffer + sizeof(*ms=
g_header));
     spice_debug("%s: %d", __func__, monitors_config->num_of_monitors);
     red_dispatcher_client_monitors_config(monitors_config);
--=20
2.13.0

=46rom 8cc3d7df2792751939cc832f4110c57e2addfca5 Mon Sep 17 00:00:00 2001
From: Frediano Ziglio <fziglio@redhat.com>
Date: Mon, 15 May 2017 15:57:28 +0100
Subject: [spice-server 3/3] reds: Avoid buffer overflows handling monitor
 configuration

It was also possible for a malicious client to set
VDAgentMonitorsConfig::num_of_monitors to a number larger
than the actual size of VDAgentMOnitorsConfig::monitors.
This would lead to buffer overflows, which could allow the guest to
read part of the host memory. This might cause write overflows in the
host as well, but controlling the content of such buffers seems
complicated.

Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
---
 server/reds.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/server/reds.c b/server/reds.c
index e1c8c1086..3a42c3755 100644
--- a/server/reds.c
+++ b/server/reds.c
@@ -1000,6 +1000,7 @@ static void reds_on_main_agent_monitors_config(
     VDAgentMessage *msg_header;
     VDAgentMonitorsConfig *monitors_config;
     RedsClientMonitorsConfig *cmc =3D &reds->client_monitors_config;
+    uint32_t max_monitors;
=20
     // limit size of message sent by the client as this can cause a DoS th=
rough
     // memory exhaustion, or potentially some integer overflows
@@ -1028,6 +1029,12 @@ static void reds_on_main_agent_monitors_config(
         goto overflow;
     }
     monitors_config =3D (VDAgentMonitorsConfig *)(cmc->buffer + sizeof(*ms=
g_header));
+    // limit the monitor number to avoid buffer overflows
+    max_monitors =3D (msg_header->size - sizeof(VDAgentMonitorsConfig)) /
+                   sizeof(VDAgentMonConfig);
+    if (monitors_config->num_of_monitors > max_monitors) {
+        goto overflow;
+    }
     spice_debug("%s: %d", __func__, monitors_config->num_of_monitors);
     red_dispatcher_client_monitors_config(monitors_config);
     reds_client_monitors_config_cleanup();
--=20
2.13.0



--------------54CC219724493ADC8AEB30C3--

--l0fPnoIlffsUF0wAV9a3wbQ9fFue8gQne--

--aLfscX54PcKmbG3DHeUQmiCGksE4B46pb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEtOrRIMf4mkrqRycHJQt6/tY3nYUFAllodHYACgkQJQt6/tY3
nYVBmwf+NslekbTauTcDlwuyDPA0VcZRnzudwfdTcv61fPznCuvX7UsmPqAKljAu
MZaNrvhUL03zIz1uHGFnLlw1p8iMVTtCodGjV/Nb4fjQjhl8zKhnZ9ysQ9Ert2a6
dgBXmUaw+ZF2aKwgGH0wobnz2h50UJXpwpufvQSmDr+i0xfjzZUtNynGirC+LXGh
DuEAK8BzPdvGtYQnVIXfy0yyl/cP4z3mI6Bw1NxR1uPomix3ftlYxrBEt52tcEAf
+yC5UTGN2DXuDki23rm1MJHtguQMQCodVeltx2DCEoxhS1eGB/WzokdOG8slLV+I
S2QD+MJ9yxaFjDJjtr5TjIYX6UJi8Q==
=VaRm
-----END PGP SIGNATURE-----

--aLfscX54PcKmbG3DHeUQmiCGksE4B46pb--
