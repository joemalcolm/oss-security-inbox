X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1011" "Sunday" "18" "November" "2018" "09:37:02" "-0600" "Sean Owen" "srowen@apache.org" "<CAEccTyxgEHqpH3a5fa+Yj+AptwyATbau8T24b8JjU41mP_d01w@mail.gmail.com>" "27" "[oss-security] CVE-2018-17190: Unsecured Apache Spark standalone executes user code" "^Date:" nil nil "11" "2018111815:37:02" "[oss-security] CVE-2018-17190: Unsecured Apache Spark standalone executes user code" (number mark "U       srowen@apach Nov 18   27/1011  " thread-indent "\"[oss-security] CVE-2018-17190: Unsecured Apache Spark standalone executes user code\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1055 invoked by uid 550); 18 Nov 2018 16:28:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26307 invoked from network); 18 Nov 2018 15:37:28 -0000
X-Gm-Message-State: AGRZ1gJIthGOXRxx7PwjXoIrQ9VybWrQlnxhcGOLoXNnrcca+qqHUEGO
	aZEDVYp2z+ZuMOFo62WvmZgWEnCqu77DimR0Heg=
X-Google-Smtp-Source: AJdET5eNfqlRxNgYxyPs/QsSX2oJeyTj0URy/4/ep5nDhIVj/ESwXZ9SETdEL7AywtE0fkoBopggDJ9hTD0oHF1nLAE=
X-Received: by 2002:a2e:7f04:: with SMTP id a4-v6mr10855555ljd.156.1542555433911;
 Sun, 18 Nov 2018 07:37:13 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAEccTyxgEHqpH3a5fa+Yj+AptwyATbau8T24b8JjU41mP_d01w@mail.gmail.com>
Message-ID: <CAEccTyxgEHqpH3a5fa+Yj+AptwyATbau8T24b8JjU41mP_d01w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Sun, 18 Nov 2018 09:37:02 -0600
From: Sean Owen <srowen@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-17190: Unsecured Apache Spark standalone executes user code
To: oss-security@lists.openwall.com

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
All versions of Apache Spark

Description:
Spark's standalone resource manager accepts code to execute on a 'master' host,
that then runs that code on 'worker' hosts. The master itself does not, by
design, execute user code. A specially-crafted request to the master can,
however, cause the master to execute code too. Note that this does not affect
standalone clusters with authentication enabled. While the master host
typically has less outbound access to other resources than a worker, the
execution of code on the master is nevertheless unexpected.

Mitigation:
Enable authentication on any Spark standalone cluster that is not otherwise
secured from unwanted access, for example by network-level restrictions. Use
spark.authenticate and related security properties described at
https://spark.apache.org/docs/latest/security.html

Credit:
Andre Protas, Apple Information Security

References:
https://spark.apache.org/security.html
