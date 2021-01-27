X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["596" "Wednesday" "27" "January" "2021" "16:54:21" "+0000" "Gary Tully" "gtully@apache.org" "<CAH+vQmOyG58Sa5CF=LACmsmfBBCY=FPoiYUXMnro5reDXhqDqg@mail.gmail.com>" "17" "[oss-security] CVE-2021-26117: ActiveMQ: LDAP-Authentication does not verify passwords on servers with anonymous bind" nil nil nil "1" "2021012716:54:21" "[oss-security] CVE-2021-26117: ActiveMQ: LDAP-Authentication does not verify passwords on servers with anonymous bind" (number mark "U       gtully@apach Jan 27   17/596   " thread-indent "\"[oss-security] CVE-2021-26117: ActiveMQ: LDAP-Authentication does not verify passwords on servers with anonymous bind\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-26117: ActiveMQ: LDAP-Authentication does not verify passwords on servers with anonymous bind" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22334 invoked by uid 550); 27 Jan 2021 17:11:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11789 invoked from network); 27 Jan 2021 16:54:45 -0000
X-Gm-Message-State: AOAM532tyus6xH9OIWmOTXnWeDOCk/XJxCzHxnpAzttI3rXAoCObdd7d
	KKHYOXrntbOhwwhLnsG418P3P2LmE7Yp0Xbjf2Y=
X-Google-Smtp-Source: ABdhPJyo4gpfCDShPCGgCqeaRfGZo/Q8bNrrViUoAWPD72CjbVxXrCxM5Qg39OSHVbzD7/84LdPYiriCz+ZFlaibS7g=
X-Received: by 2002:a92:dc02:: with SMTP id t2mr9153461iln.293.1611766472612;
 Wed, 27 Jan 2021 08:54:32 -0800 (PST)
MIME-Version: 1.0
From: Gary Tully <gtully@apache.org>
Date: Wed, 27 Jan 2021 16:54:21 +0000
X-Gmail-Original-Message-ID: <CAH+vQmOyG58Sa5CF=LACmsmfBBCY=FPoiYUXMnro5reDXhqDqg@mail.gmail.com>
Message-ID: <CAH+vQmOyG58Sa5CF=LACmsmfBBCY=FPoiYUXMnro5reDXhqDqg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-26117: ActiveMQ: LDAP-Authentication does not verify
 passwords on servers with anonymous bind

Description:

The optional ActiveMQ LDAP login module can be configured to use
anonymous access to the LDAP server. In this case, for Apache ActiveMQ
Artemis prior to version 2.16.0 and Apache ActiveMQ prior to versions
5.16.1 and 5.15.14, the anonymous context is used to verify a valid
users password in error, resulting in no check on the password.


This issue is being tracked as
https://issues.apache.org/jira/browse/ARTEMIS-2895,
https://issues.apache.org/jira/browse/AMQ-8035

Credit:

Apache ActiveMQ would like to thank Gregor Tudan
<gregor.tudan@cofinpro.de> for reporting this issue.
