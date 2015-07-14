X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["786" "Tuesday" "14" "July" "2015" "22:46:03" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<1996622.WfZip9OtJo@arcadia>" "25" "Re: [oss-security] siege: off-by-one in load_conf()" nil nil nil "7" "2015071420:46:03" "[oss-security] siege: off-by-one in load_conf()" (number mark "        ago@gentoo.o Jul 14   25/786   " thread-indent "\"Re: [oss-security] siege: off-by-one in load_conf()\"\n") "<20150714201152.GG19574@hunt>" ("<6439170.QNVfc3SXO1@arcadia>" "<20150714201152.GG19574@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9709 invoked by uid 550); 14 Jul 2015 20:46:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9687 invoked from network); 14 Jul 2015 20:46:22 -0000
Message-ID: <1996622.WfZip9OtJo@arcadia>
User-Agent: KMail/4.14.3 (Linux/3.18.9-gentoo; KDE/4.14.3; x86_64; ; )
In-Reply-To: <20150714201152.GG19574@hunt>
References: <6439170.QNVfc3SXO1@arcadia> <20150714201152.GG19574@hunt>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart68433331.SWMiAovpaH"
Content-Transfer-Encoding: 7Bit
Cc: Seth Arnold <seth.arnold@canonical.com>, cve-assign@mitre.org
Date: Tue, 14 Jul 2015 22:46:03 +0200
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] siege: off-by-one in load_conf()
To: oss-security@lists.openwall.com

--nextPart68433331.SWMiAovpaH
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

On Tuesday 14 July 2015 13:11:52 Seth Arnold wrote:
> Does load_conf() process any information from any untrusted sources? 
Has
> Siege processed any data from the network at this point? 
I don't know exactly, ask upstream.

> This sounds like a regular bug rather than a security boundary, unless 
I've > misunderstood the application.

Everyone has a security concept of the off-by-one. This is the reason 
because I mentioned to assign a cve if for mitre is a valid request.

I filed the bug because it is the case of CWE-193.
Feel free to see it as a non-security impact major than a DoS/segfault.

-- 
Agostino Sarubbo
Gentoo Linux Developer

--nextPart68433331.SWMiAovpaH--

