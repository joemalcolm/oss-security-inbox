X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["476" "Tuesday" "9" "March" "2021" "16:02:23" "+0100" "=?UTF-8?B?R8OpemFwZXRpIENzZWg=?=" "gezapeti@apache.org" nil "18" "[oss-security] CVE-2020-35451: Oozie local privilege escalation" nil nil nil "3" nil nil (number mark "U       gezapeti@apa Mar  9   18/476   " thread-indent "\"[oss-security] CVE-2020-35451: Oozie local privilege escalation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-35451: Oozie local privilege escalation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10158 invoked by uid 550); 9 Mar 2021 15:06:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5857 invoked from network); 9 Mar 2021 15:03:20 -0000
X-Gm-Message-State: AOAM533FqSrn0kngQljxEzANaAX3JeHl1U14DzynXOW3xUMTIbyzIUi8
	dNgHuZATpiLegm+nN6R92g6J4AiIU+ROgRcngws=
X-Google-Smtp-Source: ABdhPJyV6/1VXI4adDLoZU7qpfyMf3N9F2mAD+gJnmHd86IEVzYHUAY8VvUxzo5dlbsD6ErURKqwHG+hwDT5d4TYOMo=
X-Received: by 2002:ac8:4314:: with SMTP id z20mr8066804qtm.127.1615302179974;
 Tue, 09 Mar 2021 07:02:59 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?G=C3=A9zapeti_Cseh?= <gezapeti@apache.org>
Date: Tue, 9 Mar 2021 16:02:23 +0100
X-Gmail-Original-Message-ID: <CAHydKRCvKgWUm=J=WYJ=UWEfAsO67UDjo2ReDwq6fd=da4amqg@mail.gmail.com>
Message-ID: <CAHydKRCvKgWUm=J=WYJ=UWEfAsO67UDjo2ReDwq6fd=da4amqg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2020-35451: Oozie local privilege escalation

Description:

There is a race condition in OozieSharelibCLI which allows a malicious
attacker to replace the files in Oozie's sharelib during it's
creation.

A race condition in OozieSharelibCLI allows an attacker to replace the
contents of the sharelib.  This issue affects Apache Oozie versions
prior to 5.2.1.

Mitigation:

Validate the contents of the sharelib after uploading.

Credit:

The Apache Oozie PMC would like to thank Jonathan Leitschuh for
reporting the issue
