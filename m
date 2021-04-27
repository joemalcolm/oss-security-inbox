X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1178" "Tuesday" "27" "April" "2021" "14:35:20" "-0300" "Thiago H. de Paula Figueiredo" "thiagohp@gmail.com" nil "44" "[oss-security] CVE-2021-30638: An Information Disclosure due to insufficient input validation exists in Apache Tapestry 5.4.0 and later" nil nil nil "4" nil nil (number mark "U       thiagohp@gma Apr 27   44/1178  " thread-indent "\"[oss-security] CVE-2021-30638: An Information Disclosure due to insufficient input validation exists in Apache Tapestry 5.4.0 and later\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-30638: An Information Disclosure due to insufficient input validation exists in Apache Tapestry 5.4.0 and later" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25675 invoked by uid 550); 27 Apr 2021 17:38:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23948 invoked from network); 27 Apr 2021 17:35:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=9nH+bzYqlyj4nMCElEo4mqhYxjt2g7hfZ4w0Le48Suk=;
        b=KFPTwo2Koi+MUt/HTImAJJJGRC35pMbY7x+bbTZQ1HYdPKLglQg5b26SeKvgFJICGm
         rej73nl1+fNSF40x4xei7Lw9ATIJgbWQIcafGU3eGXEeZdthhukmjKc5V/Z+rvSwQq9c
         bVY6hSKDO8HYI82bAvkunuHE5Bj26mawSYC+nCEZU2abDqj/JmwAiz6RwQ5lIdPlPAzH
         yeCG/xGGaM/44xgv92DVZxltRHFAxyatf+C3I66rhOGSPlGUzleWHZrU5NyeQ5TpdFRm
         7HI/ieTXuW6aKttGe6naeZh0qbyBPPExw1CuycpVALSf9QrycEI7bYJMBYkM+gVsmyOY
         g5Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9nH+bzYqlyj4nMCElEo4mqhYxjt2g7hfZ4w0Le48Suk=;
        b=aD7aQMUAUcciF3gPHYeyVnJQzDyuxAZqQ4mMjYdKFB+cdyq7t7vUv4MCflpS/D1h/g
         sWHIDqvFVaCtzMx1uq5DLD58NT8qR0AHs6Uc0tdN0SEVAgwP0vIoVqVLyvIoEoY2GVUL
         SfkdFNwbY5i2069TYgQlQkzzxZplU2pnBxenPoB6RXOXRMNVGHs3LAK+MhBW2GlmgVV3
         cWS0WRuL6+tYtuU5BsQY+dUVSU2cwJMxS/pzPI+ThYM7Lkfg19WQua7KCOLGg839GyXa
         RPkgp0HkJl0/zrBq9hRWsGg4UrJSyTfQLTFoTD8kOtKYvkNvKinBLTdLOHLGNuU93Dqr
         Zz2A==
X-Gm-Message-State: AOAM533MLILVg1vKvADe9JqikpYtRqKOJwye8L8+OdQLr6a7zega9vH8
	t5xzRLEOl6WlBC6LrhPKHdudxA3yTC7nUrV0uPq3UkPg1dICbA==
X-Google-Smtp-Source: ABdhPJxcMRbZ8KgMDdVvB2Fi2+6HElcRAMoXTV5a5I6KL9thCEP3TUNRvfebCIzg2zMy9yjyzYfcHJhhSASNLCF5q1Y=
X-Received: by 2002:a05:6512:689:: with SMTP id t9mr17877549lfe.460.1619544931086;
 Tue, 27 Apr 2021 10:35:31 -0700 (PDT)
MIME-Version: 1.0
From: "Thiago H. de Paula Figueiredo" <thiagohp@gmail.com>
Date: Tue, 27 Apr 2021 14:35:20 -0300
Message-ID: <CAE_88GYP-ZX9=b7LfepVqRZyBeOmGTWRV92BONJCBGkLULcQ3Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000050b59305c0f7b0bc"
Subject: [oss-security] CVE-2021-30638: An Information Disclosure due to insufficient input
 validation exists in Apache Tapestry 5.4.0 and later

--00000000000050b59305c0f7b0bc
Content-Type: text/plain; charset="UTF-8"

Description:

Information Exposure vulnerability in context asset handling of Apache
Tapestry allows an attacker to download files inside WEB-INF if using a
specially-constructed URL.  This was caused by an incomplete fix for
CVE-2020-13953.  This issue affects Apache Tapestry Apache Tapestry 5.4.0
version to Apache Tapestry 5.6.3; Apache Tapestry 5.7.0 version and Apache
Tapestry 5.7.1.

Solution:

For Tapestry 5.4.0 to 5.6.3: upgrade to 5.6.4

For Tapestry 5.7.0 and 5.7.1: upgrade to 5.7.2

************ Problem Description ************

An Information Disclosure due to insufficient input validation exists

in Apache Tapestry 5.6.1 and later (latest)

A recent patch for CVE-2020-13953

(
https://github.com/apache/tapestry-5/commit/cf1912291af9146ee86a4aef471ae2ab31d3a28b
)

fails to account for the backslash character in the filtering regex

An attacker is therefore able to list and download web app files from

the WEB-INF and META-INF directory using a crafted payload.

Credit:

This vulnerability was discovered by Kc Udonsi of Trend Micro

-- 
Thiago

--00000000000050b59305c0f7b0bc--
