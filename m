X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["483" "Wednesday" "21" "June" "2017" "12:46:28" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<14558692.afnJ5aRU9J@wanheda>" "12" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062110:46:28" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        ago@gentoo.o Jun 21   12/483   " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<20170619152843.GC7769@localhost.localdomain>" ("<20170619152843.GC7769@localhost.localdomain>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31826 invoked by uid 550); 21 Jun 2017 10:46:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31805 invoked from network); 21 Jun 2017 10:46:45 -0000
Message-ID: <14558692.afnJ5aRU9J@wanheda>
User-Agent: KMail/4.14.10 (Linux/4.9.16-gentoo; KDE/4.14.32; x86_64; ; )
In-Reply-To: <20170619152843.GC7769@localhost.localdomain>
References: <20170619152843.GC7769@localhost.localdomain>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Date: Wed, 21 Jun 2017 12:46:28 +0200
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com

On Monday 19 June 2017 08:28:43 Qualys Security Advisory wrote:
> III. Solutions
> - Recompile all userland code (ld.so, libraries, binaries) with GCC's
>   "-fstack-check" option, which prevents the stack-pointer from moving
>   into another memory region without accessing the stack guard-page (it
>   writes one word to every 4KB page allocated on the stack).

For the record, Gentoo Hardened enables by default -fstack-check=specific

-- 
Agostino Sarubbo
Gentoo Linux Developer
