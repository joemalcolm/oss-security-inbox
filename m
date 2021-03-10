X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["779" "Tuesday" "9" "March" "2021" "22:48:43" "-0800" "Will Glass-Husain" "wglass@apache.org" nil "22" "[oss-security] CVE-2020-13959: Velocity Tools XSS Vulnerability" nil nil nil "3" nil nil (number mark "U       wglass@apach Mar  9   22/779   " thread-indent "\"[oss-security] CVE-2020-13959: Velocity Tools XSS Vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13959: Velocity Tools XSS Vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7182 invoked by uid 550); 10 Mar 2021 10:10:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29878 invoked from network); 10 Mar 2021 06:49:06 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=8FGsVWCL9JDztjVgd0KUIM5IvAua2wXV3oTKcKbW5GQ=;
        b=Itsuedi2SuVkJBOv5q0qvfO1Y3f9KqBAHVCDmQ7WV9z2dEOJJ/5YrSS5ADt9abd7/Q
         pMpSrQsHejcKBdt8pwhvLdXxzorv46Z90nJNEkG7cWU8W7G31T88sJDtoxPA3j9YfHxr
         UItenlCIodMXE830gOF428XcxPsdR4T7adxIEIkthXMlj8MjgVnZ6HbX8mfJcjxdB4oD
         DXSWq/OsrvVHmCoMPS9ABA8+ZLbm9RC4XNabSMWMxaVN8Q4Ya92sRNZcyih9Foknzybi
         0BbtakogVohh9G4+EcGlEuksQIBApMM9HDF6vBXhgQuF0xlceKEpwBl0ONTlTELgehd/
         NbfA==
X-Gm-Message-State: AOAM531o3paEqLW2m7mYpPXiPvoYK8z7AUAECoRr1vbuIhiQvMOZEiTK
	xQKH86gE+qekbJYoFMqEonZlmwQOcgaV6jxsky8QHwdD
X-Google-Smtp-Source: ABdhPJwRkV3OJyzZgvWkO5DAiEMeZz4ffpgn/I5vEumffnBsiu4uMeX9lbWfqhuTOQeQm1FyRmfuUYJk7S3jGXjTA4A=
X-Received: by 2002:aca:59d7:: with SMTP id n206mr1422943oib.7.1615358934134;
 Tue, 09 Mar 2021 22:48:54 -0800 (PST)
MIME-Version: 1.0
From: Will Glass-Husain <wglass@apache.org>
Date: Tue, 9 Mar 2021 22:48:43 -0800
Message-ID: <CADDz7Zt75GX5nwYzvYhU81iCSsWq+1DotfC0LoTwntk_gp6RrA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2020-13959: Velocity Tools XSS Vulnerability

Description:

The default error page for VelocityView reflects back the vm file that
was entered as part of the URL.  An attacker can set an XSS payload
file as this vm file in the URL which results in this payload being
executed.

XSS vulnerabilities allow attackers to execute arbitrary JavaScript in
the context of the attacked website and the attacked user. This can be
abused to steal session cookies, perform requests in the name of the
victim or for phishing attacks.

Mitigation:

Applications based on Apache Velocity Tools should upgrade to version
3.1.  This version escapes the reflected text on the default error
page, preventing potential javascript execution.

Credit:

This issue was reported and a patch was submitted by Jackson Henry,
member of Sakura Samurai.
