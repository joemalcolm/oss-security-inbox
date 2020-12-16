X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["918" "Wednesday" "16" "December" "2020" "16:31:08" "+0000" "Jonathan Gallimore" "jonathan.gallimore@gmail.com" "<CAGRgoZh0pZ4LP0s3za98GDqkuLJimhMQugOU4X4h8Rcq444mUg@mail.gmail.com>" "31" "[oss-security] CVE-2020-13931 Apache TomEE - Incorrect config on JMS Resource Adapter can lead to JMX being enabled" nil nil nil "12" "2020121616:31:08" "[oss-security] CVE-2020-13931 Apache TomEE - Incorrect config on JMS Resource Adapter can lead to JMX being enabled" (number mark "U       jonathan.gal Dec 16   31/918   " thread-indent "\"[oss-security] CVE-2020-13931 Apache TomEE - Incorrect config on JMS Resource Adapter can lead to JMX being enabled\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13931 Apache TomEE - Incorrect config on JMS Resource Adapter can lead to JMX being enabled" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8002 invoked by uid 550); 16 Dec 2020 16:33:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7360 invoked from network); 16 Dec 2020 16:31:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=m4Sp3AMq5TW8WZciR2hhULTtA15jjiGJnhhfXMXlD0M=;
        b=Mh0FDy9izaHtlD24PpaCdBx/vDce/wpiKiGc2ORqvB5nwqo0OVNyAMxouQObuBnEAm
         meJZYqVgjOsk0TW/3zAP/AOIGK0AaRJspadZ7mmKSTWp78FCDwAV2s6zXPsrsbI+jENS
         c8toC7FlsF5DwAcE+3zw/T4r3nkB0Fq0GksO09L3dFmZ2WDZeJIS82K7V+H8k/zJmWst
         XR6lLQG66CIFqqAKdwJXudW7O54UxlRKnBCaFWppgLjPBvgzyWP34aJSkWPfu1QqO/Lx
         AEqN+0/CMFMQA1GoRlOfGne8bnLd9dHYlxMNKjY51nODti4NSlcPs1Wf6qVSUv2QciXO
         zKcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=m4Sp3AMq5TW8WZciR2hhULTtA15jjiGJnhhfXMXlD0M=;
        b=kTUr1/Kf8AykLU1VMywjweUc1vVy4WylyozANjk+Aftk23XNcGdgjCJDdaAAW35u4T
         TtuSSOlpjm0SEsuWHLe4FZtBayZ3SWozYCiv2Dk4TrsWo9SfWNAQ3DHfvqvfie02+TwD
         66GAJI9ryZNdjxJVYHSjHFGdswUQFWMFf9QmSEVPGwWS99rJ1OiEUKqZbc5LtwQmeM+L
         KdDyG6Dw/CkOS5ARIkSwiIfOjI304FEcjXGoedGpL1pb7KacX3lakfFxAFoFx+Bc6XUG
         sIAAI2kAzHQtY8dAvB828NCqYttHiUIzO+quppACAiQUEFGa2rUeTZEhdmvE2mVYKHif
         gntg==
X-Gm-Message-State: AOAM530HBwgr2MpC+PB07MIXWBgK5P8k+K70yy1+HVBpqqQaazhCfF+6
	zsLskEPK4eNrG6vtT9TQxbQpNkCjlaNVCMK5R5SASyGQEDU=
X-Google-Smtp-Source: ABdhPJxhzC80MjjZ+bWDONqp0mkcvNTZ1cJGcDR+/cN85sV5ilaod/ArgtT5mdzjtqfxnBTCXy7asrcDbPXKG3+HGqA=
X-Received: by 2002:a2e:a58e:: with SMTP id m14mr15388981ljp.1.1608136279096;
 Wed, 16 Dec 2020 08:31:19 -0800 (PST)
MIME-Version: 1.0
From: Jonathan Gallimore <jonathan.gallimore@gmail.com>
Date: Wed, 16 Dec 2020 16:31:08 +0000
Message-ID: <CAGRgoZh0pZ4LP0s3za98GDqkuLJimhMQugOU4X4h8Rcq444mUg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000aa801805b6976732"
Subject: [oss-security] CVE-2020-13931 Apache TomEE - Incorrect config on JMS Resource
 Adapter can lead to JMX being enabled

--000000000000aa801805b6976732
Content-Type: text/plain; charset="UTF-8"

Severity: High

Vendor: The Apache Software Foundation

Versions Affected:
Apache TomEE 8.0.0-M1 - 8.0.3
Apache TomEE 7.1.0 - 7.1.3
Apache TomEE 7.0.0-M1 - 7.0.8
Apache TomEE 1.0.0 - 1.7.5

Description:
If Apache TomEE is configured to use the embedded ActiveMQ broker, and the
broker config is misconfigured, a JMX port is opened on TCP port 1099,
which does not include authentication. CVE-2020-11969 previously addressed
the creation of the JMX management interface, however the incomplete fix
did not cover this edge case.

Mitigation:
- Upgrade to TomEE 7.0.9 or later
- Upgrade to TomEE 7.1.4 or later
- Upgrade to TomEE 8.0.4 or later

Ensure the correct VM broker name is used consistently across the resource
adapter config.

Credit: Thanks to Frans Henskens for discovering and reporting this issue.

--000000000000aa801805b6976732--
