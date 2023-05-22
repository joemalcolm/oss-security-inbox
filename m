Received: (qmail 19947 invoked by uid 550); 22 May 2023 12:53:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1411 invoked from network); 22 May 2023 12:26:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brad-house.com; s=google; t=1684758393; x=1687350393;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qmp+soy/Xgw4eAZjSoXi1vNGNGYD7sLYS/gTOjekreY=;
        b=avrHHZdA9eUlftZktG+gUlO8KW0TvCZlo6FsW3zISLtdaTaeR6K7fWflB1FQflmzuF
         855R3m0dV3uDCp+SI4UI+VOZQPNKsqW1BAs0lRzxKiuOR0REXIo7/BB1qJjU92Ay9nzk
         +ZF1/46Unle+/nEAcVGtmtJMstJH9Y7N89dp50ocsQSJYhIEo5yMbjec35xMmLm+fNm0
         4wwnKBRJi3xYsn/05Nf++bn/y9KovTfjyJt7gmzStPiGHCtTVUsaCQFXZW5rmfQCU36S
         ZscndON8nGJ22AIEVx6tj67ElZrvByZGVN6mq9PigQg1+GB/n+GBcfewMMPG5iiHqAJ2
         D6RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684758393; x=1687350393;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Qmp+soy/Xgw4eAZjSoXi1vNGNGYD7sLYS/gTOjekreY=;
        b=H1aMZSPK48fHtx1hy+6nX609IKJf5hrcVRz698o84Y6zabUA7/1It6m4EXsytZYaMi
         gCSf1zBXHOuTfKKJ8y+0b2w9tzAI/IIEWlh9r+w4XuLflg+7eJVRa/wWUWwzumenly6b
         8FoWhQJKRRMezgRTprnSVxggBqwYzWb6qqIfZNCKBrgptaWnU90LVfFBJq/TyqJuDOD0
         wHtkrD+M3Pof3DM8ai6jcE0/IGzw3R1qlFXcmkHumuZs8pm8qDMfFMSNl+mj0ZH2wR1N
         BoNOSeouwKlmRGek6+GuxbfZ06uPj1OOu8SA21w5OugsnThybn1IADmw7aF3VjZXj++J
         N29w==
X-Gm-Message-State: AC+VfDyJv8lYBZNyws93+BrQkXVNiu9di3oOq7wtLR96T8fHxpUFC7Iq
	eW8KjoXFEwmy1xJP4zWHHoR7OuDqTayfwy+4O5uIxw==
X-Google-Smtp-Source: ACHHUZ575f9MPNVG3TE44h8IDKNSwwgmSzM/IIY2dBfzw3SJZd8r9YUqAzphGJ0WyZuvM2wixSOHkg==
X-Received: by 2002:a17:907:9445:b0:961:be96:b0e0 with SMTP id dl5-20020a170907944500b00961be96b0e0mr10069142ejc.73.1684758393512;
        Mon, 22 May 2023 05:26:33 -0700 (PDT)
Message-ID: <b7fbe4e4-9dc5-3872-903c-a16b9ff43c58@brad-house.com>
Date: Mon, 22 May 2023 08:26:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.11.0
Content-Language: en-US
To: oss-security@lists.openwall.com
Cc: Daniel Stenberg <daniel@haxx.se>
From: Brad House <brad@brad-house.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] c-ares multiple vulnerabilities: CVE-2023-32067, CVE-2023-31147,
 CVE-2023-31130, CVE-2023-31124


  CVE-2023-32067


      Impact

Denial of Service.

Attack Steps:

 1. The target resolver sends a query
 2. The attacker forges a malformed UDP packet with a length of 0 and
    returns them to the target resolver
 3. The target resolver erroneously interprets the 0 length as a
    graceful shutdown of the connection. (this is only valid for TCP
    connections, UDP is connection-less)
 4. Current resolution fails, DoS attack is achieved.


      Patches

Patched in 1.19.1


      Workarounds

No workarounds are available.


      Credit

Xiang Li
Network and Information Security Laboratory, Tsinghua University


----------


  CVE-2023-31124


      Impact

When cross-compiling c-ares and using the autotools build system, 
CARES_RANDOM_FILE will not be set, as seen when cross compiling aarch64 
android. This will downgrade to using rand() as a fallback which could 
allow an attacker to take advantage of the lack of entropy by not using 
a CSPRNG.


      Patches

Patched in 1.19.1


      Workarounds

Use CMake build system


      Credit

David Gstir and Hannes Moesl
X41 D-SEC GmbH
Audit funded by Open Source Technology Improvement Fund (OSTIF)


----------


  CVE-2023-31130


      Impact

ares_inet_net_pton() is vulnerable to a buffer underflow for certain 
ipv6 addresses, in particular "0::00:00:00/2" was found to cause an 
issue. C-ares only uses this function internally for configuration 
purposes which would require an administrator to configure such an 
address via ares_set_sortlist().

However, users may externally use ares_inet_net_pton() for other 
purposes and thus be vulnerable to more severe issues.


      Patches

Fixed in 1.19.1


      Workarounds

No workarounds are available.


      Credit

Hannes Moesl
X41 D-SEC GmbH
Audit funded by Open Source Technology Improvement Fund (OSTIF)


----------


  CVE-2023-31147


      Impact

Description of issue(s):

 1. When /dev/urandom or RtlGenRandom() are unavailable, c-ares uses
    rand() to generate random numbers used for DNS query ids. This is
    not a CSPRNG, and it is also not seeded by srand() so will generate
    predictable output.
 2. Input from the random number generator is fed into a non-compilant
    RC4 implementation and may not be as strong as the original RC4
    implementation.
 3. No attempt is made to look for modern OS-provided CSPRNGs like
    arc4random() that is widely available.

Correction(s) made:

 1. Detect arc4random() and if available, use it directly to generate
    DNS query ids.
 2. Use /dev/urandom or RtlGenRandom() directly to generate DNS query
    ids as a fallback
 3. As a last resort, use the current rand() + RC4 logic (should only
    apply to esoteric systems), with these modifications:

  * replace RC4 implementation with official algorithm
  * seed rand() using srand()


      Patches

Fixed in 1.19.1


      Workarounds

No workarounds are available.


      Credit

David Gstir and Hannes Moesl
X41 D-SEC GmbH
Audit funded by Open Source Technology Improvement Fund (OSTIF)


