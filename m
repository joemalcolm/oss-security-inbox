X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2233" "Thursday" "14" "September" "2017" "14:45:44" "+0200" "Thomas Jarosch" "thomas.jarosch@intra2net.com" "<5447042.sAN2qLRxXj@storm.m.i2n>" "66" "Re: [oss-security] Re: Linux kernel: CVE-2017-1000112: Exploitable memory corruption due to UFO to non-UFO path switch" "^Cc:" nil nil "9" "2017091412:45:44" "[oss-security] Re: Linux kernel: CVE-2017-1000112: Exploitable memory corruption due to UFO to non-UFO path switch" (number mark "        thomas.jaros Sep 14   66/2233  " thread-indent "\"Re: [oss-security] Re: Linux kernel: CVE-2017-1000112: Exploitable memory corruption due to UFO to non-UFO path switch\"\n") "<CA+fCnZdcQGnmXULmdoEKnLd2WTO1Ubdcd8bDBD3-3TjosOjtpg@mail.gmail.com>" ("<CA+fCnZfFS=iSJV9ke-XtX-S8abRZHjQRL31_Hvr6W_gHhRpMqw@mail.gmail.com>" "<CA+fCnZdcQGnmXULmdoEKnLd2WTO1Ubdcd8bDBD3-3TjosOjtpg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5433 invoked by uid 550); 14 Sep 2017 13:05:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24174 invoked from network); 14 Sep 2017 12:45:58 -0000
X-Virus-Scanned: by Intra2net Mail Security (AVE=8.3.46.6,VDF=8.14.19.50)
Message-ID: <5447042.sAN2qLRxXj@storm.m.i2n>
Organization: Intra2net AG
In-Reply-To: <CA+fCnZdcQGnmXULmdoEKnLd2WTO1Ubdcd8bDBD3-3TjosOjtpg@mail.gmail.com>
References: <CA+fCnZfFS=iSJV9ke-XtX-S8abRZHjQRL31_Hvr6W_gHhRpMqw@mail.gmail.com> <CA+fCnZdcQGnmXULmdoEKnLd2WTO1Ubdcd8bDBD3-3TjosOjtpg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Andrey Konovalov <andreyknvl@gmail.com>
Date: Thu, 14 Sep 2017 14:45:44 +0200
From: Thomas Jarosch <thomas.jarosch@intra2net.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Linux kernel: CVE-2017-1000112: Exploitable memory corruption due to UFO to non-UFO path switch
To: oss-security@lists.openwall.com

Hi Andrey,

On Sunday, 13 August 2017 18:21:55 CEST Andrey Konovalov wrote:
> ### Exploitation
> 
> The bug can be exploited by an unprivileged user if:
> 
> 1. User can set up an interface with UFO enabled and MTU < 65535 or
> such interface is already present in the system. The former is
> possible from inside a user namespace.

the aftermath of this bug is that UFO is scheduled
to be removed in the kernel. According to David Miller
it's too much code complexity for little gain.
(https://www.spinics.net/lists/netdev/msg443815.html)

An easy security fix for old kernels is therefore to prevent UFO
from becoming enabled. This is done by masking the UFO feature
inside net/core/dev.c:netdev_fix_features(), which gets called
during register_netdevice() and also when someone tries to
re-enable UFO f.e. with ethtool later on.

I'm sharing my "one line" patch here in case it's useful to someone
else stuck on old kernel versions, f.e. Android phones.
Also please correct me if I'm wrong on this fix.

Cheers,
Thomas

------------------------
Disable UFO support in the kernel. Prevents CVE-2017-1000112.

Upstream UFO removal:
https://www.spinics.net/lists/netdev/msg443815.html

Signed-off-by: Thomas Jarosch <thomas.jarosch@intra2net.com>
diff -u -r -p linux-3.14/net/core/dev.c linux.disable_ufo/net/core/dev.c
--- linux-3.14/net/core/dev.c	2014-03-31 05:40:15.000000000 +0200
+++ linux.disable_ufo/net/core/dev.c	2017-09-14 12:29:01.958899810 +0200
@@ -5658,23 +5658,8 @@ static netdev_features_t netdev_fix_feat
 		features &= ~NETIF_F_GSO;
 	}
 
-	/* UFO needs SG and checksumming */
-	if (features & NETIF_F_UFO) {
-		/* maybe split UFO into V4 and V6? */
-		if (!((features & NETIF_F_GEN_CSUM) ||
-		    (features & (NETIF_F_IP_CSUM|NETIF_F_IPV6_CSUM))
-			    == (NETIF_F_IP_CSUM|NETIF_F_IPV6_CSUM))) {
-			netdev_dbg(dev,
-				"Dropping NETIF_F_UFO since no checksum offload features.\n");
-			features &= ~NETIF_F_UFO;
-		}
-
-		if (!(features & NETIF_F_SG)) {
-			netdev_dbg(dev,
-				"Dropping NETIF_F_UFO since no NETIF_F_SG feature.\n");
-			features &= ~NETIF_F_UFO;
-		}
-	}
+	/* Disable UFO to prevent CVE-2017-1000112. UFO support is removed upstream */
+	features &= ~NETIF_F_UFO;
 
 	return features;
 }

