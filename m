X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2084" "Thursday" "13" "August" "2020" "08:38:15" "+0000" "Iorga, Serban" "seriorga@amazon.com" nil "59" nil "^Date:" nil nil "8" nil nil (number mark "U       seriorga@ama Aug 13   59/2084  " thread-indent "\"[oss-security] CVE-2020-16843: Firecracker v0.20.0, v0.21.0 and v0.21.1 network stack can freeze under heavy ingress traffic\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-16843: Firecracker v0.20.0, v0.21.0 and v0.21.1 network stack can freeze under heavy ingress traffic" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16164 invoked by uid 550); 13 Aug 2020 10:57:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3746 invoked from network); 13 Aug 2020 08:38:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1597307916; x=1628843916;
  h=from:to:subject:date:message-id:mime-version;
  bh=hE/Bs6iV7U1femlQGblseALtM5XOzVR63BhMQLMM1E0=;
  b=uu521pG1TAcVJV6XTlz6jcPQ4kG3qxniekAWAOOdNL/whWgxCYFdAyCW
   Tt+fTtOmaeUEVCTC2ZvFc9D2k5bxuYSrIXG+lDHgmqq0qTJ4vPbDA8s/T
   aabx5ePH4du8/161uAxWmgi+WZTQRtw45he7GpPGo2N3tadH0eF8M84by
   8=;
IronPort-SDR: MJgA7hil61cDntctGMY+JnVowUPsmh0mmJiXxGWH5+ubdxr2t61WdVhlQnuwV8HnmU8XbU+l6+
 UQNhOuVW+B5Q==
X-IronPort-AV: E=Sophos;i="5.76,307,1592870400"; 
   d="scan'208,217";a="67683476"
Thread-Topic: CVE-2020-16843: Firecracker v0.20.0, v0.21.0 and v0.21.1 network
 stack can freeze under heavy ingress traffic
Thread-Index: AQHWcUWcc55oPHZtjES0JUgPekM+/g==
Message-ID: <1597307893318.52919@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.160.156]
Content-Type: multipart/alternative;
	boundary="_000_159730789331852919amazoncom_"
MIME-Version: 1.0
Date: Thu, 13 Aug 2020 08:38:15 +0000
From: "Iorga, Serban" <seriorga@amazon.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-16843: Firecracker v0.20.0, v0.21.0 and v0.21.1 network
 stack can freeze under heavy ingress traffic
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--_000_159730789331852919amazoncom_
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

We have identified an issue in the Firecracker v0.20.0, v0.21.0 and v0.21.1=
 virtio-net emulation.

# Issue Description

Under heavy network ingress traffic, when the host TAP interface's receive =
queue is not drained and the guest virtio-net device's receive queue is ful=
l, the microVM network interface ingress can freeze. There is no possibilit=
y to recover from this state, resulting in a denial of service on the micro=
VM when it is configured with a single network interface, and causing an av=
ailability problem for the microVM network interface on which the issue is =
triggered.

This issue is difficult to reproduce with TCP traffic. The TCP congestion a=
lgorithm makes it harder to fill both the TAP interface and virtio receive =
queues.

# Impact

When this issue is triggered, the guest kernel network interface will no lo=
nger receive packets.

# Vulnerable Systems

Firecracker releases v0.20.0, v0.21.0 and v0.21.1 are affected.

# Mitigation

Patched binaries mitigating this issue have been released as Firecracker v0=
.20.1[1] and Firecracker v0.21.2[2].
If you are using Firecracker v0.20.0, v0.21.0 or v0.21.1, we recommend you =
apply the provided fix. If you are using Firecracker v0.19.1 or below, you =
do not need to take any action.

[1] https://github.com/firecracker-microvm/firecracker/releases/tag/v0.20.1
[2] https://github.com/firecracker-microvm/firecracker/releases/tag/v0.21.2

Best Regards,
Serban Iorga on behalf of the Firecracker maintainers team.

Amazon Development Center (Romania) S.R.L. registered office: 27A Sf. Lazar=
 Street, UBC5, floor 2, Iasi, Iasi County, 700045, Romania. Registered in R=
omania. Registration number J22/2621/2005.





Amazon Development Center (Romania) S.R.L. registered office: 27A Sf. Lazar=
 Street, UBC5, floor 2, Iasi, Iasi County, 700045, Romania. Registered in R=
omania. Registration number J22/2621/2005.

--_000_159730789331852919amazoncom_--

