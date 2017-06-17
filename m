X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["550" "Friday" "16" "June" "2017" "18:45:12" "-0700" "Michal Zalewski" "lcamtuf@coredump.cx" "<CALx_OUAtt5gbRP+imZfXJwvgfs+Y5hrYqdmLhJHS7SRN5z_VCQ@mail.gmail.com>" "13" "Re: [oss-security] two vulns in uClibc-0.9.33.2" "^Date:" nil nil "6" "2017061701:45:12" "[oss-security] two vulns in uClibc-0.9.33.2" (number mark "        lcamtuf@core Jun 16   13/550   " thread-indent "\"Re: [oss-security] two vulns in uClibc-0.9.33.2\"\n") "<20170616204437.GC2269@hunt>" ("<tencent_18C312B86EA079DA42B11D83@qq.com>" "<20170616204437.GC2269@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9457 invoked by uid 550); 17 Jun 2017 01:54:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1342 invoked from network); 17 Jun 2017 01:45:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=coredump-cx.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=2x6GqcbNqsbWyMYHHBc1XkH08Hz0Oz2a5kTnTsPw3vM=;
        b=hYudpRN8a6F5NWDTFRYpApw4zWW9y2IJsnHbyTH7wfNh9gSVsdXnVTldcwnWgbqSQs
         vykm8EVHqqG4A2jqn6+wjq3NMqnTD7icBCUAESxEtd3EJLBQLAw7dLvBS0Ml+Ha4Sq0u
         7LosrQVcDXu5VEP8F3neOZNz3Yo/Mot/nAel3F07Uzz0ir60JTgPwJEqeBwgtjfNOm+Y
         Y4+tuc6QjbSevB8ezG5iUuDrMhcts5Dl8c1o1MpZr//bK8G4K/sYiLo80WMHiiMyHl+V
         7a7uGD1uhbfJtokmVoM3qOVvNCCVmbnTcCL2DLhGqxbUWBM9XwWNTd+wvpuaYOjxryiV
         8aWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=2x6GqcbNqsbWyMYHHBc1XkH08Hz0Oz2a5kTnTsPw3vM=;
        b=Y4Sxz5mt3zejIenobG2DEyEwZaZV6haHzybKfU7h58qzxaTJ/hjrJoRMUcmC119QEa
         xOizpJFjyUgvLY7Xg4wO/EeBL79VB/yNGAZCCjaLxzMywdfsLKvw+jhSUj1o4oXXHUox
         peeZP4+MGh7gRmcXn/HyMeOW4Xoo9NDszdAjXmRLFwt5r39606aX6ZHG0oNLaGseVseu
         SQpDemjLBkRgsKXFrrr24zuwlBpzEtX2YPBd0SxZkaWkr2FCicC6W+JvJzBTMNDUs4kC
         tK1DGnV8pY5k8y5tmjqwLUjpr1sSk9DpmTwvmIcLkV1kWaHcr1RdtAX0ilB6BikHFZdD
         o4Lw==
X-Gm-Message-State: AKS2vOzNuj6NybYssn/GaYIL4X21jWDeMoP+YEfdkc4t9oC/ku7lZd/b
	TsVc59Myd+MlyS/vgJIuIwXznLzXyz13
X-Received: by 10.80.137.220 with SMTP id h28mr9030739edh.72.1497663933323;
 Fri, 16 Jun 2017 18:45:33 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170616204437.GC2269@hunt>
References: <tencent_18C312B86EA079DA42B11D83@qq.com> <20170616204437.GC2269@hunt>
Message-ID: <CALx_OUAtt5gbRP+imZfXJwvgfs+Y5hrYqdmLhJHS7SRN5z_VCQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 16 Jun 2017 18:45:12 -0700
From: Michal Zalewski <lcamtuf@coredump.cx>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] two vulns in uClibc-0.9.33.2
To: oss-security <oss-security@lists.openwall.com>

> Does it make sense to assign CVEs to regex compilation? Very few toolkits
> handle this well, and even given how many regex toolkits use backtracking,
> even 'safe' regexes can lead to essentially unbounded execution time.

One use case are "sandbox" languages, such as JavaScript. JS engines
often use third-party regex libraries with attacker-controlled
regexes. They don't particularly about OOM / CPU exhaustion, but RCE
that allows a malicious program to escape containment would be bad
news.

Probably no JS engine using uclibc, though.

/mz
