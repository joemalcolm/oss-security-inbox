X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["708" "Thursday" "28" "April" "2016" "15:12:21" "+0700" "=?UTF-8?B?THXhuq10IE5ndXnhu4Vu?=" "manhluat93.php@gmail.com" "<CABcHV3xszyuauXtLayGq7SiipJxG2OS3YXVgBNuhXgP-hR6EUg@mail.gmail.com>" "30" "[oss-security] [CVE Requests] PHP issues" nil nil nil "4" "2016042808:12:21" "[oss-security] [CVE Requests] PHP issues" (number mark "U       manhluat93.p Apr 28   30/708   " thread-indent "\"[oss-security] [CVE Requests] PHP issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11270 invoked by uid 550); 28 Apr 2016 08:28:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3421 invoked from network); 28 Apr 2016 08:12:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=bmzbsI92McvcFINFEmL8gNHH8r4Mg58MOQ/RcKsVoSo=;
        b=Hn29NyNOflJphEi3YVknN7C4o3HqLk7F116WW2ObL75WGl0uabv3Y41Skhu7JPfq5u
         dE9CaN3Q9zMph7XjTVawofoEiym3Aw3g1QFbvpvSDZvp/HjWF/qCAigPA7Zo/4b2MJrE
         xGqjBIGBJLkmWKLMcR79IPpHF9uEKcIF+TAwGE3phCkt45ytygdgvPkhq5rwLeit/oBJ
         /fokKC/yXFWd4RSFDa/kUyT6Nj9d7b+vodkaFnKVLUqKA2l8loVs4/MpIuIdQBm0Fmvz
         qHRQBG0t1tjBw9KjaSrMla6FEzdylM5u7JeDWM5qTMptSnq2OlODBhYbLHE2y2GgoL/N
         6wGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=bmzbsI92McvcFINFEmL8gNHH8r4Mg58MOQ/RcKsVoSo=;
        b=MlGDfGnIKGc7Nd5xgvREUslyCzLXSVvWV6DLG0WQd6j5OODxTAnWluxdDoWNdEIEhB
         TXRmNCT3PABsKX4MZvN93joXG5z1EiuhR6cPkMMDRAlnEMdWoVkIY1Yvb+ZjvE97cFbd
         RIuYWv1C+yuXeDYQngsQCHyKvK3JBaQeOYzDHMx99lIcfxghxSEwS1mbxXtLg3CN6JL0
         m2+Rwk1K7I3NcOWI9h+/guydFYD+aBAEeMd6Lbp4AT/vobO6sm/OquFwCYwXzok43DbZ
         d9W+msChRJuOeyScuFCzIxaazF1c3KYCfcJ6uWFkdgb6BHdiLp0wDEtZ6XGqUUGzxpSZ
         E/9A==
X-Gm-Message-State: AOPr4FVZh8j8CU8A54apN/aEpRIo7YvuLYhFm1sWPFAb0PLY08h+lEv+8boJHQGcGyPjot8gVMw/3OeK3841TA==
MIME-Version: 1.0
X-Received: by 10.13.246.6 with SMTP id g6mr7339151ywf.202.1461831141735; Thu,
 28 Apr 2016 01:12:21 -0700 (PDT)
Date: Thu, 28 Apr 2016 15:12:21 +0700
Message-ID: <CABcHV3xszyuauXtLayGq7SiipJxG2OS3YXVgBNuhXgP-hR6EUg@mail.gmail.com>
From: =?UTF-8?B?THXhuq10IE5ndXnhu4Vu?= <manhluat93.php@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] [CVE Requests] PHP issues

Hi folks,

There are flaws which are various type (heap corruption, heap
overflow, Uninitialized pointer)  in PHP from previous version we
might miss.

1. Heap corruption in tar/zip/phar parser
https://bugs.php.net/bug.php?id=71354

2. Uninitialized pointer in phar_make_dirstream()
https://bugs.php.net/bug.php?id=71331

3. Multiple Heap Overflow due to integer overflows | xml/filter_url/addcslashes
https://bugs.php.net/bug.php?id=71637


Those 2nd, 3rd may let attackers with crafted PHAR file could
potentially remote code execute without specific PHP script.

Could we assign CVE for these ? :)


References:
http://php.net/ChangeLog-7.php
http://php.net/ChangeLog-5.php



Thank you && Regards.
Luat.
