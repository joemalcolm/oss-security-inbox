X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["809" "Tuesday" "5" "January" "2021" "12:19:59" "+0100" "Robert Metzger" "rmetzger@apache.org" "<CAGr9p8A6LeRDMwc88DDOPo1WfGr1PR63WvGOSrPdHqR6uupZ4g@mail.gmail.com>" "28" "[oss-security] [CVE-2020-17518] Apache Flink directory traversal attack: remote file writing through the REST API" nil nil nil "1" "2021010511:19:59" "[oss-security] [CVE-2020-17518] Apache Flink directory traversal attack: remote file writing through the REST API" (number mark "U       rmetzger@apa Jan  5   28/809   " thread-indent "\"[oss-security] [CVE-2020-17518] Apache Flink directory traversal attack: remote file writing through the REST API\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-17518] Apache Flink directory traversal attack: remote file writing through the REST API" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1197 invoked by uid 550); 5 Jan 2021 11:49:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22023 invoked from network); 5 Jan 2021 11:20:30 -0000
X-Gm-Message-State: AOAM532VCjklrPKw1W8+VR18goonanxb1e/NIu3wBtbcVHrtDhRgKjwd
	GnDkpxW7UejCekqKBhFIq4LXIOTsj+zS64T+pKE=
X-Google-Smtp-Source: ABdhPJykhw1Qzbf8lwnqEmwA+Mvw0F1VX0hoGfpyBuNzpMCv5x5Yvzkw4OvJOAOQ6clCSHqUZRhgYjBlNnKPGVMDkyQ=
X-Received: by 2002:a05:6808:199:: with SMTP id w25mr2217791oic.151.1609845615678;
 Tue, 05 Jan 2021 03:20:15 -0800 (PST)
MIME-Version: 1.0
From: Robert Metzger <rmetzger@apache.org>
Date: Tue, 5 Jan 2021 12:19:59 +0100
X-Gmail-Original-Message-ID: <CAGr9p8A6LeRDMwc88DDOPo1WfGr1PR63WvGOSrPdHqR6uupZ4g@mail.gmail.com>
Message-ID: <CAGr9p8A6LeRDMwc88DDOPo1WfGr1PR63WvGOSrPdHqR6uupZ4g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000010d9cc05b82564fe"
Subject: [oss-security] [CVE-2020-17518] Apache Flink directory traversal attack: remote file
 writing through the REST API

--00000000000010d9cc05b82564fe
Content-Type: text/plain; charset="UTF-8"

CVE-2020-17518: Apache Flink directory traversal attack: remote file
writing through the REST API

Vendor:
The Apache Software Foundation

Versions Affected:
1.5.1 to 1.11.2

Description:
Flink 1.5.1 introduced a REST handler that allows you to write an uploaded
file to an arbitrary location on the local file system, through a
maliciously modified HTTP HEADER. The files can be written to any location
accessible by Flink 1.5.1.

Mitigation:
All users should upgrade to Flink 1.11.3 or 1.12.0 if their Flink
instance(s) are exposed.
The issue was fixed in commit a5264a6f41524afe8ceadf1d8ddc8c80f323ebc4 from
apache/flink:master.

Credits:
This issue was discovered by 0rich1 of Ant Security FG Lab

--00000000000010d9cc05b82564fe--
