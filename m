X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["775" "Thursday" "14" "May" "2020" "15:14:51" "-0300" "Matheus Bratfisch" "matheusbrat@gmail.com" "<CAED0SFy7R3OZXiyJ4TQn63qw_F931Ro5HEZEkDDPJZfWhos7=g@mail.gmail.com>" "28" "[oss-security] Python Beaker - Deserialization of Untrasted Data which can lead to Arbitrary code execution" nil nil nil "5" "2020051418:14:51" "[oss-security] Python Beaker - Deserialization of Untrasted Data which can lead to Arbitrary code execution" (number mark "U       matheusbrat@ May 14   28/775   " thread-indent "\"[oss-security] Python Beaker - Deserialization of Untrasted Data which can lead to Arbitrary code execution\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Python Beaker - Deserialization of Untrasted Data which can lead to Arbitrary code execution" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20351 invoked by uid 550); 14 May 2020 18:27:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12003 invoked from network); 14 May 2020 18:15:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=pV+f62bSYUvAf9p3g//0hlSpWjjFwmJIb26q387N7/Y=;
        b=ERmrpoyVqpH0/Lxv9o8hiYv1ULErj7qm9qX4xHqOOomaBf15IvfUoT8Nn2UkbiYDYx
         XpLa0r5W2lmi3KVeT9dzQHnjecoLLRmYB3tXrPnSRGD0phGN9uS521/L1NXUqCiPuEmh
         JYkMdYaUIXi+Q1XAkO16zhdCduYir6aWhsXjqiZTMQeczNoVAPnMZvBPx1GxNA7YdGl7
         aPGo1eFSZXiwdSDSUARH7QaLgPjJOIlf/ZtsYK8OfYNcYC2i/LvpoPIG8UKZ5hUQvD2o
         zTDfSz6AyRTwjjRHQvgjChszEDINT9Ucnx+7YIKtibY6DJoNx3D+DEapMYKsvWv8sYyu
         y6cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=pV+f62bSYUvAf9p3g//0hlSpWjjFwmJIb26q387N7/Y=;
        b=ZRHh3JCA4v8yXAZpol0DfM93PATyap5ySvTqvuwPMvl6Xm6y6IMR7UylGAJ44Q5brU
         bUvWF3cRZjxsXU6YUT5Bbe0bMkGI+ia4zxfVMOU4DYkrxTkXqH7en1tm15woB1FlT5BF
         d5v6nMzOrGZs0YWpIwLbllZLh7P3GRs4kUBAgM5ARiAO2v7Ai7Is+O6sGIUZ2ra5TYdR
         1ZkBj51tZ6EQOVeA8SZZ+f+3ziY5JQh64n2q6te/7jEFE2RYS6U/CqWfbHWv5pthUkKi
         Mgv6E7R1WRExQ5RX2xFgp5ZaXkc4Pg32LzytOeI8q3aU3jvpYYIHy0pyga7uaqgxeNVv
         VaTQ==
X-Gm-Message-State: AOAM532My9hG+XL0S9dTLnAmXA+NmN+4N3C2JXxkx0UFpiyIZhQYlRFU
	f8z3UmSljWpsdcfTt01qp8eFSJClYvu+olX/IzmzO2J0puA=
X-Google-Smtp-Source: ABdhPJwAWQP58EflfHfqrixmVw1ZWuyh9Qt0ow5aL47KNk4zlGlXRxeF4gi2W99y88/GAaubWkVEjvQxC88Y7Xz81L4=
X-Received: by 2002:a17:906:3791:: with SMTP id n17mr3776928ejc.249.1589480108034;
 Thu, 14 May 2020 11:15:08 -0700 (PDT)
MIME-Version: 1.0
From: Matheus Bratfisch <matheusbrat@gmail.com>
Date: Thu, 14 May 2020 15:14:51 -0300
Message-ID: <CAED0SFy7R3OZXiyJ4TQn63qw_F931Ro5HEZEkDDPJZfWhos7=g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000378fec05a59faddd"
Subject: [oss-security] Python Beaker - Deserialization of Untrasted Data which can lead to
 Arbitrary code execution

--000000000000378fec05a59faddd
Content-Type: text/plain; charset="UTF-8"

Hello all,

python beaker is affected by Deserialization of untrusted data (CWE-502)
which could lead to Arbitrary code execution.

I believe it was initially pointed out the flaw on Session here:
https://github.com/bbangert/beaker/issues/35

Some improvements were made by adding a secret/HMAC but the Cache layer
still has the same flaw. I reported the flaw on cache level here:
https://github.com/bbangert/beaker/issues/191
I created a POC but didn't publish it on the ticket.

There is no CVE assigned to this.

This package exists on Fedora and Debian at least.

Should I take any extra action?

Best regards,
--
Matheus (X-warrior) Bratfisch.
http://matbra.com

--000000000000378fec05a59faddd--
