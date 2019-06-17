X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["41328" "Monday" "17" "June" "2019" "10:33:38" "-0700" "Security Report" "security-report@saasmail.netflix.com" "<84db7fe5-446a-4445-96db-8445fd43395c@saasmail.netflix.com>" "1004" "[oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues" "^Cc:" nil nil "6" "2019061717:33:38" "[oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues" (number mark "        security-rep Jun 17 1004/41328 " thread-indent "\"[oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22188 invoked by uid 550); 17 Jun 2019 17:37:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17895 invoked from network); 17 Jun 2019 17:33:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netflix.com; s=google;
        h=date:from:to:cc:message-id:subject:mime-version;
        bh=3PdS1DUaw31E3akzFVLIVFFaJ5fuk8ft3wNjv4eiVxs=;
        b=ZIibICmAifcl5Z5fZ7QrqPTqQGLWweAbzIYBfB5rmITr2xEGqYc5wIVKw63WrxlMLT
         t2P/1lrxw4qXyIIOt1VuMGraxIh/OrKyd7OE2bGnncKwbMMMyxl3642PYQnazUv4h2Yn
         /ANrvyF9fZZhuWzdWl5sAG04e/ySauP9PFCi0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:subject:mime-version;
        bh=3PdS1DUaw31E3akzFVLIVFFaJ5fuk8ft3wNjv4eiVxs=;
        b=i8nfGFIOLZ9dqV0o3tzqDDw3oaMz2wjgHs+c2N4Bl/LHgo1XsBAQyhtLhc/kuJ1s5L
         czK6uuZfk0riQYdXiSLSriqVqx4XQu5tCf01sBKtuSrqqCW9uihrvpKAq2niNdlYO/QC
         dy/0Fjb/gAC9wz67FHmjz0fktv83EtaJb4Gio+46KEnpjTP2bsLiTsP0zmhA9Ssa6PwE
         rZ+RGSjAc9vGtB54y7kjSUCTsu0PVZf6uooKI3YKDfDfotg0NcbdkfQ0w9LcYjb/hKB/
         BLwoYERi0gjEk2gCno5C6x0oahiRKARgrTBo4yeYPuVBlLkmtZd9dUVaYb/V6sccAC8e
         q/dw==
X-Gm-Message-State: APjAAAWAaByAFZhAgBB4K5mEdv4hHTOJ1xIcqFNfIpXo0oiqppynBOs/
	a21UzlSaRvMLznuTtqCLKJKrh5imaTbL
X-Google-Smtp-Source: APXvYqzhEZrXP/c0+NpKxHesqaCVXlEG20UmTIIO/Hcg/RXS34X3wXtOcZ1lMYbSzL4e17Kygki0KUuARg==
X-Received: by 2002:ac8:25d9:: with SMTP id f25mr94138882qtf.256.1560792821093;
        Mon, 17 Jun 2019 10:33:41 -0700 (PDT)
X-Google-Web-Client: true
Message-Id: <84db7fe5-446a-4445-96db-8445fd43395c@saasmail.netflix.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2026_1998571807.1560792818869"
X-Google-Token: EPKdn-gFamsVTAQ0R7c0
X-Google-IP: 2607:fb10:7035:b0:522:566b:7306:3316
Cc: security-report@netflix.com, oss-security@lists.openwall.com
Date: Mon, 17 Jun 2019 10:33:38 -0700 (PDT)
From: Security Report <security-report@saasmail.netflix.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of
 service issues
To: Security Report <security-report@saasmail.netflix.com>

------=_Part_2026_1998571807.1560792818869
Content-Type: multipart/alternative; 
	boundary="----=_Part_2027_2108719810.1560792818870"

------=_Part_2027_2108719810.1560792818870
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Netflix has identified several TCP networking vulnerabilities in FreeBSD=20
and Linux kernels.

The vulnerabilities specifically relate to the minimum segment size (MSS)=20
and TCP Selective Acknowledgement (SACK) capabilities. The most serious,=20
dubbed =E2=80=9CSACK Panic,=E2=80=9D allows a remotely-triggered kernel pan=
ic on recent=20
Linux kernels.

There are patches that address most of these vulnerabilities. If patches=20
can not be applied, certain mitigations will be effective. We recommend=20
that affected parties enact one of those described below, based on their=20
environment.

#1: CVE-2019-11477: SACK Panic (Linux >=3D 2.6.29)

Description: A sequence of SACKs may be crafted such that one can trigger=20
an integer overflow, leading to a kernel panic.

Fix: Apply the attached patch (=E2=80=9CPATCH_net_1_4.patch=E2=80=9D). Addi=
tionally,=20
versions of the Linux kernel up to, and including, 4.14 require a second=20
patch (=E2=80=9CPATCH_net_1a.patch=E2=80=9D).

Workaround #1: Block connections with a low MSS using one of the attached=20
filters. (The values in the filters are examples. You can apply a higher or=
=20
lower limit, as appropriate for your environment.) Note that these filters=
=20
may break legitimate connections which rely on a low MSS. Also, note that=20
this mitigation is only effective if TCP probing is disabled (that is, the=
=20
net.ipv4.tcp_mtu_probing sysctl is set to 0, which appears to be the=20
default value for that sysctl).

Workaround #2: Disable SACK processing (/proc/sys/net/ipv4/tcp_sack set to=
=20
0).

(Note that either workaround should be sufficient on its own. It is not=20
necessary to apply both workarounds.)


#2: CVE-2019-11478: SACK Slowness (Linux < 4.15) or Excess Resource Usage=20
(all Linux versions)

Description: It is possible to send a crafted sequence of SACKs which will=
=20
fragment the TCP retransmission queue. On Linux kernels prior to 4.15, an=20
attacker may be able to further exploit the fragmented queue to cause an=20
expensive linked-list walk for subsequent SACKs received for that same TCP=
=20
connection.

Fix: Apply the attached patch (=E2=80=9CPATCH_net_2_4.patch=E2=80=9D)

Workaround #1: Block connections with a low MSS using one of the attached=20
filters. (The values in the filters are examples. You can apply a higher or=
=20
lower limit, as appropriate for your environment.) Note that these filters=
=20
may break legitimate connections which rely on a low MSS. Also, note that=20
this mitigation is only effective if TCP probing is disabled (that is, the=
=20
net.ipv4.tcp_mtu_probing sysctl is set to 0, which appears to be the=20
default value for that sysctl).

Workaround #2: Disable SACK processing (/proc/sys/net/ipv4/tcp_sack set to=
=20
0).

(Note that either workaround should be sufficient on its own. It is not=20
necessary to apply both workarounds.)


#3: CVE-2019-5599: SACK Slowness (FreeBSD 12 using the RACK TCP Stack)

Description: It is possible to send a crafted sequence of SACKs which will=
=20
fragment the RACK send map. An attacker may be able to further exploit the=
=20
fragmented send map to cause an expensive linked-list walk for subsequent=20
SACKs received for that same TCP connection.

Workaround #1: Apply the attached patch (=E2=80=9Csplit_limit.patch=E2=80=
=9D) and set the=20
net.inet.tcp.rack.split_limit sysctl to a reasonable value to limit the=20
size of the SACK table.

