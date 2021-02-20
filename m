X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["789" "Saturday" "20" "February" "2021" "09:52:09" "+0800" "Jerry Shao" "jshao@apache.org" nil "26" "[oss-security] CVE-2021-26544: Apache Livy (Incubating) is vulnerable to cross site scripting" nil nil nil "2" nil nil (number mark "U       jshao@apache Feb 20   26/789   " thread-indent "\"[oss-security] CVE-2021-26544: Apache Livy (Incubating) is vulnerable to cross site scripting\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-26544: Apache Livy (Incubating) is vulnerable to cross site scripting" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6100 invoked by uid 550); 20 Feb 2021 07:45:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9866 invoked from network); 20 Feb 2021 01:51:57 -0000
X-Gm-Message-State: AOAM531EuTfwmy2vPgaAUkg8/86dqqJRbt+IJowHQqVSXRpR3lJdJKf+
	/cIXhQkaK3MK9gtJRwwpKgKkydgrYv5sfh4Aw94=
X-Google-Smtp-Source: ABdhPJxbc74bRyraxgSi9tJLOJkhxq1UZZyIdIUPX/XfVarZh7/T2kgDZGcZXip297fVGVRW3MjcdOhNfQKJKu+HwCw=
X-Received: by 2002:a92:6403:: with SMTP id y3mr6199253ilb.90.1613785903500;
 Fri, 19 Feb 2021 17:51:43 -0800 (PST)
MIME-Version: 1.0
From: Jerry Shao <jshao@apache.org>
Date: Sat, 20 Feb 2021 09:52:09 +0800
X-Gmail-Original-Message-ID: <CANvfmP8oAx1QMY-dStGLA1obfucRF3Us4Vq2EnqE9bORcLXQtA@mail.gmail.com>
Message-ID: <CANvfmP8oAx1QMY-dStGLA1obfucRF3Us4Vq2EnqE9bORcLXQtA@mail.gmail.com>
To: user@livy.incubator.apache.org, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000085970a05bbbacfd4"
Subject: [oss-security] CVE-2021-26544: Apache Livy (Incubating) is vulnerable to cross site scripting

--00000000000085970a05bbbacfd4
Content-Type: text/plain; charset="UTF-8"

Description:

Livy server version 0.7.0-incubating (only) is vulnerable to a cross
site scripting issue in the session name.  A malicious user could use
this flaw to access logs and results of other users' sessions and run
jobs with their privileges.  This issue is fixed in Livy
0.7.1-incubating.

This issue is being tracked as
https://github.com/apache/incubator-livy/commit/4d8a912699683b973eee76d4e91447d769a0cb0d

Mitigation:

Users can upgrade to 0.7.1-incubating or apply the patch at the github URL.

Credit:

We would like to thank Andras Beni for reporting this issue

References:
https://github.com/apache/incubator-livy/commit/4d8a912699683b973eee76d4e91447d769a0cb0d

--00000000000085970a05bbbacfd4--
