X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1192" "Monday" "31" "January" "2022" "13:45:23" "+0100" "Enrico Olivelli" "eolivelli@apache.org" nil "33" "[oss-security] CVE-2021-41571: Apache Pulsar: Pulsar Admin API allows access to data from other tenants using getMessageById API" nil nil nil "1" nil nil (number mark "U       eolivelli@ap Jan 31   33/1192  " thread-indent "\"[oss-security] CVE-2021-41571: Apache Pulsar: Pulsar Admin API allows access to data from other tenants using getMessageById API\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-41571: Apache Pulsar: Pulsar Admin API allows access to data from other tenants using getMessageById API" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25775 invoked by uid 550); 31 Jan 2022 12:49:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24243 invoked from network); 31 Jan 2022 12:45:48 -0000
X-Gm-Message-State: AOAM531w0gsPmzUd8hsCg3dKM0fixSQWOUa5vxh57ZN0G16yBdOPLqhr
	AnOUxATRMrJNxDGDt4MXzUk0d+1Owz88xxMGTuQ=
X-Google-Smtp-Source: ABdhPJx4Unz6S7JrsGXI4zc3MJBX+/TVXOHUCQhd2tJ76v8kIoOnjJ5xvolSs92gmqB+ZFDCaHBNtUr5BsfbAFzcRd0=
X-Received: by 2002:aca:acce:: with SMTP id v197mr13665898oie.272.1643633134481;
 Mon, 31 Jan 2022 04:45:34 -0800 (PST)
MIME-Version: 1.0
From: Enrico Olivelli <eolivelli@apache.org>
Date: Mon, 31 Jan 2022 13:45:23 +0100
X-Gmail-Original-Message-ID: <CACcefgf1xWf2ysgXopjfaAEmmbhAPgfNS2jzpDVccOjrk8Tf1w@mail.gmail.com>
Message-ID: <CACcefgf1xWf2ysgXopjfaAEmmbhAPgfNS2jzpDVccOjrk8Tf1w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-41571: Apache Pulsar: Pulsar Admin API allows access to data
 from other tenants using getMessageById API

Severity: moderate

Description:

In Apache Pulsar it is possible to access data from BookKeeper that
does not belong to the topics accessible by the authenticated user.

The Admin API get-message-by-id requires the user to input a topic and
a ledger id. The ledger id is a pointer to the data, and it is
supposed to be a valid id for the topic.
Authorisation controls are performed against the topic name and there
is not proper validation that the ledger id is valid in the context of
such ledger.
So it may happen that the user is able to read from a ledger that
contains data owned by another tenant.

This issue affects Apache Pulsar Apache Pulsar version 2.8.0 and prior
versions; Apache Pulsar version 2.7.3 and prior versions; Apache
Pulsar version 2.6.4 and prior versions.

This issue is being tracked as https://github.com/apache/pulsar/issues/11814

Mitigation:

If you are running Pulsar behind a proxy you can disable access to the
REST API for the flawed API

/admin/v2/non-persistent/{tenant}/{namespace}/{topic}/ledger/{ledgerId}/entry/{entryId}

References:

https://pulsar.apache.org/admin-rest-api/#operation/getLastMessageId
https://github.com/apache/pulsar/issues/11814
