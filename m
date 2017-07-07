X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["871" "Friday" "7" "July" "2017" "18:47:13" "+0200" "Lukasz Lenart" "lukaszlenart@apache.org" "<CAMopvkPHCrVRX7TuyyzdHp2wv6Pc8-f4=sqmSxPiE04md7SMug@mail.gmail.com>" "24" "[oss-security] [ANN] Apache Struts 2: possible RCE in the Struts Showcase app in the Struts 1 plugin example in the Struts 2.3.x series" nil nil nil "7" "2017070716:47:13" "[oss-security] [ANN] Apache Struts 2: possible RCE in the Struts Showcase app in the Struts 1 plugin example in the Struts 2.3.x series" (number mark "U       lukaszlenart Jul  7   24/871   " thread-indent "\"[oss-security] [ANN] Apache Struts 2: possible RCE in the Struts Showcase app in the Struts 1 plugin example in the Struts 2.3.x series\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20295 invoked by uid 550); 7 Jul 2017 16:50:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18190 invoked from network); 7 Jul 2017 16:47:50 -0000
X-Gm-Message-State: AIVw1128d7W4W39K9z7nWwZKv91IY+o22nVtmwZzrObN7t5PAa7DlQWg
	wk40muXasnHh1YYtzFeHd/9ndc6W1Q==
X-Received: by 10.202.74.201 with SMTP id x192mr1322966oia.28.1499446054057;
 Fri, 07 Jul 2017 09:47:34 -0700 (PDT)
MIME-Version: 1.0
From: Lukasz Lenart <lukaszlenart@apache.org>
Date: Fri, 7 Jul 2017 18:47:13 +0200
X-Gmail-Original-Message-ID: <CAMopvkPHCrVRX7TuyyzdHp2wv6Pc8-f4=sqmSxPiE04md7SMug@mail.gmail.com>
Message-ID: <CAMopvkPHCrVRX7TuyyzdHp2wv6Pc8-f4=sqmSxPiE04md7SMug@mail.gmail.com>
To: Struts Users Mailing List <user@struts.apache.org>
Cc: "announcements@struts.apache.org" <announcements@struts.apache.org>, 
	Struts Developers List <dev@struts.apache.org>, announce@apache.org, icez <ic3z@qq.com>, 
	"security@struts.apache.org" <security@struts.apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [ANN] Apache Struts 2: possible RCE in the Struts Showcase app in the
 Struts 1 plugin example in the Struts 2.3.x series

A potential security vulnerability was reported in the Struts 1 plugin
used in the Struts 2.3.x series. It is possible to perform a Remote
Code Execution attack if given construction exists in the vulnerable
application. Please read the security bulletin for more details and
inspect your application.

- S2-048 Possible RCE in the Struts Showcase app in the Struts 1
plugin example in Struts 2.3.x series

http://struts.apache.org/docs/s2-048.html
http://struts.apache.org/announce.html#a20170707

NOTE: Please notice that this vulnerability does not affect
applications using Struts 2.5.x series or applications that do not use
the Struts 1 plugin. Even if the plugin is available but certain code
construction is not present, your application is safe.


On behalf of the Apache Struts project

Kind regards
--=20
=C5=81ukasz
+ 48 606 323 122 http://www.lenart.org.pl/
