Received: (qmail 21882 invoked by uid 550); 1 Mar 2023 15:48:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9532 invoked from network); 1 Mar 2023 15:33:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=diag.uniroma1.it; s=google; t=1677684773;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sco5904WRJQnaNnZSnxVcdsMP7cJhwnYcFIkvMnlnm0=;
        b=Az0+eT6xRovg5AQLHUmAYR6FT3tmWEn5xyCDyIT7LKIA0lY5AqP4F+LlFkMO3sgJht
         g+C+jTvQUMIsRgUsAARZ0x13dmLUj/512+e7u2M1rhGy7kYFxKg+nWtKfv6QQkoh1Y3O
         HYTB20eYsZ7QXmo4WFeR4BwUZZzw1s2tQM7dY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677684773;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sco5904WRJQnaNnZSnxVcdsMP7cJhwnYcFIkvMnlnm0=;
        b=4xDcHdT03Go4o0XANU5Gltc1SOS4DQ/fqyjuy2jGCEarRGFHYdMJNjGja9Yb2lECi7
         FM7LUwxMGL3VQQWfuIsUZ85Pg87h7hcsp50QQ0FNmbqd5W+WopVoK7m1aPyfR8utnGz3
         1dmRAGuU22uf+Dr1cDNBA2FhfaLUGxWUlraCz3Z/NCnLNqwM3JY5YRhS/ei6wGu1HVn7
         KTS4kUeQpIFZ3hXZKf4iNmvlyb7LBNT9F86P9jb+xUMzHsgvjkD5stdnAufCpoKvkQEV
         JlXtTyGf+krazm0BWeDMn9MMIEfHJbIGBjU7YcWAHPHMoGeNralN6cqQfO9BzZfGoOHG
         7fZQ==
X-Gm-Message-State: AO0yUKV8KBoDlfZ+9xy/zRrGZQyuSs09dBUswVK/bWTKlvd59ivaSQ6v
	sg1mrKqA81JYw4lZ6/uSCVb4oDVBuuKLuPmrfKwHlHXoB9PLFqxm
X-Google-Smtp-Source: AK7set9khWTtfXPGWgrKhotbzWDgg+nvQX52OADwrn/FV9OAz5/C9d4byU1Oy6+77+yZ4PcLxsIxiOQoQR2B6Tzn+pI=
X-Received: by 2002:a50:ab12:0:b0:4bc:9aaa:8bc with SMTP id
 s18-20020a50ab12000000b004bc9aaa08bcmr1139977edc.4.1677684773075; Wed, 01 Mar
 2023 07:32:53 -0800 (PST)
MIME-Version: 1.0
From: Pietro Borrello <borrello@diag.uniroma1.it>
Date: Wed, 1 Mar 2023 16:32:42 +0100
Message-ID: <CAEih1qU_yvoQUjGK3c0ncD8yMbxQ6_9+SFpWthEpK9ppq=oOyQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2023-1077: Linux kernel: Type confusion in pick_next_rt_entity()

Hi all,

I am disclosing a type confusion in the RT scheduling stack of the Linux Kernel.
pick_next_rt_entity() caller checks that list_entry() on the scheduler queue
does not return NULL, using a BUG_ON.
However, this condition can never happen.
For an empty list, list_entry() returns a type confused view of the list_head.
The buggy condition would lead to the use of a type confused sched_rt_entity,
causing memory corruption.

The proposed patch has been merged in the Linux tree:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=7c4a5b89a0b5a57a64b601775b296abf77a9fe97

The issue has been assigned CVE-2023-1077.

Best regards,
Pietro Borrello
