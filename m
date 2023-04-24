Received: (qmail 16149 invoked by uid 550); 24 Apr 2023 14:07:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3791 invoked from network); 24 Apr 2023 13:44:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682343880; x=1684935880;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8JrkEhvvkfXfwtw3roKGtXwCDPH7M6gVBKqP9xSVepo=;
        b=bDKZbN37nK0uiHtUgqGJAWJbLKoX6olhzfHAx6fdkG685lplrtqMRb/ML2X4RbjxXM
         fFh+ptV7AvSI30gNlUdzKSR2d9kln3IilR6MSS/JlHVwHcAjBTW5dlH4IH3AAV8CsqSS
         2isY3fT7AJfVPpMFFtGcM1JsiwTl8pyXbXzp4LyeJPdzVCjYqq+NS+teCHWas2CdAkhO
         lwLe+TIjNe2lsismy3IGhtidIx/Okyy1d3EWezesGns/SQ2mDjhWu2UjMExcDPba45kW
         Y9dNd5Zq4JgvVrSs0rmV9wCmU0krkZRqSpab+FdKYX9riXYxMg02EqIyLaAYWvRnAU95
         RoDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682343880; x=1684935880;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8JrkEhvvkfXfwtw3roKGtXwCDPH7M6gVBKqP9xSVepo=;
        b=Tfg2vUvFdYe0XsCqCwe7UtolpM/Qolb+xZwGQZpbxub8zsMkWx2yBs1Qv2XxiRXz4U
         CgrbkCxwDCIYzHED0eQqxzB+Clno5aFlH4OElwcueckjDZWkbjh1+Idn4YoO+/lz8lif
         QtVsRECKWdiMFidV/hTNONJoGlYBQKOun9AOzuVFZ57c6q1UQsK+ds8A72+fEt78k4+0
         W+TKh+Ngw9wmpxexYL3dEkTbPVXlDR/ArmKi6h6Bu1i3Jxf1sJLL7KX/PZ2YqEtgqORk
         zvDttKZvhQ51CTaib2eUnOWcsaZdaJIcvj8vgGj4aI2AV+Wb9or9qPVl1DCgI/jYwINT
         hx9w==
X-Gm-Message-State: AAQBX9fLNpyNkShEROYYVJ6GwSOI9DLPsTZYuNlu9J+uayD43VNqbcAo
	3oLShSoOgzgTLlau+rUxo8vOpjvEgbJdDt6lCw6DWk+FFzCzUg==
X-Google-Smtp-Source: AKy350YYdgLaevf7PsTzcU7fPjJvqImqIjv3KDrsF6spO/xym9yEUJQa+WjRodCQz6ivO8rSjMLyXMaj0r+c0YaVlFU=
X-Received: by 2002:a17:90b:19d5:b0:246:bb31:e848 with SMTP id
 nm21-20020a17090b19d500b00246bb31e848mr13702394pjb.36.1682343879505; Mon, 24
 Apr 2023 06:44:39 -0700 (PDT)
MIME-Version: 1.0
From: Georgi Guninski <gguninski@gmail.com>
Date: Mon, 24 Apr 2023 16:43:29 +0300
Message-ID: <CAGUWgD8jWfhdA5+o_BJN-Mgh0+4x7yYPDcjb+Bve14b9Hxnp3A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Real world vulnerabilities of CWE-1077: Floating Point Comparison
 with Incorrect Operator?

Are there real world examples of vulnerabilities of this:

https://cwe.mitre.org/data/definitions/1077.html
CWE-1077: Floating Point Comparison with Incorrect Operator

This issue can prevent the product from running reliably. If the
relevant code is reachable by an attacker, then this reliability
problem might introduce a vulnerability.

One simple example in python:

>>> A=(0.1+0.2)+0.3;B=0.1+(0.2+0.3);(A==B,A-B,A,B)
(False, 1.1102230246251565e-16, 0.6000000000000001, 0.6)
