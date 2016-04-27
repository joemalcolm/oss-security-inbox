X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8947" "Wednesday" "27" "April" "2016" "18:34:09" "+0300" "Evgeny Uskov" "eu@qrator.net" "<5720DBF1.4010200@qrator.net>" "297" "[oss-security] CVE-2016-4049: Denial of Service Vulnerability in Quagga BGP Routing Daemon (bgpd)" nil nil nil "4" "2016042715:34:09" "[oss-security] CVE-2016-4049: Denial of Service Vulnerability in Quagga BGP Routing Daemon (bgpd)" (number mark "U       eu@qrator.ne Apr 27  297/8947  " thread-indent "\"[oss-security] CVE-2016-4049: Denial of Service Vulnerability in Quagga BGP Routing Daemon (bgpd)\"\n") "<571B50AB.1090708@qrator.net>" ("<571B50AB.1090708@qrator.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24033 invoked by uid 550); 27 Apr 2016 15:55:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11358 invoked from network); 27 Apr 2016 15:34:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=highloadlab-com.20150623.gappssmtp.com; s=20150623;
        h=sender:subject:references:to:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=AKNVvoevojvEeZLI36aXiEIp5pPHNkkmFgMepLjUsUA=;
        b=dnm+baklZoMnVPaiCEZ4zuYrL/vnsE0SUPjZ98tloIHThmspM4t/AupiawyVGGGUV/
         +ObbOBcKba125NaRijuGha9mnBoTKgaG4GDt/cdx81HLSMoxAZqBr8lrIQPnwaTwUUF+
         lucApd5RpSzgW5neaoiWKXBzlAlzPGo6zyPSNKum/K6ui6P/ckhfmHjPZb12wmSYV+H7
         MqWgCw1MdgmUk+UYbwRks/2nhlVV/11oV0WbqjKVUMvKrXl4UPHWvzT2DiPRQD7OyM95
         dkc8jICdhy4WUWN1D3qZn/W0nQ7CtUOdfz+r74ua+JDN+xToF0ZIuU8cXAsdbfhOF3su
         Styg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:subject:references:to:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=AKNVvoevojvEeZLI36aXiEIp5pPHNkkmFgMepLjUsUA=;
        b=EOALvv4xI/BH+BYtpJTPvDNttxPj6m7CigQdMcbVRFsR7vWgtaghLhJQiX2ePFl89E
         HbYJc+2k4+aBWIsaqn/d5ObVrMj+aLjrT+udyvF6/QzqzFt9/8WiagrgTrFFcZ4smXKW
         Uzr9ToIm9SB5PegU7btxor0W/5eSQhHpI8Nhn4ooAKzwoFEZyv3X3j1ccblx+ZQerKof
         tu4v6KZun5d8T4wSRh9sng5JjX5va19YnNoIZ473Qwrk6vqqlC+vJUF79Q8Ykv7ZRQeT
         WwaYnBv6weL/4Qlx5zdZRIYJ/K/4jwtArCwjmShpXBx7M8Tx7zBEIiDg4mKV2DU9vli8
         fzJw==
X-Gm-Message-State: AOPr4FVn9BYSfE/lFK6GhHzEOX0HYOH1kWNLWbal92D4hIa2LS0JX3MuqOHnE2srgb95eg==
X-Received: by 10.112.50.107 with SMTP id b11mr4050418lbo.15.1461771252163;
        Wed, 27 Apr 2016 08:34:12 -0700 (PDT)
Sender: Evgeny Uskov <eu@highloadlab.com>
References: <571B50AB.1090708@qrator.net>
To: oss-security@lists.openwall.com
Cc: noc@qrator.net
From: Evgeny Uskov <eu@qrator.net>
X-Forwarded-Message-Id: <571B50AB.1090708@qrator.net>
Message-ID: <5720DBF1.4010200@qrator.net>
Date: Wed, 27 Apr 2016 18:34:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.6.0
MIME-Version: 1.0
In-Reply-To: <571B50AB.1090708@qrator.net>
Content-Type: multipart/mixed;
 boundary="------------080707010104060405090100"
Subject: [oss-security] CVE-2016-4049: Denial of Service Vulnerability in Quagga BGP Routing
 Daemon (bgpd)

--------------080707010104060405090100
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

About 3 months ago we found the following vulnerability in BGP daemon
from Quagga routing software (bgpd): if the following conditions are
satisfied:
 - regular dumping is enabled
 - bgpd instance has many BGP peers
then BGP message packets that are big enough cause bgpd to crash.
The situation when the conditions above are satisfied is quite common.
Moreover, it is easy to craft a packet which is much "bigger" than a
typical packet, and hence such crafted packet can much more likely cause
the crash.

The reason of such behavior is as follows. The function
bgp_dump_routes_func in bgpd/bgp_dump.c does not perform any size checks
when writing data to bgp_dump_obuf. For each bgp_node table record it
tries to dump all data to bgp_dump_obuf stream which is of limited size.
If there is no free space in this stream, the assertion fails and bgpd
crashes.

The problem seems to be quite serious since it may occur if bgpd has
many BGP peers announcing the same prefix (e.g. if bgpd is used as BGP
reflector, on Internet Exchanges etc), and regular dumping is enabled.
In our case "many" was equal to 20.

The easiest way to reproduce the problem:
1) add 150 BGP neighbors announcing the same prefix
2) write "dump bgp routes-mrt bview.dat" command to the telnet console.

