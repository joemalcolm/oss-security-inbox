X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["908" "Thursday" "29" "August" "2019" "17:59:34" "+0200" "Ailin Nemui" "ailin.nemui@gmail.com" nil "55" nil nil nil nil "8" nil nil (number mark "U       ailin.nemui@ Aug 29   55/908   " thread-indent "\"[oss-security] Irssi 1.2.2:CVE-2019-15717\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Irssi 1.2.2:CVE-2019-15717" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28444 invoked by uid 550); 29 Aug 2019 16:01:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28086 invoked from network); 29 Aug 2019 15:59:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=s9gnY1Ji8TEqw07mSe7VgJK/wPN7Y5PJpW9vxy6gY5g=;
        b=uj4Tf+JJ4IlgXMzDh+UWCsUxShyfx/69ohZ1KJrnoYGbtS5QXgHP+Wa0UfsIYqYdCD
         ZXQIwZy9/2m+KY3t0Zr4lM4DfhZLPo5oKaeohfxBMECB6nvNs8vbKnjHS3oZMVvwTMg6
         cd/hGq3C+Cj+DfyNgkUgWHm+Fpgy0DRZaFlST82pTQQ/PQoq99VzqHxct5HHH1wl2F60
         Rvu1cL7I5sfspVBnJZM66aVD4rvyPmrZ/Ll9MKZPCnpwwvlS+fPYe3chiHefHshLL5r9
         SzUrhxAoDBWvgPoBEWQACN/VKDGymvnNcMc6D8v4eur4+2coUgokq8mLtfT+bxSlBK3J
         rDGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=s9gnY1Ji8TEqw07mSe7VgJK/wPN7Y5PJpW9vxy6gY5g=;
        b=UjdzM6n5sCAznfXg8FqzsuPMv73E4Q7cxqF16eBcW6gqhOOS+VTyK2DvmxJzvhz0eE
         Rkz/pcZtYJQfA9raXpC1KA4hsZjVm8jqR9Q3BWQK0L0fsHD3qN/VtIjrUa+3r9qg9lht
         J9aGK2EAWnV0gmh+abROGSVmdbi6+V5/Wi8lhIOdwpxliZcGZPn+NLatYLV+L1+FaiMp
         +Qmr24tOmGHr1eFu9n+kwNNl3zFb0t1sf2LU1brTn0JCdGJQV5tj/FcdbFS5ML2qGQWx
         CdiF+CaBttFE/CZWNxYArQXjYv0+jRNjsDofyMoLHyvZwSSLt0dr9sG+8h6EhgdPaOgU
         Q0Bw==
X-Gm-Message-State: APjAAAWymSPwpe8KOrSmc8bbDFngfG0gxrdgr41HPBfNn0bXY2234a9I
	YecR6d8IVJaZzJB5cElDFzxGoTLMvIA=
X-Google-Smtp-Source: APXvYqzDKRyqdJ5k38FJJctlUbgd6PaIUnaBfi2mkQJMgCvw7OtLRJ/5HU4HAX7NjVmAZrpdA0ddyQ==
X-Received: by 2002:adf:e5d1:: with SMTP id a17mr12665040wrn.118.1567094376647;
        Thu, 29 Aug 2019 08:59:36 -0700 (PDT)
Message-ID: <fccdd50d1a8afe0fa1b3d9d45a92aa245ad05121.camel@gmail.com>
From: Ailin Nemui <ailin.nemui@gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Date: Thu, 29 Aug 2019 17:59:34 +0200
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Irssi 1.2.2:CVE-2019-15717

IRSSI-SA-2019-08 Irssi Security Advisory [1]
============================================
CVE-2019-15717

Description
-----------

(a) Use after free when receiving duplicate CAP found by Joseph Bisch.
    (CWE-416)

    CVE-2019-15717 [2] was assigned to this issue.


Impact
------

May affect the stability of Irssi.


Affected versions
-----------------

(a) Irssi 1.2.0 and later


Fixed in
--------

Irssi 1.2.2


Recommended action
------------------

Upgrade to Irssi 1.2.2. We've published maintenance releases, without
any new features.

After installing the updated packages, one can issue the /upgrade
command to load the new binary. TLS connections will require /reconnect.


Mitigating facts
----------------

Most servers do not send duplicate CAP



References
----------

[1] https://irssi.org/security/irssi_sa_2019_08.txt
[2] http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15717


