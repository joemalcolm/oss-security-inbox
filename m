X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["424" "Thursday" "2" "April" "2015" "19:19:45" "+0200" "D.S. Ljungmark" "ljungmark@modio.se" "<CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>" "12" "[oss-security] CVE Request : IPv6 Hop limit lowering via RA messages" nil nil nil "4" "2015040217:19:45" "[oss-security] CVE Request : IPv6 Hop limit lowering via RA messages" (number mark "        ljungmark@mo Apr  2   12/424   " thread-indent "\"[oss-security] CVE Request : IPv6 Hop limit lowering via RA messages\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20361 invoked by uid 550); 2 Apr 2015 23:10:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7837 invoked from network); 2 Apr 2015 17:19:56 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=VGFrCG3DhT0uIAYR+O5YClsit4u5ZdE+FCOFnpG0bWM=;
        b=B9zyeQDgdexuyPol8i28WP4zXe6/zCI3k/+JqASdGkTLsk8U0vNwKspGm9JCjFzwzu
         Om69DFpsAwTYVHForp6+SjL26VB9ArCGKAqbKFJjEZ48DLnTC+bNCktfKCAVJGQDH9QU
         a9lvdzbTJAfsnTg1btsA0GEj0L0MJTmzVwaD7zD2YNHdAIZ42TdwrHVA1DisXbRjn1s6
         /HdBuh13cRtb3EO/If6CEKMNPM3m0sl1GC+afYvxxfXQRnzQQNKMxndduDDptleB9Kna
         rAw03/HlUtPgZysnbHY4J/oBgEFKvIihf77ebsEf19VGo4ZesNaiREZ3eKtfw5HmMMfd
         IhEg==
X-Gm-Message-State: ALoCoQnH3AEY7o0/ZZFGKSHD3waebKgVPjNb+lo8PjroP8w8BPOLqxI83vREF0VhDQ7zllwQ8JNH
MIME-Version: 1.0
X-Received: by 10.182.125.130 with SMTP id mq2mr19454368obb.52.1427995185059;
 Thu, 02 Apr 2015 10:19:45 -0700 (PDT)
Message-ID: <CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Thu, 2 Apr 2015 19:19:45 +0200
From: "D.S. Ljungmark" <ljungmark@modio.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request : IPv6 Hop limit lowering via RA messages
To: oss-security@lists.openwall.com

An unprivileged user on a local network can use IPv6 Neighbour
Discovery ICMP to broadcast a non-route with a low hop limit, this
causing machines to lower the hop limit on existing IPv6 routes.

Linux Patch: http://www.spinics.net/lists/netdev/msg322361.html
Redhat bugzilla: https://bugzilla.redhat.com/show_bug.cgi?id=1203712

Projects impacted:  Linux kernel,  NetworkManager, FreeBSD Kernel


Regards,
  D.S. Ljungmark
