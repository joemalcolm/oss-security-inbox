Received: (qmail 28251 invoked by uid 550); 29 Oct 2022 09:37:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22435 invoked from network); 29 Oct 2022 08:34:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=yonsei-ac-kr.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/T7ou3ZvuGBE7MG01ruIF6mUxkRuMvHeqiXiAQpb/1o=;
        b=yC1vVExqzR7FQYOM766QJTUPxYlf3DlsRSeAp/hfSTt3J3yt7jvOQ5cvzBTzNXWd52
         d5rJgkiePIVBMt9QvmOqJwb4IcbiSGE7j69gex1eCBCwKSxXGsx39Ic8P23alMG0MX6U
         Fo38fzzI9r7Jax2q4hozDrnO5VHjIJVPQK46qXuTRdSZ3fhmpVloV3LclkU/NIgT+xxB
         88p9G8O6c4T6B7ZoRefWUbONwzy9UkUHkjF+xYLwI7gI/AjaiWW0uDyvWFR4DdiHSbvq
         Ob3oIX4reIwMC7lKqFubO4toSmmzIoyodCvcwr+ilWAyWHtfepRNEQ+S5jKQ8MmUlBim
         Moug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/T7ou3ZvuGBE7MG01ruIF6mUxkRuMvHeqiXiAQpb/1o=;
        b=mGe3WpdBRLIBmaW5/O+Tu97CNGoCGie3JOBzLzO1N/38mwHs8OjV5Yhr//jY6IYJbc
         8q0VAnNG3pdL/UY4IrKyo+P6ANDUS9fKhhQbwequZu/j3L+ZKou1xFlcDShhM8duwQmT
         XuC5UEh/gDGVxQKlh7oNsTQOzqXrk3mznO4BkTt4VWw9pJW7Kr/dY472g/yvuSVaZWlN
         s/ziPndEE0HoBHo0EpMElkHs7GWSjBOe4vsZ2ZMfTcQPDPtAyuYTHU77rczfZQa6DfP3
         6VVkNV1BQocpozHxXrldOsnze/azhQXNDhk5sXVh/VD52tBafrksONBFV7PHrNZHxCY3
         rtww==
X-Gm-Message-State: ACrzQf1BabFIOuSeDJm/otZI+S8zvPL6c38P5QGZADwLLtyKnzTwlPhm
	YzBvSlmfRYv0Tbdxu6v8UtR6TBhF60b623AUbxao7muUy7HheL6f
X-Google-Smtp-Source: AMsMyM7t0X+G/AbWVn3iDO89vL6bjiPZ0LASmz+/ScKUr9JrSmTCiG8Ayq9IjIL41yUdDwgypCm4aFHZ0dSwK2x4Qb8=
X-Received: by 2002:a9d:7f83:0:b0:661:abd3:9f5b with SMTP id
 t3-20020a9d7f83000000b00661abd39f5bmr1634040otp.202.1667032437397; Sat, 29
 Oct 2022 01:33:57 -0700 (PDT)
MIME-Version: 1.0
From: Dokyung Song <dokyungs@yonsei.ac.kr>
Date: Sat, 29 Oct 2022 17:33:21 +0900
Message-ID: <CAM5P+QTzZEywndb2H1=hce+ahtz1TsrsJZEM6ZuKEmFM4ozL8Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Jisoo Jang <jisoo.jang@yonsei.ac.kr>, Minsuk Kang <linuxlovemin@yonsei.ac.kr>
Content-Type: multipart/alternative; boundary="00000000000042b38005ec283c9c"
Subject: [oss-security] CVE-2022-3628: A USB-accessible buffer overflow in Linux kernel driver

--00000000000042b38005ec283c9c
Content-Type: text/plain; charset="UTF-8"

=== Description ===

An intra-object buffer overflow was found in brcmfmac (an upstream
Broadcom's USB Wi-Fi driver), which can be triggered by a malicious USB
device.

As the object where the overflow could occur contains multiple function
pointers (e.g., bus_reset.func), with knowledge of the code layout (i.e.,
KASLR needs bypassing) the vulnerability could potentially be exploited by
an attacker who controls USB messages. Without knowledge of the code
layout, the consequence is a DoS.

This vulnerability was assigned CVE-2022-3628.

=== Fix ===

A fix has been successfully reviewed by the maintainer (see below), so it
should appear upstream in the next few days.

https://lore.kernel.org/linux-wireless/10230673-8dbe-bf67-ba76-9f8cdc35faf3@gmail.com/T/#u

--00000000000042b38005ec283c9c--
