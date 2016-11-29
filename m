X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1191" "Tuesday" "29" "November" "2016" "04:07:25" "+0000" "Zhe Zhang" "zhz@apache.org" "<CAMXuLLrTpVCtAD+MeHRrxtweRM2TDLY0WhDN4VzhK73Goc7a3g@mail.gmail.com>" "68" "[oss-security] Re: CVE-2016-5393: Apache Hadoop Privilege escalation vulnerability" nil nil nil "11" "2016112904:07:25" "[oss-security] Re: CVE-2016-5393: Apache Hadoop Privilege escalation vulnerability" (number mark "U       zhz@apache.o Nov 29   68/1191  " thread-indent "\"[oss-security] Re: CVE-2016-5393: Apache Hadoop Privilege escalation vulnerability\"\n") "<CAA0W1bTbUmUUSF1rjRpX-2DvWutcrPt7TJSWUcSLg1F0gyHG1Q@mail.gmail.com>" ("<CAA0W1bTbUmUUSF1rjRpX-2DvWutcrPt7TJSWUcSLg1F0gyHG1Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26325 invoked by uid 550); 29 Nov 2016 04:18:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22296 invoked from network); 29 Nov 2016 04:07:53 -0000
X-Gm-Message-State: AKaTC02tQp8V7yzgqqAgITE4+ugztDJrAVMxXiO+tUd/HY1FLRP32xseNuurelq7FjB2dGt3558qaRhO3jnd3A==
X-Received: by 10.237.59.186 with SMTP id r55mr22066198qte.22.1480392455819;
 Mon, 28 Nov 2016 20:07:35 -0800 (PST)
MIME-Version: 1.0
References: <CAA0W1bTbUmUUSF1rjRpX-2DvWutcrPt7TJSWUcSLg1F0gyHG1Q@mail.gmail.com>
In-Reply-To: <CAA0W1bTbUmUUSF1rjRpX-2DvWutcrPt7TJSWUcSLg1F0gyHG1Q@mail.gmail.com>
From: Zhe Zhang <zhz@apache.org>
Date: Tue, 29 Nov 2016 04:07:25 +0000
X-Gmail-Original-Message-ID: <CAMXuLLrTpVCtAD+MeHRrxtweRM2TDLY0WhDN4VzhK73Goc7a3g@mail.gmail.com>
Message-ID: <CAMXuLLrTpVCtAD+MeHRrxtweRM2TDLY0WhDN4VzhK73Goc7a3g@mail.gmail.com>
To: Yongjun Zhang <yjzhangal@apache.org>, security@apache.org, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com, 
	general@hadoop.apache.org
Content-Type: multipart/alternative; boundary=94eb2c0e754075214d054268ba02
Subject: [oss-security] Re: CVE-2016-5393: Apache Hadoop Privilege escalation vulnerability

--94eb2c0e754075214d054268ba02
Content-Type: text/plain; charset=UTF-8

Thanks for the note Yongjun! Does HADOOP-13434
<https://issues.apache.org/jira/browse/HADOOP-13434> fix the problem?

On Mon, Nov 28, 2016 at 4:04 PM Yongjun Zhang <yjzhangal@apache.org> wrote:

> Hi,
>
> Please see below the official announcement of a critical security
> vulnerability that's discovered and subsequently fixed in Apache Hadoop
> releases.
>
> Thanks and best regards,
>
> --Yongjun
>
> ----------
>
> CVE-2016-5393: Apache Hadoop Privilege escalation vulnerability
>
> Severity: Critical
>
>
>
> Vendor:
>
> The Apache Software Foundation
>
>
>
> Versions Affected:
>
> Hadoop 2.6.x, 2.7.x
>
>
>
> Description:
>
> A remote user who can authenticate with the HDFS NameNode can possibly run
> arbitrary commands as the hdfs user.
>
>
>
> Mitigation:
>
> 2.7.x users should upgrade to 2.7.3
>
> 2.6.x users should upgrade to 2.6.5
>
>
>
> Impact:
>
> A remote user who can authenticate with the HDFS NameNode can possibly run
> arbitrary commands with the same privileges as HDFS service.
>
>
>
> Credit:
>
> This issue was discovered by Freddie Rice.
>
> ----------
>

--94eb2c0e754075214d054268ba02--
