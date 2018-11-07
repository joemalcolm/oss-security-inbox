X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["511" "Wednesday" "7" "November" "2018" "13:24:03" "-0800" "Daniel Dai" "daijy@apache.org" "<CABDpyChoSC+O_whkL_7Zh4ZMiXf7qmWpKoa-hep0dS6MTnJYJA@mail.gmail.com>" "15" "[oss-security] [SECURITY] CVE-2018-1314: Hive explain query not being authorized" nil nil nil "11" "2018110721:24:03" "[oss-security] [SECURITY] CVE-2018-1314: Hive explain query not being authorized" (number mark "U       daijy@apache Nov  7   15/511   " thread-indent "\"[oss-security] [SECURITY] CVE-2018-1314: Hive explain query not being authorized\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7613 invoked by uid 550); 8 Nov 2018 11:05:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19560 invoked from network); 7 Nov 2018 21:25:17 -0000
X-Gm-Message-State: AGRZ1gLRuDPRAa+EsojQgD6BkJCw+r0oCze19jOHEvpHC4OAJWpiAmtH
	AZrEAd+AZbTldLtxix2hTQ9iYE8m9++PB+9nHOY=
X-Google-Smtp-Source: AJdET5fFG9w4CNc7MIG9pFRZiMrT3hDI41lCffIJFT7PYksK6AhtrDgDket2Zv1tjZbNwyMXE+m4eprrExnwYd0fLaQ=
X-Received: by 2002:a05:660c:8c2:: with SMTP id g2mr1690339itl.22.1541625856252;
 Wed, 07 Nov 2018 13:24:16 -0800 (PST)
MIME-Version: 1.0
From: Daniel Dai <daijy@apache.org>
Date: Wed, 7 Nov 2018 13:24:03 -0800
X-Gmail-Original-Message-ID: <CABDpyChoSC+O_whkL_7Zh4ZMiXf7qmWpKoa-hep0dS6MTnJYJA@mail.gmail.com>
Message-ID: <CABDpyChoSC+O_whkL_7Zh4ZMiXf7qmWpKoa-hep0dS6MTnJYJA@mail.gmail.com>
To: user@hive.apache.org, dev@hive.apache.org, announce@apache.org, 
	security <security@hive.apache.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] CVE-2018-1314: Hive explain query not being authorized

CVE-2018-1314: Hive explain query not being authorized

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: This vulnerability affects all versions of Hive,
including 2.3.3, 3.1.0 and earlier

Description: Hive "EXPLAIN" operation does not check for necessary
authorization of involved entities in a query. An unauthorized user
can do "EXPLAIN" on arbitrary table or view and expose table metadata
and statistics.

Mitigation: all Hive users shall upgrade to 2.3.4 or 3.1.1 or later
