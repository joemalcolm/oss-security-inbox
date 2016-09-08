X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["743" "Thursday" "8" "September" "2016" "11:17:34" "+0800" "0xr0ot" "0xr0ot.sec@gmail.com" "<CAG0ev14nSoznVzbEEX82ECD4V1uoP2G3CD2fE3=9N9feQ=saiQ@mail.gmail.com>" "25" "[oss-security] CVE request - Samsumg Mobile Phone SVE-2016-6248: SystemUI Security issue" nil nil nil "9" "2016090803:17:34" "[oss-security] CVE request - Samsumg Mobile Phone SVE-2016-6248: SystemUI Security issue" (number mark "U       0xr0ot.sec@g Sep  8   25/743   " thread-indent "\"[oss-security] CVE request - Samsumg Mobile Phone SVE-2016-6248: SystemUI Security issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13785 invoked by uid 550); 8 Sep 2016 12:40:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31799 invoked from network); 8 Sep 2016 03:17:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=He46fiEvWXQGTewPaWVVnPx9pkF/PHTz1lw2xRaj3k0=;
        b=DQTdWqXk0qaNf/8bLNE76cpv6+BuU+zdzE44aL5b7fXu1SZ/Mg3pPzlk7VocK2AzaS
         ZM27/V6UUfEBnralb+ZKg/Zyy4emC2L8Af/tuPT/NR9XSvBjtSI5QnDNTuYjo55Cb83d
         H/+P4EaZ4qp+L0wRAAGU+HVjqgHR3py0vtXWtPw+Wounp4q+SX2QzRcP08dBkENDMclG
         oa40u3zPZk77QJMYalTOOSGItrxWboM5iTob6uIyUdD5I9grWrgyF1+z8/70AbkzOw0e
         YQcGh6YtjvTKBF27f9LjXpKCLlc4I9PymrsJvP0q9m5UEk4S2Unzh1PJCEAd4yO4LSig
         soWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=He46fiEvWXQGTewPaWVVnPx9pkF/PHTz1lw2xRaj3k0=;
        b=eesvkMBTSMpdOO7scdMoysvO/peTLNENVDx5Lzv4wRa/sLwgP4JHOIuzWN7OR84jki
         6KkjqOy/i12dop5Ju1JFVDtgNE/mPHDiQkSU7jPaq7ocsCpST2PI0rwKw01rVKCofSns
         wn3ewM+4pFZpMz7LhRJeMtaEerASLqSPYBUq984Utw5g6j9ZpejcHumMCP/7VnDRLREr
         BMW3CfEGEaroZtD6jo1CeBu6QUoeJeTFe22w+8vCc4IyN+abbzNwUa68+sVKAOr0Bzjc
         LOBGMxVQZT42aAXN+h3dq8avQHS2JREjVflWFzv69SCH3jdsy9DyDWiemE8ciY2XOj7c
         B2eg==
X-Gm-Message-State: AE9vXwN6zzFNradMurgZORnOP3ZWXYm3kPOCTOClLM1Z5vqW1pmfCw0WV73KoRHdWY/Tfw3HqitUmlkf1QMRYQ==
X-Received: by 10.28.51.146 with SMTP id z140mr5206808wmz.9.1473304655473;
 Wed, 07 Sep 2016 20:17:35 -0700 (PDT)
MIME-Version: 1.0
From: 0xr0ot <0xr0ot.sec@gmail.com>
Date: Thu, 8 Sep 2016 11:17:34 +0800
Message-ID: <CAG0ev14nSoznVzbEEX82ECD4V1uoP2G3CD2fE3=9N9feQ=saiQ@mail.gmail.com>
To: cve-assign@mitre.org, oss-security@lists.openwall.com, 
	fulldisclosure@seclists.org
Content-Type: multipart/alternative; boundary=001a1147e0c4a2b3f5053bf67880
Subject: [oss-security] CVE request - Samsumg Mobile Phone SVE-2016-6248: SystemUI Security issue

--001a1147e0c4a2b3f5053bf67880
Content-Type: text/plain; charset=UTF-8

Hi,

Description of the potential vulnerability:
SVE-2016-6248: SystemUI Security issue
Severity: Medium
Affected versions: L(5.0/5.1), M(6.0) devices with Exynos7420 chipset
Reported on: June 7, 2016
Disclosure status: Privately disclosed.
The vulnerability exists due to a null pointer dereference on fimg2d driver.
The patch verifies if the object is null before dereferencing it.

Fix:
http://security.samsungmobile.com/smrupdate.html#SMR-SEP-2016
SVE-2016-6248: SystemUI Security issue

I report this to samsung, samsung reply to us if I want to get CVE request
it by ourself.

Best regards,
Zhaozhanpeng(0xr0ot) of Cheetah Mobile.

--001a1147e0c4a2b3f5053bf67880--
