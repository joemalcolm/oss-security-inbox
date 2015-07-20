X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["472" "Monday" "20" "July" "2015" "15:23:23" "+0200" "Jason A. Donenfeld" "zx2c4@gentoo.org" "<CAHmME9qQpTZWAQHGbk8q3_jjFWa1eqHYc-G4bpg1Mby8gRLpEw@mail.gmail.com>" "12" "Re: [oss-security] siege: off-by-one in load_conf()" nil nil nil "7" "2015072013:23:23" "[oss-security] siege: off-by-one in load_conf()" (number mark "        zx2c4@gentoo Jul 20   12/472   " thread-indent "\"Re: [oss-security] siege: off-by-one in load_conf()\"\n") "<1996622.WfZip9OtJo@arcadia>" ("<6439170.QNVfc3SXO1@arcadia>" "<20150714201152.GG19574@hunt>" "<1996622.WfZip9OtJo@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13966 invoked by uid 550); 20 Jul 2015 15:09:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28081 invoked from network); 20 Jul 2015 13:23:39 -0000
MIME-Version: 1.0
X-Received: by 10.112.205.161 with SMTP id lh1mr17490522lbc.43.1437398603774;
 Mon, 20 Jul 2015 06:23:23 -0700 (PDT)
In-Reply-To: <1996622.WfZip9OtJo@arcadia>
References: <6439170.QNVfc3SXO1@arcadia>
	<20150714201152.GG19574@hunt>
	<1996622.WfZip9OtJo@arcadia>
Message-ID: <CAHmME9qQpTZWAQHGbk8q3_jjFWa1eqHYc-G4bpg1Mby8gRLpEw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: Seth Arnold <seth.arnold@canonical.com>, cve-assign@mitre.org
Date: Mon, 20 Jul 2015 15:23:23 +0200
From: "Jason A. Donenfeld" <zx2c4@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] siege: off-by-one in load_conf()
To: oss-security <oss-security@lists.openwall.com>

Hi folks,

Chiming in on behalf of Gentoo Security Team. Bug report here, see
comment 5: https://bugs.gentoo.org/show_bug.cgi?id=554914#c5

In sum, I also fail to see how this is a security issue. Does anybody
make siege SUID, or give it untrusted input, or anything like that?
@ago - what's the attack vector you have in mind with this bug? Feel
free to find me in #gentoo-security if you want to work out
conversationally what you have in mind with this finding.

Jason
