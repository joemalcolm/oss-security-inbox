X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["540" "Friday" "9" "October" "2020" "12:52:56" "-0700" "James Dailey" "jamespdailey@gmail.com" "<CANMpf843uQjY+oT8k-C7U_w9yfxNq9jyYDY7Xby3a4oO8RPVSg@mail.gmail.com>" "15" "[oss-security] CVE-2018-20243: Apache Fineract: password passed in URL, not via POST" nil nil nil "10" "2020100919:52:56" "[oss-security] CVE-2018-20243: Apache Fineract: password passed in URL, not via POST" (number mark "U       jamespdailey Oct  9   15/540   " thread-indent "\"[oss-security] CVE-2018-20243: Apache Fineract: password passed in URL, not via POST\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2018-20243: Apache Fineract: password passed in URL, not via POST" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17679 invoked by uid 550); 9 Oct 2020 20:01:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13802 invoked from network); 9 Oct 2020 19:53:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=MkDbbduaBXTURfpHrErSU1SI/Du1r18kMJe2SQgdE/U=;
        b=CZK7OdXbbIbSD+11O2WFdn6t/Ljzdlg/8jaVEcfxneNa6atVtAv3lJnpV5859ZX+lj
         fgQcTrEDAVgZpuNsgqnYKR2eZ0ElQQFIWIjPXCcoTRbybcpP5SKL0FPiZgxEtkXiB0SB
         X6QJ8kGCQVg4CVdAUm+4DblanDiuwrWcXVbUW4aZIM6sjlq3S6YIn1Cdub0BW81tMmXC
         i4HvQiRt07+xnI9NlHJhQSmLhNFySFW6SeXyrQs2vTjOs3sspC9shMy2oPUyU8BJ5QMI
         dW7cGp10OqqkqfDTH1PeLTXxwNHbSu8tIMt0YG76pBUA7wi/6svcgOWNXf6RQ4cIJ1iz
         qvpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MkDbbduaBXTURfpHrErSU1SI/Du1r18kMJe2SQgdE/U=;
        b=bB2XmCq120VOhsKkeaKgSo0apbZxFSxQ8i6HSpzAekjwIEod81Q99uRadP91bbDJRi
         k86xlPKYKKhjmTvUDbt2qD+Pd48CaNHtuB92KaRyzdcmoXQKZA8ypZ2/jvyEoHVF0Hcb
         +7YZBU/HDmaqaVUzAt3WfmDkJlfan43E4Bba7OJtZpuOZ2PpCxYRjAtXUi+zHm6nejgM
         aSXceeG8bICWY/PmJzdVpFfl0GM1sTsu7oXSrdc1g8EWgzczKih/McGtsv3KFnGpHa9c
         Er5qP/NzbuZs3tsLq8laEeOpWGhafaz9qbg0j5sBXbJW6OYr6qMP4ocDBMIPo9sMKMVU
         pXQg==
X-Gm-Message-State: AOAM5312toGHuqJOIDtB7wtp3FJUCJwukekDzzBtE2o9xYpSRtCzCdaB
	EVev1v2R0jy+0rgtn2IsakgoLDnAjHHyhSH1Ug+f2fDhrbNzZweo
X-Google-Smtp-Source: ABdhPJwK1x8/esjahspy18WxtDnM1sRwlXDHko01FnDTPFBxyULTXsjdQtpV3yB0n8bpB3f/5V20+PSvTef5+eQEBHg=
X-Received: by 2002:a4a:d622:: with SMTP id n2mr10212127oon.23.1602273188017;
 Fri, 09 Oct 2020 12:53:08 -0700 (PDT)
MIME-Version: 1.0
From: James Dailey <jamespdailey@gmail.com>
Date: Fri, 9 Oct 2020 12:52:56 -0700
Message-ID: <CANMpf843uQjY+oT8k-C7U_w9yfxNq9jyYDY7Xby3a4oO8RPVSg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000034796805b1424c52"
Subject: [oss-security] CVE-2018-20243: Apache Fineract: password passed in URL, not via POST

--00000000000034796805b1424c52
Content-Type: text/plain; charset="UTF-8"

Passing the password in a URL parameter, instead of POST body, risked
exposing the credentials e.g. in log files and HTTP intermediaries like
proxies.

*Release branch*: The fix is available at
https://github.com/apache/fineract/tree/1.4.0. as of  Sept 18, 2020

The dev list was notified on Oct 8, 2020

https://lists.apache.org/thread.html/r040d46835aff3c192656b549ca82f62d87fb044ef9a9dd49408b49b4%40%3Cdev.fineract.apache.org%3E

--00000000000034796805b1424c52--
