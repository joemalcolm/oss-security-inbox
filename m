X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["578" "Tuesday" "27" "April" "2021" "09:44:07" "+0100" "daniel gaspar" "danielvazgaspar@gmail.com" nil "23" "[oss-security] CVE-2021-28125: Apache Superset Open Redirect" nil nil nil "4" nil nil (number mark "U       danielvazgas Apr 27   23/578   " thread-indent "\"[oss-security] CVE-2021-28125: Apache Superset Open Redirect\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-28125: Apache Superset Open Redirect" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30251 invoked by uid 550); 27 Apr 2021 10:30:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11996 invoked from network); 27 Apr 2021 08:44:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Ed5bO+PO/P/r7bhh1CKWJsxEOouLEzyCsjA9slTY9WE=;
        b=WOppbj5XcIMWqv0F5OX90p7sLBr9Mw2A3kF81+5i0h7zkUZkGl8NsLZbSvSRp1vE4T
         dPS5ZyVx3s0zloT+bV2x0+z5Iu+UaeqpHTlpCM3kZqTVhNphh7juoXJVxYrIRK1x5SUJ
         3kfvbPEGdb6o03A4MnI2qerm8jcgZO+GNSOR5TUuyYRDR+YQDvlb2kctQAYJ5QT/oxJ1
         VlaqiYtc79nYcESrlNlJ7nKMn7KT3GsGM38rp3QY5F8m5Vh8VQil49M6ukzegAJftxhT
         ABKCJO1XJZp9IsOCSpw/ZgADFAOcdRjtZXXQkerIqG3J6++vZTacRsuxQ6X7XtGL2jAq
         UHVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Ed5bO+PO/P/r7bhh1CKWJsxEOouLEzyCsjA9slTY9WE=;
        b=F3cuhIWdvpg4aiCYa54w0v/OQ/YxNG6Zg8M653FIZgm9a5caOooRTH4hpG8oxw7mjI
         fUWBBF0K5Iwu6t1uN+fiOha4yzmeLe5gqzWXOtbJRPbfGBvXyTOWpk61DXg8NlRns+1y
         IkC+7dbMppdy3vJBObATHyhXYzhMUYt6EHJwgv6rwZCvb+Y598oJh943NYuTjsKlOChq
         hjzYOTn6kKUVA+zxi/QSgVijaTJ7VPUxpgR4X1Npn2Zgd2CX+TnpdeIT0pa1VDOKkOwU
         fNSyZVKX8IN8YXuJM/kYwd6TZuJgzNWFwY71s90MKlew+Z667dXUm1WDL2hEI8doL4HO
         GPMA==
X-Gm-Message-State: AOAM530yeyOPsNrE1Tif0RwOuPztj+rj3lCloNo45SD8ysVHaPQLU2Bx
	qenaY6jZBqQ9Yk66P7Q/QFl27tdEFh89M5os7oXpAb/KWlV/bw==
X-Google-Smtp-Source: ABdhPJxNSsMWNCDRpsHH63qoDOpqceYCU8hpz8jvtwHBgONW4skYqTur6MUkvH/H5w5K2uV1Yj+Vb2Vj91yoELxNFWM=
X-Received: by 2002:a17:902:d4d0:b029:eb:59ea:2f32 with SMTP id
 o16-20020a170902d4d0b02900eb59ea2f32mr23544779plg.58.1619513058275; Tue, 27
 Apr 2021 01:44:18 -0700 (PDT)
MIME-Version: 1.0
From: daniel gaspar <danielvazgaspar@gmail.com>
Date: Tue, 27 Apr 2021 09:44:07 +0100
Message-ID: <CALSkbjrM=-cXMznHXnRyoKvAqOkoczWJXzyLpRsmSLubvftkdg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000008c34c105c0f044e5"
Subject: [oss-security] CVE-2021-28125: Apache Superset Open Redirect

--0000000000008c34c105c0f044e5
Content-Type: text/plain; charset="UTF-8"

Description:

Apache Superset up to and including 1.0.1 allowed for the creation of
an external URL that could be malicious. By not checking user input
for open redirects the URL shortener functionality would allow for a
malicious user to create a short URL for a dashboard that could
convince the user to click the link.


Mitigation:

Upgrade to 1.1.0 or above

Credit:

Found and reported by Gianluca Veltri, Dario Castrogiovanni

Reply to: users@superset.apache.org

--0000000000008c34c105c0f044e5--
