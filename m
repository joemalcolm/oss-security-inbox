X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["576" "Thursday" "2" "April" "2015" "19:55:19" "-0400" "Dan McDonald" "danmcd@omniti.com" "<EB827399-3A32-4192-A514-0EB847E2253E@omniti.com>" "17" "Re: [oss-security] CVE Request : IPv6 Hop limit lowering via RA messages" nil nil nil "4" "2015040223:55:19" "[oss-security] CVE Request : IPv6 Hop limit lowering via RA messages" (number mark "        danmcd@omnit Apr  2   17/576   " thread-indent "\"Re: [oss-security] CVE Request : IPv6 Hop limit lowering via RA messages\"\n") "<CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>" ("<CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27708 invoked by uid 550); 2 Apr 2015 23:55:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27686 invoked from network); 2 Apr 2015 23:55:34 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:content-type:mime-version:subject:from
         :in-reply-to:date:content-transfer-encoding:message-id:references:to;
        bh=JtPSVFfF7CGYfySa2SivLcchblHdpVwKLaFCIl+UHQM=;
        b=ZVhvyzbndsPljSZlhuPbYvnFQK3Zw13edysIHBSjjmbWUnHB2apUsvlyoIyNTnCeqg
         Len5/PyI+JOIB6Ua4sS5JvszXN/ig7OQ2V/8xMkQ73GI+MJZR3ZDFtbAk0/tt1P3ZYhG
         M5oImLF7pixNtwMX1JjIVa7yL+63fUTPNzMKBnE3BtbxQr1kJbQT03qTGu1rAnGkJvK/
         ixf5z7lo2GKdaBbowuZIyrhxytCYCOLxQzz2bHq7bQYxXEdsJGZaMIqEr/9ygngCx/BS
         8SNXQ2b9117TAxFwbK0V0/HyvcWjsc1McreeRbJ9PTjmZBqENDX2QwrtB3dH7KfxIPMS
         OGVw==
X-Gm-Message-State: ALoCoQmcSEm2xni+H2kOMIUIZMt2vsJegvtIGUr7fMzSZYkjcrv2uD2OsvwpV9V4r4csG1vxc28r
X-Received: by 10.140.99.4 with SMTP id p4mr63342848qge.46.1428018923124;
        Thu, 02 Apr 2015 16:55:23 -0700 (PDT)
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
In-Reply-To: <CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <EB827399-3A32-4192-A514-0EB847E2253E@omniti.com>
References: <CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>
X-Mailer: Apple Mail (2.2070.6)
Date: Thu, 2 Apr 2015 19:55:19 -0400
From: Dan McDonald <danmcd@omniti.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request : IPv6 Hop limit lowering via RA messages
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

> On Apr 2, 2015, at 1:19 PM, D.S. Ljungmark <ljungmark@modio.se> wrote:
>=20
> An unprivileged user on a local network can use IPv6 Neighbour
> Discovery ICMP to broadcast a non-route with a low hop limit, this
> causing machines to lower the hop limit on existing IPv6 routes.
>=20

This low-hop-limit problem does not affect Illumos, but we added detection =
of the problem into our IPv6 NDP daemon:=20=20

	https://marc.info/?l=3Dillumos-developer&m=3D142748230615203&w=3D2

I can't speak to our cousins in Oracle Solaris, though.

FYI,
Dan McDonald - OmniOS Engineering

