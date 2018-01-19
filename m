X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["749" "Friday" "19" "January" "2018" "08:46:40" "-0600" "Jason Lowe" "jlowe@apache.org" "<CAMqJVeOJ6D5qgreA6ZiN3u30iQx2_1s3h+dns-60voG6H1fxNQ@mail.gmail.com>" "22" "[oss-security] CVE-2017-15713: Apache Hadoop MapReduce job history server vulnerability" nil nil nil "1" "2018011914:46:40" "[oss-security] CVE-2017-15713: Apache Hadoop MapReduce job history server vulnerability" (number mark "U       jlowe@apache Jan 19   22/749   " thread-indent "\"[oss-security] CVE-2017-15713: Apache Hadoop MapReduce job history server vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15562 invoked by uid 550); 19 Jan 2018 14:49:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13346 invoked from network); 19 Jan 2018 14:46:55 -0000
X-Gm-Message-State: AKwxytez0ZaIY+szJ53ZFD47gVbjPx+xo43dym5v56naNi9d1lkBrBji
	dOsnAYcTn4EMxL/YfHDOuknf5XNs2SxgX8Gfr4nHwg==
X-Google-Smtp-Source: ACJfBosQbVfXXbT+KDJqhWIEWwAG1aucF561aYaGbLy93ay32u6dKib7+hauJBb1WgtxXRf2a93dxAj51++iMFzNdq4=
X-Received: by 10.80.231.16 with SMTP id a16mr13573899edn.264.1516373200950;
 Fri, 19 Jan 2018 06:46:40 -0800 (PST)
MIME-Version: 1.0
From: Jason Lowe <jlowe@apache.org>
Date: Fri, 19 Jan 2018 08:46:40 -0600
X-Gmail-Original-Message-ID: <CAMqJVeOJ6D5qgreA6ZiN3u30iQx2_1s3h+dns-60voG6H1fxNQ@mail.gmail.com>
Message-ID: <CAMqJVeOJ6D5qgreA6ZiN3u30iQx2_1s3h+dns-60voG6H1fxNQ@mail.gmail.com>
To: general@hadoop.apache.org, user@hadoop.apache.org, 
	Hadoop Common <common-dev@hadoop.apache.org>, 
	"<security@hadoop.apache.org>" <security@hadoop.apache.org>, full-disclosure@lists.grok.org.uk, 
	bugtraq@securityfocus.com, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2017-15713: Apache Hadoop MapReduce job history server vulnerability

CVE-2017-15713: Apache Hadoop MapReduce job history server vulnerability

Severity: Severe

Vendor: The Apache Software Foundation

Versions Affected:
  Hadoop 0.23.0 to 0.23.11
  Hadoop 2.0.0-alpha to 2.8.2
  Hadoop 3.0.0-alpha to 3.0.0-beta1

Users affected: Users running the MapReduce job history server daemon

Impact:  Vulnerability allows a cluster user to expose private files
owned by the user running the MapReduce job history server process.
The malicious user can construct a configuration file containing XML
directives that reference sensitive files on the MapReduce job history
server host.

Mitigation: Users should upgrade to Apache Hadoop 2.7.5, 2.8.3, 2.9.0, or 3.0.0.

Credit: This issue was discovered by Man Yue Mo of lgtm.com
