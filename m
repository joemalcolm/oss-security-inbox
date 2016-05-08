X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["546" "Sunday" "8" "May" "2016" "18:16:50" "-0400" "Kangjie Lu" "kangjielu@gmail.com" "<CABEk9YyTYLpTE0Q5wtvqdHirJd6-2sdJ6Y2YE_kty+wi3DB4jw@mail.gmail.com>" "23" "[oss-security] CVE Request: kernel information leak vulnerability in Linux sound module" "^Date:" nil nil "5" "2016050822:16:50" "[oss-security] CVE Request: kernel information leak vulnerability in Linux sound module" (number mark "U       kangjielu@gm May  8   23/546   " thread-indent "\"[oss-security] CVE Request: kernel information leak vulnerability in Linux sound module\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3669 invoked by uid 550); 8 May 2016 22:17:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3651 invoked from network); 8 May 2016 22:17:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=IhNxX4oaKEmJaUjfEa6cQdRAkvrlG+Rb4mNmi35O/jQ=;
        b=lZ5eZ9JddlFYfnHuN1oVWsCMzEpceOylLjFo9T9/ASxqXuuVB57SiPRxPCrMe1jYSI
         N1ZK2k6FXBjP/zrEEVTEqAuZSnsCbKIKzcHc/4elHUwaVbjajJztYRmWj/Nxoid7y7uU
         AaASqobh+meXfVVlkh1tV1MwZquXazXLNTjE8lCgu4Oka0OduiegSOC52NoA2R+HVj0i
         PjmSpSMH5Iw4FyeSEfAe2hO1iQ1EUHHGcbyQJJHwL0asu3v9cZLFjRWy1jeZ689asQqC
         unrMj8u+W2sRse3JGfle98eNW6SgtuB9cWMVtmpBBV7euhaIONGulbtExMbKGeKjRsmP
         cGTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=IhNxX4oaKEmJaUjfEa6cQdRAkvrlG+Rb4mNmi35O/jQ=;
        b=BvE4j07mQi6D6F/jB4JuBnI6qbDeAq3an4vf6I2qoC4l3jYkqt2c4WVNvZM/nGxQbH
         PG+rauMgzvBI30FVhfVh6rnYZDSatm14pglpc/4+WCgVvPOPC1VXD7CQE6CT8BNghbLd
         xwlZ57CiYcKEAtbLnK5uyaCQcu4xPpA2IVcal88dIGsjYppnKa21cEk9sA+YjMTBB063
         VDHkH2xlBUjJSkQpUZNLlEEBCJIwxFwb9+CErTb+0t/fnlBVrhmpl0R23H4cAISKVgwI
         tUWdQDRqaF+3xp0ZzdJEAcdc5CVjyjlZa4Ye+tUk1fv26mvwRGLyBEEerqrn0DANt86/
         pF5Q==
X-Gm-Message-State: AOPr4FUewB4yUzZ5I9RChcy1gDATT4/GVS3+KWaPWorMNkFDKxt5KjlayCtK32T0QdnL321CJHzf/QXfJxt7PA==
MIME-Version: 1.0
X-Received: by 10.202.2.79 with SMTP id 76mr14529852oic.108.1462745810785;
 Sun, 08 May 2016 15:16:50 -0700 (PDT)
Message-ID: <CABEk9YyTYLpTE0Q5wtvqdHirJd6-2sdJ6Y2YE_kty+wi3DB4jw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1137bac872df5105325c0c66
Date: Sun, 8 May 2016 18:16:50 -0400
From: Kangjie Lu <kangjielu@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: kernel information leak vulnerability in Linux sound module
To: oss-security@lists.openwall.com, Chengyu Song <csong84@gatech.edu>, 
	Insu Yun <insu@gatech.edu>, Taesoo Kim <taesoo@gatech.edu>

--001a1137bac872df5105325c0c66
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

In file sound/core/timer.c of the latest mainline Linux kernel, the stack
object =E2=80=9Ctread=E2=80=9D has a total size of 32 bytes. It contains a =
8-bytes padding,
which is not initialized but sent to user via copy_to_user, resulting a
kernel leak.

Fix info:
http://comments.gmane.org/gmane.linux.kernel/2214250


Please help assign a CVE to this vulnerability.


Thanks,
Kangjie Lu

--001a1137bac872df5105325c0c66--
