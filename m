X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["911" "Thursday" "19" "January" "2017" "14:38:31" "+0800" "Idler" "idler1984@gmail.com" "<CACCOJE3K5aEk_frgRr7_pt3T635=9OgnVagn+jOj-v1YetE74A@mail.gmail.com>" "30" "[oss-security] CVE Request - Samsung Exynos GPU driver OOB read" nil nil nil "1" "2017011906:38:31" "[oss-security] CVE Request - Samsung Exynos GPU driver OOB read" (number mark "U       idler1984@gm Jan 19   30/911   " thread-indent "\"[oss-security] CVE Request - Samsung Exynos GPU driver OOB read\"\n") "<CACCOJE3M1+PbtZgpvLXQjxMkKFirwu0=506OdZZuBUrTK5VqpA@mail.gmail.com>" ("<CACCOJE3M1+PbtZgpvLXQjxMkKFirwu0=506OdZZuBUrTK5VqpA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17861 invoked by uid 550); 19 Jan 2017 14:09:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17630 invoked from network); 19 Jan 2017 06:38:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=QwXsWyKDYWY3M5J+m83wQKMzywS0txUR28wS6G2+cpc=;
        b=D/nIJVseLKxwG0NKxS+7oueQ2+O0yAoa1YZet6kEUvCuECl1z767WlPf9RRMLjEC9m
         +7DPXAKnCTBS27LJv4jpSwfCIyGRjto5/MTfSVwNw0OFxWozG7Oh0BCUBhZYQUR9K1sh
         8R13rKPH0ZvW/nS/j7vCel/+gCSYXNFR1sASdRi80Wl3TvpAs2fJLVnH7BQG3OEVohxo
         ow02V/xOpG5xW39C5WmwJdvKwR63XNvBpXWLwiwCObxV1W2GqanGRdRmqjjU8TIWHcZv
         7jj+0hv8/VfvTxvESfN7qI8bZmFv75KEMb/HdZc7B1N1R/rYfl0h0ShVvIkyL7X0IxYu
         jcWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=QwXsWyKDYWY3M5J+m83wQKMzywS0txUR28wS6G2+cpc=;
        b=Q8qSVsIsZMWnZ2aUs4LI+MCZMeLIhlVsTc0MwG/UHaBNQ5JTk84jwxqn/qTDrE1Z2Z
         y+6t3X4gqBdrNF8ksbCyhdyRfzZH5OsZ3qzeWJ7v/wQhVF78O4HgmfxStbVyiWvYfjel
         2b8XKj4vJHPGsdf9icc0+Ix0jtd5mGje9JNbv2KWcuHglYbnNeOWzXLbhVaWO0Q1y0MP
         TQDklCSqm/k93pQPWFEH0WjwFeQfStvY3FRyIKeqkyXMT9DcBregbapZhHwo5g9h1GHW
         sp3IggyubE/fZ2qNG4Qzdb2Ae97Yy4jnq3mHt78W8HTSAVdVlWW/OTJp2EP6Je+whOek
         duUQ==
X-Gm-Message-State: AIkVDXLfqQ4oETrQXWVTFzMz+mrSdlmpc58posCDgM+DwxMhU2MyLtCz3W8vboD/Zfw7vaLaa0CKV6oLfpJvNA==
X-Received: by 10.55.123.129 with SMTP id w123mr6469360qkc.20.1484807911294;
 Wed, 18 Jan 2017 22:38:31 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CACCOJE3M1+PbtZgpvLXQjxMkKFirwu0=506OdZZuBUrTK5VqpA@mail.gmail.com>
References: <CACCOJE3M1+PbtZgpvLXQjxMkKFirwu0=506OdZZuBUrTK5VqpA@mail.gmail.com>
From: Idler <idler1984@gmail.com>
Date: Thu, 19 Jan 2017 14:38:31 +0800
Message-ID: <CACCOJE3K5aEk_frgRr7_pt3T635=9OgnVagn+jOj-v1YetE74A@mail.gmail.com>
To: oss-security@lists.openwall.com, Anarcheuz Fritz <anarcheuz@gmail.com>, 
	cve-assign@mitre.org
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE Request - Samsung Exynos GPU driver OOB read

Hello,

I'd like to request CVE for the following security issue:

Security bulletin: http://security.samsungmobile.com/smrupdate.html#SMR-JAN-2017

SVE-2016-6362: out of bound read in gpu driver

Severity: Low
Affected versions: M(6.0), N(7.0) devices with Exynos AP chipsets
Reported on: May 31, 2016
Disclosure status: Privately disclosed.
Vulnerability in gpu driver does not properly check the boundary of
buffers leading to a possible memory corruption.
The applied patch avoids an illegal access to memory by checking the boundary.

Source code:
Source code of the affected GPU drivers (as part of the Linux kernel
source) can be downloaded from Samsung Opensource Resource center:
http://opensource.samsung.com/

The particular model of phone we used to reproduce this issue is:
http://opensource.samsung.com/reception/receptionSub.do?method=sub&sub=F&searchValue=SM-G9200

License:
GPL


Thanks.
James
