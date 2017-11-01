X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["807" "Wednesday" "1" "November" "2017" "11:56:06" "-0700" "Bill Farner" "wfarner@apache.org" "<CAFWq12XK1SHqMYtxkgMmVq1JpfNL=kQb8qFnkLfn60qPsAxiRA@mail.gmail.com>" "23" "[oss-security] [CVE-2016-4437] Apache Aurora information disclosure vulnerability" nil nil nil "11" "2017110118:56:06" "[oss-security] [CVE-2016-4437] Apache Aurora information disclosure vulnerability" (number mark "U       wfarner@apac Nov  1   23/807   " thread-indent "\"[oss-security] [CVE-2016-4437] Apache Aurora information disclosure vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3854 invoked by uid 550); 1 Nov 2017 19:05:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27991 invoked from network); 1 Nov 2017 18:56:21 -0000
X-Gm-Message-State: AMCzsaX3EVBEBC4f4+T72/4iwn24mlZ74vr9+hqvxzn24SqaY4VcrX96
	Nm8uT8a1ogTPbfNVSbOwiH5DEAVZGG2Ut4v0qdc=
X-Google-Smtp-Source: ABhQp+TLg3bzphKZ3vkQMaXMILSjs6aiFvSjCIFaFxhc/aPzgTqzoeKNUiwlVV+/yYHUT6UkVvnzwAeJIJAU6L7WVJI=
X-Received: by 10.28.62.67 with SMTP id l64mr929895wma.6.1509562567240; Wed,
 01 Nov 2017 11:56:07 -0700 (PDT)
MIME-Version: 1.0
From: Bill Farner <wfarner@apache.org>
Date: Wed, 1 Nov 2017 11:56:06 -0700
X-Gmail-Original-Message-ID: <CAFWq12XK1SHqMYtxkgMmVq1JpfNL=kQb8qFnkLfn60qPsAxiRA@mail.gmail.com>
Message-ID: <CAFWq12XK1SHqMYtxkgMmVq1JpfNL=kQb8qFnkLfn60qPsAxiRA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="001a1148fcb8963672055cf06c6f"
Subject: [oss-security] [CVE-2016-4437] Apache Aurora information disclosure vulnerability

--001a1148fcb8963672055cf06c6f
Content-Type: text/plain; charset="UTF-8"

Versions Affected:
Aurora 0.10.0 to 0.18.0

Description:
The affected versions of the scheduler rely on a version of Apache Shiro
which is vulnerable to CVE-2016-4437.  Under certain conditions, the
vulnerability allows remote attackers to execute arbitrary code or bypass
intended access restrictions via an unspecified request parameter.

Mitigation:
0.18.0 users should upgrade to 0.18.1
0.10.0 - 0.17.0 users should upgrade to 0.18.1 or apply this patch
https://git-wip-us.apache.org/repos/asf?p=aurora.git;a=commit;h=ec640117
Alternatively, INI configuration mitigations outlined in CVE-2016-4437
may be applied.

Credit:
This issue was discovered by Greg Harris from the Fitbit Security team.

--001a1148fcb8963672055cf06c6f--
