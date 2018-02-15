X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["882" "Thursday" "15" "February" "2018" "14:09:50" "-0800" "Rohini Palaniswamy" "rohini@apache.org" "<CABBupGWtC2vN-JzXWeuDaN-_bP6yzRJhK+DAfr=gSGLZJGbFCQ@mail.gmail.com>" "31" "[oss-security] [CVE-2017-15712] Apache Oozie Server vulnerability" nil nil nil "2" "2018021522:09:50" "[oss-security] [CVE-2017-15712] Apache Oozie Server vulnerability" (number mark "U       rohini@apach Feb 15   31/882   " thread-indent "\"[oss-security] [CVE-2017-15712] Apache Oozie Server vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28429 invoked by uid 550); 15 Feb 2018 22:13:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26453 invoked from network); 15 Feb 2018 22:10:47 -0000
X-Gm-Message-State: APf1xPDbsQPTFrVVQNl9uyzOvKaBGePHc7q4gRycEi9HB/ndSVJjKsR3
	WBzHNlCflqPLRc/iC+VVr3oYMJ7TvffCbRBXWPA=
X-Google-Smtp-Source: AH8x226Rzxe3uvkJIQCdIbnveYDRc+W4nwoRl736BwiNuW+TVx5nNuiYBIIqz4Ubue8DxoX9YMaQo6KoMO9nurH4c2E=
X-Received: by 10.200.63.60 with SMTP id c57mr6953649qtk.286.1518732631345;
 Thu, 15 Feb 2018 14:10:31 -0800 (PST)
MIME-Version: 1.0
From: Rohini Palaniswamy <rohini@apache.org>
Date: Thu, 15 Feb 2018 14:09:50 -0800
X-Gmail-Original-Message-ID: <CABBupGWtC2vN-JzXWeuDaN-_bP6yzRJhK+DAfr=gSGLZJGbFCQ@mail.gmail.com>
Message-ID: <CABBupGWtC2vN-JzXWeuDaN-_bP6yzRJhK+DAfr=gSGLZJGbFCQ@mail.gmail.com>
To: dev@oozie.apache.org, user@oozie.apache.org, announce@apache.org, 
	security@apache.org, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="001a114f20920011730565477fe5"
Subject: [oss-security] [CVE-2017-15712] Apache Oozie Server vulnerability

--001a114f20920011730565477fe5
Content-Type: text/plain; charset="UTF-8"

Apache Oozie is a workflow scheduler system to manage Apache Hadoop jobs.

Severity: Severe

Vendor:
The Apache Software Foundation

Versions Affected:
Oozie 3.1.3-incubating to Oozie 4.3.0
Oozie 5.0.0-beta1

Description:
Vulnerability allows a user of Oozie to expose private files on the Oozie
server process.  The malicious user can construct a workflow XML file
containing XML directives and configuration that reference sensitive files
on the Oozie server host.

Mitigation:
Users should upgrade to Apache Oozie 4.3.1 release from
http://oozie.apache.org/ .
Users should use 5.0.0-beta1 release only for testing purposes and wait for
the 5.0.0 GA which will have the fix.

Credit:
The issues were discovered by Daryn Sharp and Jason Lowe of Oath (formerly
Yahoo! Inc).

--001a114f20920011730565477fe5--
