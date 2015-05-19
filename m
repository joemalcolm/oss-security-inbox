X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1014" "Tuesday" "19" "May" "2015" "09:05:59" "+0200" "Tomas Hoger" "thoger@redhat.com" "<20150519090559.56944c45@redhat.com>" "32" "[oss-security] CVE reject request CVE-2015-8146/8147 (was: [CVE-2014-8146/8147] - ICU heap and integer overflows / I-C-U-FAIL)" nil nil nil "5" "2015051907:05:59" "[oss-security] CVE reject request CVE-2015-8146/8147 (was: [CVE-2014-8146/8147] - ICU heap and integer overflows / I-C-U-FAIL)" (number mark "        thoger@redha May 19   32/1014  " thread-indent "\"[oss-security] CVE reject request CVE-2015-8146/8147 (was: [CVE-2014-8146/8147] - ICU heap and integer overflows / I-C-U-FAIL)\"\n") "<CAEDdjHdR4LYTL_3BUibrYbiBfB2==aJXXLF0RKxcHQgep_SNSw@mail.gmail.com>" ("<CAEDdjHdR4LYTL_3BUibrYbiBfB2==aJXXLF0RKxcHQgep_SNSw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13694 invoked by uid 550); 19 May 2015 07:06:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13669 invoked from network); 19 May 2015 07:06:19 -0000
Message-ID: <20150519090559.56944c45@redhat.com>
In-Reply-To: <CAEDdjHdR4LYTL_3BUibrYbiBfB2==aJXXLF0RKxcHQgep_SNSw@mail.gmail.com>
References: <CAEDdjHdR4LYTL_3BUibrYbiBfB2==aJXXLF0RKxcHQgep_SNSw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Cc: Pedro Ribeiro <pedrib@gmail.com>
Date: Tue, 19 May 2015 09:05:59 +0200
From: Tomas Hoger <thoger@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE reject request CVE-2015-8146/8147 (was:
 [CVE-2014-8146/8147] - ICU heap and integer overflows / I-C-U-FAIL)
To: oss-security@lists.openwall.com, cve-assign@mitre.org

On Tue, 5 May 2015 09:19:20 +0100 Pedro Ribeiro wrote:

> tl;dr heap and integer overflows in ICU, many packages affected,
> unknown if these can be exploited or not - everyone names vulns
> nowadays, so I name these I-C-U-FAIL.

...

> #1 Vulnerability: Heap overflow
> CVE-2014-8146

...

> #2 Vulnerability: Integer overflow
> CVE-2014-8147

Apparently a typo was made when fixing these issues in Ubuntu and
subsequently in Debian when ids with year 2015 were used instead of
2014.  Incorrect ids are used in patch names and changelogs, but e.g.
USN-2605-1 was released with correct ids.  I assume it's still prudent
to consider 2015 ids for rejection, it's likely they have not been
allocated yet.

http://www.ubuntu.com/usn/usn-2605-1/
https://launchpad.net/ubuntu/+source/icu/52.1-3ubuntu0.3
https://launchpad.net/ubuntu/+source/icu/52.1-6ubuntu0.3
https://launchpad.net/ubuntu/+source/icu/52.1-8ubuntu0.1

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=784773

-- 
Tomas Hoger / Red Hat Product Security
