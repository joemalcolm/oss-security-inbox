X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["764" "Thursday" "2" "April" "2015" "19:15:45" "-0700" "Eitan Adler" "lists@eitanadler.com" "<CAF6rxgk6e1rT3prS3SS4FthshnVQdSrrE+bB65ps6Tx30UznAA@mail.gmail.com>" "26" "Fwd: [oss-security] CVE Request : IPv6 Hop limit lowering via RA messages" nil nil nil "4" "2015040302:15:45" "Fwd: [oss-security] CVE Request : IPv6 Hop limit lowering via RA messages" (number mark "        lists@eitana Apr  2   26/764   " thread-indent "\"Fwd: [oss-security] CVE Request : IPv6 Hop limit lowering via RA messages\"\n") "<CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>" ("<CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4094 invoked by uid 550); 3 Apr 2015 02:16:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4072 invoked from network); 3 Apr 2015 02:16:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=eitanadler.com; s=0xdeadbeef;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=Ydnta1NlMfzRvfHVKUMTtf9FI1GO//1K0BNBvQlQ/7o=;
        b=kX0rpvkSX/Ah8gfvFwAHCmt5PZWZT8gMdTeAjZEY1EqcJ9Mh6huOBxyhGgAuTw2n/r
         5zZQpcdzgPMCOgAh7li0F5P+LUP/vHZBRwrEPuOKISqd5K3z1E43n5WPtwPCXVyXZnbn
         bNo8t10i728I5ftTpVhYCbaKRM1N9iDkvL5QE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=Ydnta1NlMfzRvfHVKUMTtf9FI1GO//1K0BNBvQlQ/7o=;
        b=HmWVKBDdGMNoFgqAFjztvQMw/EVy7ZFC9+zqnsXX/7O8XjLsMdgYfvoEDt+VIZg4jh
         H0ftECdyXHGNFo+6fk3E6i+GI5NMfaT7Hc2FK/+LO3+LRjbC6NQu75zZUoC4heHqZa0J
         Ht4HWQEzQ+7Z5s4FN/w5UeP2jdSytZoavD1PuYaKyXhMYw1Q2dhM/4u4HA31JfKCkFe2
         YWHJHqWlPAVQvD7SlM8RjcchmPzxA/W1e+sX32NZfcRP+yF1qpqo8lmGsCJyQd5nb3nr
         sZn/MT7CkkRhBJ7caXnJMzErJL8xck8CZXLWt49z0Y/S2AX/IAwmzLhs+LBpazKax3i5
         YO2g==
X-Gm-Message-State: ALoCoQlCA/AwnJCkxyw3T1HqaNvWgzIk9ynhVtx2ey7U4/IFc1q7ERai4DSGfBOMteVwWlgZbIp5
X-Received: by 10.180.216.38 with SMTP id on6mr1235751wic.15.1428027375726;
 Thu, 02 Apr 2015 19:16:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>
References: <CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>
Message-ID: <CAF6rxgk6e1rT3prS3SS4FthshnVQdSrrE+bB65ps6Tx30UznAA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Thu, 2 Apr 2015 19:15:45 -0700
From: Eitan Adler <lists@eitanadler.com>
Reply-To: oss-security@lists.openwall.com
Subject: Fwd: [oss-security] CVE Request : IPv6 Hop limit lowering via RA messages
To: FreeBSD Security Team <secteam@freebsd.org>, "freebsd-net@freebsd.org" <net@freebsd.org>, ljungmark@modio.se, 
	oss-security@lists.openwall.com

+ FreeBSD lists since I haven't seen any relevant patches (although I
might have missed them).

---------- Forwarded message ----------
From: D.S. Ljungmark <ljungmark@modio.se>
Date: 2 April 2015 at 10:19
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


-- 
Eitan Adler
