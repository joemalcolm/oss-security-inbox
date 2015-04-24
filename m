X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["306" "Friday" "24" "April" "2015" "17:43:20" "+0200" "Florian Weimer" "fweimer@redhat.com" "<553A6498.1070406@redhat.com>" "11" "Re: [oss-security] Abusing TZ for fun (and little profit)" nil nil nil "4" "2015042415:43:20" "[oss-security] Abusing TZ for fun (and little profit)" (number mark "        fweimer@redh Apr 24   11/306   " thread-indent "\"Re: [oss-security] Abusing TZ for fun (and little profit)\"\n") "<20141214162028.GA5669@jwilk.net>" ("<20141015223532.GA4625@jwilk.net>" "<20141214162028.GA5669@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19774 invoked by uid 550); 24 Apr 2015 15:43:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19753 invoked from network); 24 Apr 2015 15:43:33 -0000
Message-ID: <553A6498.1070406@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <20141015223532.GA4625@jwilk.net> <20141214162028.GA5669@jwilk.net>
In-Reply-To: <20141214162028.GA5669@jwilk.net>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Fri, 24 Apr 2015 17:43:20 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Abusing TZ for fun (and little profit)
To: oss-security@lists.openwall.com

On 12/14/2014 05:20 PM, Jakub Wilk wrote:

> Oh, and the glibc's tzfile parser is apparently not very robust:
> https://bugs.debian.org/772705

This should be addressed by this glibc commit:

  <https://sourceware.org/git/gitweb.cgi?p=glibc.git;h=42261ad731>

-- 
Florian Weimer / Red Hat Product Security
