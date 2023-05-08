Received: (qmail 32531 invoked by uid 550); 8 May 2023 15:58:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32510 invoked from network); 8 May 2023 15:58:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683561512; x=1686153512;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GlRI8EpBT744WlmFElSN4NqAR42C9PLIBkW3TsKCPJI=;
        b=kLL+HqiSDV562+WH4h+txosd31VtVZ7Wnfzmlufm+aFw+26Q1vIq+n+jGPwtQPt+ON
         nYBxQnTyHrUB939EZgKPUvX2WXzEerUW1rG0JN17ldPKuZuq3/uuuvhOMUFPHmIiJUrk
         U/5pu+AjiS+hHjnScdTgq52vx2jqRhPa3SkXuwPpViHnvW7hHnYu5MMpGh77ilAPCPKw
         6C1T5gkMSCVusL1A65FWXceJpEnNGdnly6M/el2Ymq+5qSLDAzdQjfj6iS5OPUwku28r
         xdXdQBnHBM/dUtHOQvBKJern1YmxWeqGjIAyyu65JXQXl8iPrXN+HpOhOzC+6L+BzdO2
         gcyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683561512; x=1686153512;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GlRI8EpBT744WlmFElSN4NqAR42C9PLIBkW3TsKCPJI=;
        b=bj26NfpUEG6utYcmSgmOXwBdq6OqY5RsOaImMXV349snYoELSfm56LHPiTQVjrA02P
         iRYcqzZghZ6YSL+9IJk5XAkZPDFkbXZ+8J4JXELy0IM2b9lmJwRPBKLJcB62C6m922GI
         SCNTF2XbbuI6Wx2D1rgx30PFK7FR3A1TJP5zigpEifYJMTvH6PmmUoRd+bQJo3TR+G+f
         +srKghCManiWIByklp8bwZhZz/p2CmybacyHHiDpfvhUcaHwO3eiSm1ovuYfUWDnZTTr
         oYD7L7EwJ7m3l2NNRTeDrXV/RfdW7fmLBNKidZ4zTH1xA2XcjjXuwLxEDLM1lRbgLzQO
         SxTQ==
X-Gm-Message-State: AC+VfDxWIBW1vBv5SD2hWeQUOhlLSlbxDCTbICMe/wmKCz/e43znbv7R
	NwzQRGyFDgoVuEZOERrmDCjAzVTtsjp1e9RvkG9dSJ3ma0w=
X-Google-Smtp-Source: ACHHUZ5bNtMSxWgInfSqUdP/T/rfZ9C+6QJVxXGosc71DV1nNr1kv67bsLqNqTfd7a38g9njBj5oVp0t0eV9R0RHXLo=
X-Received: by 2002:a17:907:a4c:b0:952:b51d:5086 with SMTP id
 be12-20020a1709070a4c00b00952b51d5086mr7742649ejc.57.1683561511890; Mon, 08
 May 2023 08:58:31 -0700 (PDT)
MIME-Version: 1.0
From: Piotr Krysiuk <piotras@gmail.com>
Date: Mon, 8 May 2023 16:58:20 +0100
Message-ID: <CAFzhf4oH6POgqz3r_VSuVc1ZGOZmkKG4cJ0ZuFPm-pwmfLj0yw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2023-32233] Linux kernel use-after-free in Netfilter nf_tables
 when processing batch requests can be abused to perform arbitrary reads and
 writes in kernel memory

An issue has been discovered in the Linux kernel that can be abused by
unprivileged local users to escalate privileges.

The issue is about Netfilter nf_tables accepting some invalid updates
to its configuration.

Netfilter nf_tables allows updating its configuration with batch
requests that group multiple basic operations into atomic transactions.
In a specific scenario, an invalid batch request may contain an
operation that implicitly deletes an existing nft anonymous set
followed by another operation that attempts to act on the same nft
anonymous set after it is deleted. In the above scenario, one example
of the former operation is to delete an existing nft rule that uses an
nft anonymous set. And an example of the latter operation is an attempt
to delete an element from that nft anonymous set after the set gets
deleted. Alternatively, the latter operation could even attempt to
explicitly delete that nft anonymous set again. In the discussed
scenario, Netfilter nf_tables fails to reject invalid batch request and
then it corrupts its own internal state when committing the latter
operation.

The issue has been reproduced against multiple Linux kernel releases,
including Linux 6.3.1 (current stable).

We developed an exploit that allows unprivileged local users to start a
root shell by abusing the above issue. That exploit was shared
privately with <security@kernel.org> to assist with fix development.
Somebody from the Linux kernel team then emailed the proposed fix to
<linux-distros@vs.openwall.org> and that email also included a link to
download our description of exploitation techniques and our exploit
source code.

Therefore, according to the linux-distros list policy, the exploit must
be published within 7 days from this advisory. In order to comply with
that policy, I intend to publish both the description of exploitation
techniques and also the exploit source code on Monday 15th by email to
this list.

The fix is available from mainline kernel git repository:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/?id=c1592a89942e9678f7d9c8030efa777c0d57edab

# Discoverers

Patryk Sondej <patryk.sondej@gmail.com>
Piotr Krysiuk <piotras@gmail.com>

# References

CVE-2023-32233 (reserved via https://cveform.mitre.org/)