Workaround #2: Temporarily disable the RACK TCP stack.

(Note that either workaround should be sufficient on its own. It is not=20
necessary to apply both workarounds.)


#4: CVE-2019-11479: Excess Resource Consumption Due to Low MSS Values (all=
=20
Linux versions)

Description: An attacker can force the Linux kernel to segment its=20
responses into multiple TCP segments, each of which contains only 8 bytes=20
of data. This drastically increases the bandwidth required to deliver the=20
same amount of data. Further, it consumes additional resources (CPU and NIC=
=20
processing power). This attack requires continued effort from the attacker=
=20
and the impacts will end shortly after the attacker stops sending traffic.

Fix: Two attached patches (=E2=80=9CPATCH_net_3_4.patch=E2=80=9D and =E2=80=
=9CPATCH_net_4_4.patch=E2=80=9D)=20
add a sysctl which enforces a minimum MSS, set by the=20
net.ipv4.tcp_min_snd_mss sysctl. This lets an administrator enforce a=20
minimum MSS appropriate for their applications.

Workaround: Block connections with a low MSS using one of the attached=20
filters. (The values in the filters are examples. You can apply a higher or=
=20
lower limit, as appropriate for your environment.) Note that these filters=
=20
may break legitimate connections which rely on a low MSS. Also, note that=20
this mitigation is only effective if TCP probing is disabled (that is, the=
=20
net.ipv4.tcp_mtu_probing sysctl is set to 0, which appears to be the=20
default value for that sysctl).


Note: Good system and application coding and configuration practices=20
(limiting write buffers to the necessary level, monitoring connection=20
memory consumption via SO_MEMINFO, and aggressively closing misbehaving=20
connections) can help to limit the impact of attacks against these kinds of=
=20
vulnerabilities.

An advisory has been published=20
at https://github.com/Netflix/security-bulletins/blob/master/advisories/thi=
rd-party/2019-001.md

Acknowledgments:
Originally reported by Jonathan Looney.
We thank Eric Dumazet for providing Linux fixes and support.
We thank Bruce Curtis for providing the Linux filters.
We thank Jonathan Lemon and Alexey Kodanev for helping to improve the Linux=
=20
patches.
We gratefully acknowledge the assistance of Tyler Hicks in testing fixes,=20
refining the information about vulnerable versions, and providing=20
assistance during the disclosure process.

Regards,
Netflix Information Security

------=_Part_2027_2108719810.1560792818870
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Netflix has identified several TCP networking vulnera=
bilities in FreeBSD and Linux kernels.</div><div><br></div><div>The vulnera=
bilities specifically relate to the minimum segment size (MSS) and TCP Sele=
ctive Acknowledgement (SACK) capabilities. The most serious, dubbed =E2=80=
=9CSACK Panic,=E2=80=9D allows a remotely-triggered kernel panic on recent =
Linux kernels.</div><div><br></div><div>There are patches that address most=
 of these vulnerabilities. If patches can not be applied, certain mitigatio=
ns will be effective. We recommend that affected parties enact one of those=
 described below, based on their environment.</div><div><br></div><div>#1: =
CVE-2019-11477: SACK Panic (Linux &gt;=3D 2.6.29)</div><div><br></div><div>=
Description: A sequence of SACKs may be crafted such that one can trigger a=
n integer overflow, leading to a kernel panic.</div><div><br></div><div>Fix=
: Apply the attached patch (=E2=80=9CPATCH_net_1_4.patch=E2=80=9D). Additio=
nally, versions of the Linux kernel up to, and including, 4.14 require a se=
cond patch (=E2=80=9CPATCH_net_1a.patch=E2=80=9D).</div><div><br></div><div=
>Workaround #1: Block connections with a low MSS using one of the attached =
filters. (The values in the filters are examples. You can apply a higher or=
 lower limit, as appropriate for your environment.) Note that these filters=
 may break legitimate connections which rely on a low MSS. Also, note that =
this mitigation is only effective if TCP probing is disabled (that is, the =
net.ipv4.tcp_mtu_probing sysctl is set to 0, which appears to be the defaul=
t value for that sysctl).</div><div><br></div><div>Workaround #2: Disable S=
ACK processing (/proc/sys/net/ipv4/tcp_sack set to 0).</div><div><br></div>=
<div>(Note that either workaround should be sufficient on its own. It is no=
t necessary to apply both workarounds.)</div><div><br></div><div><br></div>=
<div>#2: CVE-2019-11478: SACK Slowness (Linux &lt; 4.15) or Excess Resource=
 Usage (all Linux versions)</div><div><br></div><div>Description: It is pos=
sible to send a crafted sequence of SACKs which will fragment the TCP retra=
nsmission queue. On Linux kernels prior to 4.15, an attacker may be able to=
 further exploit the fragmented queue to cause an expensive linked-list wal=
k for subsequent SACKs received for that same TCP connection.</div><div><br=
></div><div>Fix: Apply the attached patch (=E2=80=9CPATCH_net_2_4.patch=E2=
=80=9D)</div><div><br></div><div>Workaround #1: Block connections with a lo=
w MSS using one of the attached filters. (The values in the filters are exa=
mples. You can apply a higher or lower limit, as appropriate for your envir=
onment.) Note that these filters may break legitimate connections which rel=
y on a low MSS. Also, note that this mitigation is only effective if TCP pr=
obing is disabled (that is, the net.ipv4.tcp_mtu_probing sysctl is set to 0=
, which appears to be the default value for that sysctl).</div><div><br></d=
iv><div>Workaround #2: Disable SACK processing (/proc/sys/net/ipv4/tcp_sack=
 set to 0).</div><div><br></div><div>(Note that either workaround should be=
 sufficient on its own. It is not necessary to apply both workarounds.)</di=
v><div><br></div><div><br></div><div>#3: CVE-2019-5599: SACK Slowness (Free=
BSD 12 using the RACK TCP Stack)</div><div><br></div><div>Description: It i=
s possible to send a crafted sequence of SACKs which will fragment the RACK=
 send map. An attacker may be able to further exploit the fragmented send m=
ap to cause an expensive linked-list walk for subsequent SACKs received for=
 that same TCP connection.</div><div><br></div><div>Workaround #1: Apply th=
e attached patch (=E2=80=9Csplit_limit.patch=E2=80=9D) and set the net.inet=
.tcp.rack.split_limit sysctl to a reasonable value to limit the size of the=
 SACK table.</div><div><br></div><div>Workaround #2: Temporarily disable th=
e RACK TCP stack.</div><div><br></div><div>(Note that either workaround sho=
uld be sufficient on its own. It is not necessary to apply both workarounds=
.)</div><div><br></div><div><br></div><div>#4: CVE-2019-11479: Excess Resou=
rce Consumption Due to Low MSS Values (all Linux versions)</div><div><br></=
div><div>Description: An attacker can force the Linux kernel to segment its=
 responses into multiple TCP segments, each of which contains only 8 bytes =
