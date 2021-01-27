X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["543" "Wednesday" "27" "January" "2021" "15:54:48" "+0000" "Gary Tully" "gtully@apache.org" "<CAH+vQmNsjKW04ovT5Vmu-fYCn3877OUQ2DgUtRQCqTe0e4as+g@mail.gmail.com>" "20" "[oss-security] CVE-2021-26118: Flaw in ActiveMQ Artemis OpenWire support" nil nil nil "1" "2021012715:54:48" "[oss-security] CVE-2021-26118: Flaw in ActiveMQ Artemis OpenWire support" (number mark "U       gtully@apach Jan 27   20/543   " thread-indent "\"[oss-security] CVE-2021-26118: Flaw in ActiveMQ Artemis OpenWire support\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-26118: Flaw in ActiveMQ Artemis OpenWire support" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16049 invoked by uid 550); 27 Jan 2021 15:58:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11378 invoked from network); 27 Jan 2021 15:55:12 -0000
X-Gm-Message-State: AOAM533LoD69DNUw4tL+pBAoB2jZRzohNS8LGCkA7Vqh8AyFgewgCloa
	DILL01iQTBfqYILjL/pM88Y05yiSSZguwaUHMu4=
X-Google-Smtp-Source: ABdhPJytYBUEEflPQpql0Ys0fwAo3wgQWMQcs1lwOa+THVWc8wE1RqDkY2fWVL+2yie9vYIhbXVUun4IwrhhO0XD9oU=
X-Received: by 2002:a02:6208:: with SMTP id d8mr6476394jac.56.1611762898689;
 Wed, 27 Jan 2021 07:54:58 -0800 (PST)
MIME-Version: 1.0
From: Gary Tully <gtully@apache.org>
Date: Wed, 27 Jan 2021 15:54:48 +0000
X-Gmail-Original-Message-ID: <CAH+vQmNsjKW04ovT5Vmu-fYCn3877OUQ2DgUtRQCqTe0e4as+g@mail.gmail.com>
Message-ID: <CAH+vQmNsjKW04ovT5Vmu-fYCn3877OUQ2DgUtRQCqTe0e4as+g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-26118: Flaw in ActiveMQ Artemis OpenWire support

Description:

While investigating ARTEMIS-2964 it was found that the creation of
advisory messages in the OpenWire protocol head of Apache ActiveMQ
Artemis 2.15.0 bypassed policy based access control for the entire
session. Production of advisory messages was not subject to access
control in error.


This issue is being tracked as
https://issues.apache.org/jira/browse/ARTEMIS-2964

Mitigation:

Upgrade to Apache ActiveMQ Artemis 2.16.0

Credit:

Apache ActiveMQ  would like to thank Francesco Marchioni (Red Hat) for
reporting this issue.
