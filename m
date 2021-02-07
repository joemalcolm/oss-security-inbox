X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["514" "Sunday" "7" "February" "2021" "12:30:19" "+0100" "Szabolcs Beki" "szabolcs.beki@gmail.com" "<CAEJYuxGBZfg_erJDPG9d0waU2jLqkG2tTrtHg-gXCoaaKF1M4Q@mail.gmail.com>" "13" "[oss-security] [CVE-2020-13924] Apache Ambari Arbitrary File Download Vulnerability" nil nil nil "2" "2021020711:30:19" "[oss-security] [CVE-2020-13924] Apache Ambari Arbitrary File Download Vulnerability" (number mark "U       szabolcs.bek Feb  7   13/514   " thread-indent "\"[oss-security] [CVE-2020-13924] Apache Ambari Arbitrary File Download Vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-13924] Apache Ambari Arbitrary File Download Vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22158 invoked by uid 550); 7 Feb 2021 12:41:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32049 invoked from network); 7 Feb 2021 11:30:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=t9wDb8d7mO49wtHPHaW+hEKOJkOQN9pp/pO4jbQdsdc=;
        b=JCRxCPC6Yn6MliqnfTzzC4aw+nwqIPqDWIRUT7PyqawBd/RmLbWKHtEFIqmNc8oX3D
         Nncfqxf4ZyI+BjcExc294tdpH5Oh2W+4EhD8DOABWJcUFaAy1/OT7c2zKaXFLECXpHX7
         u2g/Sw4yKopPeLcBIOUo1ymbl2fk020gi+R74xAbnMVfFEyvcIIG19V+zq8nxLKdWJp2
         CTyS+Qt5dO1RXAlvjQfclbXONtt9pzJ8mPW8xP6teSD3eIv0FaDCjruSCYEu2MAm2NE0
         VFRklY5mXYO9iFhQwPwm2gMUo6ATDUX+KOJXy79EIYYrEfTjiZHxypVGcBK5Rf68PHiB
         DuyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=t9wDb8d7mO49wtHPHaW+hEKOJkOQN9pp/pO4jbQdsdc=;
        b=EHXzwz3o8TqgthIIABdhF/6AFBJ5MOXOWV3L0sTl8OvcDIKMbk3OWknWHibXFT2VzU
         kZRlvp2jK2w6Ltm6jdfWqUfFV2a8ubDulnmfym1mD4Qyk8U7syXintfP/GpCVQaKThr8
         iba4DcdmMEm/VpJV4krJXzBZBOCW2B5T1FPP4JGzS9U3TjPxgEZUN7I1Tf6Lm8EGW+55
         XuWWiE0fOBOFTZjBNQhZlbaRaX6JyY9i058rchcp7d3KEBTwJUda/aW5i69KkWX6x4Tm
         kQqlhoPNT3w3iYKzTELfs9SIcBP5IU48ieX70CGQwxANzmRw20XOjCuyKHohr6apHVFG
         BdTA==
X-Gm-Message-State: AOAM531WEoPvAKgD0v4YWeHVfJ84wdkCCRvKfMfZaBnrnwoQHA0A6FNO
	NjcbTFFiFsIT9hGn5MkNx5ORGhH1NkU/Zt1zQhDO22tHamDqLw==
X-Google-Smtp-Source: ABdhPJxH3p99VT1ydlx+P+GPipS8ZmJR5PFzJ4DukA5z4XQE/rUWp4Lb9xYa9FEOvjX5lAWztZb5VH0v4fsFUjA1MpE=
X-Received: by 2002:a19:c144:: with SMTP id r65mr7416825lff.640.1612697430591;
 Sun, 07 Feb 2021 03:30:30 -0800 (PST)
MIME-Version: 1.0
From: Szabolcs Beki <szabolcs.beki@gmail.com>
Date: Sun, 7 Feb 2021 12:30:19 +0100
Message-ID: <CAEJYuxGBZfg_erJDPG9d0waU2jLqkG2tTrtHg-gXCoaaKF1M4Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000007b0d9205babd6184"
Subject: [oss-security] [CVE-2020-13924] Apache Ambari Arbitrary File Download Vulnerability

--0000000000007b0d9205babd6184
Content-Type: text/plain; charset="UTF-8"

[CVEID]:CVE-2020-13924
[PRODUCT]:Apache Ambari
[VERSION]:All 2.6.x and before
[PROBLEMTYPE]:Information Disclosure
[REFERENCES]:
https://mail-archives.apache.org/mod_mbox/ambari-user/202102.mbox/%3CCAEJYuxEQZ_aPwJdAaSxPu-Dva%3Dhc7zZUx3-pzBORbd23g%2BGH1A%40mail.gmail.com%3E
[DESCRIPTION]:Malicious users can construct file names for directory
traversal and traverse to other directories to download files.

--0000000000007b0d9205babd6184--
