X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["451" "Wednesday" "21" "December" "2016" "23:30:15" "+0100" "Tomas Hoger" "thoger@redhat.com" "<20161221233015.27a0038d@redhat.com>" "19" "Re: [oss-security] Nagios Core < 4.2.2 Curl Command Injection leading to Remote Code Execution [CVE-2016-9565]" nil nil nil "12" "2016122122:30:15" "[oss-security] Nagios Core < 4.2.2 Curl Command Injection leading to Remote Code Execution [CVE-2016-9565]" (number mark "U       thoger@redha Dec 21   19/451   " thread-indent "\"Re: [oss-security] Nagios Core < 4.2.2 Curl Command Injection leading to Remote Code Execution [CVE-2016-9565]\"\n") "<CADSYzsucRUuig5_vSn66P_4oYbw2tSKBHbNbfKGxrF5R4k-uAg@mail.gmail.com>" ("<CADSYzsucRUuig5_vSn66P_4oYbw2tSKBHbNbfKGxrF5R4k-uAg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3593 invoked by uid 550); 21 Dec 2016 22:30:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3565 invoked from network); 21 Dec 2016 22:30:34 -0000
Date: Wed, 21 Dec 2016 23:30:15 +0100
From: Tomas Hoger <thoger@redhat.com>
To: Dawid Golunski <dawid@legalhackers.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20161221233015.27a0038d@redhat.com>
In-Reply-To: <CADSYzsucRUuig5_vSn66P_4oYbw2tSKBHbNbfKGxrF5R4k-uAg@mail.gmail.com>
References: <CADSYzsucRUuig5_vSn66P_4oYbw2tSKBHbNbfKGxrF5R4k-uAg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Wed, 21 Dec 2016 22:30:20 +0000 (UTC)
Subject: Re: [oss-security] Nagios Core < 4.2.2 Curl Command Injection
 leading to Remote Code Execution [CVE-2016-9565]

On Tue, 20 Dec 2016 17:12:58 -0200 Dawid Golunski wrote:

> Vulnerability:
> Nagios Core < 4.2.2  Curl Command Injection / Remote Code Execution

Your report should mention that this issue was in Snoopy:

https://sourceforge.net/projects/snoopy/

which was embedded in MagpieRSS, which was embedded in Nagios.

> CVE-2016-9565

It's the same issue as CVE-2014-5008:

http://seclists.org/oss-sec/2014/q3/176

-- 
Tomas Hoger / Red Hat Product Security
