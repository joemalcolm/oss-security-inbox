X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["801" "Wednesday" "22" "April" "2015" "14:55:16" "+0200" "Martin Prpic" "mprpic@redhat.com" "<87ioco2uh7.fsf@redhat.com>" "24" "[oss-security] Re: CVE request: ntp-keygen may generate non-random symmetric keys on big-endian systems" nil nil nil "4" "2015042212:55:16" "[oss-security] Re: CVE request: ntp-keygen may generate non-random symmetric keys on big-endian systems" (number mark "        mprpic@redha Apr 22   24/801   " thread-indent "\"[oss-security] Re: CVE request: ntp-keygen may generate non-random symmetric keys on big-endian systems\"\n") "<87oamxjwrc.fsf@redhat.com>" ("<87oamxjwrc.fsf@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25928 invoked by uid 550); 22 Apr 2015 12:55:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25907 invoked from network); 22 Apr 2015 12:55:32 -0000
References: <87oamxjwrc.fsf@redhat.com>
User-agent: mu4e 0.9.9.5; emacs 24.3.1
In-reply-to: <87oamxjwrc.fsf@redhat.com>
Message-ID: <87ioco2uh7.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
CC: "CVE Assignments MITRE" <cve-assign@mitre.org>
Date: Wed, 22 Apr 2015 14:55:16 +0200
From: Martin Prpic <mprpic@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: ntp-keygen may generate non-random symmetric keys on big-endian systems
To: "oss-security\@lists.openwall.com" <oss-security@lists.openwall.com>

Hi, this still has no CVE assigned. Thanks!

Martin Prpic writes:

> Hi, the recent NTP update (ntp-4.2.8p2) contains a fix for the following
> issue:
>
> * [Bug 2797] ntp-keygen trapped in endless loop for MD5 keys on big-endian machines.
> https://bugs.ntp.org/show_bug.cgi?id=2797
>
> Patch: http://bk1.ntp.org/ntp-stable/?PAGE=patch&REV=55199296N2gFqH1Hm5GOnhrk9Ypygg
>
> While the endless loop is not a security flaw per se, the fact that
> ntp-keygen generates non-random keys is. If the lowest byte of the temp
> variable happens to be between 0x20 and 0x7f and not #, the generated
> MD5 key will consist of 20 identical characters, meaning only 93
> possible keys can be generated.
>
> Can a CVE be please assigned for this issue?
>
> Thank you!

-- 
Martin Prpič / Red Hat Product Security
