X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["737" "Wednesday" "2" "March" "2016" "16:03:54" "+0100" "Martin Grigorov" "mgrigorov@apache.org" "<CAMomwMoURA8sQJajmjdAA21BWY1mQguJb_mmqWprRK77-0huxg@mail.gmail.com>" "31" "[oss-security] [CVE-2015-7520] Apache Wicket XSS vulnerability" "^Date:" nil nil "3" "2016030215:03:54" "[oss-security] [CVE-2015-7520] Apache Wicket XSS vulnerability" (number mark "        mgrigorov@ap Mar  2   31/737   " thread-indent "\"[oss-security] [CVE-2015-7520] Apache Wicket XSS vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21730 invoked by uid 550); 2 Mar 2016 15:06:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20118 invoked from network); 2 Mar 2016 15:04:49 -0000
X-Gm-Message-State: AD7BkJJ0h3/1mwrEupONTuoVOLnSo81FZhY8TTCXM/vfEuI16og8W5Zjqh45ZB+0pA409rTFBzauuQNg/zBCkg==
X-Received: by 10.28.184.78 with SMTP id i75mr429966wmf.22.1456931074327; Wed,
 02 Mar 2016 07:04:34 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAMomwMoURA8sQJajmjdAA21BWY1mQguJb_mmqWprRK77-0huxg@mail.gmail.com>
Message-ID: <CAMomwMoURA8sQJajmjdAA21BWY1mQguJb_mmqWprRK77-0huxg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114b243c25cd84052d12332d
Date: Wed, 2 Mar 2016 16:03:54 +0100
From: Martin Grigorov <mgrigorov@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2015-7520] Apache Wicket XSS vulnerability
To: announce@wicket.apache.org, 
	"users@wicket.apache.org" <users@wicket.apache.org>, "dev@wicket.apache.org" <dev@wicket.apache.org>, 
	"security@apache.org" <security@apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com

--001a114b243c25cd84052d12332d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Apache Wicket 1.5.x, 6.x and 7.x

Description:

It is possible for JavaScript statements to break out of a RadioGroup=E2=80=
=99s and
CheckBoxMultipleChoice=E2=80=99s =E2=80=9Cvalue=E2=80=9D attribute of <inpu=
t> elements

This might pose a security threat if the written JavaScript contains user
provided data.

The application developers are recommended to upgrade to:

- Apache Wicket 1.5.15
- Apache Wicket 6.22.0
- Apache Wicket 7.2.0

Credit: This issue was reported by Canh Ngo!

Apache Wicket Team

--001a114b243c25cd84052d12332d--
