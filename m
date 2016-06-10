X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["506" "Friday" "10" "June" "2016" "17:02:58" "-0400" "Insu Yun" "wuninsu@gmail.com" "<CAGoFzNdHoz9cBOoHsN28m6oT+ig=Dt1LRtkYw_+A2-4RpMqe+Q@mail.gmail.com>" "23" "[oss-security] CVE-Request: heap overflow in Python" "^Date:" nil nil "6" "2016061021:02:58" "[oss-security] CVE-Request: heap overflow in Python" (number mark "U       wuninsu@gmai Jun 10   23/506   " thread-indent "\"[oss-security] CVE-Request: heap overflow in Python\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5289 invoked by uid 550); 11 Jun 2016 00:40:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20261 invoked from network); 10 Jun 2016 21:03:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=RlCZFHgb6mQiUZFWHSae5Nkye0RTxtqcntFCHYOvf+M=;
        b=v7zrF112m/sBfj7UPm/kIRX9LzrsHWQdOkfaXnNd/ZNJ7QOtiWYw8boELdDK6qHnbt
         I7r0YafmSehEe9H1kVXDxEuB3Z+lQoZ3lsePdyxnToDgKfqjVdhCoBcskZm6Wad+NSFn
         ORcINAD//bOfMvXWtglsHbwKFAAVxdN/JAZ0qrSyYOShi39UFhpdqVbh82ruZUj6hAYA
         OWnBWA2MJ4IsxLgv8k8ePXcgsNggToE1A9KcTkjfzxhIgf1DlUiBDePKe6zae3P69d7j
         W/ReaUWlPAoFOFMLqOEPSkQ0S0ck78zRaBHTpPOB4gwyct7VlxLQLqJGWG0YSmznilHf
         il1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=RlCZFHgb6mQiUZFWHSae5Nkye0RTxtqcntFCHYOvf+M=;
        b=YgtGp34T2k4Er1gOe1eNP+n/MUTC1dGWWQgyU7kQPYGQT6ryCrPO7jEQm8WDFs5lpM
         8FWng0cJ8BPCqAwSRaE3DxlSYLv9XPWjuDZdKss+C9DuT/NlAVlDzv+oBnB3Hy+EIgpk
         mhlWAUb7JRbuYYhDfpLoBhR0PtfQPs10a3XkSmSAsj0LTwElWiaJdFzGTIAv/Ns/Eiuh
         XiviVAJwDD5h+q2I9DuEOII0ecsdAMkMcTQbkzoBzoZIWiIwqtpVn9aBQDyNYw6LDECv
         hvRYA/6lADIf+hVwCJC9gkgVffVOj1kp/Q2P7N/fXAVXCMX9Bb1Ui3u9+/G056kM0UFG
         9tAA==
X-Gm-Message-State: ALyK8tK9xv41NTWfjtrng59y7sx078fKG3I+Zt5Y1JquSlgBY50EQDtogfR9ownq/nn0W9tAyIgdRO1zDr3PFg==
X-Received: by 10.31.63.14 with SMTP id m14mr1390539vka.16.1465592578576; Fri,
 10 Jun 2016 14:02:58 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAGoFzNdHoz9cBOoHsN28m6oT+ig=Dt1LRtkYw_+A2-4RpMqe+Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114dd3400815e80534f2ddd4
Date: Fri, 10 Jun 2016 17:02:58 -0400
From: Insu Yun <wuninsu@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-Request: heap overflow in Python
To: oss-security@lists.openwall.com, Yeongjin Jang <Yeongjin.jang@gatech.edu>

--001a114dd3400815e80534f2ddd4
Content-Type: text/plain; charset=UTF-8

Hello.
In zipimport module,
if compress != 0, then bytes_size = data_size + 1
data_size is not sanitized, so if data_size = -1,
then it overflows and becomes 0.
In that case bytes_size becomes 1 and python allocates small heap,
but after that in fread, it overflows heap.

Fix info
https://bugs.python.org/issue26171

Please help assign a CVE to this vulnerability.

Thank you.

-- 
Regards
Insu Yun

--001a114dd3400815e80534f2ddd4--
