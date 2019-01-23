X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["587" "Wednesday" "23" "January" "2019" "14:21:30" "-0800" "Mike Jumper" "mjumper@apache.org" "<CALKeL-M8wreyyeUigfN=au1foco8K1fJXDEe-5EEEjXoYzsbiA@mail.gmail.com>" "17" "[oss-security] CVE-2018-1340: Apache Guacamole: Secure flag missing from session cookie" nil nil nil "1" "2019012322:21:30" "[oss-security] CVE-2018-1340: Apache Guacamole: Secure flag missing from session cookie" (number mark "U       mjumper@apac Jan 23   17/587   " thread-indent "\"[oss-security] CVE-2018-1340: Apache Guacamole: Secure flag missing from session cookie\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28349 invoked by uid 550); 24 Jan 2019 07:31:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22283 invoked from network); 23 Jan 2019 22:22:23 -0000
X-Gm-Message-State: AJcUukdZDZjSKZlA0usY1Y6SXBqLIMaYQZwIGgNts2zkS6vBVC5TiPni
	6TkrDIajst+aUD7C5LuKPfr550GtLcIAoXqwMf4c7w==
X-Google-Smtp-Source: ALg8bN4XB4nPLvU+Zrwlg4rJdu/zUidtlI1poywZaOLC7YWzSu9gdROqwin70pk1d+QfWgRE1fdg/fEm7W7bzQ72M0M=
X-Received: by 2002:aca:af53:: with SMTP id y80mr2617837oie.170.1548282129047;
 Wed, 23 Jan 2019 14:22:09 -0800 (PST)
MIME-Version: 1.0
From: Mike Jumper <mjumper@apache.org>
Date: Wed, 23 Jan 2019 14:21:30 -0800
X-Gmail-Original-Message-ID: <CALKeL-M8wreyyeUigfN=au1foco8K1fJXDEe-5EEEjXoYzsbiA@mail.gmail.com>
Message-ID: <CALKeL-M8wreyyeUigfN=au1foco8K1fJXDEe-5EEEjXoYzsbiA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2018-1340: Apache Guacamole: Secure flag missing from session cookie

CVE-2018-1340: Secure flag missing from Apache Guacamole session cookie

Versions affected:
Apache Guacamole 0.9.4 through 0.9.14

Description:
Prior to 1.0.0, Apache Guacamole used a cookie for client-side storage
of the user's session token. This cookie lacked the "secure" flag,
which could allow an attacker eavesdropping on the network to
intercept the user's session token if unencrypted HTTP requests are
made to the same domain.

Mitigation:
Users of Apache Guacamole 0.9.14 or older should upgrade to 1.0.0.

Credit:
We would like to thank Ross Golder for reporting this issue.
