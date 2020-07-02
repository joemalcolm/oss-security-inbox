X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["706" "Wednesday" "1" "July" "2020" "20:14:11" "-0700" "Mike Jumper" "mjumper@apache.org" "<CALKeL-PCDy9Y1bd1Nuj196_giWr4fSYyvrk74jfoLxpSysJf=A@mail.gmail.com>" "19" "[oss-security] [SECURITY] CVE-2020-9497: Apache Guacamole: Improper input validation of RDP static virtual channels" nil nil nil "7" "2020070203:14:11" "[oss-security] [SECURITY] CVE-2020-9497: Apache Guacamole: Improper input validation of RDP static virtual channels" (number mark "U       mjumper@apac Jul  1   19/706   " thread-indent "\"[oss-security] [SECURITY] CVE-2020-9497: Apache Guacamole: Improper input validation of RDP static virtual channels\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY] CVE-2020-9497: Apache Guacamole: Improper input validation of RDP static virtual channels" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25979 invoked by uid 550); 2 Jul 2020 07:37:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19543 invoked from network); 2 Jul 2020 03:15:00 -0000
X-Gm-Message-State: AOAM530rYda0aZpbk+ekexPj9EAffO8/O4ISB4U6zZLYa+rU8O8PVJsR
	m05O5hINbxsO5/WUWLIhzVNQDcoyQ7ydhkmPeaTfsQ==
X-Google-Smtp-Source: ABdhPJwhD8+P3HF7AtDFRu12NlvHjFjemBvViJFIIAhFZblL7hlcTO4OChwGQwqLCmzuWEkqfPq73vjEYnutQC9mUC4=
X-Received: by 2002:a17:906:ca0e:: with SMTP id jt14mr25041907ejb.325.1593659687238;
 Wed, 01 Jul 2020 20:14:47 -0700 (PDT)
MIME-Version: 1.0
From: Mike Jumper <mjumper@apache.org>
Date: Wed, 1 Jul 2020 20:14:11 -0700
X-Gmail-Original-Message-ID: <CALKeL-PCDy9Y1bd1Nuj196_giWr4fSYyvrk74jfoLxpSysJf=A@mail.gmail.com>
Message-ID: <CALKeL-PCDy9Y1bd1Nuj196_giWr4fSYyvrk74jfoLxpSysJf=A@mail.gmail.com>
To: announce@apache.org, announce@guacamole.apache.org, 
	dev@guacamole.apache.org, user@guacamole.apache.org
Cc: security@guacamole.apache.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] CVE-2020-9497: Apache Guacamole: Improper input validation
 of RDP static virtual channels

CVE-2020-9497: Improper input validation of RDP static virtual channels

Versions affected:
Apache Guacamole 1.1.0 and earlier

Description:
Apache Guacamole 1.1.0 and older do not properly validate data
received from RDP servers via static virtual channels. If a user
connects to a malicious or compromised RDP server, specially-crafted
PDUs could result in disclosure of information within the memory of
the guacd process handling the connection.

Mitigation:
Users of versions of Apache Guacamole 1.1.0 and older that provide
access to untrusted RDP servers should upgrade to 1.2.0.

Credit:
We would like to thank the GitHub Security Lab and Eyal Itkin (Check
Point Research) for reporting this issue.
