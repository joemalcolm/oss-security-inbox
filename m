Received: (qmail 32695 invoked by uid 550); 27 Feb 2026 21:59:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 6128 invoked from network); 27 Feb 2026 20:22:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1772223730; x=1772310130; bh=S
	wcdhDzJeOr9aqJzyWDhRQnc5BVv046HByg+7MtfH1A=; b=hVmkTIhp+NVJBwv3O
	9uVBH9eeNBJ+3/68RHo4LpX+TiwaQMUTbAcg3EjHeVlBsWtTjBKxomzb/BvUnrHX
	MaQekDhc8JOFTFplL2lEA+VQjyIotjKYcoQX8bpf/0gFSVEMePRcZlTynOTJAQVV
	cLE4k7K4jVXD1Zq8AOnyK7KTWK3O8Pc3tTvbNdXUbS++RksUYa4UzmC2wJRAA0Td
	no6StBeZ8iKsJybW25JCcUioP8UZmB8gmfBJnslEc2UUoQzqRH7qFNT8jMHJwfL+
	ZSAEYpHv7+prffwb25lHRHE3AydzgdaUbE+QVb69PmaxWHJk+k4KCK1EVyTEIrG0
	OXkPg==
X-ME-Sender: <xms:8vyhafEmvIwfCJLMtRPcGxmELcKQDqAv6dnK69OI22x_Z863h7dspQ>
    <xme:8vyhaSW62LPJpTm-M_guVPvKxI3KnyMoNAh-UfQwZjAO6x-qiWBbJSrMFtsh0QdLl
    o5ywB6buRh0gLTJjXVSaqan1-6vjH3N4hjiz5IbpHMHbCuG9QdO>
X-ME-Received: <xmr:8vyhaex16S5HmF6i1xRyPsMdJISeoD3xqXgHS8c8J0sGvNLrVceDEFi4bbUouuo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvgeelleegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefkffggfgfufhfvhfgjtgfgsehtkeertd
    dtvdejnecuhfhrohhmpeftohgsvghrthcutfhothhhvghnsggvrhhguceorhhrfihosegt
    phgrnhdrohhrgheqnecuggftrfgrthhtvghrnhepgfegheelhfefgfejvdefudfftedvle
    ffvedvheetffdvfffhhfdukeehveevveejnecuffhomhgrihhnpehmvghtrggtphgrnhdr
    ohhrghdpghhithhhuhgsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
    hmpehmrghilhhfrhhomheprhhrfihosegtphgrnhdrohhrghdpnhgspghrtghpthhtohep
    vddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepohhsshdqshgvtghurhhithihse
    hlihhsthhsrdhophgvnhifrghllhdrtghomhdprhgtphhtthhopehtohhkuhhhihhrohhm
    odgtphgrnhesghhmrghilhdrtghomh
X-ME-Proxy: <xmx:8vyhaYOGwz7ab6mhe1OUPMDjEcDXKyefzIU6IWwbHl7qg8nbYT72rw>
    <xmx:8vyhaX51pOgu9tsIpLT4lrGw6glR0QjpQ6sW-21FIFG4kaJJM_WDTA>
    <xmx:8vyhaRMmVQFEybiNs_v10SvYTj2x0WVxf9hObYU9Y33mN8Fq8VLClQ>
    <xmx:8vyhadn6joCRSEJFIurt_8Q176OFNU3u1wy3TFsl_PTcja3kQz_2xw>
    <xmx:8vyhaQS8HVIJKYulPw-AA7Ljr9tXWosabjAB0yHcO9ncZWZFzLPxpQ>
    <xmx:8vyhaVWbfCtcA-z74mkJk5O6-vgzCLPyhdy6t8ANSMLYaPMitkZlA8aOhWS6>
Feedback-ID: ia0f04183:Fastmail
Message-ID: <fb84b191-9a86-400b-b4a0-5ec9656b05a5@cpan.org>
Date: Fri, 27 Feb 2026 20:22:08 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
References: <76d2d6c0-4afb-4337-8461-c608188aeea8@cpan.org>
To: oss-security@lists.openwall.com
From: Robert Rothenberg <rrwo@cpan.org>
In-Reply-To: <76d2d6c0-4afb-4337-8461-c608188aeea8@cpan.org>
X-Forwarded-Message-Id: <76d2d6c0-4afb-4337-8461-c608188aeea8@cpan.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Fwd: CVE-2018-25160: HTTP::Session2 versions through 1.09 for Perl
 does not validate the format of user provided session ids, enabling code
 injection or other impact depending on session backend

========================================================================
CVE-2018-25160                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2018-25160
   Distribution:  HTTP-Session2
       Versions:  through 1.09

       MetaCPAN:  https://metacpan.org/dist/HTTP-Session2
       VCS Repo:  https://github.com/tokuhirom/HTTP-Session2


HTTP::Session2 versions through 1.09 for Perl does not validate the
format of user provided session ids, enabling code injection or other
impact depending on session backend

Description
-----------
HTTP::Session2 versions through 1.09 for Perl does not validate the
format of user provided session ids, enabling code injection or other
impact depending on session backend.

For example, if an application uses memcached for session storage, then
it may be possible for a remote attacker to inject memcached commands
in the session id value.

Problem types
-------------
- CWE-20 Improper Input Validation

Workarounds
-----------
Upgrade to version 1.10 or later.

Use a session storage module that offers protection against command
injections, such as Cache::Memcached::Fast::Safe.


Solutions
---------
HTTP::Session2 has been deprecated since version 1.11, users are
recommended to migrate to a different solution.


References
----------
https://github.com/tokuhirom/HTTP-Session2/commit/813838f6d08034b6a265a70e53b59b941b5d3e6d.patch
https://metacpan.org/release/TOKUHIROM/HTTP-Session2-1.10/source/Changes
https://metacpan.org/pod/Cache::Memcached::Fast::Safe

Timeline
--------
- 2018-01-26: version 1.10 HTTP::Session2 released with fix.
- 2026-02-24: version 1.11 HTTP::Session2 deprecated.



