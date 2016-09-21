X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["435" "Wednesday" "21" "September" "2016" "19:01:23" "+0800" "Puzzor" "puzzorsj@gmail.com" "<6c6e2d2c-2fc9-9538-88e8-ac2f309211c3@gmail.com>" "18" "[oss-security] CVE request - mujs Heap-Buffer-Overflow write and OOB Read" nil nil nil "9" "2016092111:01:23" "[oss-security] CVE request - mujs Heap-Buffer-Overflow write and OOB Read" (number mark "U       puzzorsj@gma Sep 21   18/435   " thread-indent "\"[oss-security] CVE request - mujs Heap-Buffer-Overflow write and OOB Read\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24273 invoked by uid 550); 21 Sep 2016 12:31:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28645 invoked from network); 21 Sep 2016 11:02:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=vpr4cPfTRi5oFGFdjTbeCOW4tPl75dNW0muCdPvnXqU=;
        b=Y2c+hu0n76CvSe/aTcRNK8VwCsFYtzlbXpNU5TI65KNv0YTRF9ejfyfh9icExbsmiL
         pw/xSsoxmqkITAqjd+CWuoYlU3H5KMXpOopvdJquXtALAZyIvsHAr3Z7gSwc/Vn7d9xl
         0sS7yZmsOBOvEG8RMc1XwFeyd3PE4bxrwoFRhrElKg3xtWiQB0Re8YeUNKC6qbZG/4gr
         e05vtyHWjPuAGmGqEvxXYpcCvECI9SmfUqU2ARxoHI6RHrLvkaL+f5Fz00k016gaf5k9
         4M4AHI/AVUIUy+cX1+cxfWTsEdbzgVCTil/pU8jO/aAiPfynOn/+It9vdqARWzV8Ui8l
         WpQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=vpr4cPfTRi5oFGFdjTbeCOW4tPl75dNW0muCdPvnXqU=;
        b=igR4NSjzs27CCvaQTGnzXTmMJlb2KVnu5+PdvaH5iPd2l6G2ih1mMd8qvfXvghnZPW
         wuTaViviC9xCYFvWeoKu6Q8YCon3qKVW/fwMVPljx+MaWljBwz5J/Vnk0e4q3yu/syGs
         KmGcY91uvxDIR1y2X6kCiZLLqfwXRUEfV2E5n+rKXNV8v2hcFMc0mZAsbSNy/ENgs0BF
         F8kIuVd9Ca/yRGq2QEh/iP3r7VI28XP/w5WiUxnwnzPEN0N2AYBZZ7g1kntmCYJfvBJV
         BRDLIU9N2O2AGK6lsNTI0wm1zYHPc6XUtYOt7LgQKxy+VXgadt+oVZUpWOMpwJMT9MLc
         AMoA==
X-Gm-Message-State: AE9vXwNTjL1bE1UMRGuDqg7QJb+Tmj6d+RGwNe/Sp/CRsQh6lIGA3a+zD15tVtuycMu7ow==
X-Received: by 10.66.148.68 with SMTP id tq4mr49445657pab.160.1474455721545;
        Wed, 21 Sep 2016 04:02:01 -0700 (PDT)
To: oss-security@lists.openwall.com
From: Puzzor <puzzorsj@gmail.com>
Message-ID: <6c6e2d2c-2fc9-9538-88e8-ac2f309211c3@gmail.com>
Date: Wed, 21 Sep 2016 19:01:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE request - mujs Heap-Buffer-Overflow write and OOB Read

Hello,

Two vulnerabilities were found in mujs latest version, and they have got
fixed.

1. mujs str Out-of-Bound read 1 byte in function chartorune.
http://bugs.ghostscript.com/show_bug.cgi?id=697136


2. mujs "char *s" Heap overflow in Fp_toString at jsfunction.c:72
http://bugs.ghostscript.com/show_bug.cgi?id=697137


Please assign CVE-IDs for them.
The vulnerabilities were found by Shi Ji(@Puzzor)

Best regards,
Shi Ji(@Puzzor)
