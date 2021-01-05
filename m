X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["859" "Tuesday" "5" "January" "2021" "12:20:58" "+0100" "Robert Metzger" "rmetzger@apache.org" "<CAGr9p8CrKpXdkd2aP9P7ke9M+fADrYHd9D=AAv+VJe3kRsqndA@mail.gmail.com>" "28" "[oss-security] [CVE-2020-17519] Apache Flink directory traversal attack: reading remote files through the REST API" nil nil nil "1" "2021010511:20:58" "[oss-security] [CVE-2020-17519] Apache Flink directory traversal attack: reading remote files through the REST API" (number mark "U       rmetzger@apa Jan  5   28/859   " thread-indent "\"[oss-security] [CVE-2020-17519] Apache Flink directory traversal attack: reading remote files through the REST API\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-17519] Apache Flink directory traversal attack: reading remote files through the REST API" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1665 invoked by uid 550); 5 Jan 2021 11:49:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22242 invoked from network); 5 Jan 2021 11:21:26 -0000
X-Gm-Message-State: AOAM530qEx9Xpnu4h8FBU5disR2VcMcrLzk9LXLemDRJSR+CRoHP7wwe
	LJaEAD2XWeMmd9BIXS+NIUY4LT2yEDsTuGXlL6o=
X-Google-Smtp-Source: ABdhPJwBaB+7C8/SISKm1L10o9/Td4h9pW9JcFp1dmf34I+al5zd8JvuQLShOddZ2F1Nhhw6T1k+hn1mfcjFjb8LKkE=
X-Received: by 2002:aca:4a84:: with SMTP id x126mr2178135oia.111.1609845674167;
 Tue, 05 Jan 2021 03:21:14 -0800 (PST)
MIME-Version: 1.0
From: Robert Metzger <rmetzger@apache.org>
Date: Tue, 5 Jan 2021 12:20:58 +0100
X-Gmail-Original-Message-ID: <CAGr9p8CrKpXdkd2aP9P7ke9M+fADrYHd9D=AAv+VJe3kRsqndA@mail.gmail.com>
Message-ID: <CAGr9p8CrKpXdkd2aP9P7ke9M+fADrYHd9D=AAv+VJe3kRsqndA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000008d514a05b82567cc"
Subject: [oss-security] [CVE-2020-17519] Apache Flink directory traversal attack: reading
 remote files through the REST API

--0000000000008d514a05b82567cc
Content-Type: text/plain; charset="UTF-8"

CVE-2020-17519: Apache Flink directory traversal attack: reading remote
files through the REST API

Vendor:
The Apache Software Foundation

Versions Affected:
1.11.0, 1.11.1, 1.11.2

Description:
A change introduced in Apache Flink 1.11.0 (and released in 1.11.1 and
1.11.2 as well) allows attackers to read any file on the local filesystem
of the JobManager through the REST interface of the JobManager process.
Access is restricted to files accessible by the JobManager process.

Mitigation:
All users should upgrade to Flink 1.11.3 or 1.12.0 if their Flink
instance(s) are exposed.
The issue was fixed in commit b561010b0ee741543c3953306037f00d7a9f0801 from
apache/flink:master.

Credits:
This issue was discovered by 0rich1 of Ant Security FG Lab

--0000000000008d514a05b82567cc--
