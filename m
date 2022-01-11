X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["465" "Tuesday" "11" "January" "2022" "13:21:26" "-0800" "Mike Jumper" "mjumper@apache.org" nil "14" "[oss-security] [SECURITY] CVE-2021-41767: Apache Guacamole: Private tunnel identifier may be included in the non-private details of active connections" nil nil nil "1" nil nil (number mark "U       mjumper@apac Jan 11   14/465   " thread-indent "\"[oss-security] [SECURITY] CVE-2021-41767: Apache Guacamole: Private tunnel identifier may be included in the non-private details of active connections\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY] CVE-2021-41767: Apache Guacamole: Private tunnel identifier may be included in the non-private details of active connections" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9684 invoked by uid 550); 11 Jan 2022 21:53:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26201 invoked from network); 11 Jan 2022 21:22:14 -0000
X-Gm-Message-State: AOAM532r8DN8htOqrbpq00imR0KRT2yojRHRc63yMHqVzeTRLYL8I8Oy
	TDyiXDxAaxfV1SXuQCmpD8QgKC3wasmJJ6i8J1BDzg==
X-Google-Smtp-Source: ABdhPJyFv3tpSRGA/NXeqycwLhVUMwvPLoSRrq5kQvlWPQcC3GbBARp+fplvyrmfqSQT/ekAjfcsvS0UYws+6t+AYA0=
X-Received: by 2002:a25:ab8c:: with SMTP id v12mr6793821ybi.224.1641936116812;
 Tue, 11 Jan 2022 13:21:56 -0800 (PST)
MIME-Version: 1.0
From: Mike Jumper <mjumper@apache.org>
Date: Tue, 11 Jan 2022 13:21:26 -0800
X-Gmail-Original-Message-ID: <CALKeL-MkfdjgQXwtCBerW_rU=Z4irnMez9nXTEDJA8O8tm2yng@mail.gmail.com>
Message-ID: <CALKeL-MkfdjgQXwtCBerW_rU=Z4irnMez9nXTEDJA8O8tm2yng@mail.gmail.com>
To: announce@apache.org, announce@guacamole.apache.org, 
	dev@guacamole.apache.org, user@guacamole.apache.org
Cc: security@guacamole.apache.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] CVE-2021-41767: Apache Guacamole: Private tunnel
 identifier may be included in the non-private details of active connections

Severity: moderate

Description:

Apache Guacamole 1.3.0 and older may incorrectly include a private
tunnel identifier in the non-private details of some REST responses.
This may allow an authenticated user who already has permission to
access a particular connection to read from or interact with another
user's active use of that same connection.

Credit:

We would like to thank Damian Velardo (Australia and New Zealand
Banking Group) for reporting this issue.
