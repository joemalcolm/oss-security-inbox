X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["321" "Wednesday" "12" "October" "2016" "14:59:08" "+0800" "freener" "freener.gdx@gmail.com" "<CABNVnE1M298EeNrfBsHWfBxSMBfdSTu1XZ1swRpRVWNKkCGtXw@mail.gmail.com>" "15" "[oss-security] CVE Request -- Broadcom Wifi Driver Brcmfmac brcmf_cfg80211_start_ap Buffer Overflow" nil nil nil "10" "2016101206:59:08" "[oss-security] CVE Request -- Broadcom Wifi Driver Brcmfmac brcmf_cfg80211_start_ap Buffer Overflow" (number mark "U       freener.gdx@ Oct 12   15/321   " thread-indent "\"[oss-security] CVE Request -- Broadcom Wifi Driver Brcmfmac brcmf_cfg80211_start_ap Buffer Overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25782 invoked by uid 550); 12 Oct 2016 07:08:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21590 invoked from network); 12 Oct 2016 06:59:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=So6CAoZsAdQp455vWzyvxWIWkJc/kN1Yq7UuVY+U1fc=;
        b=g7YDiiHoTEt0AThUFf5V21BaSho2XLajPuj3SRgsW6isSCPSanz+fbTXS7a0HYzR4N
         cm3DfstiDu1MnVibfDFDY/Ia3Pk757ywya0DsfOiNZzWj2eH8Hdh97+0bjLozA8gEw19
         GVEigcow/6hc0sgLZvy2q0EkgycwY8FU9H7R2/F6T3iTrXwY+iv1PwqJ/+frN+4JEAud
         B2kKewUHoN6pP631qmasr92voQF27a5TL0mstns9XlXOs1nkjtjE57TIdQvSuKuRfUlb
         WSfrPxwnXtAxJ1rirlHnv594tNp5WL00w2Qgn39NG2Hg1URyYxXRnm/sz7ky3aN3QHxP
         kXyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=So6CAoZsAdQp455vWzyvxWIWkJc/kN1Yq7UuVY+U1fc=;
        b=WTcAe6D1KBGfsnXH+iNV4QapaRtnKRL5Df/IocRucnSD2XlCmcAfqYJ3keXudqIi91
         KW0qqTg6Lxhd0OdAI9Fn5cDiHG2zBDt/jZvx2AYSIaJ3r/NkN0KGqjb72KTSpAxO+v8T
         o4KC3T/nmfRdIk/hKBPkQwy/wqQVoQDKkG5N6x3UR3mECrSOZllaOgQKs0H/TS0g0maP
         eWRHkBHBqmrIqU4mEAi+JoMXlDbEe51W8dRkc/OqeAjACJwdj0uaMzyBcNIKuvf2FB8w
         BDUzSCcDYfUYWtEro/zb0fqD1ASPztHMZRPsbL9148cgtEWPML8leOCgs8TSAlV8e/ge
         /wNQ==
X-Gm-Message-State: AA6/9RnkTC/3LXSr1x86rggZef2Ep6M0rrKlYhAmThhb2Ra4EKCmlQZPrCBMTmx3WxHWPGlheapsJ5hnzhF/mQ==
X-Received: by 10.159.49.26 with SMTP id m26mr499246uab.63.1476255548879; Tue,
 11 Oct 2016 23:59:08 -0700 (PDT)
MIME-Version: 1.0
From: freener <freener.gdx@gmail.com>
Date: Wed, 12 Oct 2016 14:59:08 +0800
Message-ID: <CABNVnE1M298EeNrfBsHWfBxSMBfdSTu1XZ1swRpRVWNKkCGtXw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=f403045dcd2696ba4b053ea58738
Subject: [oss-security] CVE Request -- Broadcom Wifi Driver Brcmfmac brcmf_cfg80211_start_ap
 Buffer Overflow

--f403045dcd2696ba4b053ea58738
Content-Type: text/plain; charset=UTF-8

hi,

    This is a buffer overflow vulnerability in wifi driver brcmfmac.

    The vulnerability has been patched in in Linux kernel 4.7.7 and 4.8.1.

     https://patchwork.kernel.org/patch/9313305/


     thanks.

--f403045dcd2696ba4b053ea58738--
