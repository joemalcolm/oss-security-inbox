X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["962" "Monday" "29" "March" "2021" "12:19:36" "-0700" "Jihoon Son" "jihoonson@apache.org" nil "27" "[oss-security] [CVE-2021-26919] Authenticated users can execute arbitrary code from malicious MySQL database systems" nil nil nil "3" nil nil (number mark "U       jihoonson@ap Mar 29   27/962   " thread-indent "\"[oss-security] [CVE-2021-26919] Authenticated users can execute arbitrary code from malicious MySQL database systems\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-26919] Authenticated users can execute arbitrary code from malicious MySQL database systems" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32456 invoked by uid 550); 29 Mar 2021 19:25:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30697 invoked from network); 29 Mar 2021 19:20:00 -0000
X-Gm-Message-State: AOAM5316mEwIlq0lf2tWPJCES7FhGypOugzrWkWwfdWXbNSMwSSgUrUC
	kaKWeo4xdszPNDNUILyOBVz6op2IhiWRHTcwmKY=
X-Google-Smtp-Source: ABdhPJyv1mWEjxullOAfPu06Ol5NBKUlg0QtJGZ+ejc2SON3hjDWleElgyWvZjukScqgXAmP4Er6INbsanoWBzoe8Mc=
X-Received: by 2002:ac8:678f:: with SMTP id b15mr23529982qtp.262.1617045587139;
 Mon, 29 Mar 2021 12:19:47 -0700 (PDT)
MIME-Version: 1.0
From: Jihoon Son <jihoonson@apache.org>
Date: Mon, 29 Mar 2021 12:19:36 -0700
X-Gmail-Original-Message-ID: <CACZfFK7iNuZ33z5H7b8spJxGZhPyc51O-9zfRq-Cp4Cf-tTqTw@mail.gmail.com>
Message-ID: <CACZfFK7iNuZ33z5H7b8spJxGZhPyc51O-9zfRq-Cp4Cf-tTqTw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2021-26919] Authenticated users can execute arbitrary code from
 malicious MySQL database systems

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
Druid 0.20.1 and earlier

Description:
Druid allows users to read data from other database systems using
JDBC. This functionality is to allow trusted users with the proper
permissions to set up lookups or submit ingestion tasks. The MySQL
JDBC driver supports certain properties, which, if left unmitigated,
can allow an attacker to execute arbitrary code from a
hacker-controlled malicious MySQL server within Druid server
processes.

Mitigation:
Users should upgrade to Druid 0.20.2 and enable new Druid
configurations to mitigate vulnerable MySQL JDBC properties.
Whenever possible, network access to cluster machines should be
restricted to trusted hosts only.
Ensure that users have the minimum set of Druid permissions necessary,
and are not granted access to functionality that they do not require.

Credit:
This issue was discovered by fantasyC4t from the Ant FG Security Lab.
