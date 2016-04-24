X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["448" "Sunday" "24" "April" "2016" "10:44:39" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdTyH2a6dbw4JDvUGHK39AzhWNxfrTLpaftkjDYmQjAu9A@mail.gmail.com>" "18" "[oss-security] CVE Request: jq: stack exhaustion using jv_dump_term() function" nil nil nil "4" "2016042408:44:39" "[oss-security] CVE Request: jq: stack exhaustion using jv_dump_term() function" (number mark "U       gustavo.grie Apr 24   18/448   " thread-indent "\"[oss-security] CVE Request: jq: stack exhaustion using jv_dump_term() function\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32500 invoked by uid 550); 24 Apr 2016 08:44:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32482 invoked from network); 24 Apr 2016 08:44:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=SKxCl6Tmyo580Pwk845O/RsEu7JsXrlHE+2gZ0CJPtE=;
        b=XI9JtPwv2GzH9uJd4eE9uiQe9+7kzr8O6z+TFZmeenAofzxFelB2ATjv7Sgjz4aIBi
         Y3IsxJdCP9zXl3OJO/YKJVnn+JRPE254tLjL4d8uqLBK6qPCZGdBsfc71Yh2mrKdFLq9
         oBD6ItNdRqEgXKQ8yUFSo16yf+uyiJhKV1PAUfqJyuNXOL/3IC4Fi37hsYm/1lAQHbrE
         tnYacApLpujTCi8EGvEqHJvb9EPhkuzBAp2FopFS6i7faLOBVYVd7UL/AjYh+wjAg4Mk
         V3uHfprk2qF/VoIYIwY/6qjLoddN9wvbzrpGYPipcJq+KgvK1sr0abiLqUrU+I+phRsl
         e4dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=SKxCl6Tmyo580Pwk845O/RsEu7JsXrlHE+2gZ0CJPtE=;
        b=QKR8X2vLfS0qR2zbpwqMS1GZp3tFt3v9j4eEGgM/hHHNx1q1YLAFj1OaT5NM+h6I4L
         vyKM14/kkKiUykDNertf17b1UevgRx6mN1Bgf/QPAcDhdIINtzx2tlCKeyDMu3G+xEKv
         euKVjsUKZKJ49BSXyoM/8lagcVmFXQ2Nro4OBXkVfmLYd3Y2ReEIPVxb0TCzMUvv25hn
         YyIF3KRr9gUwEkPxq/jZoAYpytZdFf07tkVvpsG1Fo1H5hIci1ZlppUduX+lHUHVQuRZ
         pY6Ykemz0xkMnWgFw0IjVr+TNe3+PhZsKehS1GpbPscNSvAC23gGQBR9hPH+HLy7MjqR
         5JNQ==
X-Gm-Message-State: AOPr4FW7vLjKoI1oGW4Kd6Z7lSudFs2svu5xCRpI7qijplQ2PQu+EpDG0udccvVX6l1P7OPOiZm1yAuUqm9C+A==
MIME-Version: 1.0
X-Received: by 10.25.73.212 with SMTP id w203mr10116325lfa.22.1461487479931;
 Sun, 24 Apr 2016 01:44:39 -0700 (PDT)
Date: Sun, 24 Apr 2016 10:44:39 +0200
Message-ID: <CACn5sdTyH2a6dbw4JDvUGHK39AzhWNxfrTLpaftkjDYmQjAu9A@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114b159215cdd40531371227
Subject: [oss-security] CVE Request: jq: stack exhaustion using jv_dump_term() function

--001a114b159215cdd40531371227
Content-Type: text/plain; charset=UTF-8

Hi,

A crash caused by stack exhaustion parsing a JSON was found. It affects, at
least version 1.5 as well as the last git revision. Technical details and a
reproducer are available here:

https://github.com/stedolan/jq/issues/1136

This crash was found by QuickFuzz working with Radamsa (that caused the
extreme mutation)

Regards,
Gustavo.

--001a114b159215cdd40531371227--
