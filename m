X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["759" "Friday" "7" "August" "2020" "17:27:04" "-0700" "Ian Maxon" "imaxon@apache.org" "<CAKMqrge9afTtC-oF6b6-sn6dN-4+QNHSmt50eA54mMnP=vCzzw@mail.gmail.com>" "20" "[oss-security] [CVE-2020-9479] Directory traversal vulnerability in Apache AsterixDB" nil nil nil "8" "2020080800:27:04" "[oss-security] [CVE-2020-9479] Directory traversal vulnerability in Apache AsterixDB" (number mark "U       imaxon@apach Aug  7   20/759   " thread-indent "\"[oss-security] [CVE-2020-9479] Directory traversal vulnerability in Apache AsterixDB\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-9479] Directory traversal vulnerability in Apache AsterixDB" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16103 invoked by uid 550); 8 Aug 2020 07:28:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1794 invoked from network); 8 Aug 2020 00:27:26 -0000
X-Gm-Message-State: AOAM5303ybSzTxWvP5/LIycwCrHvYOuraz9spT4eUDSzCFlBdL26dpCY
	xo14hOYzw7xpQklBQU3REe0C/NXmiubeK2jW2wM=
X-Google-Smtp-Source: ABdhPJyor48n/qOcdqAKrjokwq2k7SuEvnRQT8hdHPSTZs9m+XqVAEwxpmJLScZ3M+JzNyJ2NDAiIeXfD/zReJ+Tl5o=
X-Received: by 2002:a2e:b051:: with SMTP id d17mr7375582ljl.231.1596846433210;
 Fri, 07 Aug 2020 17:27:13 -0700 (PDT)
MIME-Version: 1.0
From: Ian Maxon <imaxon@apache.org>
Date: Fri, 7 Aug 2020 17:27:04 -0700
X-Gmail-Original-Message-ID: <CAKMqrge9afTtC-oF6b6-sn6dN-4+QNHSmt50eA54mMnP=vCzzw@mail.gmail.com>
Message-ID: <CAKMqrge9afTtC-oF6b6-sn6dN-4+QNHSmt50eA54mMnP=vCzzw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2020-9479] Directory traversal vulnerability in Apache AsterixDB

CVE-2020-9479: AsterixDB directory traversal
Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: None released, git commits
580b81aa5e8888b8e1b0620521a1c9680e54df73 to
28c0ee84f1387ab5d0659e9e822f4e3923ddc22d ,
fixed in 28c0ee84f1387ab5d0659e9e822f4e3923ddc22d and mitigated by
694ffd194ce5c6e610f61368c1511778d0bff254
Description: When loading a UDF, a specially crafted zip file could
allow files to be placed outside of the UDF deployment directory.

Mitigation: Upgrade unreleased versions past
28c0ee84f1387ab5d0659e9e822f4e3923ddc22d or to 0.9.5 .
Don't allow untrusted access to the UDF endpoint.

Example: The zip file will contain a directory entry named ".."

Credit: This issue was discovered by Yiming Xiang of NSFOCUS
