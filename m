Received: (qmail 20295 invoked by uid 550); 15 May 2023 16:00:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1301 invoked from network); 15 May 2023 15:45:56 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684165544; x=1686757544;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D8PfJiDWcRBBYyLsgpaqXmXXz3If/JipUkp56xpwZmY=;
        b=l3reGkm2iyDfIu7JdKJOELMQtunhpd1zlmWAxEsGEgJ6HX1tIjSvzgrvYzLueFajKV
         UINuVPr0tyNswMmtqgXwSNiD2MBMYVpQjX4M2B7gG6HjwUt6DDtsad8bbx3eqz52DCS0
         k9zdu0HQZtXYgfBA2J+6FUFNj/v2YymbY54EbyKxhtA8FFVJv8QaIw/UQ+ZlOmHRyLa8
         dSFp4yZjUpRDf0WUOANQgKDlVubHNsjRzfD4n2ZQ5KcyuXQ5d0BO4k6L+46XKfLtYdNa
         OkNjuY8sTtrg7x569wcXVw5nUHZkDAyg3X0uvgDr/I6Hasb3rSeRBk5oxBsiKkaS5P9K
         9pCg==
X-Gm-Message-State: AC+VfDw0rJsZkYzzv689L3LuY2/mggpOgsHRKG3X7gXIaXv8KGFSB83U
	ki/vO4F4UiMJYYnLh5OmP9kfQdv60HNJP95cGIRLmk6bOdSgTysyogDDAQ==
X-Google-Smtp-Source: ACHHUZ5/VJCSMAuixW4yM3S4H1SA9eh6oAYn2pCyFrcCpVK99PqxIdNg8opA2XYNY4EGj3IjnoOUFCNdjnXyZ+U5c4Q=
X-Received: by 2002:a05:6808:6348:b0:38e:62ee:ee96 with SMTP id
 eb8-20020a056808634800b0038e62eeee96mr9943602oib.58.1684165544076; Mon, 15
 May 2023 08:45:44 -0700 (PDT)
MIME-Version: 1.0
From: "Andrew G. Morgan" <morgan@kernel.org>
Date: Mon, 15 May 2023 08:45:33 -0700
Message-ID: <CALQRfL40s=knwPCFNDHrAxFtcU_-O2jeLe3xyFf4DFvT2QZzfQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] libcap-2.69 addresses 2 CVEs

The release of libcap-2.69, announced here:

  https://sites.google.com/site/fullycapable/release-notes-for-libcap#h.iuvg7sbjg8pe

addresses the following:

- LCAP-CR-23-01 (SEVERITY) LOW (CVE-2023-2602) - found by David Gstir
- LCAP-CR-23-02 (SEVERITY) MEDIUM (CVE-2023-2603) - found by Richard Weinberger

The full details of both issues are provided in this audit report:

  https://www.x41-dsec.de/static/reports/X41-libcap-Code-Review-2023-OSTIF-Final-Report.pdf

Cheers

Andrew
