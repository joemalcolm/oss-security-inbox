X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["574" "Tuesday" "26" "March" "2019" "22:41:29" "+0100" "=?UTF-8?B?SnVhbiBQYWJsbyBTYW50b3MgUm9kcsOtZ3Vleg==?=" "juanpablo.santos@gmail.com" nil "14" nil nil nil nil "3" nil nil (number mark "U       juanpablo.sa Mar 26   14/574   " thread-indent "\"[oss-security] [CVE-2019-0224] Apache JSPWiki Cross-site scripting vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-0224] Apache JSPWiki Cross-site scripting vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14248 invoked by uid 550); 26 Mar 2019 22:31:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7424 invoked from network); 26 Mar 2019 21:41:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=YbDMXDV/aJ93NIDZ4a3yb0SlQPr0YD0HhFD0IJ/LewY=;
        b=n4VKNM4TQd7sO/gxKXRQvroXOH8A9eWavGkCYHaOr609Nym4d2ki9DeAoQqq8JgtBy
         8adoCWZgbfw/aB0sB8RX5S/C/R9FdfB+bxsTSANdFfm7H0E59U0cpUTpZgOy+EmROYwi
         r6HWCw8HmQcWO9ZOVS0oXFumJ3ZqIRsfmFVGTryURcJsLFAA4Yv/O8GPo1BnoH0uGPdJ
         PACthXD/vNw7Bo+vJO4+ZYfi84FTyXt2Imm3baNl2QnxqmbKHlyIoc27kg1NsMEN+wWV
         geUjf9dYarEjx0bJgLhKF2aH9tg5nFZ7XiQS6hDlrDbj2AwaFOa8u2qtMYnbtyAq/jBc
         Czpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=YbDMXDV/aJ93NIDZ4a3yb0SlQPr0YD0HhFD0IJ/LewY=;
        b=XhXhxrlx+kgsiVslQaFmQK9XbSvk8FrjWcm0Dtg4CXY975kNOPCMrKRvmLRbDCwNK9
         g7107dW2WHKfuDuD8mRVczuPHg/Tj/gwMHfZWm/h8gymX+bsofv856O/c1XoYukjpcc5
         +fIFpeHdy0RLw73/ywVeBn++0MuTQ6wAXUgeYHCnxEwTbjlkuaWWR73BRBy6KuwpuFj1
         OuvIukb0Cgg7ZGqfDHu+KXs3DxmXgFHljfFsQGFC6g0COsKYH431himwzahhtzjs/HsC
         rGOGjUr+HtkkC/nhnOKw1EhYYFsEfHRNN/SlyGZIc8HXfjMWS3OHyoZPYk0YJyp7MivM
         AmWw==
X-Gm-Message-State: APjAAAUxnIz0G+XB0tyCZlb8tS/sPW2tbXebcxee7WAB6aecEZmb+jf6
	hTWItaH8Rvo2X+Bint2Zw2PQuuR+WeDe62VDSCYd10mc
X-Google-Smtp-Source: APXvYqy/RavZIYX5BFjeAqk1L3BGa/l9TKnt/jD7VfMtaE1wr8k8OOxm0GpfPwJrD0l+B7MfvPVArQ4qH/g1qyKSibI=
X-Received: by 2002:a6b:c807:: with SMTP id y7mr22710772iof.287.1553636498668;
 Tue, 26 Mar 2019 14:41:38 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo.santos@gmail.com>
Date: Tue, 26 Mar 2019 22:41:29 +0100
Message-ID: <CAMufup7EbK05JeNsHsCv-XJY-33bXLZO_3bLGQNvK3mT_QOJyg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000009d00c90585062f59"
Subject: [oss-security] [CVE-2019-0224] Apache JSPWiki Cross-site scripting vulnerability

--0000000000009d00c90585062f59
Content-Type: text/plain; charset="UTF-8"

[CVEID]:CVE-2019-0224
[PRODUCT]:Apache JSPWiki
[VERSION]:Apache JSPWiki 2.9.0 to 2.11.0.M2
[PROBLEMTYPE]:Cross-site scripting vulnerability
[REFERENCES]:https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2019-0224
[DESCRIPTION]: A carefully crafted URL could execute javascript on another
user's session. No information could be saved on the server or jspwiki
database, nor would an attacker be able to execute js on someone else's
browser; only on it's own browser.

--0000000000009d00c90585062f59--
