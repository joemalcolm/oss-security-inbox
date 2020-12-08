X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["525" "Tuesday" "8" "December" "2020" "20:01:14" "+0100" "yersinia" "yersinia.spiros@gmail.com" "<CAH5b-BUVDeMaifMPf5HibLqjQKky3ch0__eYnzU1f_k3=JmMTg@mail.gmail.com>" "13" "[oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?" nil nil nil "12" "2020120819:01:14" "[oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?" (number mark "U       yersinia.spi Dec  8   13/525   " thread-indent "\"[oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16241 invoked by uid 550); 8 Dec 2020 19:08:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13469 invoked from network); 8 Dec 2020 19:01:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=4cqv3CH99EoKyaZt5Bmj4own8ngFDxNk7CwuLwtL3nc=;
        b=LQDFpbMnq5vx6qUlNFjO9QoAcZo6hXzkdwqmCbciWLkMsk09WJ48NzJGmCU4t/BWSM
         2nCwMHwVYljCHtfhz6518nq9hdrUakvzHMhTc0vZFBKhuK6LEWU12HTXbk6AkOaCgOr5
         cJDBYfFw1dsrXdKo5mnJpF5TBQ5kb7Lmaq2Zb1EbPhgtfahoMurdl4gWBbcImTCXIHLP
         1WdguqwJF6iGNNpbt+boYP7CHaOL7bYGWk6P/8fjHWftJuuVc0aDfIV78OJQvCpqKiUc
         fo00V2lIf6l0lKtRQvtuU7wHfWT2j12I7QoVv3OqHphWYqDqSHDdzMqSG7RwjuemdrbA
         FdSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=4cqv3CH99EoKyaZt5Bmj4own8ngFDxNk7CwuLwtL3nc=;
        b=YAQAhOauEaNHI7mUAXvwPIk99pXPMin9vb1x9KR8hgDWk59MTCjdbv3InFnoY9w0F4
         znH8Lo+Uk909B732eHe4G6u16KhF7X6+yBwlxzhOJRRgpvOoIRqmBhV/Ujs3z77EGFla
         JAPOzlkrihdTGOfpcHQ8+pv5yztVUHSpiNdSIkgMq6yJ7jfTvsXQsaY70wMzQcihXbNb
         dImSQufnFeshl9eztNq0LStylBXE79BfBEQZWPzzVOFSuBqF6LNp3YTRAXR/EYsdPQjB
         6LYQrwWL6M1Hfbk2pZfS09SKEiGy/Lt5vkIbFfuQZLZ/NXB0KL2lyP9fcvvwJWMqlz0L
         N3YQ==
X-Gm-Message-State: AOAM530+QKEXpicw1RrgLiJ1YLcLiLmXKV4y+aVFeUDuWfksLqb/VBKW
	x5MsgEfAsfQJXhzPBvM3apGxmMwMMgQ2PpE55T846nmGyIgrKw==
X-Google-Smtp-Source: ABdhPJxWN12n1mUlIaSxcxneT8wKQNX7/3MtRLFENTolAgWSu7SW/e38IpZAYE6zjR15VESgdrbcsURjjMgyQwNzPSM=
X-Received: by 2002:a50:e083:: with SMTP id f3mr10690034edl.223.1607454086571;
 Tue, 08 Dec 2020 11:01:26 -0800 (PST)
MIME-Version: 1.0
From: yersinia <yersinia.spiros@gmail.com>
Date: Tue, 8 Dec 2020 20:01:14 +0100
Message-ID: <CAH5b-BUVDeMaifMPf5HibLqjQKky3ch0__eYnzU1f_k3=JmMTg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000d2aa3505b5f89153"
Subject: [oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?

--000000000000d2aa3505b5f89153
Content-Type: text/plain; charset="UTF-8"

At this link, multiple security bugs of various kinds are highlighted in
very widespread basic cryptographic applications, which have then been
corrected. I haven't done a deep analysis on all of them but I haven't
found any associated CVEs of some of them. Do I have to assume that they
weren't all that important or that the process of reporting them was
missing? Thanks

https://github.com/guidovranken/cryptofuzz

--000000000000d2aa3505b5f89153--
