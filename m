X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["964" "Saturday" "16" "April" "2016" "10:07:03" "+0200" "=?UTF-8?B?UsOpZ2lzIExlcm95?=" "regis.leroy@gmail.com" "<CABEc15Xut2gOVj1_Luzu-y7gwESwT5Q0n+dCtK6R+HOcR9cDDw@mail.gmail.com>" "21" "[oss-security] CVE request: Varnish 3 before 3.0.7 was vulnerable to HTTP Smuggling issues: Double Content Length and bad EOL" nil nil nil "4" "2016041608:07:03" "[oss-security] CVE request: Varnish 3 before 3.0.7 was vulnerable to HTTP Smuggling issues: Double Content Length and bad EOL" (number mark "U       regis.leroy@ Apr 16   21/964   " thread-indent "\"[oss-security] CVE request: Varnish 3 before 3.0.7 was vulnerable to HTTP Smuggling issues: Double Content Length and bad EOL\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14050 invoked by uid 550); 16 Apr 2016 08:09:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12193 invoked from network); 16 Apr 2016 08:07:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=NvxeIDf5/0xqJuaLuFLTN0xXfsp3MhPyPN5kCE01syU=;
        b=n0PSL6FZT2L7T+JI4HaKMimRcXeIM6fE5xAQ4tX9pLJvNjNIiZgeLb0wxkmw4/LoTj
         6kursTp3jrRU+FgsXg/QYhCn9jJtV0HVjPMRHiu4l9lbr44qXls+ONK3pTBC+8Mql1It
         uUwrxHUFjM0DPIrODKpbA+D68WHIwmi2UjdbNB+hCq9Z3NIYlPqYOtOHANZtbHdEJVrx
         vIvrzvGQo3k98jpfUQZJsVKfJi/jtOPAqJx8+nhW19Ds91HXXUT88kGQ/rPeVQkBGyHK
         msc3Ms9TDnPzxSENW2dScG+jdJARAjDrW2xO70RZ8n1z86qsCjnBimIyV7QgWdYK+aK7
         NHBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=NvxeIDf5/0xqJuaLuFLTN0xXfsp3MhPyPN5kCE01syU=;
        b=gM5Pk7FJsAxH+SHHJqQIi0O5cP/haKRVxqV0yyN9oKm+xlFoAyKHJkdahna3iDdLtX
         iwTVggoTkTiTEl4P880cGhFYfIsEPueOyAv1oJeTd8+eB4GjF0DELZYfT4uYUIZ3nIWZ
         pq+oj4nXwU5CrvBBflvEEwyLw32we6RhTGYhlfwFilWPY8XKKxgog8M/A3YINO3/8jpM
         +tRTmBT4ZF9/2b30jXLfxG2NwqbgzYR/1r95UoYrpQWwUkp2F+UV9m1GL7seAuIjPJmm
         F33/WCku9btuoYHPtUE8Zj5LieTZklq3XAvGCDJ4tXO6w4Om3IusluH1iLvNPHkmSKMM
         DYag==
X-Gm-Message-State: AOPr4FVzomDtrsiMd+J/VrinjCJ5P5Hx3xFxd7Bfn4i6HWXQ4Qqqph75GX43NghHN2PJLt4JCHsX6B+BN95FjQ==
MIME-Version: 1.0
X-Received: by 10.157.33.161 with SMTP id s30mr13086551otb.27.1460794023507;
 Sat, 16 Apr 2016 01:07:03 -0700 (PDT)
Date: Sat, 16 Apr 2016 10:07:03 +0200
Message-ID: <CABEc15Xut2gOVj1_Luzu-y7gwESwT5Q0n+dCtK6R+HOcR9cDDw@mail.gmail.com>
From: =?UTF-8?B?UsOpZ2lzIExlcm95?= <regis.leroy@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE request: Varnish 3 before 3.0.7 was vulnerable to HTTP Smuggling
 issues: Double Content Length and bad EOL

Varnish 4.x serie is not impacted. Flaws Fixed in version 3.0.7 in march 2015.

Changelog is:
 * Requests with multiple Content-Length headers will now fail.
 * Stop recognizing a single CR (r) as a HTTP line separator. This
opened up a possible cache poisoning attack in stacked installations
where sslterminator/varnish/backend had different CR handling.

https://github.com/varnish/Varnish-Cache/commit/29870c8fe95e4e8a672f6f28c5fbe692bea09e9c
https://github.com/varnish/Varnish-Cache/commit/85e8468bec9416bd7e16b0d80cb820ecd2b330c3

Combinations of theses two flaws in HTTP protocol handling allows for
"HTTP Response Splitting" attacks
when another actor in front of Varnish3 can transmit headers in this
form (for example):

    Dummy: header\rContent-Length: 0\r\n

This is a one year old issue, on the old last release of this serie.
But we still find some installations. A CVE would maybe help removal
of 3.x installations, or at least upgrades to 3.0.7.
