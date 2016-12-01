X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["334" "Thursday" "1" "December" "2016" "17:23:31" "+0100" "Andrey Konovalov" "andreyknvl@google.com" "<CAAeHK+yya7cNPsY97wiss_G9ZCS3sOVbrTSZwxjqXPg7FzyF1A@mail.gmail.com>" "14" "[oss-security] CVE Request: Linux: net: out-of-bounds due do a signedness issue when defragging ipv6" nil nil nil "12" "2016120116:23:31" "[oss-security] CVE Request: Linux: net: out-of-bounds due do a signedness issue when defragging ipv6" (number mark "U       andreyknvl@g Dec  1   14/334   " thread-indent "\"[oss-security] CVE Request: Linux: net: out-of-bounds due do a signedness issue when defragging ipv6\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22431 invoked by uid 550); 1 Dec 2016 16:25:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18209 invoked from network); 1 Dec 2016 16:23:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=a5yBtj6UywwsAEbcFHsTb8DymsbDO6kNBwayqEitpqU=;
        b=Bbknz/F8WeoMFZuoUbNbIML85quUjg2fq8LfAgzXnbKOrmbxvNEeKVMzrXWYlvXkHh
         5LSPCS8pjIGUPVAmncZXdR7h3ltmXKC0L8Nta74ZqHwyWg401RzEDfsyPPwn8TelIz42
         feJBAHPDh2BLY604SqrK3EL+T7m1io/xVRrpvlojMPFFzzkC3QiPW3OZgfoTKNm7UoWN
         o2gxqEjxmmRSxhCll/ZUlh6W2PLVykb4tyu2hosW8vIFnCmfokLpdTPHkCuG0wTHh25r
         22wn+AyFWnT5eS7RPlzmUrENIeUwiBux4F6p6T27PSej4RKjQyU9Hltf4s63fWKH3etN
         xyeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=a5yBtj6UywwsAEbcFHsTb8DymsbDO6kNBwayqEitpqU=;
        b=ajDCOx7Y6SPLsIExepwHdd9M4Dt5GGKbHRZnrclyDVeKC3k5gglZ/jzYVD1iAMzF3w
         g4wF2eTNJ9pobfJwFjicB/sBpy2b6hi/d9FyKL6TsCPLHobklDuW/2Sf3DN40gwvgViY
         ZYf1KoKrJg/2f0/xztigXkVcdq2uWNAwlt1AAaHBTsZ7FIfNUoXGqRV0ph/RFowKK78J
         B51RdLWmSwy3QbDZIpo9DZyCaEx/oPcCIpF7WyWbneVjFaB9R+SUtm6Gi6rVERu22A6X
         VwwXjAaF+XO3Vp4O875nHpGBlCju8pXKanOtqUNBMA6d2S/VVJui0ryJD2avud/89S0A
         nggQ==
X-Gm-Message-State: AKaTC03hGw8wP0oX0dP6T54Qvozo+PzCi6QccOdqI6jWNMsEHcznVp5QqYLaO/EPWe+Hj+42drXd5evfyPa4Cvee
X-Received: by 10.25.24.165 with SMTP id 37mr16553084lfy.168.1480609411982;
 Thu, 01 Dec 2016 08:23:31 -0800 (PST)
MIME-Version: 1.0
From: Andrey Konovalov <andreyknvl@google.com>
Date: Thu, 1 Dec 2016 17:23:31 +0100
Message-ID: <CAAeHK+yya7cNPsY97wiss_G9ZCS3sOVbrTSZwxjqXPg7FzyF1A@mail.gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com, Dmitry Vyukov <dvyukov@google.com>, 
	Kostya Serebryany <kcc@google.com>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE Request: Linux: net: out-of-bounds due do a signedness issue when
 defragging ipv6

Hi,

There is a bug in the Linux kernel ipv6 implementation, which leads to
an out-of-bounds write on ipv6 packet defragmentation.

A fix was sent upstream:
https://www.spinics.net/lists/netdev/msg407525.html

More details here:
https://groups.google.com/forum/#!topic/syzkaller/GFbGpX7nTEo

Could you assign a CVE for this?

Thanks!
