X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["919" "Tuesday" "8" "December" "2020" "07:55:04" "+0100" "Lukasz Lenart" "lukaszlenart@apache.org" "<CAMopvkNhCA2dWwKMJbZjJLGD6NrxCRyZ3QOSetwdXPnGRz9mLQ@mail.gmail.com>" "28" "[oss-security] Apache Struts 2: CVE-2020-17530: Potential RCE when using forced evaluation" nil nil nil "12" "2020120806:55:04" "[oss-security] Apache Struts 2: CVE-2020-17530: Potential RCE when using forced evaluation" (number mark "U       lukaszlenart Dec  8   28/919   " thread-indent "\"[oss-security] Apache Struts 2: CVE-2020-17530: Potential RCE when using forced evaluation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Apache Struts 2: CVE-2020-17530: Potential RCE when using forced evaluation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13394 invoked by uid 550); 8 Dec 2020 11:01:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20220 invoked from network); 8 Dec 2020 06:56:04 -0000
X-Gm-Message-State: AOAM531w75cWt8coAa2YP0xuBDoLJLvkP7NT1w7FTjkp8jMyctqqhogD
	NUaMlkV8qT41S0Kw7w981gbZwj9kmoOvgHIsQMY=
X-Google-Smtp-Source: ABdhPJwQymX8Sm91Pf/owbQt7zip/Atm5FHx/TzCUmpGe7UYywW8BBNB0V/QCD4sZyZOFpdEyPxuoJw/dECRQp/3jIo=
X-Received: by 2002:ac2:5190:: with SMTP id u16mr9722099lfi.56.1607410515369;
 Mon, 07 Dec 2020 22:55:15 -0800 (PST)
MIME-Version: 1.0
From: Lukasz Lenart <lukaszlenart@apache.org>
Date: Tue, 8 Dec 2020 07:55:04 +0100
X-Gmail-Original-Message-ID: <CAMopvkNhCA2dWwKMJbZjJLGD6NrxCRyZ3QOSetwdXPnGRz9mLQ@mail.gmail.com>
Message-ID: <CAMopvkNhCA2dWwKMJbZjJLGD6NrxCRyZ3QOSetwdXPnGRz9mLQ@mail.gmail.com>
To: Struts Users Mailing List <user@struts.apache.org>
Cc: "announcements@struts.apache.org" <announcements@struts.apache.org>, announce@apache.org, 
	"security@struts.apache.org" <security@struts.apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Apache Struts 2: CVE-2020-17530: Potential RCE when using forced evaluation

Forced OGNL evaluation, when evaluated on raw user input in tag
attributes, may lead to remote code execution.

Problem
Some of the tag's attributes could perform a double evaluation if a
developer applied forced OGNL evaluation by using the %{...} syntax.
Using forced OGNL evaluation on untrusted user input can lead to a
Remote Code Execution and security degradation.

Solution
Avoid using forced OGNL evaluation on untrusted user input, and/or
upgrade to Struts 2.5.26 which checks if expression evaluation won't
lead to the double evaluation.

Please read our Security Bulletin for more details:
https://cwiki.apache.org/confluence/display/WW/S2-061

This vulnerability was identified by:
- Alvaro Munoz - pwntester at github dot com
- Masato Anzai of Aeye Security Lab, inc.

All developers are strongly advised to perform this action.


Kind regards
--=20
=C5=81ukasz
+ 48 606 323 122 http://www.lenart.org.pl/
