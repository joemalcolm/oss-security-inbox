X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["525" "Friday" "17" "September" "2021" "11:07:19" "+0100" "Colm O hEigeartaigh" "coheigea@apache.org" nil "16" "[oss-security] CVE-2021-40690: Apache Santuario: Bypass of the secureValidation property" nil nil nil "9" nil nil (number mark "U       coheigea@apa Sep 17   16/525   " thread-indent "\"[oss-security] CVE-2021-40690: Apache Santuario: Bypass of the secureValidation property\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-40690: Apache Santuario: Bypass of the secureValidation property" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14160 invoked by uid 550); 17 Sep 2021 11:19:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13830 invoked from network); 17 Sep 2021 10:07:44 -0000
X-Gm-Message-State: AOAM533+/PK+wEW1a0YpiYPV9sOXcjwyrnynzpU8ZsH5PgR9FuNjclmD
	B/018EHxQQNstFSQWf3SQKpjC+9djfgKZDKZuBA=
X-Google-Smtp-Source: ABdhPJwxanztmQ4DC+jPw/EPE+spuyv6/2ocd/2k1wKYn/LbRJ6BDkczO6XJrsjtv/jk5WIgCgpGrOtRY4C+VAaLAnc=
X-Received: by 2002:a05:6102:30ad:: with SMTP id y13mr1833672vsd.60.1631873250480;
 Fri, 17 Sep 2021 03:07:30 -0700 (PDT)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Fri, 17 Sep 2021 11:07:19 +0100
X-Gmail-Original-Message-ID: <CAB8XdGAMZrPaNOxowgAaotbePiiC4EOTYw7Ri3DNqAVZQb0y8g@mail.gmail.com>
Message-ID: <CAB8XdGAMZrPaNOxowgAaotbePiiC4EOTYw7Ri3DNqAVZQb0y8g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-40690: Apache Santuario: Bypass of the secureValidation property

Description:

All versions of Apache Santuario - XML Security for Java prior to
2.2.3 and 2.1.7 are vulnerable to an issue where the
"secureValidation" property is not passed correctly when creating a
KeyInfo from a KeyInfoReference element. This allows an attacker to
abuse an XPath Transform to extract any local .xml files in a
RetrievalMethod element.

Credit:

An Trinh, Calif.

References:

https://lists.apache.org/thread.html/r8848751b6a5dd78cc9e99d627e74fecfaffdfa1bb615dce827aad633%40%3Cdev.santuario.apache.org%3E
