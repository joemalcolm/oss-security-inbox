Received: (qmail 3462 invoked by uid 550); 5 Mar 2026 09:28:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30553 invoked from network); 5 Mar 2026 09:05:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1772701509; x=1772787909; bh=ohWI1dcNsIGLLDzptP8OQ9wIFyxS54yQ2fT
	Lu5BvJbk=; b=KfhtDEs6lBClDmapv3fH6hSamwn8CP9oSbczyhpIMVUxyvaDOmi
	MdCQP1QVL6O3Fc+erTJKku0FUc4ws93ZW5yE+3ALSswM+0WZjCxY07QS8GzP/z3j
	q6K2hadU+CmvHrpyqq3/NoUAXq9uXjuAJJa19HsNiyB4PDCplxIB+vxGqyd8lgjt
	MyvxsbEzkVbXcSvRkmT5ixW386cwwW9nCdVglJnw5CSn2SxKqnL+DDie3hfKdnKS
	t4rNeOn/v7luipk7Kd+RW6K2aWxGpaAsxWFmAgL4j7FujiHoUF91AWXILwSv4GSv
	LaYCc5HZ2UBPbqTXI8qSNu/3RhOuvXErETw==
X-ME-Sender: <xms:RUepaYNTQyfZ5s9faSyrdpKkb50d5OoriJ9nwz9RtkgHrA-7KJDMRA>
    <xme:RUepaU_gCaR6gebYqGI2mUPv8Rj8ySP4JIpD43oEkTaJoKtwY8_dx12AehcQpGuMA
    XmOcv85APWYcXY71A9BMjOSYrwhizzlRUQmSyCW2OBU0phf8ItatA>
X-ME-Received: <xmr:RUepac5x2DZws-el10o5wMAWSVggs92a1bxuhBIMGzCNsAAPWPQdzgXOuDFxDlNKwzN0DQvTtBi1xj87am79pcuiGSYaThU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvieehleejucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefkffggfgfvhffutgfgsehtkeertddtvd
    ejnecuhfhrohhmpeftohgsvghrthcutfhothhhvghnsggvrhhguceorhhrfihosegtphgr
    nhdrohhrgheqnecuggftrfgrthhtvghrnhepleefueelffelgeettddtheehuedtjeegje
    dtueduhfeuhefhuddtvdekleelueefnecuffhomhgrihhnpehmvghtrggtphgrnhdrohhr
    ghdpghhithhhuhgsrdgtohhmpdgtvhgvrdhorhhgpdhshihmihhstgdrnhgvthenucevlh
    hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehrrhifohestghp
    rghnrdhorhhgpdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtph
    htthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhm
    pdhrtghpthhtohepthhokhhuhhhirhhomhesghhmrghilhdrtghomh
X-ME-Proxy: <xmx:RUepab3RKYbyGvNcu32_yDqjffEWp3g1zBA4d7mpjvhGKJhM0gl-Ow>
    <xmx:RUepaTCZQNwbENWZxajYM_UQ7KDzu17azN4vyStrUiJYZw7JmAYGLQ>
    <xmx:RUepad1E-kawx6JJOtXgQ34kYPIiBETSsKtsubiXptyNKqZ-qk3-ng>
    <xmx:RUepaduSvg9DU_XEKwVjmGZgvg66PuiY1SA79KMTyGPh8a6WBy5Aqg>
    <xmx:RUepad5Ay-nJnKC8eOFSnLZ5FaS6L7bZK2kpko-qy2xqckwezfe_vg>
    <xmx:RUepaf6QcphxHHIu-C86YJDXCK6yt12qd2HrWLmASXbgA0msqd4plZy925NK>
Feedback-ID: ia0f04183:Fastmail
Message-ID: <3439b1c0-776c-4caf-be7f-519a7961b5d8@cpan.org>
Date: Thu, 5 Mar 2026 09:05:07 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Robert Rothenberg <rrwo@cpan.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2026-3257: UnQLite versions through 0.06 for Perl uses a
 potentially insecure version of the UnQLite library

========================================================================
CVE-2026-3257                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-3257
   Distribution:  UnQLite
       Versions:  through 0.06

       MetaCPAN:  https://metacpan.org/dist/UnQLite
       VCS Repo:  https://github.com/tokuhirom/UnQLite


UnQLite versions through 0.06 for Perl uses a potentially insecure
version of the UnQLite library

Description
-----------
UnQLite versions through 0.06 for Perl uses a potentially insecure
version of the UnQLite library.

UnQLite for Perl embeds the UnQLite library.  Version 0.06 and earlier
of the Perl module uses a version of the library from 2014 that may be
vulnerable to a heap-based overflow.

Problem types
-------------
- CWE-1395 Dependency on Vulnerable Third-Party Component

Workarounds
-----------
Upgrade to UnQLite for Perl version 0.07 or later.


Solutions
---------
UnQLite for Perl has been deprecated since version 0.06. Migrate to a
different solution.


References
----------
https://metacpan.org/release/TOKUHIROM/UnQLite-0.07/source/Changes
https://www.cve.org/CVERecord?id=CVE-2025-3791
https://unqlite.symisc.net/


