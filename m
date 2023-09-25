Received: (qmail 11779 invoked by uid 550); 26 Sep 2023 11:15:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22152 invoked from network); 25 Sep 2023 22:26:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695680797; x=1696285597; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1+ggY0/bTZGebzIRLDSeHRwFjVwfYVrKp8Ptp7zokvc=;
        b=Qg0Ht5DAB9GoP/6Ch7mpa0K7U1337KyDvSbgz24O9tVicu7OTQKi7j41plFB9tl8co
         EJfBbGo5Nm7szYZOXagq4rjSdMoUW6sVhMqEeiVac+UyfOUOmX2PHz7R08mNhMRsVt77
         wtVo3BexK6jIPu5yFoHspdv8ddwn2irOsxzJZnvcMGWouWEf+Jf+zjbkU4t/vq661eO2
         lKliOL4f3qV304vIx/Z4wINa1VUzGw8+36mg1AIUbK8UFmbeQpGKd+Kh9xoJTiV3B/yW
         CqrPtZmJ/wm8ugz45c4N5dmXUJoOcuQZpXYNUdMgoXSIfjh8DOzOiu6GL7UIWNZ5olw8
         7g7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695680797; x=1696285597;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1+ggY0/bTZGebzIRLDSeHRwFjVwfYVrKp8Ptp7zokvc=;
        b=PQS+IJioEKGc4x41g7n/z+8toQEDSwkvZRZQsDIHEXalnrHBZFneUO12HhYjYxOgem
         8fx9D4Oiau0s1ZPM75GveoC7DsE89sADlhh0RRivVq8euf/IyqvHwJBV1gErwjd2+lDw
         3v07asYXITHMiJctesavnBe802OsLH8SzrU7UsrnINWIYF2CGyI0FfzlfKSbk7l3UB9p
         JTLvpGAcRi70F/PnqhKLVsMHSwKNT6JbujCjGvF+U4C4g4I7Og2zDjbKs0yVA6+0gpEO
         fRanLCdhIeTvHIu88H66tyVDeGUISnCk+4APYai7jOE5V001S+eLbSMX0aWj+5nhzdkK
         wwYw==
X-Gm-Message-State: AOJu0Yzk/FiWN7p0lJ8jKLJF2BBHordnU09JlcDfXqnMbfwroHWaXS8L
	8LABZSmbxfoq0jZCfSG93xCHkCjF6XCWRuF4ckAV4KWbZFY=
X-Google-Smtp-Source: AGHT+IF6YOrtlOVmx4SbqsP8cowKT5qD1MTUM0NeL3QMz89D6Dj0+IeAplHWtuXfcBbGjoAGa/Ttcc7N6UOER0Ui5zA=
X-Received: by 2002:a17:906:20d7:b0:9b2:7584:80dc with SMTP id
 c23-20020a17090620d700b009b2758480dcmr5736397ejc.20.1695680797421; Mon, 25
 Sep 2023 15:26:37 -0700 (PDT)
MIME-Version: 1.0
References: <ZRHp39Aa3dOf1y/O@westworld>
In-Reply-To: <ZRHp39Aa3dOf1y/O@westworld>
From: Kyle Zeng <zengyhkyle@gmail.com>
Date: Mon, 25 Sep 2023 15:26:01 -0700
Message-ID: <CADW8OBs6sEqGxKnUzJy8nro0tXCf-P=7erGFUaqWm5Kv7WyCoA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: [CVE-2023-42755] Linux kernel wild pointer access <= v6.2

> [Patch]
> The patch is to follow the upstream and retire the rsvp classifier in
> all the stable trees.
> And it is queued in all the stable trees, but not merged yet.
> For example, the patch for v6.1 can be found here:
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/stable-queue.git/diff/queue-6.1/net-sched-retire-rsvp-classifier.patch?id=f75b6fc19b6ec061f59b4e18d72ebb32ceea8587
>
Correction: as pointed out by Brad Spengler, the patch was merged into
stable trees 2 days ago. For example, the patch for v6.1 can be found here:
https://github.com/gregkh/linux/commit/b93aeb6352b0229e3c5ca5ca4ff015b015aff33c

Thanks,
Kyle Zeng
