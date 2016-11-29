X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["912" "Monday" "28" "November" "2016" "16:04:45" "-0800" "Yongjun Zhang" "yjzhangal@apache.org" "<CAA0W1bTbUmUUSF1rjRpX-2DvWutcrPt7TJSWUcSLg1F0gyHG1Q@mail.gmail.com>" "62" "[oss-security] CVE-2016-5393: Apache Hadoop Privilege escalation vulnerability" nil nil nil "11" "2016112900:04:45" "[oss-security] CVE-2016-5393: Apache Hadoop Privilege escalation vulnerability" (number mark "U       yjzhangal@ap Nov 28   62/912   " thread-indent "\"[oss-security] CVE-2016-5393: Apache Hadoop Privilege escalation vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23784 invoked by uid 550); 29 Nov 2016 00:40:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7208 invoked from network); 29 Nov 2016 00:05:00 -0000
X-Gm-Message-State: AKaTC010zkgch6hXmh8KONSSacSyLkj1yUIRSqBacf5Kqu6mzCAlM4cM2+LUdNNMDTapevYsnmoZgqjKe/EikOcO
X-Received: by 10.157.44.185 with SMTP id p54mr14578176otb.3.1480377885814;
 Mon, 28 Nov 2016 16:04:45 -0800 (PST)
MIME-Version: 1.0
From: Yongjun Zhang <yjzhangal@apache.org>
Date: Mon, 28 Nov 2016 16:04:45 -0800
X-Gmail-Original-Message-ID: <CAA0W1bTbUmUUSF1rjRpX-2DvWutcrPt7TJSWUcSLg1F0gyHG1Q@mail.gmail.com>
Message-ID: <CAA0W1bTbUmUUSF1rjRpX-2DvWutcrPt7TJSWUcSLg1F0gyHG1Q@mail.gmail.com>
To: security@apache.org, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com, general@hadoop.apache.org
Content-Type: multipart/alternative; boundary=001a113ed16c04913805426556e2
Subject: [oss-security] CVE-2016-5393: Apache Hadoop Privilege escalation vulnerability

--001a113ed16c04913805426556e2
Content-Type: text/plain; charset=UTF-8

Hi,

Please see below the official announcement of a critical security
vulnerability that's discovered and subsequently fixed in Apache Hadoop
releases.

Thanks and best regards,

--Yongjun

----------

CVE-2016-5393: Apache Hadoop Privilege escalation vulnerability

Severity: Critical



Vendor:

The Apache Software Foundation



Versions Affected:

Hadoop 2.6.x, 2.7.x



Description:

A remote user who can authenticate with the HDFS NameNode can possibly run
arbitrary commands as the hdfs user.



Mitigation:

2.7.x users should upgrade to 2.7.3

2.6.x users should upgrade to 2.6.5



Impact:

A remote user who can authenticate with the HDFS NameNode can possibly run
arbitrary commands with the same privileges as HDFS service.



Credit:

This issue was discovered by Freddie Rice.

----------

--001a113ed16c04913805426556e2--
