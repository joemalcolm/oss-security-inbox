X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1228" "Thursday" "11" "August" "2016" "12:49:25" "+0200" "F. Alonso" "rs@revskills.cz" "<CABuU+O1eQnw21SVtGAf6YQyqEPpm=f4ntDLT0O9k37w9-fZ-MQ@mail.gmail.com>" "44" "[oss-security] CVE Requests Facebook HHVM" "^Cc:" nil nil "8" "2016081110:49:25" "[oss-security] CVE Requests Facebook HHVM" (number mark "        rs@revskills Aug 11   44/1228  " thread-indent "\"[oss-security] CVE Requests Facebook HHVM\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22503 invoked by uid 550); 11 Aug 2016 10:49:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22482 invoked from network); 11 Aug 2016 10:49:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=revskills-cz.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=0aXk4xWveLjwmtFrJEIgpurBkWNP56G1ojcbKtfTB8I=;
        b=PhYwPEi/H1bZY6eG+jkY1bv8d72KhPwvnKv8aCfDpU9qq7p6Fj3Y2b20J98GilU7iM
         clRgKk0EwZksw/bEV9E4vYmvs1EVSd62fc2IUTlX0SUlqv1QIJ3h9Mr0WtDY9s7BmPCL
         W44rCtQlrlh3iBofWTpZ5p18HcwbfKqX72Fyv5cBQqObq4hKLCCeP0lgqDkbUk0/Tttv
         XpfbvRLnqXwC+aZnquf6bq0LznGndmbQBZ64xNCjjllb9u4ONRq6EDAP+sYS4BznGjmP
         aBMAJiq7QFj5ib2naQvQqRZP8RBvz4iVXb4uNFlCuNLILwfbTg6Vz1GWYM/vqr77yJnd
         RdhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=0aXk4xWveLjwmtFrJEIgpurBkWNP56G1ojcbKtfTB8I=;
        b=bQkXxmWhX0g3wQX4N/GtwHXp9j0zrczzLuKApLLDN/QsIvTAIayQ4qOKn6KexBuLSD
         j99BUJQ67+olAvEraXerE3egsdFcvvLmNEizQPIFokhWVMcxg0V1H5pXxZbmsCTtEpGn
         OKu8ZgQOMyITbE6Zk+pSFoRZ6F+reATDcIl2FAEZlsny3Mt8FM+80h41p5SuA7tL4KkD
         KciLy46XZmCWU9wxsDeCIWRRQn8puFxSiwryA0HEl3lgFxf2/oPfjLfE1Yii98cViBbD
         nXJG7qWoZrOkXsEcuVEVztYK6e4OK9hqwp0Yj1r2POgNB9vSoDstWjPIJMQPAtQfNx8C
         xpJw==
X-Gm-Message-State: AEkoouvqP8isJNW1JYmc7KiFnzM+PKt2LkQOjsu6GKwqeri11wLjS2VDZtmJddB4o0Lwmidm8hVT0D3itpoeoQ==
X-Received: by 10.55.79.4 with SMTP id d4mr10320119qkb.95.1470912565846; Thu,
 11 Aug 2016 03:49:25 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CABuU+O1eQnw21SVtGAf6YQyqEPpm=f4ntDLT0O9k37w9-fZ-MQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114a97d2fbb8cf0539c98470
Cc: CVE ID Requests <cve-assign@mitre.org>
Date: Thu, 11 Aug 2016 12:49:25 +0200
From: "F. Alonso" <rs@revskills.cz>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Requests Facebook HHVM
To: oss-security@lists.openwall.com

--001a114a97d2fbb8cf0539c98470
Content-Type: text/plain; charset=UTF-8

Hi,

The following commits patched several security flaws that I recently
reported to Facebook's complete toolchain for the PHP language, HHVM [1]
version 3.14.2 and 3.14.3.

Could you assing CVEs for those issues?


-Fix out of bounds write access in
mb_detect_encoding, mb_send_mail, mb_detect_order.
https://github.com/facebook/hhvm/commit/365abe807cab2d60dc9ec307292a06181f77a9c2

-Fix buffer overrun due to integer overflow in bcmath
https://github.com/facebook/hhvm/commit/c00fc9d3003eb06226b58b6a48555f1456ee2475

-Fix integer overflow in StringUtil::implode
https://github.com/facebook/hhvm/commit/2c9a8fcc73a151608634d3e712973d192027c271

-Fix self recursion in compact
https://github.com/facebook/hhvm/commit/e264f04ae825a5d97758130cf8eec99862517e7e

-Fix recursion checks in array_*_recursive
https://github.com/facebook/hhvm/commit/05e706d98f748f609b19d8697e490eaab5007d69

-Fix infinite recursion in wddx
https://github.com/facebook/hhvm/commit/1888810e77b446a79a7674784d5f139fcfa605e2

[1] https://github.com/facebook/hhvm


Thank you,

-- 

Francisco Alonso.
http://twitter.com/revskills
PGP: 0xE2E64DCA
--

--001a114a97d2fbb8cf0539c98470--
