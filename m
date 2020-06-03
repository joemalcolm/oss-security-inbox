X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1057" "Wednesday" "3" "June" "2020" "13:31:52" "+0300" "=?UTF-8?B?0K7RgNC40Lk=?=" "jury.gerzhedowich@gmail.com" "<CAN8tF9eTKbaD9CsAxuDHmnEQu6RD4fUZCVPbAhHSjF0VdBK+gg@mail.gmail.com>" "39" "[oss-security] [CVE-2020-1963] Apache Ignite access to file system disclosure vulnerability" nil nil nil "6" "2020060310:31:52" "[oss-security] [CVE-2020-1963] Apache Ignite access to file system disclosure vulnerability" (number mark "U       jury.gerzhed Jun  3   39/1057  " thread-indent "\"[oss-security] [CVE-2020-1963] Apache Ignite access to file system disclosure vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-1963] Apache Ignite access to file system disclosure vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31847 invoked by uid 550); 3 Jun 2020 10:48:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15592 invoked from network); 3 Jun 2020 10:32:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=3/aZtr6wrrLeJ9gmA2gWMAQNXrvhtwW7b4yPk62bAGQ=;
        b=qya60y88cIDfiC/kCfJ59tv9/R9IUC4ApApxPWD9QPnqLW00xDSSIp5CsP9EIXWF1x
         TlPGGqlZeapAnvxD06TUNmMijG6+O9xs7YsZDZhnmhYYADHjU7hlimf0mEN/yU0DqYis
         +jfY/Z4q521Ha74cfJnqYAp0PKk1FnsGfA/9XBXZJcZIgv94uSJ4hyQc/FTPH0fUH/3B
         6F0Ib9W0IVwsd9TgJUonux07MO4J6ykLzXQ8tTOwCKSiczn6q4183xbMK6YSdBNoeWOq
         Vzh8D/kxw2bTP5YnaC0nLL2yofpfQkBB6ci+EXx6UkcBPbjvghvDZg4FN9lIXBpLBV4K
         BjRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=3/aZtr6wrrLeJ9gmA2gWMAQNXrvhtwW7b4yPk62bAGQ=;
        b=gNGEweLiQUQyVsrvY2aYi3e6YcJQNvkAQLWx9ULu6jK+4hnAni3H3iGlTV2w5lLaWF
         u6JweUCRKbGZ5QGlc0TwkqD4Kg5bR0Se7XMhRXjDtaoCfywfVTEzdUuJL9do6wX+vtNT
         SinxPLVF76Q7cosxivha1UtZxQskYSmg3wLXT2jFgoRNYdWRNC+kLeUit5VqzWi/B+Cd
         x99FoigT/Q4xuBpt4jm6wOeyvWfEqcPKat5PhCkHFgHRquNvmDj/ZUQ9xdo03UcHvcPa
         tK8h3oeM82yNytlFu6Ohp6gXFBZwIBryoTRvAwOa1Srg3CNnJW4w1wlgyFtOEB4j7Q0f
         mJJQ==
X-Gm-Message-State: AOAM5310k+FJRevn7Sy5f8UKKJYBpqnGmLBPT16TGI4uUQoDEqds2hf9
	o09H++riY3Hoo2TIEZAt5dAmhbEV1uD2sEFzlKiA5xMP5H87Qw==
X-Google-Smtp-Source: ABdhPJyP7+9JNDwfd67nycPKPuxw6sPZktPMwaYzjsy2RTUAPM62906IGwdcdxW/0SJFodKKq/zM+Xq07EP+q4/9Ye8=
X-Received: by 2002:a9d:2c46:: with SMTP id f64mr2493114otb.245.1591180323066;
 Wed, 03 Jun 2020 03:32:03 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?0K7RgNC40Lk=?= <jury.gerzhedowich@gmail.com>
Date: Wed, 3 Jun 2020 13:31:52 +0300
Message-ID: <CAN8tF9eTKbaD9CsAxuDHmnEQu6RD4fUZCVPbAhHSjF0VdBK+gg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ee187f05a72b89c8"
Subject: [oss-security] [CVE-2020-1963] Apache Ignite access to file system disclosure vulnerability

--000000000000ee187f05a72b89c8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-2020-1963: Apache Ignite access to file system through predefined H2
SQL functions

Severity: Critical

Vendor:
The Apache Software Foundation

Versions Affected:
All versions of Apache Ignite up to 2.8

Impact
An attacker can use embedded H2 SQL functions to access a filesystem for
write and read.

Description:
Apache Ignite uses H2 database to build SQL distributed execution engine.
H2 provides SQL functions which could be used by attacker to access to a
filesystem.

Mitigation:
Ignite 2.8 or earlier users should upgrade to 2.8.1
In case SQL is not used at all the issue could be mitigated by removing
ignite-indexing.jar from Ignite classpath
Risk could be partially mitigated by using non privileged user to start
Apache Ignite.

Credit:
This issue was discovered by Sriveena Mattaparthi of ekaplus.com

--=20
=D0=96=D0=B8=D0=B2=D0=B8 =D1=81 =D1=83=D0=BB=D1=8B=D0=B1=D0=BA=D0=BE=D0=B9!=
 :D

--000000000000ee187f05a72b89c8--
