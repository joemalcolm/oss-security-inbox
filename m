X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["571" "Tuesday" "24" "September" "2019" "18:28:40" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "24" nil nil nil nil "9" nil nil (number mark "U       butterflyhua Sep 24   24/571   " thread-indent "\"[oss-security] CVE-2019-16714: info leak in RDS rds6_inc_info_copy\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-16714: info leak in RDS rds6_inc_info_copy" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25932 invoked by uid 550); 24 Sep 2019 11:10:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30037 invoked from network); 24 Sep 2019 10:29:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=SELhgMb3+zH8LyveETWy2x0kF6F9RNcv3nXJK9d6x6E=;
        b=Nhuru8nL5JjcXsqU7kZiJQVMwypmoo3kI88gwPAFkmXAJNJEYkJMHOsP4Tt7Cd6vJZ
         EJ6KZyTzwHFky3HKroKkbV0iZ9m0XnyGkHo4o+gyPChahUeEFOzZyW0ETeyKLSS1PwFg
         CN1Xyac8HLsMvh20UqEPcW1eZ4Sc4mPnenHkHG/3dOGYXOGJ7Ighbov9srYdGUCpY5ey
         myMltdQC/mnn0gLZcdi/z4s4Lbt1o8iAuexK3qskrhUM3HJK3u31EoQ19xEY5EtAf2TG
         Dr4vevgGRCYhYkVyXjWbNWCaYuylLmRtHapnalVQX6NwE+IKtMOGTJ2KTyARlyxlX5R0
         nXcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=SELhgMb3+zH8LyveETWy2x0kF6F9RNcv3nXJK9d6x6E=;
        b=TxwkSnYlghI6nEjrBZsHzD2aCAW6OMan3FbGJ7xP96Mf0JO5S8y0gGhdDAgrZNmVDX
         JSahiUJaEkUkIa5xk9FxMN3lhccWKWrKI+U3Av021oIDhIvj78DEJq9yvCXf1OlEX3rp
         aQoPeW1ldrU6qow5M36NIBgvFEDA6DxWaCow/vVJcsppYZebu3F+MzRFI/VzbHBs1na2
         8ZebHleR4qyaaSiRB2bIQVsOG8P9FBlHzfs4byoHStlk5yTTg/KFfVmoUhqIt4OYig6r
         6Rla8e0nnrFLftUdwshUsZfu4VHrs/2lTjIqXz5jq6uT5gky+8lDEHHKIW6J+EkKUEUr
         az3A==
X-Gm-Message-State: APjAAAWyY1CTQVy20QH4YnzyJLJEHqLsRiGmibgYv8Q8CoXjpIC59wNT
	/1F4OEGFAcvsGTVqPl8q1gbnENql1fjaS6LIC2cCX3p0
X-Google-Smtp-Source: APXvYqyhk/gSpY79dRkKAmex8Ze2SL9VWDB6pLv3I+fAy6OtAhSmvDgzfwcvGj4Sdd0iK5p6n2VfKHl7+3t9IhihnBw=
X-Received: by 2002:a19:4f5a:: with SMTP id a26mr1436807lfk.116.1569320931679;
 Tue, 24 Sep 2019 03:28:51 -0700 (PDT)
MIME-Version: 1.0
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Tue, 24 Sep 2019 18:28:40 +0800
Message-ID: <CAFcO6XOjcW7g=sS6DbjRY983i1nteHyA2nNBK_+Gbj6OmFVNXQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000abe0da05934a0083"
Subject: [oss-security] CVE-2019-16714: info leak in RDS rds6_inc_info_copy

--000000000000abe0da05934a0083
Content-Type: text/plain; charset="UTF-8"

Hi, there is a info leak vulnerability in rds modules in linux kernel.

CVE-2019-16714
================
description:

In the Linux kernel before 5.2.14, rds6_inc_info_copy in net/rds/recv.c
allows attackers to obtain sensitive information from kernel stack memory
because tos and flags fields are not initialized.


Fixed in
https://github.com/torvalds/linux/commit/7d0a06586b2686ba80c4a2da5f91cb10ffbea736

================

credit by :

the ADLab of venustech.

--000000000000abe0da05934a0083--
