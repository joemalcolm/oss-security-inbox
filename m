X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["714" "Monday" "18" "January" "2021" "02:41:32" "-0800" "Mike Jumper" "mjumper@apache.org" "<CALKeL-OMTh-2TSdo8KvxX4U905KhtEF2h7EgsFUV7Q9H_xgCfw@mail.gmail.com>" "18" "[oss-security] [SECURITY] CVE-2020-11997: Apache Guacamole: Inconsistent restriction of connection history visibility" nil nil nil "1" "2021011810:41:32" "[oss-security] [SECURITY] CVE-2020-11997: Apache Guacamole: Inconsistent restriction of connection history visibility" (number mark "U       mjumper@apac Jan 18   18/714   " thread-indent "\"[oss-security] [SECURITY] CVE-2020-11997: Apache Guacamole: Inconsistent restriction of connection history visibility\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY] CVE-2020-11997: Apache Guacamole: Inconsistent restriction of connection history visibility" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31744 invoked by uid 550); 18 Jan 2021 11:39:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23923 invoked from network); 18 Jan 2021 10:42:21 -0000
X-Gm-Message-State: AOAM533+Yrer9cSOWq2x6InFDi4eT0s9NqsQI50KeJEd9m3qlumiKA9q
	qGar286oj1Ww5vT9HJ2yvaDZEZJtBwJX5Thqe3bHIQ==
X-Google-Smtp-Source: ABdhPJzGvg1c78RgDAMOT6t3ZxYQ5/Q+XaWu9INpCsl2B5jSy7d3GrAgdoTHN4RWHERIW9ZlR7Rt3WW0Rd3NcxFQsF0=
X-Received: by 2002:a25:d704:: with SMTP id o4mr278395ybg.151.1610966529093;
 Mon, 18 Jan 2021 02:42:09 -0800 (PST)
MIME-Version: 1.0
From: Mike Jumper <mjumper@apache.org>
Date: Mon, 18 Jan 2021 02:41:32 -0800
X-Gmail-Original-Message-ID: <CALKeL-OMTh-2TSdo8KvxX4U905KhtEF2h7EgsFUV7Q9H_xgCfw@mail.gmail.com>
Message-ID: <CALKeL-OMTh-2TSdo8KvxX4U905KhtEF2h7EgsFUV7Q9H_xgCfw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] CVE-2020-11997: Apache Guacamole: Inconsistent restriction
 of connection history visibility

CVE-2020-11997: Inconsistent restriction of connection history visibility

Versions affected:
Apache Guacamole 1.2.0 and earlier

Description:
Apache Guacamole 1.2.0 and older do not consistently restrict access
to connection history based on user visibility. If multiple users
share access to the same connection, those users may be able to see
which other users have accessed that connection, as well as the IP
addresses from which that connection was accessed, even if those users
do not otherwise have permission to see other users.

Mitigation:
Users of versions of Apache Guacamole 1.2.0 and older should upgrade to 1.3.0.

Credit:
We would like to thank William Le Berre (Synetis) for reporting this issue.
