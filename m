X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["952" "Thursday" "4" "August" "2016" "16:27:12" "-0700" "Sravya Tirukkovalur" "sravya@apache.org" "<CACMN7ixDqDyOZGLEvsMUVHBiJ6crq8zdy+2mNfRooNhnk7CJ1g@mail.gmail.com>" "32" "[oss-security] =?UTF-8?B?Q1ZFLTIwMTYtMDc2MDogSGl2ZSBidWlsdGluIGZ1bmN0aW9ucyDigJxyZWZsZWN04oCdLA==?==?UTF-8?B?IOKAnHJlZmxlY3Qy4oCdLCBhbmQg4oCcamF2YV9tZXRob2TigJ0gYXJlIG5vdCBibG9ja2VkIGluIEFw?==?UTF-8?B?YWNoZSBTZW50cnk=?=" nil nil nil "8" "2016080423:27:12" "[oss-security] =?UTF-8?B?Q1ZFLTIwMTYtMDc2MDo=?= =?UTF-8?B?SGl2ZQ==?= =?UTF-8?B?YnVpbHRpbg==?= =?UTF-8?B?ZnVuY3Rpb25z?= =?UTF-8?B?4oCccmVmbGVjdOKAnSw=?= =?UTF-8?B?4oCccmVmbGVjdDLigJ0s?= =?UTF-8?B?YW5k?= =?UTF-8?B?4oCcamF2YV9tZXRob2TigJ0=?= =?UTF-8?B?YXJl?= =?UTF-8?B?bm90?= =?UTF-8?B?YmxvY2tlZA==?= =?UTF-8?B?aW4=?= =?UTF-8?B?QXA=?==?UTF-8?B?YWNoZQ==?= =?UTF-8?B?U2VudHJ5?=" (number mark "U       sravya@apach Aug  4   32/952   " thread-indent "\"[oss-security] =?UTF-8?B?Q1ZFLTIwMTYtMDc2MDogSGl2ZSBidWlsdGluIGZ1bmN0aW9ucyDigJxyZWZsZWN04oCdLA==?==?UTF-8?B?IOKAnHJlZmxlY3Qy4oCdLCBhbmQg4oCcamF2YV9tZXRob2TigJ0gYXJlIG5vdCBibG9ja2VkIGluIEFw?==?UTF-8?B?YWNoZSBTZW50cnk=?=\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22256 invoked by uid 550); 4 Aug 2016 23:30:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20422 invoked from network); 4 Aug 2016 23:27:27 -0000
X-Gm-Message-State: AEkoouuTs4mk8H2MhnbjuGMqocKUGbE0g97LKY+F4BO2fPh5y3826JUBTppOsMXqgwz8Ckn8g9JwCYGb/L3WS6sY
X-Received: by 10.31.201.71 with SMTP id z68mr10365451vkf.14.1470353232786;
 Thu, 04 Aug 2016 16:27:12 -0700 (PDT)
MIME-Version: 1.0
From: Sravya Tirukkovalur <sravya@apache.org>
Date: Thu, 4 Aug 2016 16:27:12 -0700
X-Gmail-Original-Message-ID: <CACMN7ixDqDyOZGLEvsMUVHBiJ6crq8zdy+2mNfRooNhnk7CJ1g@mail.gmail.com>
Message-ID: <CACMN7ixDqDyOZGLEvsMUVHBiJ6crq8zdy+2mNfRooNhnk7CJ1g@mail.gmail.com>
To: dev <dev@sentry.apache.org>, security@apache.org, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Content-Type: multipart/alternative; boundary=001a114f2fdc229c9c0539474a49
Subject: [oss-security] =?UTF-8?B?Q1ZFLTIwMTYtMDc2MDogSGl2ZSBidWlsdGluIGZ1bmN0aW9ucyDigJxyZWZsZWN04oCdLA==?=
	=?UTF-8?B?IOKAnHJlZmxlY3Qy4oCdLCBhbmQg4oCcamF2YV9tZXRob2TigJ0gYXJlIG5vdCBibG9ja2VkIGluIEFw?=
	=?UTF-8?B?YWNoZSBTZW50cnk=?=

--001a114f2fdc229c9c0539474a49
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

CVE-2016-0760: Hive builtin functions =E2=80=9Creflect=E2=80=9D, =E2=80=9Cr=
eflect2=E2=80=9D, and
=E2=80=9Cjava_method=E2=80=9D are not blocked in Apache Sentry

Severity: Very Important

Vendor:
The Apache Software Foundation

Versions Affected:
Sentry 1.5.1 and 1.6.0

Description:
Some functions in Hive which allow arbitrary code to be executed are
not blacklisted properly in some versions of Sentry, which would allow
authenticated
users to potentially use these functions for malicious purposes.

Mitigation:
Upgrade to 1.7.0 (or)
Workaround - Users can explicitly configure the blacklist
functions in the hive configuration by setting the property
"hive.server2.builtin.udf.blacklist" to "reflect,reflect2,java_method"

Credit:
This issue was discovered by =EF=BB=BFRyan Pridgeon of Cloudera.

--001a114f2fdc229c9c0539474a49--