The easiest way to eliminate the problem is to create multiple MRT
records if there is too much data for a prefix. Please see the attached
file dump_fix.patch implementing such solution.

We contacted Quagga developers and sent them patches of this
vulnerability. They responded that they are going to apply these patches
in the next patching round:
 - https://lists.quagga.net/pipermail/quagga-dev/2016-January/014699.html
 - https://lists.quagga.net/pipermail/quagga-dev/2016-February/014743.html
However, the vulnerability is still not patched and it is unclear how
long to wait.

This issue has been assigned the name CVE-2016-4049.

--
| Evgeny Uskov  | HLL l QRATOR
| mob.: +7 916 319 33 20
| skype: evgeny_uskov
| mailto: eu@qrator.net
| visit: www.qrator.net


--------------080707010104060405090100
Content-Type: text/x-patch;
 name="dump_fix.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="dump_fix.patch"

=46rom 55604750d694119a0f10a2549dcbdc3d10b7bf1b Mon Sep 17 00:00:00 2001
From: Evgeny Uskov <eu@qrator.net>
Date: Wed, 13 Jan 2016 13:58:00 +0300
Subject: [PATCH] bgpd: Fix buffer overflow error in bgp_dump_routes_func

Now if the number of entries for some prefix is too large, multiple TABLE_D=
UMP_V2 records are created.
In the previous version in such situation bgpd crashed with SIGABRT.
---
 bgpd/bgp_dump.c | 167 +++++++++++++++++++++++++++++++---------------------=
----
 1 file changed, 94 insertions(+), 73 deletions(-)

diff --git a/bgpd/bgp_dump.c b/bgpd/bgp_dump.c
index 1fa0e65..7d78815 100644
--- a/bgpd/bgp_dump.c
+++ b/bgpd/bgp_dump.c
@@ -297,11 +297,96 @@ bgp_dump_routes_index_table(struct bgp *bgp)
 }
