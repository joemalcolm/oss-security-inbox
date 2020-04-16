X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["870" "Wednesday" "15" "April" "2020" "22:59:22" "-0500" "Josh Fischer" "josh@joshfischer.io" "<CAFkuAo1KHC_=9a5CepfMVooTOzfqFg0MODus-PR5QzyzBxOp=g@mail.gmail.com>" "36" "[oss-security] CVE-2020-1964: Apache Heron (incubating) information disclosure vulnerability" nil nil nil "4" "2020041603:59:22" "[oss-security] CVE-2020-1964: Apache Heron (incubating) information disclosure vulnerability" (number mark "U       josh@joshfis Apr 15   36/870   " thread-indent "\"[oss-security] CVE-2020-1964: Apache Heron (incubating) information disclosure vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-1964: Apache Heron (incubating) information disclosure vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26580 invoked by uid 550); 16 Apr 2020 06:27:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30535 invoked from network); 16 Apr 2020 03:59:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=joshfischer-io.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=hSDurY4eQ8vxsn0F7uZm4kAUVG397eibDz4yMAbblMg=;
        b=PGpOjaCpIGMLPPAmOO2s1islIFabGS4Lqtbp0d5bHk3+oRiyrfdddt2LmGjrAG38Pg
         3tJ9i/PZSe4uerxNbTKmhvWD/02bELpGPUHWwiXiVrdlcAHNWrZ0uBTa3ttzrRFbCr09
         ktYtkmSzZPBoIbUACjY/yN/hAimjHmL38Jj3hU2uLzFLebmu8UAYq59AVIrya2XZ2hMN
         8dSFIdq+iJaHZ9i98x3pr1Xzt8BLLj1+cBePXWnLep31Fz9UBLnB/PCja1Pjo6M6Pqlq
         FhA0+mtD9v22r02zClBD5Ng3p0a1JLxv9lzwNptt+25nMHQmjlhCNEIBZ+3x0k+eUMF3
         DjlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=hSDurY4eQ8vxsn0F7uZm4kAUVG397eibDz4yMAbblMg=;
        b=Lyq0sa3I5gdoT985HXpKfiMaF33OYGVg9hXlhL3fdL9g0s/3OdxBhHw7iRg1M/HDoS
         NOMFDjqFNwBhOFnj9YopnVu45QmfCZ/3yln/2Uv0nT+Rmu70Zn903X9WbcFMyf+8S/SG
         McRe1Q0N7GI+Kz4OpFG7TmQG63OpAegVJp4mt4GcIOZMp78raBrrxCgB+Vg7Md5qNCgu
         ITpAqskS/FtezCqz9R/cLFBqt0ccj5Z9yfSZ78t8b+F2cD9GPpLHNuhFPfy9YMQrXswH
         OMBN7/XtvMTdlAmMutAyc+7tYSmGtBuvqa0jmS0JZGujkz4UVSO4dqiJZ69ie0eDS00y
         4ZVg==
X-Gm-Message-State: AGi0PuYYWHvyX7BbWaiiI/GlUpnw9sER4SuDtOFc9K1fYCVsLcLOWwzp
	mkDquBOfQVlknu7aj4zA8v5kL3UDdFfqSmkw7dqnQgbuHOSVfg==
X-Google-Smtp-Source: APiQypKkv22SrQuhuHIsxPuJLfDW5l6d+0yDtNxmFdn+LXtX15c1jWOK2o3zg4N+TbboBLq5qsSZ5b9ZiNm9hLkTokI=
X-Received: by 2002:a19:760a:: with SMTP id c10mr4860380lff.126.1587009573562;
 Wed, 15 Apr 2020 20:59:33 -0700 (PDT)
MIME-Version: 1.0
From: Josh Fischer <josh@joshfischer.io>
Date: Wed, 15 Apr 2020 22:59:22 -0500
Message-ID: <CAFkuAo1KHC_=9a5CepfMVooTOzfqFg0MODus-PR5QzyzBxOp=g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000e3408305a360750f"
Subject: [oss-security] CVE-2020-1964: Apache Heron (incubating) information disclosure vulnerability

--000000000000e3408305a360750f
Content-Type: text/plain; charset="UTF-8"

CVE-2020-1964: Apache Heron (incubating) information disclosure
vulnerability

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
0.20.2-incubating
0.20.1-incubating
v-0.20.0-incubating

Description:
In versions 0.20.2-incubating and before in Apache Heron does not
configure its YAML parser to prevent the instantiation of arbitrary
types, resulting in remote code execution vulnerabilities (CWE-502:
Deserialization of Untrusted Data).

Mitigation:
0.20.2-incubating and previous users should build from the current HEAD of
master.
A vote has been started for a new release 0.20.3-incubating which will
include the fix.

Credit:
This vulnerability was discovered by Frederic Vleminckx

Regards,

The Apache Heron (Incubating) Team

--000000000000e3408305a360750f--
