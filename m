X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["473" "Tuesday" "22" "December" "2015" "23:29:54" "+1300" "Emmanuel Law" "emmanuel.law@gmail.com" "<CA+KTh2zX+FrBinNUikbOE5HBgzRpDbo9XxZ-iUBeOhbqaqUEEg@mail.gmail.com>" "18" "[oss-security] CVE Request: Use after free in PHP Collator::sortWithSortKeys function" nil nil nil "12" "2015122210:29:54" "[oss-security] CVE Request: Use after free in PHP Collator::sortWithSortKeys function" (number mark "U       emmanuel.law Dec 22   18/473   " thread-indent "\"[oss-security] CVE Request: Use after free in PHP Collator::sortWithSortKeys function\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9507 invoked by uid 550); 22 Dec 2015 10:30:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9489 invoked from network); 22 Dec 2015 10:30:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=Rzt0ZsTuTXGd/NaDnbNKe0NKovqWX6lJocyMK1QRaq4=;
        b=pjd6heew+4shmMgKtRkEyMytvQQaKJis/isu44Cv4RHS8DDJjQEOU4kueESowWWM3f
         5Ka/gTjBcUReWrvWpcRsb3YPy9Rd6WHGfTABkUNtaka6P67LTi05IipQVownnSEvWXu8
         vw5A8p5Vn9juZ1UNmEGvcy9md5WEL75vFawbMxTTfDbwqKuT7T8vkuAzzxIPXq5YJm5k
         2djoBvNLmLtIO+j8ORWeWixODsDGfNyRYK3jGTkKT8jDDrYJpAMYM90tpzS+Kblby3hG
         /6d6PZxQXZkN5naZOjRB92PkKSGSeYJgduGJUuF+jgEcjL8EcdjURdVFuPalUfGMlCZw
         iA4g==
MIME-Version: 1.0
X-Received: by 10.50.111.8 with SMTP id ie8mr24359655igb.65.1450780194852;
 Tue, 22 Dec 2015 02:29:54 -0800 (PST)
Date: Tue, 22 Dec 2015 23:29:54 +1300
Message-ID: <CA+KTh2zX+FrBinNUikbOE5HBgzRpDbo9XxZ-iUBeOhbqaqUEEg@mail.gmail.com>
From: Emmanuel Law <emmanuel.law@gmail.com>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Cc: security@php.net
Content-Type: multipart/alternative; boundary=089e0149c0282955a205277a16fa
Subject: [oss-security] CVE Request: Use after free in PHP Collator::sortWithSortKeys function

--089e0149c0282955a205277a16fa
Content-Type: text/plain; charset=UTF-8

Hi,

I reported a use after free in PHP's Intl extension. The vulnerability is
in Collator::sortWithSortKeys function. Only Php 7.0.0 is affected.

https://bugs.php.net/bug.php?id=71020

This can potentially be remotely exploitable if the sorting function is
called on a user supplied array.

Not sure If this is CVE worthy. But if so, please assign it one.

Thanks.

--089e0149c0282955a205277a16fa--