=20
=20
+static struct bgp_info *
+bgp_dump_route_node_record (int afi, struct bgp_node *rn, struct bgp_info =
*info, unsigned int seq)
+{
+  struct stream *obuf;
+  size_t sizep;
+  size_t endp;
+
+  obuf =3D bgp_dump_obuf;
+  stream_reset(obuf);
+
+  /* MRT header */
+  if (afi =3D=3D AFI_IP)
+    bgp_dump_header (obuf, MSG_TABLE_DUMP_V2, TABLE_DUMP_V2_RIB_IPV4_UNICA=
ST,
+                     BGP_DUMP_ROUTES);
+  else if (afi =3D=3D AFI_IP6)
+    bgp_dump_header (obuf, MSG_TABLE_DUMP_V2, TABLE_DUMP_V2_RIB_IPV6_UNICA=
ST,
+                     BGP_DUMP_ROUTES);
+
+  /* Sequence number */
+  stream_putl(obuf, seq);
+
+  /* Prefix length */
+  stream_putc (obuf, rn->p.prefixlen);
+
+  /* Prefix */
+  if (afi =3D=3D AFI_IP)
+  {
+    /* We'll dump only the useful bits (those not 0), but have to align on=
 8 bits */
+    stream_write(obuf, (u_char *)&rn->p.u.prefix4, (rn->p.prefixlen+7)/8);
+  }
+  else if (afi =3D=3D AFI_IP6)
+  {
+    /* We'll dump only the useful bits (those not 0), but have to align on=
 8 bits */
+    stream_write (obuf, (u_char *)&rn->p.u.prefix6, (rn->p.prefixlen+7)/8);
+  }
+
+  /* Save where we are now, so we can overwride the entry count later */
+  sizep =3D stream_get_endp(obuf);
+
+  /* Entry count */
+  uint16_t entry_count =3D 0;
+
+  /* Entry count, note that this is overwritten later */
+  stream_putw(obuf, 0);
+
+  endp =3D stream_get_endp(obuf);
+  for (; info; info =3D info->next)
+  {
+    size_t cur_endp;
+
+    /* Peer index */
+    stream_putw(obuf, info->peer->table_dump_index);
+
+    /* Originated */
+#ifdef HAVE_CLOCK_MONOTONIC
+          stream_putl (obuf, time(NULL) - (bgp_clock() - info->uptime));
+#else
+    stream_putl (obuf, info->uptime);
+#endif /* HAVE_CLOCK_MONOTONIC */
+
+    /* Dump attribute. */
+    /* Skip prefix & AFI/SAFI for MP_NLRI */
+    bgp_dump_routes_attr (obuf, info->attr, &rn->p);
+
+    cur_endp =3D stream_get_endp(obuf);
+    if (cur_endp > BGP_MAX_PACKET_SIZE + BGP_DUMP_MSG_HEADER
+                   + BGP_DUMP_HEADER_SIZE)
+    {
+      stream_set_endp(obuf, endp);
+      break;
+    }
+
+    entry_count++;
+    endp =3D cur_endp;
+  }
+
+  /* Overwrite the entry count, now that we know the right number */
+  stream_putw_at (obuf, sizep, entry_count);
+
+  bgp_dump_set_size(obuf, MSG_TABLE_DUMP_V2);
+  fwrite (STREAM_DATA (obuf), stream_get_endp (obuf), 1, bgp_dump_routes.f=
p);
+
+  return info;
+}
+
+
 /* Runs under child process. */
 static unsigned int
 bgp_dump_routes_func (int afi, int first_run, unsigned int seq)
 {
-  struct stream *obuf;
   struct bgp_info *info;
   struct bgp_node *rn;
   struct bgp *bgp;
@@ -320,81 +405,17 @@ bgp_dump_routes_func (int afi, int first_run, unsigne=
d int seq)
   if(first_run)
     bgp_dump_routes_index_table(bgp);
=20
-  obuf =3D bgp_dump_obuf;
-  stream_reset(obuf);
-
   /* Walk down each BGP route. */
   table =3D bgp->rib[afi][SAFI_UNICAST];
=20
   for (rn =3D bgp_table_top (table); rn; rn =3D bgp_route_next (rn))
     {
-      if(!rn->info)
-        continue;
-
-      stream_reset(obuf);
-
-      /* MRT header */
-      if (afi =3D=3D AFI_IP)
-	bgp_dump_header (obuf, MSG_TABLE_DUMP_V2, TABLE_DUMP_V2_RIB_IPV4_UNICAST,
-			 BGP_DUMP_ROUTES);
-      else if (afi =3D=3D AFI_IP6)
-	bgp_dump_header (obuf, MSG_TABLE_DUMP_V2, TABLE_DUMP_V2_RIB_IPV6_UNICAST,
-			 BGP_DUMP_ROUTES);
-
-      /* Sequence number */
-      stream_putl(obuf, seq);
-
-      /* Prefix length */
-      stream_putc (obuf, rn->p.prefixlen);
-
-      /* Prefix */
-      if (afi =3D=3D AFI_IP)
-        {
-          /* We'll dump only the useful bits (those not 0), but have to al=
ign on 8 bits */
-          stream_write(obuf, (u_char *)&rn->p.u.prefix4, (rn->p.prefixlen+=
7)/8);
-        }
-      else if (afi =3D=3D AFI_IP6)
-        {
-          /* We'll dump only the useful bits (those not 0), but have to al=
ign on 8 bits */
-          stream_write (obuf, (u_char *)&rn->p.u.prefix6, (rn->p.prefixlen=
+7)/8);
-        }
-
-      /* Save where we are now, so we can overwride the entry count later =
*/
-      int sizep =3D stream_get_endp(obuf);
-
-      /* Entry count */
-      uint16_t entry_count =3D 0;
-
-      /* Entry count, note that this is overwritten later */
-      stream_putw(obuf, 0);
-
-      for (info =3D rn->info; info; info =3D info->next)
-        {
-          entry_count++;
-
-          /* Peer index */
-          stream_putw(obuf, info->peer->table_dump_index);
-
-          /* Originated */
-#ifdef HAVE_CLOCK_MONOTONIC
-          stream_putl (obuf, time(NULL) - (bgp_clock() - info->uptime));
-#else
-          stream_putl (obuf, info->uptime);
-#endif /* HAVE_CLOCK_MONOTONIC */
-
-          /* Dump attribute. */
-          /* Skip prefix & AFI/SAFI for MP_NLRI */
-          bgp_dump_routes_attr (obuf, info->attr, &rn->p);
-        }
-
-      /* Overwrite the entry count, now that we know the right number */
-      stream_putw_at (obuf, sizep, entry_count);
-
-      seq++;
-
-      bgp_dump_set_size(obuf, MSG_TABLE_DUMP_V2);
-      fwrite (STREAM_DATA (obuf), stream_get_endp (obuf), 1, bgp_dump_rout=
es.fp);
-
+      info =3D rn->info;
+      while (info)
+      {
+        info =3D bgp_dump_route_node_record(afi, rn, info, seq);
+        seq++;
+      }
     }
=20
   fflush (bgp_dump_routes.fp);
@@ -841,8 +862,8 @@ bgp_dump_init (void)
   memset (&bgp_dump_updates, 0, sizeof (struct bgp_dump));
   memset (&bgp_dump_routes, 0, sizeof (struct bgp_dump));
=20
-  bgp_dump_obuf =3D stream_new (BGP_MAX_PACKET_SIZE + BGP_DUMP_MSG_HEADER
-                              + BGP_DUMP_HEADER_SIZE);
+  bgp_dump_obuf =3D stream_new ((BGP_MAX_PACKET_SIZE << 1)
+                              + BGP_DUMP_MSG_HEADER + BGP_DUMP_HEADER_SIZE=
);
=20
   install_node (&bgp_dump_node, config_write_bgp_dump);
=20
--=20
2.8.0.rc3




--------------080707010104060405090100--
