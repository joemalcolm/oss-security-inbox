Received: (qmail 24148 invoked by uid 550); 24 Mar 2023 09:07:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22259 invoked from network); 24 Mar 2023 03:38:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codemonkey-ws.20210112.gappssmtp.com; s=20210112; t=1679629073;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aCTqbI0mT1Gj38YviqwnLJ2JJo+ryM9gtcJLLlK4Ndg=;
        b=AEJEqsIVZFkOoVkz9wEudfUopU4SvcFdkh+pnrmMy+IbLAUREPbFCUhQ3VUmVTrG1g
         VYhI7tcS1/4GuWCLFoeZ9ql2z2jqKqn4K6TqRhBO8OIYnSyX1SWOS1CPM/fjWtU9idIu
         nM5oC8rEdNaZDX4ybxGVS23g8FBCPYGSV56tSf6ZbUA2kcegDpcSIQ1ynrLGHEn+QsdM
         hW5sfs8fvLkXPfiSY2I8ULKHaMKd1fNO7K5i+rcjNUNOk/NrotuPmlsiOwmBD7tSCS09
         SY1BUkUdRg4iayvzN85Oc0gSz9n49u7MNKGQnZrAjZz0o43iCv6Nt8Ymc4FaASMPT2wR
         +SWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679629073;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aCTqbI0mT1Gj38YviqwnLJ2JJo+ryM9gtcJLLlK4Ndg=;
        b=Vge0BEWm5/nloif9xMPV8X4bNvDTqFnqcyV/qZieb5XfwdlNdqB0C+EM7ajD0dYlN0
         SzmxE7288ASIpGa0zGjm2WhRp39PYBW2igIr0hkqu1AaZiU/VGQ25+RQP2LqmyMt5fC+
         XTer1dUZWYpqfCllrENMRtDp3V7WB7oZJMecP+Ry870H1OrB2IFAFIvFOgphqE/mjn+i
         23tUl4V7um3VsElSuhdjpvUWtntDTqEOvqXPY1ivTF1A9ip70nGSk/TRcT04szx4Xe87
         7xD7EnoaQoDm1gssK1gSrnNmb4Qbisn7gKm+q7sQdmp1v4kGpygBlLRCYOWE6O7zx8ll
         VvIg==
X-Gm-Message-State: AAQBX9c/tj4NyquMS9jtdHLDUzNNDfVtU+sPXWwpOszpjV9DwgpGKWsn
	utUKFnsHfk6VctdIlZuq0KDit0rR2wYpS1OdOaYioa17+pNDCOPVZPU=
X-Google-Smtp-Source: AKy350b1twwfzjfUGNrt00WrTJIa5rQU9G6arbTT6fVCWl3j/2NuUmbWvDU9qBkSYt1LJ83VwOr+dgX4b3xQj8Fn0z0=
X-Received: by 2002:adf:efc7:0:b0:2d1:7ade:aab with SMTP id
 i7-20020adfefc7000000b002d17ade0aabmr227950wrp.1.1679629073322; Thu, 23 Mar
 2023 20:37:53 -0700 (PDT)
MIME-Version: 1.0
From: Anthony Liguori <anthony@codemonkey.ws>
Date: Thu, 23 Mar 2023 20:37:42 -0700
Message-ID: <CA+aC4kvP=EatKudD=V7Dzx6BRUN_0TQqyj_Xd0wOpzvnoG58wA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000452d0005f79d1e8c"
Subject: [oss-security] New distros list statistics

--000000000000452d0005f79d1e8c
Content-Type: text/plain; charset="UTF-8"

Hi,

I've been working to automate[*] tracking posting on the distros@ mailing
list for reporting purposes.  This includes searching oss-security for
posting information, extracting CVEs, and trying to tie it all together.

Anywhere, I have full stats for 2022 and stats for Jan/Feb of 2023.  As
long as everyone is happy with the content, I'll update regularly moving
forward.

https://oss-security.openwall.org/wiki/mailing-lists/distros/stats/2022
https://oss-security.openwall.org/wiki/mailing-lists/distros/stats/2023

[*] this has to be invoked manually in order to unlock my signing key so
it's only semi-automated.

Regards,

Anthony Liguori

--000000000000452d0005f79d1e8c--
