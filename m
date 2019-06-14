X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["605" "Friday" "14" "June" "2019" "13:04:32" "-0400" "Stuart D. Gathman" "stuart@gathman.org" "<alpine.LRH.2.21.1906141258540.3958@fairfax.gathman.org>" "14" "Re: [oss-security] X41 D-Sec GmbH Security Advisory X41-2019-001: Heap-based buffer overflow in Thunderbird" nil nil nil "6" "2019061417:04:32" "[oss-security] X41 D-Sec GmbH Security Advisory X41-2019-001: Heap-based buffer overflow in Thunderbird" (number mark "U       stuart@gathm Jun 14   14/605   " thread-indent "\"Re: [oss-security] X41 D-Sec GmbH Security Advisory X41-2019-001: Heap-based buffer overflow in Thunderbird\"\n") "<93cb2f44-e74f-cb47-ffe6-fdc37dda1460@johannes-bauer.com>" ("<7837c44d-eba7-f363-f14d-9c23c786ac3a@x41-dsec.de>" "<CAOJKFBD9b1sVRVsJi4PVaV3NnP3ZDBdtfdYLx1DhM3P9JqWKfQ@mail.gmail.com>" "<93cb2f44-e74f-cb47-ffe6-fdc37dda1460@johannes-bauer.com>") nil nil nil nil nil nil nil "Re: [oss-security] X41 D-Sec GmbH Security Advisory X41-2019-001: Heap-based buffer overflow in Thunderbird" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13437 invoked by uid 550); 14 Jun 2019 17:10:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7281 invoked from network); 14 Jun 2019 17:04:44 -0000
Authentication-Results: mail.gathman.org; iprev=pass policy.iprev="2001:470:8:809::2" (wiki.gathman.org); auth=pass (CRAM-MD5 sslbits=256) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1560531870; 
 h=date : from : to : subject : in-reply-to : message-id : 
 references : mime-version : content-type : date : from : 
 subject; bh=jtW+p2ILBw3RlTyQgVhCI3q8IPkpN4Fgus/peVeXEG4=; 
 b=ZKo9MFPZv5I/5SZV0sBQnBT35iQb03/ocI1kWW2d/iBaztLGm9cVQ03p
 nLlQ7MkdLwQ3h+mKiHyDJ06SfZhylg3qfuxEYKCAI08oe7tIs74dt5tjVe
 zg1KmVNjSvx52FB1tkp3Lm3GY4Fp6GLB98ICMddJuysHwxEU8WRLfrRhI=
Date: Fri, 14 Jun 2019 13:04:32 -0400 (EDT)
From: "Stuart D. Gathman" <stuart@gathman.org>
To: oss-security@lists.openwall.com
In-Reply-To: <93cb2f44-e74f-cb47-ffe6-fdc37dda1460@johannes-bauer.com>
Message-ID: <alpine.LRH.2.21.1906141258540.3958@fairfax.gathman.org>
References: <7837c44d-eba7-f363-f14d-9c23c786ac3a@x41-dsec.de> <CAOJKFBD9b1sVRVsJi4PVaV3NnP3ZDBdtfdYLx1DhM3P9JqWKfQ@mail.gmail.com> <93cb2f44-e74f-cb47-ffe6-fdc37dda1460@johannes-bauer.com>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] X41 D-Sec GmbH Security Advisory X41-2019-001:
 Heap-based buffer overflow in Thunderbird


On 14.06.19 17:00, Brandon Perry wrote:
> Thanks for re-reporting these. They didn't take them seriously at all when
> I reported them originally. These bugs are why I stopped using Thunderbird
> completely.

I stopped using thunderbird because it infinite loops on my imap (dovecot)
inbox.  I took the opportunity to try a bunch of clients (all of which
work fine) from alpine to geary to evolution to claws.

-- 
 	      Stuart D. Gathman <stuart@gathman.org>
"Confutatis maledictis, flamis acribus addictis" - background song for
a Microsoft sponsored "Where do you want to go from here?" commercial.