of data. This drastically increases the bandwidth required to deliver the s=
ame amount of data. Further, it consumes additional resources (CPU and NIC =
processing power). This attack requires continued effort from the attacker =
and the impacts will end shortly after the attacker stops sending traffic.<=
/div><div><br></div><div>Fix: Two attached patches (=E2=80=9CPATCH_net_3_4.=
patch=E2=80=9D and =E2=80=9CPATCH_net_4_4.patch=E2=80=9D) add a sysctl whic=
h enforces a minimum MSS, set by the net.ipv4.tcp_min_snd_mss sysctl. This =
lets an administrator enforce a minimum MSS appropriate for their applicati=
ons.</div><div><br></div><div>Workaround: Block connections with a low MSS =
using one of the attached filters. (The values in the filters are examples.=
 You can apply a higher or lower limit, as appropriate for your environment=
.) Note that these filters may break legitimate connections which rely on a=
 low MSS. Also, note that this mitigation is only effective if TCP probing =
is disabled (that is, the net.ipv4.tcp_mtu_probing sysctl is set to 0, whic=
h appears to be the default value for that sysctl).</div><div><br></div><di=
v><br></div><div>Note: Good system and application coding and configuration=
 practices (limiting write buffers to the necessary level, monitoring conne=
ction memory consumption via SO_MEMINFO, and aggressively closing misbehavi=
ng connections) can help to limit the impact of attacks against these kinds=
 of vulnerabilities.</div><div><br></div><div>An advisory has been publishe=
d at=C2=A0https://github.com/Netflix/security-bulletins/blob/master/advisor=
ies/third-party/2019-001.md</div><div><br></div><div>Acknowledgments:</div>=
<div>Originally reported by Jonathan Looney.</div><div>We thank Eric Dumaze=
t for providing Linux fixes and support.</div><div>We thank Bruce Curtis fo=
r providing the Linux filters.</div><div>We thank Jonathan Lemon and Alexey=
 Kodanev for helping to improve the Linux patches.</div><div>We gratefully =
acknowledge the assistance of Tyler Hicks in testing fixes, refining the in=
formation about vulnerable versions, and providing assistance during the di=
sclosure process.</div><div><br></div><div>Regards,</div><div>Netflix Infor=
mation Security</div></div>=

------=_Part_2027_2108719810.1560792818870--

------=_Part_2026_1998571807.1560792818869
Content-Type: text/x-diff; charset=US-ASCII; name=PATCH_net_1_4.patch
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=PATCH_net_1_4.patch
X-Attachment-Id: 52c9fa14-945e-460d-91c2-f810dd04b95c
Content-ID: <52c9fa14-945e-460d-91c2-f810dd04b95c>

Date: Sat,  8 Jun 2019 10:38:05 -0700
Subject: [PATCH net 1/4] tcp: limit payload size of sacked skbs
From: Eric Dumazet <edumazet@google.com>

Jonathan Looney reported that TCP can trigger the following crash
in tcp_shifted_skb() :

	BUG_ON(tcp_skb_pcount(skb) < pcount);

This can happen if the remote peer has advertized the smallest
MSS that linux TCP accepts : 48

An skb can hold 17 fragments, and each fragment can hold 32KB
on x86, or 64KB on PowerPC.

This means that the 16bit witdh of TCP_SKB_CB(skb)->tcp_gso_segs
can overflow.

Note that tcp_sendmsg() builds skbs with less than 64KB
of payload, so this problem needs SACK to be enabled.
SACK blocks allow TCP to coalesce multiple skbs in the retransmit
queue, thus filling the 17 fragments to maximal capacity.

Fixes: 832d11c5cd07 ("tcp: Try to restore large SKBs while SACK processing")
Signed-off-by: Eric Dumazet <edumazet@google.com>
Reported-by: Jonathan Looney <jtl@netflix.com>
Acked-by: Neal Cardwell <ncardwell@google.com>
Reviewed-by: Tyler Hicks <tyhicks@canonical.com>
Cc: Yuchung Cheng <ycheng@google.com>
Cc: Bruce Curtis <brucec@netflix.com>
Cc: Jonathan Lemon <jonathan.lemon@gmail.com>
---
 include/linux/tcp.h   |  4 ++++
 include/net/tcp.h     |  2 ++
 net/ipv4/tcp.c        |  1 +
 net/ipv4/tcp_input.c  | 26 ++++++++++++++++++++------
 net/ipv4/tcp_output.c |  6 +++---
 5 files changed, 30 insertions(+), 9 deletions(-)

diff --git a/include/linux/tcp.h b/include/linux/tcp.h
index 711361af9ce019f08c8b6accc33220b673b34d56..9a478a0cd3a20b40ed344f178e35228a0b8ee203 100644
--- a/include/linux/tcp.h
+++ b/include/linux/tcp.h
@@ -484,4 +484,8 @@ static inline u16 tcp_mss_clamp(const struct tcp_sock *tp, u16 mss)
 
 	return (user_mss && user_mss < mss) ? user_mss : mss;
 }
+
+int tcp_skb_shift(struct sk_buff *to, struct sk_buff *from, int pcount,
+		  int shiftlen);
+
 #endif	/* _LINUX_TCP_H */
diff --git a/include/net/tcp.h b/include/net/tcp.h
index ac2f53fbfa6b4cbf1fc615c952a5e1cac1124300..582c0caa98116740b5bde8c5dbb5d94fc69d1caa 100644
--- a/include/net/tcp.h
+++ b/include/net/tcp.h
@@ -51,6 +51,8 @@ void tcp_time_wait(struct sock *sk, int state, int timeo);
 
 #define MAX_TCP_HEADER	(128 + MAX_HEADER)
 #define MAX_TCP_OPTION_SPACE 40
+#define TCP_MIN_SND_MSS		48
+#define TCP_MIN_GSO_SIZE	(TCP_MIN_SND_MSS - MAX_TCP_OPTION_SPACE)
 
 /*
  * Never offer a window over 32767 without using window scaling. Some
diff --git a/net/ipv4/tcp.c b/net/ipv4/tcp.c
index f12d500ec85cf770b0b94cb5e08d16f77e4c126b..79666ef8c2e2f7d97c00f78f339a9cca34f72843 100644
--- a/net/ipv4/tcp.c
+++ b/net/ipv4/tcp.c
@@ -3868,6 +3868,7 @@ void __init tcp_init(void)
 	unsigned long limit;
 	unsigned int i;
 
+	BUILD_BUG_ON(TCP_MIN_SND_MSS <= MAX_TCP_OPTION_SPACE);
 	BUILD_BUG_ON(sizeof(struct tcp_skb_cb) >
 		     FIELD_SIZEOF(struct sk_buff, cb));
 
diff --git a/net/ipv4/tcp_input.c b/net/ipv4/tcp_input.c
index 08a477e74cf3267b725294c66b46fdad12bd2b72..1e7a240b32f9f019bfee0b0d1d79bfab693f21d6 100644
--- a/net/ipv4/tcp_input.c
+++ b/net/ipv4/tcp_input.c
@@ -1302,7 +1302,7 @@ static bool tcp_shifted_skb(struct sock *sk, struct sk_buff *prev,
 	TCP_SKB_CB(skb)->seq += shifted;
 
 	tcp_skb_pcount_add(prev, pcount);
-	BUG_ON(tcp_skb_pcount(skb) < pcount);
+	WARN_ON_ONCE(tcp_skb_pcount(skb) < pcount);
 	tcp_skb_pcount_add(skb, -pcount);
 
 	/* When we're adding to gso_segs == 1, gso_size will be zero,
@@ -1368,6 +1368,21 @@ static int skb_can_shift(const struct sk_buff *skb)
 	return !skb_headlen(skb) && skb_is_nonlinear(skb);
 }
 
+int tcp_skb_shift(struct sk_buff *to, struct sk_buff *from,
+		  int pcount, int shiftlen)
+{
+	/* TCP min gso_size is 8 bytes (TCP_MIN_GSO_SIZE)
+	 * Since TCP_SKB_CB(skb)->tcp_gso_segs is 16 bits, we need
+	 * to make sure not storing more than 65535 * 8 bytes per skb,
+	 * even if current MSS is bigger.
+	 */
+	if (unlikely(to->len + shiftlen >= 65535 * TCP_MIN_GSO_SIZE))
+		return 0;
+	if (unlikely(tcp_skb_pcount(to) + pcount > 65535))
+		return 0;
+	return skb_shift(to, from, shiftlen);
+}
+
 /* Try collapsing SACK blocks spanning across multiple skbs to a single
  * skb.
  */
