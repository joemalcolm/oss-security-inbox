X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["724" "Wednesday" "1" "July" "2020" "20:15:07" "-0700" "Mike Jumper" "mjumper@apache.org" "<CALKeL-NrWzYLfautHShBxs3xsnxq5oO5fUhC1VAoDaX8rSBTbg@mail.gmail.com>" "20" "[oss-security] [SECURITY] CVE-2020-9498: Apache Guacamole: Dangling pointer in RDP static virtual channel handling" nil nil nil "7" "2020070203:15:07" "[oss-security] [SECURITY] CVE-2020-9498: Apache Guacamole: Dangling pointer in RDP static virtual channel handling" (number mark "U       mjumper@apac Jul  1   20/724   " thread-indent "\"[oss-security] [SECURITY] CVE-2020-9498: Apache Guacamole: Dangling pointer in RDP static virtual channel handling\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY] CVE-2020-9498: Apache Guacamole: Dangling pointer in RDP static virtual channel handling" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26587 invoked by uid 550); 2 Jul 2020 07:37:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19769 invoked from network); 2 Jul 2020 03:15:55 -0000
X-Gm-Message-State: AOAM531J3rMkAL9MNFSTRVJBtDeYbnqSIHiLSfauPaVeK4T1TvGPyJLv
	+nivTWMmHeJR/vBkpoVut7a1VIV66Ie9rQ+uprkGmQ==
X-Google-Smtp-Source: ABdhPJwrKEemswV2dMBwcbHy/Y0j4gs+/MLdXxikFx4EhugoimYw/+/7TYtls5D4AwxUuwgbO8WCx1IaGbh8+YgHA8c=
X-Received: by 2002:a17:906:d9d9:: with SMTP id qk25mr27054397ejb.448.1593659742272;
 Wed, 01 Jul 2020 20:15:42 -0700 (PDT)
MIME-Version: 1.0
From: Mike Jumper <mjumper@apache.org>
Date: Wed, 1 Jul 2020 20:15:07 -0700
X-Gmail-Original-Message-ID: <CALKeL-NrWzYLfautHShBxs3xsnxq5oO5fUhC1VAoDaX8rSBTbg@mail.gmail.com>
Message-ID: <CALKeL-NrWzYLfautHShBxs3xsnxq5oO5fUhC1VAoDaX8rSBTbg@mail.gmail.com>
To: announce@apache.org, announce@guacamole.apache.org, 
	dev@guacamole.apache.org, user@guacamole.apache.org
Cc: security@guacamole.apache.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] CVE-2020-9498: Apache Guacamole: Dangling pointer in RDP
 static virtual channel handling

CVE-2020-9498: Dangling pointer in RDP static virtual channel handling

Versions affected:
Apache Guacamole 1.1.0 and earlier

Description:
Apache Guacamole 1.1.0 and older may mishandle pointers involved in
processing data received via RDP static virtual channels. If a user
connects to a malicious or compromised RDP server, a series of
specially-crafted PDUs could result in memory corruption, possibly
allowing arbitrary code to be executed with the privileges of the
running guacd process.

Mitigation:
Users of versions of Apache Guacamole 1.1.0 and older that provide
access to untrusted RDP servers should upgrade to 1.2.0.

Credit:
We would like to thank Eyal Itkin (Check Point Research) for reporting
this issue.
