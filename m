X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["728" "Wednesday" "17" "February" "2021" "14:09:11" "+0000" "Kaxil Naik" "kaxilnaik@gmail.com" nil "23" "[oss-security] CVE-2021-26697: Apache Airflow: Lineage API endpoint for Experimental API missed authentication check" nil nil nil "2" nil nil (number mark "U       kaxilnaik@gm Feb 17   23/728   " thread-indent "\"[oss-security] CVE-2021-26697: Apache Airflow: Lineage API endpoint for Experimental API missed authentication check\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-26697: Apache Airflow: Lineage API endpoint for Experimental API missed authentication check" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10030 invoked by uid 550); 17 Feb 2021 14:11:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9341 invoked from network); 17 Feb 2021 14:09:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=wEY9RI9l/b+/5OJGaqFEzeKQc1mlLLfsWDY3lMmnpsw=;
        b=MnQcZ1XXbOBv2cmJhjZIkBtK2/bb4qYzcKoBccy6XFPMw6MbFvGgmyTgDjMNGqHc3B
         aBWt773xkWQ/x/Iw2OYLMeeENcqmfPOeweD6B8cHoI2be0CCK5YitznJHB90OLg7ItfF
         UNKw4kCAeRKMHvBvw2yde7TcH0Rste87PV0ARUMCvUgMrgWXw7qu7cFjb1O2zhs86h1m
         mnbPav4UDVIxYEMKqMzqHw0Knywc3DsPBuKtTUKZqwGvgnJmg29L2rkN9uxxBBnGJabh
         z178sNsETFzMQ8ghBWNuE7PYh35D91K+2DdT+zNEI3j3cRRFqmIaTIGbouA9/FXigh0a
         nPFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=wEY9RI9l/b+/5OJGaqFEzeKQc1mlLLfsWDY3lMmnpsw=;
        b=ugQBxjit33jHeGZjp0Cei1++E6lL0odYzd4lgaLfgZbBl1KWc9reRu1dzKD5QpZinH
         j7m+FuEsflF7aclbO3JOSnt25cx39YoWi8fAuDv9iHoYr21RAePPJpJ8aMlvvI6KH1/q
         OsYxK+d/FDOcyS8WCA3u68FRwOrSocJ+SY4M/gPi76pSnG3tkMXd+Cg38dYGSWkzPrKR
         yPiR5ShduUTE9Mkw4JXNpQhkDBZNlcTq19Wwq3N9Z3rwKLH8qOP8lx9k/ECQtqBSuCcx
         qx96hHz9CH3xCGKM/rmIk/gbg8UWZetr0hgoUUWxHAQexPTIzam0lNSTr989dCv9XYCs
         abvg==
X-Gm-Message-State: AOAM533PFy/uYfS6RejvR/Lmc4I3wrplgPwW5Bw28lcp+XzsYISKx6II
	q/GkxaOOZ2lqlUo4LFJy4QLIXWDaVBlJDd3qxZ1BLenFD6MSLz6Cq5Q=
X-Google-Smtp-Source: ABdhPJy+ZVKAFMuXkzo5u/3yqka655lMGD9h0m6Y68Je6jjduEJXzLuBdZcUdX/b4q4zbIPcb4cjTJ3jMKLTM5F5DuI=
X-Received: by 2002:a50:9556:: with SMTP id v22mr1961306eda.336.1613570962695;
 Wed, 17 Feb 2021 06:09:22 -0800 (PST)
MIME-Version: 1.0
From: Kaxil Naik <kaxilnaik@gmail.com>
Date: Wed, 17 Feb 2021 14:09:11 +0000
Message-ID: <CAH5JyZq1We7GoJGuOu5jzgRiOQ-iQf46yYdO=rWw8Cf-8KR=5g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000000d7b5405bb88c498"
Subject: [oss-security] CVE-2021-26697: Apache Airflow: Lineage API endpoint for Experimental
 API missed authentication check

--0000000000000d7b5405bb88c498
Content-Type: text/plain; charset="UTF-8"

Description:

The lineage endpoint of the deprecated Experimental API was not
protected by authentication in Airflow 2.0.0. This allowed
unauthenticated users to hit that endpoint.

This is low-severity CVE as the attacker needs to be aware of certain
parameters to pass to that endpoint and even after can just get some
metadata about a DAG and a Task.

This issue affects Apache Airflow 2.0.0.

Credit:

Apache Airflow would like to thank Ian Carroll for reporting this issue.

References:
https://lists.apache.org/thread.html/re21fec81baea7a6d73b0b5d31efd07cc02c61f832e297f65bb19b519%40%3Cusers.airflow.apache.org%3E

--0000000000000d7b5405bb88c498--
