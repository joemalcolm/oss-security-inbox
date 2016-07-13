X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1853" "Wednesday" "13" "July" "2016" "11:25:58" "+1000" "David Black" "dblack@atlassian.com" "<CAAYo3BupQw4M1Ct5nO4UVC87TmQatCdcxbmZpaiyckMb8ws4sQ@mail.gmail.com>" "43" "[oss-security] CVE request for the Play Framework" nil nil nil "7" "2016071301:25:58" "[oss-security] CVE request for the Play Framework" (number mark "U       dblack@atlas Jul 13   43/1853  " thread-indent "\"[oss-security] CVE request for the Play Framework\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20188 invoked by uid 550); 13 Jul 2016 01:26:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20167 invoked from network); 13 Jul 2016 01:26:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atlassian-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=oJiguej6zqGSsKwx0VZGdYu3DGqddLi2LOm1peYxu70=;
        b=x+Euc1GlRBcyVaWNa3o26J03UiUv/PW/IKaKJvzZCQc1eR9wHOMMe/L3QagPpgNLqO
         5bVpkrF8HesDOf/ehYThmAW+TXKWxK0byee/Ie/mA1mVxAQ9jayzHRYCSUw2TcJuyDzK
         EZfEeF11THgN+QL7bDybMraXLVqWdNyDsFIusqfntQjx39nntDDesHSU12QzvyaqhSKV
         oLXKHlKjlWBpSVOIMiTTcgtWwTcWJ9CFiV1CvagyqaWBz7njYgoF95h+d0LILA5gIXaz
         afOLuYsvugEu9rmkuqR0sSZ6obGzb82EcQ4nkNrTUft7f8ABSDJx/oIaWpRGRsLVT+/y
         QPqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=oJiguej6zqGSsKwx0VZGdYu3DGqddLi2LOm1peYxu70=;
        b=FjUZ50WXf+UBXQhhkV5R1jpmygPypwvYSEtV7ANz30s2oUr2bv3+BeugM+vpg6lqb+
         uxfkz8hVsGw+H4htNHbeN5LAHXX3GPHFJAnEyrY5MQ+W1iUkdY8Yt11kLLDRZoy7RruS
         u7opNKlfM1WPlLYd6RIIrn/EHdKZNlzah+ntmSOt7Lkwqr6uvN17js3Lewldd/qLBK6t
         Da67HsmZ5cGTyfObTaC1Bp5MFfJZBkB/EJT8LHW37jXPSXWTyeb5xNSc0kTp52+TNhxV
         e2m3fLUc7yOXf3AG9RzvDDq/KnYuhg/vwTN/KJv12MNuNf/nvorH1nP1jG7PtCbvEjGU
         fgCQ==
X-Gm-Message-State: ALyK8tKFeuhVp+Qku2lD/H1YPx8sHBaHjtlcmS8EInsYKCK6dex1MO/ldBcDPgC+T2YUVu14jThDjNjKH3UNc4wH
X-Received: by 10.129.101.213 with SMTP id z204mr3908455ywb.153.1468373177639;
 Tue, 12 Jul 2016 18:26:17 -0700 (PDT)
MIME-Version: 1.0
From: David Black <dblack@atlassian.com>
Date: Wed, 13 Jul 2016 11:25:58 +1000
Message-ID: <CAAYo3BupQw4M1Ct5nO4UVC87TmQatCdcxbmZpaiyckMb8ws4sQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE request for the Play Framework

In version 2.5.0 of the Play Framework a CSRF bypass that depends upon
an implementation bug in chrome's beacon api[0][1] was fixed.

The issue was that the Play Framework's CSRF implementation could be
bypassed in chrome in certain situations using Beacon requests because
the framework assumed that it is only possible to send what is
considered a simple request cross-domain. In other words the framework
assumed that POST requests with a content-type of
application/x-www-form-urlencoded or text/plain or multipart/form-data
need to have CSRF checks applied and requests with any other
content-type need not be checked.

The Beacon (sendBeacon) https://w3c.github.io/beacon/ implementation
in chrome[0][1] currently allows requests to be sent cross-domain with
non-simple content-types. That is, it is possible to send a post
request with a content-type of "application/json" (or any arbitrary
content type of an attacker's choice) from an attacker's site (e.g.
https://attacker.com) to https://example.com in chrome through
executing the following javascript:

var payload = '{"key": "value"}';
navigator.sendBeacon('https://example.com', new Blob([payload], {type:
'application/json'}));


The fix can be found at
https://github.com/playframework/playframework/pull/5608 in commit
7e52bd5f37a4b7b8fd154551d31940a125d81054
(https://github.com/playframework/playframework/pull/5608/commits/7e52bd5f37a4b7b8fd154551d31940a125d81054).



Can a CVE be assigned for this issue?


[0] - https://bugs.chromium.org/p/chromium/issues/detail?id=490015#c8
[1] https://github.com/w3c/beacon/pull/23/ clarified when
implementations of the Beacon API need to first make a CORS preflight
request (when non-simple content-types are sent cross-domain using the
beacon api then a CORS preflight request needs to be sent first).

-- 
David Black / Security Engineer.
