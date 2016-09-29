X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["546" "Thursday" "29" "September" "2016" "08:27:47" "-0400" "Christos Zoulas" "christos@zoulas.com" "<20160929122747.1155317FDAB@rebar.astron.com>" "14" "Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape" "^Date:" nil nil "9" "2016092912:27:47" "[oss-security] CVE-2016-7545 -- SELinux sandbox escape" (number mark "        christos@zou Sep 29   14/546   " thread-indent "\"Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape\"\n") "<20160929103210.bm5itc2cu4a672ws@jwilk.net>" ("<20160929103210.bm5itc2cu4a672ws@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14173 invoked by uid 550); 29 Sep 2016 13:00:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29843 invoked from network); 29 Sep 2016 12:27:59 -0000
In-Reply-To: <20160929103210.bm5itc2cu4a672ws@jwilk.net>
       from Jakub Wilk (Sep 29, 12:32pm)
Organization: Astron Software
X-Mailer: Mail User's Shell (7.2.6 beta(4.pl1)+dynamic 20000103)
Message-Id: <20160929122747.1155317FDAB@rebar.astron.com>
Date: Thu, 29 Sep 2016 08:27:47 -0400
From: christos@zoulas.com (Christos Zoulas)
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape
To: oss-security@lists.openwall.com

On Sep 29, 12:32pm, jwilk@jwilk.net (Jakub Wilk) wrote:
-- Subject: Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape

| * Christos Zoulas <christos@zoulas.com>, 2016-09-26, 13:53:
| >On the BSDs TIOCSTI has been limited to the superuser since the 4.4BSD Lite 2 
| >release in 1995 (IIRC).
| 
| Hmm. I've just tried OpenBSD 5.7 and FreeBSD 10.3, and TIOCSTI works fine for 
| non-root users.

I am wrong, sorry. It still works on BSD for the owner of the tty controlling
process group. I guess it is time to fix it everywhere.

christos