@@ -1473,7 +1488,7 @@ static struct sk_buff *tcp_shift_skb_data(struct sock *sk, struct sk_buff *skb,
 	if (!after(TCP_SKB_CB(skb)->seq + len, tp->snd_una))
 		goto fallback;
 
-	if (!skb_shift(prev, skb, len))
+	if (!tcp_skb_shift(prev, skb, pcount, len))
 		goto fallback;
 	if (!tcp_shifted_skb(sk, prev, skb, state, pcount, len, mss, dup_sack))
 		goto out;
@@ -1491,11 +1506,10 @@ static struct sk_buff *tcp_shift_skb_data(struct sock *sk, struct sk_buff *skb,
 		goto out;
 
 	len = skb->len;
-	if (skb_shift(prev, skb, len)) {
-		pcount += tcp_skb_pcount(skb);
-		tcp_shifted_skb(sk, prev, skb, state, tcp_skb_pcount(skb),
+	pcount = tcp_skb_pcount(skb);
+	if (tcp_skb_shift(prev, skb, pcount, len))
+		tcp_shifted_skb(sk, prev, skb, state, pcount,
 				len, mss, 0);
-	}
 
 out:
 	return prev;
diff --git a/net/ipv4/tcp_output.c b/net/ipv4/tcp_output.c
index f429e856e2631a9e6de1d2e060406742f97e538e..b8e3bbb852117459d131fbb41d69ae63bd251a3e 100644
--- a/net/ipv4/tcp_output.c
+++ b/net/ipv4/tcp_output.c
@@ -1454,8 +1454,8 @@ static inline int __tcp_mtu_to_mss(struct sock *sk, int pmtu)
 	mss_now -= icsk->icsk_ext_hdr_len;
 
 	/* Then reserve room for full set of TCP options and 8 bytes of data */
-	if (mss_now < 48)
-		mss_now = 48;
+	if (mss_now < TCP_MIN_SND_MSS)
+		mss_now = TCP_MIN_SND_MSS;
 	return mss_now;
 }
 
@@ -2747,7 +2747,7 @@ static bool tcp_collapse_retrans(struct sock *sk, struct sk_buff *skb)
 		if (next_skb_size <= skb_availroom(skb))
 			skb_copy_bits(next_skb, 0, skb_put(skb, next_skb_size),
 				      next_skb_size);
-		else if (!skb_shift(skb, next_skb, next_skb_size))
+		else if (!tcp_skb_shift(skb, next_skb, 1, next_skb_size))
 			return false;
 	}
 	tcp_highest_sack_replace(sk, next_skb, skb);
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


------=_Part_2026_1998571807.1560792818869
Content-Type: text/x-diff; charset=US-ASCII; name=PATCH_net_1a.patch
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=PATCH_net_1a.patch
X-Attachment-Id: 10871175-52f5-4885-8654-b14c87169fc6
Content-ID: <10871175-52f5-4885-8654-b14c87169fc6>

>From cd4ffa93f16efea290bb70537f98f518e1927e63 Mon Sep 17 00:00:00 2001
From: Joao Martins <joao.m.martins@oracle.com>
Date: Mon, 10 Jun 2019 23:12:39 +0100
Subject: [PATCH 5/5] tcp: fix fack_count accounting on tcp_shift_skb_data()

v4.15 or since commit 737ff314563 ("tcp: use sequence distance to
detect reordering") had switched from the packet-based FACK tracking
to sequence-based.

v4.14 and older still have the old logic and hence on
tcp_skb_shift_data() needs to retain its original logic and have
@fack_count in sync. In other words, we keep the increment of pcount with
tcp_skb_pcount(skb) to later used that to update fack_count. To make it
more explicit we track the new skb that gets incremented to pcount in
@next_pcount, and we get to avoid the constant invocation of
tcp_skb_pcount(skb) all together.

Fixes: a5f1faa40101 ("tcp: limit payload size of sacked skbs")
Reported-by: Alexey Kodanev <alexey.kodanev@oracle.com>
Reviewed-by: Jack Vogel <jack.vogel@oracle.com>
Reviewed-by: John Haxby <john.haxby@oracle.com>
Reviewed-by: Rao Shoaib rao.shoaib@oracle.com>
Signed-off-by: Joao Martins <joao.m.martins@oracle.com>
Signed-off-by: Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
---
 net/ipv4/tcp_input.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/net/ipv4/tcp_input.c b/net/ipv4/tcp_input.c
index fd5c2d2a1d9c..85c09829790b 100644
--- a/net/ipv4/tcp_input.c
+++ b/net/ipv4/tcp_input.c
@@ -1423,6 +1423,7 @@ static struct sk_buff *tcp_shift_skb_data(struct sock *sk, struct sk_buff *skb,
 	struct tcp_sock *tp = tcp_sk(sk);
 	struct sk_buff *prev;
 	int mss;
+	int next_pcount;
 	int pcount = 0;
 	int len;
 	int in_sack;
@@ -1539,9 +1540,11 @@ static struct sk_buff *tcp_shift_skb_data(struct sock *sk, struct sk_buff *skb,
 		goto out;
 
 	len = skb->len;
-	pcount = tcp_skb_pcount(skb);
-	if (tcp_skb_shift(prev, skb, pcount, len))
-		tcp_shifted_skb(sk, skb, state, pcount, len, mss, 0);
+	next_pcount = tcp_skb_pcount(skb);
+	if (tcp_skb_shift(prev, skb, next_pcount, len)) {
+		pcount += next_pcount;
+		tcp_shifted_skb(sk, skb, state, next_pcount, len, mss, 0);
+	}
 out:
 	state->fack_count += pcount;
 	return prev;
-- 
2.21.0


------=_Part_2026_1998571807.1560792818869
Content-Type: application/x-gtar; name=block-low-mss.tgz
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=block-low-mss.tgz
X-Attachment-Id: 20e8ff1a-c0b9-4d89-9e48-45bc2bd276a8
Content-ID: <20e8ff1a-c0b9-4d89-9e48-45bc2bd276a8>

H4sIAMVa+VwAA+1abU/bSBDuZ/+KOUCFSAms981OVU7qXVupUl9QoTqd7vrB
iR2Skthu7FCQ+uNv1lknMTc15I5yumofhBwv87Iz88x4jTKYZsOL3jT70psV
xdH7F8+ev3lxOIsf3ScYY1pKMNdAq+rK+PLewOe46AsZaK4Ulz4wXwZB8AjY
ve7iG1gUZTTHrXwqp61yKDYatfx9GQusrv8T/JbNL6J5tkhjKDMYGDbAMEvT
ZFhOsrSAL5NyDEgPeHN6Wnje7i5M8jIaTJPisLwqvZfZHCJ4PUkXVzBJMUfp
MOnCokhWYjDL4sU0gXKYI8PQiVckJerMo/Q8gWwEZ7+eGONwGU0XiRGAefIJ
3R/CsxSisoyGF8kcTU7Sc1QrZtF06h1MUijHkwKSq2iWo/WnoBjrVHa+TKZT
iOdZjhJJZf3097eQGzNlceidGbVK5mawkBRmy5NiPEtS3CKmZCli7Cw3clhl
oBz2BtdlMszixHu3KPNFidseoqXZDJWqEKpcoI8IBvkI787nCQY/mkzLZN71
IvxoEjfILv+2Q4jmSbX9PIlrd3m8mOXehyLBHV1vul+6uswuklrqIOwsa4YZ
xrRXyUahOEEFk3b01lt7g3ESxZhdq2HSl+VVLjDBUXrt5VlRTKqFchyVWJnP
WKOyroNRqPdY0eEMM5VVGYHRPJvZrZqddjE9+fVRHhVltWu0sIiz/RiKcYIF
baQMc9nMWJWtDY//ddP8QBg05v9mb9+fj1vmP64yO/99xaTA+a+Z8t38fwh4
qzndewav3p58OINeboYJ9Gb1zO4ZboD/BEcs9D7B8/fvTlwL/iBo9v/Go+Ue
fZgOV+rb/S/84Eb/Ky1d/z8Idn86GkzSo0FUjD1v+MvJy+O9g8Mje5gwhyr4
CuUc9v9M92G/u9/xkuE4gx0Pn9Gf40kxhCiO8XRxCUk5ZjDG8w+exkaIJ/Uz
3Ijax3hDNseDDh6zlrLmlLQ61OzvmY3sQ7Q8lpnD0IaRYoynUdKKt+PG0ra4
2f/3++Rf4pbnv+TKX73/+Uyb9z+tlev/h8D3bWS/z7qSgfnxeZdjmcMAPwup
uDK3uBxq4EyGXRlWYlzU6xJ0rctZV/dxiePn0O/7XT8IlkZlN7QigdUL+sBX
i7qLZqpPknWF0ZEQsm7Aq0UhlzoclK9Xi7qrRGXIN+OvxZSvob9WU5StwNrS
srK1dkHIhrUsa8gGlGzfyirdkA0JWdytleW3x+NjldY+CGO+NSbVpmO0QMjy
WtZvyPqUrLCyuJFNWU7JylpW3CEgHm74IIwpa4w3MikpZsiaGZw3ZKnKy7ry
ftiQpSov68r78g4B4dbWPghjNTVYM5MUNVRNDSYaslTlla18v78pqqjCK1v4
vrpDOJpteCBsWWKEjTQqihfK8iJs9Jqiqq5s1cNGqymq6MoWPdB3CCbY9EDY
sqTQzRxSnFCWE7rRZ4qquLIV1402U1TBtS24Cu4QTJ9veCBsWUKoRg41RQht
CSEbPaapemtbb9loMU3VW9t6i/D2YDgLNzwQtiwhRCOHmiKEtoTgjf7SVL21
rTdvtJem6q3rGdC/LZgAOJcbHghb9Qho5pAiRGAJ0eguTZU7sOVuNFdgqy0a
klW1fVjyQttAuBlcyxvW/QdHe3ey/z64ef6v3vvu2cct7/9S4TGmef5XvmDu
/P8Q2Hz/3/XenJ4e7/me9/LV67MX7493DrA58z/wdzSNzouPcHxs/ifYK65T
ePwYDjxAHBwYGZ9/hMfArkasAz/jFR8LKGH+wtkTXmmyK4Yn/dUyN8tPYQ99
duDr1xZbmq29VVKVvk+bFYTZtRKnlWSrkqCVVKuSpJX0hlLnlrgDMm5FGw5a
d6NppbBVKaCV+q1KIakk2BZxh2Tcfdqw37YbQXNPUNxbK9HMEq3MEjSzhNwi
7j4Vt6DZJ1rZJ2j2Cd2qRDNLtDJL0MwS4RZxR2TcNPtEK/sEzT7JWpVoZslW
ZkmaWZJvEfeAilvS7JOt7JM0+2TrXJM0s2QrsyTNLLnNXBuScdPsk63skzT7
ZOtckzSzZCuzJM0stc1ci8m4afapVvYpmn2qda4pmlmqlVmKZpbaZq4lVNyK
Zp9qZZ+i2ada55qimaVamaVoZqnmXPM6nR3PM99kqL9/Ab0JTKu76gskO3vL
o9QO9OI4di8xDg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4O
Dg4ODg7/En8BFrrbgABQAAA=

------=_Part_2026_1998571807.1560792818869
Content-Type: text/x-diff; charset=US-ASCII; name=PATCH_net_2_4.patch
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=PATCH_net_2_4.patch
X-Attachment-Id: 5d9a4b65-fe2e-4e27-97ee-09fde3778bbf
Content-ID: <5d9a4b65-fe2e-4e27-97ee-09fde3778bbf>

Date: Sat,  8 Jun 2019 10:38:06 -0700
Subject: [PATCH net 2/4] tcp: tcp_fragment() should apply sane memory limits
From: Eric Dumazet <edumazet@google.com>

Jonathan Looney reported that a malicious peer can force a sender
to fragment its retransmit queue into tiny skbs, inflating memory
usage and/or overflow 32bit counters.

TCP allows an application to queue up to sk_sndbuf bytes,
so we need to give some allowance for non malicious splitting
of retransmit queue.

A new SNMP counter is added to monitor how many times TCP
did not allow to split an skb if the allowance was exceeded.

Note that this counter might increase in the case applications
use SO_SNDBUF socket option to lower sk_sndbuf.

Signed-off-by: Eric Dumazet <edumazet@google.com>
Reported-by: Jonathan Looney <jtl@netflix.com>
Acked-by: Neal Cardwell <ncardwell@google.com>
Acked-by: Yuchung Cheng <ycheng@google.com>
Reviewed-by: Tyler Hicks <tyhicks@canonical.com>
Cc: Bruce Curtis <brucec@netflix.com>
Cc: Jonathan Lemon <jonathan.lemon@gmail.com>
---
 include/uapi/linux/snmp.h | 1 +
 net/ipv4/proc.c           | 1 +
 net/ipv4/tcp_output.c     | 5 +++++
 3 files changed, 7 insertions(+)

diff --git a/include/uapi/linux/snmp.h b/include/uapi/linux/snmp.h
index 86dc24a96c90ab047d5173d625450facd6c6dd79..fd42c1316d3d112ecd8a00d2b499d6f6901c5e81 100644
--- a/include/uapi/linux/snmp.h
+++ b/include/uapi/linux/snmp.h
@@ -283,6 +283,7 @@ enum
 	LINUX_MIB_TCPACKCOMPRESSED,		/* TCPAckCompressed */
 	LINUX_MIB_TCPZEROWINDOWDROP,		/* TCPZeroWindowDrop */
 	LINUX_MIB_TCPRCVQDROP,			/* TCPRcvQDrop */
+	LINUX_MIB_TCPWQUEUETOOBIG,		/* TCPWqueueTooBig */
 	__LINUX_MIB_MAX
 };
 
diff --git a/net/ipv4/proc.c b/net/ipv4/proc.c
index 4370f4246e86dfe06a9e07cace848baeaf6cc4da..073273b751f8fcda1c9c79cd1ab566f2939b2517 100644
--- a/net/ipv4/proc.c
+++ b/net/ipv4/proc.c
@@ -287,6 +287,7 @@ static const struct snmp_mib snmp4_net_list[] = {
 	SNMP_MIB_ITEM("TCPAckCompressed", LINUX_MIB_TCPACKCOMPRESSED),
 	SNMP_MIB_ITEM("TCPZeroWindowDrop", LINUX_MIB_TCPZEROWINDOWDROP),
 	SNMP_MIB_ITEM("TCPRcvQDrop", LINUX_MIB_TCPRCVQDROP),
+	SNMP_MIB_ITEM("TCPWqueueTooBig", LINUX_MIB_TCPWQUEUETOOBIG),
 	SNMP_MIB_SENTINEL
 };
 
diff --git a/net/ipv4/tcp_output.c b/net/ipv4/tcp_output.c
index b8e3bbb852117459d131fbb41d69ae63bd251a3e..1bb1c46b4abad100622d3f101a0a3ca0a6c8e881 100644
--- a/net/ipv4/tcp_output.c
+++ b/net/ipv4/tcp_output.c
@@ -1296,6 +1296,11 @@ int tcp_fragment(struct sock *sk, enum tcp_queue tcp_queue,
 	if (nsize < 0)
 		nsize = 0;
 
+	if (unlikely((sk->sk_wmem_queued >> 1) > sk->sk_sndbuf)) {
+		NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPWQUEUETOOBIG);
+		return -ENOMEM;
+	}
+
 	if (skb_unclone(skb, gfp))
 		return -ENOMEM;
 
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog

------=_Part_2026_1998571807.1560792818869
Content-Type: text/x-diff; charset=US-ASCII; name=split_limit.patch
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=split_limit.patch
X-Attachment-Id: 76335359-161a-471a-a3da-e367521b1cdc
Content-ID: <76335359-161a-471a-a3da-e367521b1cdc>

Index: sys/netinet/tcp_stacks/rack.c
===================================================================
--- sys/netinet/tcp_stacks/rack.c	(revision 348678)
+++ sys/netinet/tcp_stacks/rack.c	(working copy)
@@ -1,5 +1,5 @@
 /*-
- * Copyright (c) 2016-2018 Netflix, Inc.
+ * Copyright (c) 2016-2019 Netflix, Inc.
  *
  * Redistribution and use in source and binary forms, with or without
  * modification, are permitted provided that the following conditions
@@ -202,6 +202,7 @@
 static int32_t rack_sack_block_limit = 128;
 static int32_t rack_use_sack_filter = 1;
 static int32_t rack_tlp_threshold_use = TLP_USE_TWO_ONE;
+static uint32_t rack_map_split_limit = 0;	/* unlimited by default */
 
 /* Rack specific counters */
 counter_u64_t rack_badfr;
@@ -227,6 +228,8 @@
 counter_u64_t rack_to_alloc;
 counter_u64_t rack_to_alloc_hard;
 counter_u64_t rack_to_alloc_emerg;
+counter_u64_t rack_alloc_limited_conns;
+counter_u64_t rack_split_limited;
 
 counter_u64_t rack_sack_proc_all;
 counter_u64_t rack_sack_proc_short;
@@ -260,6 +263,8 @@
 rack_ack_received(struct tcpcb *tp, struct tcp_rack *rack,
     struct tcphdr *th, uint16_t nsegs, uint16_t type, int32_t recovery);
 static struct rack_sendmap *rack_alloc(struct tcp_rack *rack);
+static struct rack_sendmap *rack_alloc_limit(struct tcp_rack *rack,
+    uint8_t limit_type);
 static struct rack_sendmap *
 rack_check_recovery_mode(struct tcpcb *tp,
     uint32_t tsused);
@@ -444,6 +449,8 @@
 		counter_u64_zero(rack_sack_proc_short);
 		counter_u64_zero(rack_sack_proc_restart);
 		counter_u64_zero(rack_to_alloc);
+		counter_u64_zero(rack_alloc_limited_conns);
+		counter_u64_zero(rack_split_limited);
 		counter_u64_zero(rack_find_high);
 		counter_u64_zero(rack_runt_sacks);
 		counter_u64_zero(rack_used_tlpmethod);
@@ -621,6 +628,11 @@
 	    OID_AUTO, "pktdelay", CTLFLAG_RW,
 	    &rack_pkt_delay, 1,
 	    "Extra RACK time (in ms) besides reordering thresh");
+	SYSCTL_ADD_U32(&rack_sysctl_ctx,
+	    SYSCTL_CHILDREN(rack_sysctl_root),
+	    OID_AUTO, "split_limit", CTLFLAG_RW,
+	    &rack_map_split_limit, 0,
+	    "Is there a limit on the number of map split entries (0=unlimited)");
 	SYSCTL_ADD_S32(&rack_sysctl_ctx,
 	    SYSCTL_CHILDREN(rack_sysctl_root),
 	    OID_AUTO, "inc_var", CTLFLAG_RW,
@@ -756,7 +768,19 @@
 	    SYSCTL_CHILDREN(rack_sysctl_root),
 	    OID_AUTO, "allocemerg", CTLFLAG_RD,
 	    &rack_to_alloc_emerg,
-	    "Total alocations done from emergency cache");
+	    "Total allocations done from emergency cache");
+	rack_alloc_limited_conns = counter_u64_alloc(M_WAITOK);
+	SYSCTL_ADD_COUNTER_U64(&rack_sysctl_ctx,
+	    SYSCTL_CHILDREN(rack_sysctl_root),
+	    OID_AUTO, "alloc_limited_conns", CTLFLAG_RD,
+	    &rack_alloc_limited_conns,
+	    "Connections with allocations dropped due to limit");
+	rack_split_limited = counter_u64_alloc(M_WAITOK);
+	SYSCTL_ADD_COUNTER_U64(&rack_sysctl_ctx,
+	    SYSCTL_CHILDREN(rack_sysctl_root),
+	    OID_AUTO, "split_limited", CTLFLAG_RD,
+	    &rack_split_limited,
+	    "Split allocations dropped due to limit");
 	rack_sack_proc_all = counter_u64_alloc(M_WAITOK);
 	SYSCTL_ADD_COUNTER_U64(&rack_sysctl_ctx,
 	    SYSCTL_CHILDREN(rack_sysctl_root),
@@ -1120,10 +1144,11 @@
 {
 	struct rack_sendmap *rsm;
 
-	counter_u64_add(rack_to_alloc, 1);
-	rack->r_ctl.rc_num_maps_alloced++;
 	rsm = uma_zalloc(rack_zone, M_NOWAIT);
 	if (rsm) {
+alloc_done:
+		counter_u64_add(rack_to_alloc, 1);
+		rack->r_ctl.rc_num_maps_alloced++;
 		return (rsm);
 	}
 	if (rack->rc_free_cnt) {
@@ -1131,14 +1156,46 @@
 		rsm = TAILQ_FIRST(&rack->r_ctl.rc_free);
 		TAILQ_REMOVE(&rack->r_ctl.rc_free, rsm, r_next);
 		rack->rc_free_cnt--;
-		return (rsm);
+		goto alloc_done;
 	}
 	return (NULL);
 }
 
+/* wrapper to allocate a sendmap entry, subject to a specific limit */
+static struct rack_sendmap *
+rack_alloc_limit(struct tcp_rack *rack, uint8_t limit_type)
+{
+	struct rack_sendmap *rsm;
+
+	if (limit_type) {
+		/* currently there is only one limit type */
+		if (rack_map_split_limit > 0 &&
+		    rack->r_ctl.rc_num_split_allocs >= rack_map_split_limit) {
+			counter_u64_add(rack_split_limited, 1);
+			if (!rack->alloc_limit_reported) {
+				rack->alloc_limit_reported = 1;
+				counter_u64_add(rack_alloc_limited_conns, 1);
+			}
+			return (NULL);
+		}
+	}
+
+	/* allocate and mark in the limit type, if set */
+	rsm = rack_alloc(rack);
+	if (rsm != NULL && limit_type) {
+		rsm->r_limit_type = limit_type;
+		rack->r_ctl.rc_num_split_allocs++;
+	}
+	return (rsm);
+}
+
 static void
 rack_free(struct tcp_rack *rack, struct rack_sendmap *rsm)
 {
+	if (rsm->r_limit_type) {
+		/* currently there is only one limit type */
+		rack->r_ctl.rc_num_split_allocs--;
+	}
 	rack->r_ctl.rc_num_maps_alloced--;
 	if (rack->r_ctl.rc_tlpsend == rsm)
 		rack->r_ctl.rc_tlpsend = NULL;
@@ -3942,7 +3999,7 @@
 		/*
 		 * Need to split this in two pieces the before and after.
 		 */
-		nrsm = rack_alloc(rack);
+		nrsm = rack_alloc_limit(rack, RACK_LIMIT_TYPE_SPLIT);
 		if (nrsm == NULL) {
 			/*
 			 * failed XXXrrs what can we do but loose the sack
@@ -4003,7 +4060,7 @@
 		goto do_rest_ofb;
 	}
 	/* Ok we need to split off this one at the tail */
-	nrsm = rack_alloc(rack);
+	nrsm = rack_alloc_limit(rack, RACK_LIMIT_TYPE_SPLIT);
 	if (nrsm == NULL) {
 		/* failed rrs what can we do but loose the sack info? */
 		goto out;
Index: sys/netinet/tcp_stacks/tcp_rack.h
===================================================================
--- sys/netinet/tcp_stacks/tcp_rack.h	(revision 348678)
+++ sys/netinet/tcp_stacks/tcp_rack.h	(working copy)
@@ -54,8 +54,10 @@
 	uint8_t r_sndcnt;	/* Retran count, not limited by
 				 * RACK_NUM_OF_RETRANS */
 	uint8_t r_in_tmap;	/* Flag to see if its in the r_tnext array */
-	uint8_t r_resv[3];
+	uint8_t r_limit_type;	/* is this entry counted against a limit? */
+	uint8_t r_resv[2];
 };
+#define RACK_LIMIT_TYPE_SPLIT	1
 
 TAILQ_HEAD(rack_head, rack_sendmap);
 
@@ -241,7 +243,7 @@
 	uint32_t rc_num_maps_alloced;	/* Number of map blocks (sacks) we
 					 * have allocated */
 	uint32_t rc_rcvtime;	/* When we last received data */
-	uint32_t rc_notused;
+	uint32_t rc_num_split_allocs;	/* num split map entries allocated */
 	uint32_t rc_last_output_to; 
 	uint32_t rc_went_idle_time;
 
@@ -310,7 +312,8 @@
 	uint8_t rack_tlp_threshold_use;
 	uint8_t rc_allow_data_af_clo: 1,
 		delayed_ack : 1,
-		rc_avail : 6;
+		alloc_limit_reported : 1,
+		rc_avail : 5;
 	uint8_t r_resv[2];	/* Fill to cache line boundary */
 	/* Cache line 2 0x40 */
 	struct rack_control r_ctl;

------=_Part_2026_1998571807.1560792818869
Content-Type: text/x-diff; charset=US-ASCII; name=PATCH_net_3_4.patch
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=PATCH_net_3_4.patch
X-Attachment-Id: 1228656a-86da-4c05-9e52-c5e022199235
Content-ID: <1228656a-86da-4c05-9e52-c5e022199235>

Date: Sat,  8 Jun 2019 10:38:07 -0700
Subject: [PATCH net 3/4] tcp: add tcp_min_snd_mss sysctl
From: Eric Dumazet <edumazet@google.com>

Some TCP peers announce a very small MSS option in their SYN and/or
SYN/ACK messages.

This forces the stack to send packets with a very high network/cpu
overhead.

Linux has enforced a minimal value of 48. Since this value includes
the size of TCP options, and that the options can consume up to 40
bytes, this means that each segment can include only 8 bytes of payload.

In some cases, it can be useful to increase the minimal value
to a saner value.

We still let the default to 48 (TCP_MIN_SND_MSS), for compatibility
reasons.

Note that TCP_MAXSEG socket option enforces a minimal value
of (TCP_MIN_MSS). David Miller increased this minimal value
in commit c39508d6f118 ("tcp: Make TCP_MAXSEG minimum more correct.")
from 64 to 88.

We might in the future merge TCP_MIN_SND_MSS and TCP_MIN_MSS.

Signed-off-by: Eric Dumazet <edumazet@google.com>
Suggested-by: Jonathan Looney <jtl@netflix.com>
Cc: Neal Cardwell <ncardwell@google.com>
Cc: Yuchung Cheng <ycheng@google.com>
Cc: Tyler Hicks <tyhicks@canonical.com>
Cc: Bruce Curtis <brucec@netflix.com>
Cc: Jonathan Lemon <jonathan.lemon@gmail.com>
---
 Documentation/networking/ip-sysctl.txt |  8 ++++++++
 include/net/netns/ipv4.h               |  1 +
 net/ipv4/sysctl_net_ipv4.c             | 11 +++++++++++
 net/ipv4/tcp_ipv4.c                    |  1 +
 net/ipv4/tcp_output.c                  |  3 +--
 5 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/Documentation/networking/ip-sysctl.txt b/Documentation/networking/ip-sysctl.txt
index 14fe93049d28e965d7349b03c5c8782c3d386e7d..8cafd044eec0a228576d85e32729f34413abcd43 100644
--- a/Documentation/networking/ip-sysctl.txt
+++ b/Documentation/networking/ip-sysctl.txt
@@ -255,6 +255,14 @@ tcp_base_mss - INTEGER
 	Path MTU discovery (MTU probing).  If MTU probing is enabled,
 	this is the initial MSS used by the connection.
 
+tcp_min_snd_mss - INTEGER
+	TCP SYN and SYNACK messages usually advertise an ADVMSS option,
+	as described in RFC 1122 and RFC 6691.
+	If this ADVMSS option is smaller than tcp_min_snd_mss,
+	it is silently capped to tcp_min_snd_mss.
+
+	Default : 48 (at least 8 bytes of payload per segment)
+
 tcp_congestion_control - STRING
 	Set the congestion control algorithm to be used for new
 	connections. The algorithm "reno" is always available, but
diff --git a/include/net/netns/ipv4.h b/include/net/netns/ipv4.h
index 7698460a3dd1e5070e12d406b3ee58834688cdc9..623cfbb7b8dcbb2a6d8325ec010aff78bbdf8839 100644
--- a/include/net/netns/ipv4.h
+++ b/include/net/netns/ipv4.h
@@ -117,6 +117,7 @@ struct netns_ipv4 {
 #endif
 	int sysctl_tcp_mtu_probing;
 	int sysctl_tcp_base_mss;
+	int sysctl_tcp_min_snd_mss;
 	int sysctl_tcp_probe_threshold;
 	u32 sysctl_tcp_probe_interval;
 
diff --git a/net/ipv4/sysctl_net_ipv4.c b/net/ipv4/sysctl_net_ipv4.c
index 875867b64d6a6597bf4fcd3498ed55741cbe33f7..16577af90337af87856b4c2157823c5d90df035b 100644
--- a/net/ipv4/sysctl_net_ipv4.c
+++ b/net/ipv4/sysctl_net_ipv4.c
@@ -39,6 +39,8 @@ static int ip_local_port_range_min[] = { 1, 1 };
 static int ip_local_port_range_max[] = { 65535, 65535 };
 static int tcp_adv_win_scale_min = -31;
 static int tcp_adv_win_scale_max = 31;
+static int tcp_min_snd_mss_min = TCP_MIN_SND_MSS;
+static int tcp_min_snd_mss_max = 65535;
 static int ip_privileged_port_min;
 static int ip_privileged_port_max = 65535;
 static int ip_ttl_min = 1;
@@ -757,6 +759,15 @@ static struct ctl_table ipv4_net_table[] = {
 		.mode		= 0644,
 		.proc_handler	= proc_dointvec,
 	},
+	{
+		.procname	= "tcp_min_snd_mss",
+		.data		= &init_net.ipv4.sysctl_tcp_min_snd_mss,
+		.maxlen		= sizeof(int),
+		.mode		= 0644,
+		.proc_handler	= proc_dointvec_minmax,
+		.extra1		= &tcp_min_snd_mss_min,
+		.extra2		= &tcp_min_snd_mss_max,
+	},
 	{
 		.procname	= "tcp_probe_threshold",
 		.data		= &init_net.ipv4.sysctl_tcp_probe_threshold,
diff --git a/net/ipv4/tcp_ipv4.c b/net/ipv4/tcp_ipv4.c
index bc86f9735f4577d50d94f42b10edb6ba95bb7a05..cfa81190a1b1af30d05f4f6cd84c05b025a6afeb 100644
--- a/net/ipv4/tcp_ipv4.c
+++ b/net/ipv4/tcp_ipv4.c
@@ -2628,6 +2628,7 @@ static int __net_init tcp_sk_init(struct net *net)
 	net->ipv4.sysctl_tcp_ecn_fallback = 1;
 
 	net->ipv4.sysctl_tcp_base_mss = TCP_BASE_MSS;
+	net->ipv4.sysctl_tcp_min_snd_mss = TCP_MIN_SND_MSS;
 	net->ipv4.sysctl_tcp_probe_threshold = TCP_PROBE_THRESHOLD;
 	net->ipv4.sysctl_tcp_probe_interval = TCP_PROBE_INTERVAL;
 
diff --git a/net/ipv4/tcp_output.c b/net/ipv4/tcp_output.c
index 1bb1c46b4abad100622d3f101a0a3ca0a6c8e881..00c01a01b547ec67c971dc25a74c9258563cf871 100644
--- a/net/ipv4/tcp_output.c
+++ b/net/ipv4/tcp_output.c
@@ -1459,8 +1459,7 @@ static inline int __tcp_mtu_to_mss(struct sock *sk, int pmtu)
 	mss_now -= icsk->icsk_ext_hdr_len;
 
 	/* Then reserve room for full set of TCP options and 8 bytes of data */
-	if (mss_now < TCP_MIN_SND_MSS)
-		mss_now = TCP_MIN_SND_MSS;
+	mss_now = max(mss_now, sock_net(sk)->ipv4.sysctl_tcp_min_snd_mss);
 	return mss_now;
 }
 
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


------=_Part_2026_1998571807.1560792818869
Content-Type: text/x-diff; charset=US-ASCII; name=PATCH_net_4_4.patch
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=PATCH_net_4_4.patch
X-Attachment-Id: b5aaefe8-396d-4847-9a82-767764c46446
Content-ID: <b5aaefe8-396d-4847-9a82-767764c46446>

Date: Sat,  8 Jun 2019 10:38:08 -0700
Subject: [PATCH net 4/4] tcp: enforce tcp_min_snd_mss in tcp_mtu_probing()
From: Eric Dumazet <edumazet@google.com>

If mtu probing is enabled tcp_mtu_probing() could very well end up
with a too small MSS.

Use the new sysctl tcp_min_snd_mss to make sure MSS search
is performed in an acceptable range.

Signed-off-by: Eric Dumazet <edumazet@google.com>
Reported-by: Jonathan Lemon <jonathan.lemon@gmail.com>
Cc: Jonathan Looney <jtl@netflix.com>
Cc: Neal Cardwell <ncardwell@google.com>
Cc: Yuchung Cheng <ycheng@google.com>
Cc: Tyler Hicks <tyhicks@canonical.com>
Cc: Bruce Curtis <brucec@netflix.com>
---
 net/ipv4/tcp_timer.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/ipv4/tcp_timer.c b/net/ipv4/tcp_timer.c
index 5bad937ce779ef8dca42a26dcbb5f1d60a571c73..c801cd37cc2a9c11f2dd4b9681137755e501a538 100644
--- a/net/ipv4/tcp_timer.c
+++ b/net/ipv4/tcp_timer.c
@@ -155,6 +155,7 @@ static void tcp_mtu_probing(struct inet_connection_sock *icsk, struct sock *sk)
 		mss = tcp_mtu_to_mss(sk, icsk->icsk_mtup.search_low) >> 1;
 		mss = min(net->ipv4.sysctl_tcp_base_mss, mss);
 		mss = max(mss, 68 - tcp_sk(sk)->tcp_header_len);
+		mss = max(mss, net->ipv4.sysctl_tcp_min_snd_mss);
 		icsk->icsk_mtup.search_low = tcp_mss_to_mtu(sk, mss);
 	}
 	tcp_sync_mss(sk, icsk->icsk_pmtu_cookie);
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


------=_Part_2026_1998571807.1560792818869--

