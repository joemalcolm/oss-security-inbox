Received: (qmail 32448 invoked by uid 550); 8 May 2026 17:38:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15468 invoked from network); 8 May 2026 17:23:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1778261018;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Nd88eB7F82f7JShwQ7QFqqhjeCZCMeojWIOCH4XIShY=;
	b=FG5dOkMe9iJIuPNX0k6pWYkLJPKQDQPSqFfCS9ME4PZhPngiXAgoxGoza5Y5af2fNWSRw9
	6Pjc7l+nw8U2K9AwHORgum4pSMYv29Ep4404kcgJnfTfxGrsYGh0eK8ZaKMO4Rh2PK4XSH
	uQ7oMszmngN20HmgsLn7aihIwRMGY4iqYXFi8cbCwDh8fBX8uu6FUNTQ2hAWPXeX7maoE+
	5H3XOAbrqqjRk2kapgGvHhYKZxNmvQ/9tmsKfh9Ll4pAHJUKVBTo8stxfKMjOZrm5I+/he
	cA6Noo85kMsXhhyJEeEk7i/e98y48tzV8JmFDhaHtTq89RYnQrWY4chufODOzg==
Message-ID: <462a16da-96e7-4f81-b8e7-3ff903b0774f@cpansec.org>
Date: Fri, 8 May 2026 18:23:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: dmFkZTGsDhK6DH3Uyrxs2W1G+G/GPV0J90wd3jh7GDqPPU2Gq7sxbxbV9yazAM9ZpaNnndHRt4AdExVjQ1Lq1zKB3lf83kkJN46QLCWtv4UxdlGz9Y+vkZD7b1egUU1xkH11Jw4YR5FP3BCqdkA3ro5Rn7nrw1qxQazIM/M42yUyKXbnyplqArmG1zjk3wOGmJBd3aoz7WOZ8aEpS515sCAZA2ZCvvwF7oRuIKTE3KdC6rgJGXJbhkoDmciVhfFbi+glC8b8+3zyWs2DMH6xCa8SkUjAgAovVuvgSopogOlnmS2VCXYW93FH082Gu7Rd0bWL7Wwjw37Nd+beRJ/o7Xx1fTsFTIASYLYeHcQ1U5o56omjsJUb0udsRAxO2ZGnkPCDrdilZKojN3DGAlgnUPV4cUNv1b/lJXwqPyXk6DUmSk5H2nMXCq8skYpSincdboRbO6P8kISyC7K+tZ22g6x7Haairiw1VB0wEJll7oy4lmmgrKxgrYeGA8/3IbCi5g2i9SwWXpiwI7tjvOFfA9+H4qM83uqJqv1YrgyQhL1pEkmU2qGMBdap//f07y4kio/IQSDwJdt0kPqULUX2fPbgKywe4+X7bW47kHOEkM1hVPB4yRLecYWtm8IkmytNPs9/frTeLWPQCWLEMYw4YpopzluFYzURiss/1YhRv94HlhGo+Q
Subject: [oss-security] CVE-2026-6659: Crypt::PasswdMD5 versions through 1.42 for Perl
 generates insecure random values for salts

========================================================================
CVE-2026-6659                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-6659
   Distribution:  Crypt-PasswdMD5
       Versions:  through 1.42

       MetaCPAN:  https://metacpan.org/dist/Crypt-PasswdMD5
       VCS Repo:  https://github.com/ronsavage/Crypt-PasswdMD5


Crypt::PasswdMD5 versions through 1.42 for Perl generates insecure
random values for salts

Description
-----------
Crypt::PasswdMD5 versions through 1.42 for Perl generates insecure
random values for salts.

The built-in rand function is predictable, and unsuitable for
cryptography.

Problem types
-------------
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator
   (PRNG)

References
----------
https://metacpan.org/release/RSAVAGE/Crypt-PasswdMD5-1.42/source/lib/Crypt/PasswdMD5.pm#L35-47



