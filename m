X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["520" "Friday" "9" "December" "2016" "10:01:08" "-0500" "Christopher Shannon" "christopher.l.shannon@gmail.com" "<CACHnxzxPZ8t9HN0uC=BqM-0of1CYdZ+OJYOvOWs=bfnjQgCffw@mail.gmail.com>" "17" "[oss-security] [ANNOUNCE] CVE-2016-6810: ActiveMQ Web Console - Cross-Site Scripting" nil nil nil "12" "2016120915:01:08" "[oss-security] [ANNOUNCE] CVE-2016-6810: ActiveMQ Web Console - Cross-Site Scripting" (number mark "U       christopher. Dec  9   17/520   " thread-indent "\"[oss-security] [ANNOUNCE] CVE-2016-6810: ActiveMQ Web Console - Cross-Site Scripting\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15520 invoked by uid 550); 9 Dec 2016 15:19:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8090 invoked from network); 9 Dec 2016 15:01:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=EcWmjPDf8LY3QmbG223kx5x1fefdQA1nPKcAD2xP0BI=;
        b=NtVuSA+/14BykaeSHDZhSKveriy6i8q4jLZVpMA0xlBV6lXwKqjYrPeTFaX2EKdvj8
         B0Czn3kj4l79T+68+w5Bu/bxiM6kFqRkr/DqVjCyPba1KFRVPlkBxSER5seFNUwLP2vc
         IaUtX7xTdwVZkQJJ85GhnILepIYfOLEPGmhmkq81r1DH4YWRx8dLHyIr9800YUov4sH9
         ktCfK1QHg/OCNKcBWm4/NgbXAQBYKAV2IiZUIQZWxSRC7b8hrX6BBnbfPNl+lgxRnYzR
         +AJsx9S41wubwFC4dDsfVAi0TaRsYbeti8H1buRo87ZZ7CMv2G2cky2BkVx895pDdNMa
         valw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=EcWmjPDf8LY3QmbG223kx5x1fefdQA1nPKcAD2xP0BI=;
        b=jfHJ7C5hSBuaUaHPkNJiAW1mIOgiO9sC+xST7OO9Z4GJ39JXC0mn7TEtyqu9cHqYfA
         oqUCHv2+wjLrG7ErjyFDo7JEv8FjoNN64pW/bgU5BqsA1L8ZH4Nk9zmLvifmQIyAOypO
         +v1rmQcAd3o51vkiawnVVdp1iUdMU9n3CSbpYzPvc2q+wN76lnR6Ct3J4noDGr9xuiXw
         9htMcbp7vFfaBjz4NIBuDod0rVxae49kXYnpH0vtsbI6CKdfhjiQQx3oX2sTg1KkCEG9
         hJHjNvI1AL1ect2TjXclNnCWNX3JW12hMdHUFVE7KSanxSBXlT86ZYzcUYCT3zUllVu9
         k3RQ==
X-Gm-Message-State: AKaTC007eCXfHObBXr97zU2Wh3fcMq7t0wHqWPH5Ayf5gBh2UKWjPwl0m8doPF8g/Ld33RGhGtl+jDHdqDi7qA==
X-Received: by 10.13.247.65 with SMTP id h62mr75815223ywf.56.1481295699380;
 Fri, 09 Dec 2016 07:01:39 -0800 (PST)
MIME-Version: 1.0
From: Christopher Shannon <christopher.l.shannon@gmail.com>
Date: Fri, 9 Dec 2016 10:01:08 -0500
Message-ID: <CACHnxzxPZ8t9HN0uC=BqM-0of1CYdZ+OJYOvOWs=bfnjQgCffw@mail.gmail.com>
To: dev@activemq.apache.org, users@activemq.apache.org, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Content-Type: multipart/alternative; boundary=94eb2c06ae32f82bab05433b0747
Subject: [oss-security] [ANNOUNCE] CVE-2016-6810: ActiveMQ Web Console - Cross-Site Scripting

--94eb2c06ae32f82bab05433b0747
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

The following security vulnerability was reported against Apache
ActiveMQ 5.14.1 and older versions.

Please check the following document and see if you=E2=80=99re affected by t=
he issue.

http://activemq.apache.org/security-advisories.data/CVE-2016-6810-announcem=
ent.txt

Apache ActiveMQ 5.14.2 has been released with appropriate fixes and is
available for upgrade.

--94eb2c06ae32f82bab05433b0747--
