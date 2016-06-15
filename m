X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["487" "Wednesday" "15" "June" "2016" "10:28:02" "-0400" "Insu Yun" "wuninsu@gmail.com" "<CAGoFzNedN+OD6JymsdZxO7UrLqctV0dbzAu-HkMqZFsKAEcsOg@mail.gmail.com>" "20" "[oss-security] CVE Request: heap overflow in Python zipimport module" nil nil nil "6" "2016061514:28:02" "[oss-security] CVE Request: heap overflow in Python zipimport module" (number mark "U       wuninsu@gmai Jun 15   20/487   " thread-indent "\"[oss-security] CVE Request: heap overflow in Python zipimport module\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9366 invoked by uid 550); 15 Jun 2016 14:28:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9334 invoked from network); 15 Jun 2016 14:28:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=KSrm29St5ntYcnN0Yz72FUXCNcEp61CglMbfnomBQzQ=;
        b=U4l8PgNCwFKnffuBnILLzmlnYnPom7QQw3DFlA/4qS9sBuDtdfBjIWatlcoFtN9NVn
         tfL2KConWuokIPKBm0qIvegeoXG5Wn5ukMsO1wUVaHEgxmV4UwavmF9uEP4KoeEwp83s
         RySWsxR/AGRu/s5sYyRPEyswYxhsaRYwcnQE/ii/DPPHIuxvW6fmFCVIw5ByzpWPcNLI
         OrdWuMKdM77qSC2xhXalXwoRMH9ag09NDvMOfQaqmfxGQhl+WlWHnrQRh3/V3BKZhipJ
         5aFIRhDpRTC6CYsaOHveqUYxSJzFyYNx98T+6SvUcZJ1jAESmpehbhLGoTAWaY0CnqIo
         K2VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=KSrm29St5ntYcnN0Yz72FUXCNcEp61CglMbfnomBQzQ=;
        b=j5/7itV48Lz4NG8mlD9Rb12NDKwYY7MCXLv5BEo8QNrgi/5hbtVy175OFTTSaQppjI
         3c5bB01rZ3OKkgY3+hEqV1aX4MHCXMrsPsfFoc9UBf0Q4WXAd2W74hu6xZJmGhXzmhWk
         zwf9n5I6rbZe7+4UBeR/WHMaDrxF5eDTs2ZDvQK3Bm5PZkKl0OKZ9uINNWAcm1ws1aI5
         m7bHw2WqKvnvoMQwFAA8s/jjb9ta6T5JsALUNm9AKQ4kVotNJ6TC2y9ossk8dV4iyP/U
         O0iGvKmYB4kygKounnBI3GogPnPDcSP164ioTTmdDEhmjqmK8FwvV0Fix3dfJ/ZVGpwS
         Qhjg==
X-Gm-Message-State: ALyK8tIW/3ph6e3br4fpD75mqF2ZsvDPgj0+hgYNItLRuehBRNB/duJYm2pXRTAMaKlsrq02l5hVeThQsulZmQ==
X-Received: by 10.176.64.98 with SMTP id h89mr9632159uad.89.1466000882818;
 Wed, 15 Jun 2016 07:28:02 -0700 (PDT)
MIME-Version: 1.0
From: Insu Yun <wuninsu@gmail.com>
Date: Wed, 15 Jun 2016 10:28:02 -0400
Message-ID: <CAGoFzNedN+OD6JymsdZxO7UrLqctV0dbzAu-HkMqZFsKAEcsOg@mail.gmail.com>
To: oss-security@lists.openwall.com, Yeongjin Jang <Yeongjin.jang@gatech.edu>
Content-Type: multipart/alternative; boundary=94eb2c122f24dc64be053551ed50
Subject: [oss-security] CVE Request: heap overflow in Python zipimport module

--94eb2c122f24dc64be053551ed50
Content-Type: text/plain; charset=UTF-8

Hello.
In Python zipimport module,
if compress != 0, then bytes_size = data_size + 1
data_size is not sanitized, so if data_size = -1,
then it overflows and becomes 0.

In that case, python allocates small heap, but after that in freed, it
overflows heap.
Fix info https://bugs.python.org/issue26171
Please help assign a CVE to this vulnerability.
Thank you.

-- 
Regards
Insu Yun

--94eb2c122f24dc64be053551ed50--
