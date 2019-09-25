X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["683" "Wednesday" "25" "September" "2019" "18:53:14" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "25" nil nil nil nil "9" nil nil (number mark "U       butterflyhua Sep 25   25/683   " thread-indent "\"[oss-security] CVE-2019-16714: Linux kernel net/rds: info leak vulnerability in rds6_inc_info_copy\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-16714: Linux kernel net/rds: info leak vulnerability in rds6_inc_info_copy" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12181 invoked by uid 550); 25 Sep 2019 10:57:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11689 invoked from network); 25 Sep 2019 10:53:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=wj6bAa1q5TXSZg/tcTm5pJQICcf8gDgwhOuu2pFJX2Y=;
        b=iAaXxvHKGlx7a/sSRGTEsE37AsRgE0Tldr+Jxx0g1qgUrVUOpUaTTcrD/cnbC/cjRy
         wb54qAI3RtetIQT2A/ZvbWrI0BEIMIfczLS9IJ1NBy6jf/tewUvfMt7MsLMtjtjRv8l2
         zyCryRUz8I4Mcd+f5pjK7iQrMdjp/aN9WD5bQb49GCvbBnHfIowqcjSS8xs7ht8NqZHH
         8TtvlBcejpC/fYvcmZMnUR5NQeEGtrFi9HuAsGTaZF0efsneaSuA6DNIfEaYU9Fx0R8O
         tKPQPw3vZ+MB78HPXjqDD1mr/uq3eM34gy1kIKFCRFK2BJ4NpFpdAOSNyDnZEWta1QXn
         Ivrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=wj6bAa1q5TXSZg/tcTm5pJQICcf8gDgwhOuu2pFJX2Y=;
        b=OAjHubl0IOC0eTUoaq0wmND1qdDgMajCWhhfrUo9yLlqBDDDk+63l9+StZcXGUDkzv
         66rqEFSa65LbM6vYZTjStveHSWPHovNJDizgKUzt1PP+KdpO7Xtr3svQZ9WQnWNc+006
         FBfdb0PvcKKJNEFi7ymJBCt0mlYKstkclfJ14e9PO2G+BYZQEauBvTDKgAYHEiRRjwKU
         mRZPk1iauDh37IdSB+ky+Rj/wA8DCd9+I40NdhMPeH2DrMxyhea2PudTn9wiCW6qQsMd
         q4TZ06ZAiCRoRIES7vrCwMuqdf+rLGT9QCW7eouJyhBHWjJmUjg0USGvtbhCsD57np+x
         1MjA==
X-Gm-Message-State: APjAAAV9/H0XqDCu4YalRi/Xakkv6VTiggoAWw/0u/CPXRaOR58SypMx
	O/JvenUunvOoIQriwvD+SIU8o1qKOlfhLUEpWTtWS0C/
X-Google-Smtp-Source: APXvYqx6w/5x65WXJQ3AusvwlL+6oy4fMQjq1wCDqEL5/7oBWYbkldJ0J9MtjE0XJArXhD0Sj1hJGrzcJ5tpVpJuvKM=
X-Received: by 2002:a19:6001:: with SMTP id u1mr4191043lfb.50.1569408805041;
 Wed, 25 Sep 2019 03:53:25 -0700 (PDT)
MIME-Version: 1.0
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Wed, 25 Sep 2019 18:53:14 +0800
Message-ID: <CAFcO6XP-YkHxuJWBRYWKYSne+WmvSd8E1t1doo5Xe=Bw+rGvNQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000054f99905935e76d0"
Subject: [oss-security] CVE-2019-16714: Linux kernel net/rds: info leak
 vulnerability in rds6_inc_info_copy

--00000000000054f99905935e76d0
Content-Type: text/plain; charset="UTF-8"

Hi, there is a info leak vulnerability in rds modules in linux kernel.

CVE-2019-16714
================
description:

In the Linux kernel before 5.2.14, rds6_inc_info_copy in net/rds/recv.c
allows attackers to obtain sensitive information from kernel stack memory
because tos and flags fields are not initialized.

=================
some more details in https://nvd.nist.gov/vuln/detail/CVE-2019-16714

Fixed in
https://github.com/torvalds/linux/commit/7d0a06586b2686ba80c4a2da5f91cb10ffbea736
================

Credit :

This issue was discovered by the ADLab of venustech.

--00000000000054f99905935e76d0--
