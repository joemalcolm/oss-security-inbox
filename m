Received: (qmail 3938 invoked by uid 550); 5 Mar 2026 09:28:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10126 invoked from network); 5 Mar 2026 09:06:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1772701599; x=1772787999; bh=v3SeASUYM8GhGM4bDOJkOi6+r04hMiKNC5h
	4HctNN+U=; b=KT2esjfzM/WOIyebaaonBkH16EJAyjvPrbrqmdzpgH5jbA2lK7F
	8F3sK4VvU1rRwHGcmxoSAus3veM3gD+RRQ/e4HtPGBlxCrFG0aXWpJwIoNuV6iYX
	Iyqf8HBIAJ8AkbXSkZZHZogT0QbeKYJSou1HV1hROhOtqA7+gcY98fMAcWEsG74P
	kP+r1rQevoaYhXxaq5zKPbumcjPl2k7y4w6sOeBmL8V13TTfhOPOeqpRJ5Nlbtfk
	VqrxaahOMSqzu0G+P4fpxNxZV8Y5gPEv6eairzXmj/DldqJCxaS0gv0SZNw9L7Oi
	xBazwXmKhXA/W3CSSad1+Q57Kf2s8nmez+g==
X-ME-Sender: <xms:n0epafGaXiSDd9JZeyfXDPk9F24aSRzjsbpZfjtaUsqFFv3J7srPRw>
    <xme:n0epaSUePCjU5Hu04Phe6bpfnfI7mZ1GeIYqPVlaUqcH1oAijkjQk42uKEzT2siCP
    qjCrlRNgsjdETg6J9AW66puwGQPaCvc3KDYU1jjAnd7Fgv1mcsJ>
X-ME-Received: <xmr:n0epaewJEzmfLEtVBzj8H-WEeMUIEOF56n8oBqdQnExd1GfQwSw_sqT7r0Dd5mn7o_q24uLuovxHjv-Zj145dZQIWnGiqE4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvieehleejucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefkffggfgfvhffutgfgsehtkeertddtvd
    ejnecuhfhrohhmpeftohgsvghrthcutfhothhhvghnsggvrhhguceorhhrfihosegtphgr
    nhdrohhrgheqnecuggftrfgrthhtvghrnhepvefgudeujeelfefggeeivdefgfeujeevte
    fhheduvdetvdeiveeugeduhfdvtdejnecuffhomhgrihhnpehmvghtrggtphgrnhdrohhr
    ghdpghhithhhuhgsrdgtohhmpdiilhhisgdrnhgvthdpjegrshgvtghurhhithihrdgtoh
    hmpdgtvhgvrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
    lhhfrhhomheprhhrfihosegtphgrnhdrohhrghdpnhgspghrtghpthhtohepvddpmhhoug
    gvpehsmhhtphhouhhtpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhs
    rdhophgvnhifrghllhdrtghomhdprhgtphhtthhopehpmhhqshestghprghnrdhorhhg
X-ME-Proxy: <xmx:n0epaYOKb13HvzKXzhApU9Qds5xDeYui1y5uiiU4owt8lP8l9K3zvw>
    <xmx:n0epaX4pejMTAgDpuBBBs1Rr9tJq1wCXTrbHvLDidMHh6sY7lzAJIQ>
    <xmx:n0epaRPKCs6Tagf_mZjJwNa8xp4GYEYhkGu-3VK363GlwooC1D2Oow>
    <xmx:n0epadnOPQvRlfN98xDGW4UeN_952gwCyPzfY1oO1ff_hAjLQLRnOw>
    <xmx:n0epaQQABuHGTNmGMZFi-BB2ea4ZC32EQ1nhvhjNobzkTBn0zvb3lw>
    <xmx:n0epab0oTZZqH4lmg5JREPWa72jrlTbtwUCEA3lS59MYCuY02RtoRzS0AyiD>
Feedback-ID: ia0f04183:Fastmail
Message-ID: <d9ce583a-1a07-4e82-a519-f6122fe8180e@cpan.org>
Date: Thu, 5 Mar 2026 09:06:37 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Robert Rothenberg <rrwo@cpan.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2026-3381: Compress::Raw::Zlib versions through 2.219 for Perl
 use potentially insecure versions of zlib

========================================================================
CVE-2026-3381                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-3381
   Distribution:  Compress-Raw-Zlib
       Versions:  through 2.219

       MetaCPAN:  https://metacpan.org/dist/Compress-Raw-Zlib
       VCS Repo:  https://github.com/pmqs/Compress-Raw-Zlib


Compress::Raw::Zlib versions through 2.219 for Perl use potentially
insecure versions of zlib

Description
-----------
Compress::Raw::Zlib versions through 2.219 for Perl use potentially
insecure versions of zlib.

Compress::Raw::Zlib includes a copy of the zlib library.
Compress::Raw::Zlib version 2.220 includes zlib 1.3.2, which addresses
findings fron the 7ASecurity audit of zlib. The includes fixs for
CVE-2026-27171.

Problem types
-------------
- CWE-1395 Dependency on Vulnerable Third-Party Component

Solutions
---------
Upgrade to Compress::Raw::Zlib 2.220 or later.


References
----------
https://metacpan.org/release/PMQS/Compress-Raw-Zlib-2.221/source/Changes
https://www.zlib.net/
https://github.com/madler/zlib
https://github.com/madler/zlib/releases/tag/v1.3.2
https://7asecurity.com/blog/2026/02/zlib-7asecurity-audit/
https://www.cve.org/CVERecord?id=CVE-2026-27171

Timeline
--------
- 2026-02-17: zlib 1.3.2 released.
- 2026-02-27: Compress::Raw::Zlib 2.220 released.


