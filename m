X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["647" "Monday" "26" "September" "2016" "13:53:02" "-0400" "Christos Zoulas" "christos@zoulas.com" "<20160926175302.D6C8417FDAB@rebar.astron.com>" "14" "Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape" "^Date:" nil nil "9" "2016092617:53:02" "[oss-security] CVE-2016-7545 -- SELinux sandbox escape" (number mark "        christos@zou Sep 26   14/647   " thread-indent "\"Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape\"\n") "<20160926165409.ekk6dztdpttnnf67@jwilk.net>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19867 invoked by uid 550); 26 Sep 2016 17:58:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16339 invoked from network); 26 Sep 2016 17:53:14 -0000
In-Reply-To: <20160926165409.ekk6dztdpttnnf67@jwilk.net>
       from Jakub Wilk (Sep 26,  6:54pm)
Organization: Astron Software
X-Mailer: Mail User's Shell (7.2.6 beta(4.pl1)+dynamic 20000103)
Message-Id: <20160926175302.D6C8417FDAB@rebar.astron.com>
Date: Mon, 26 Sep 2016 13:53:02 -0400
From: christos@zoulas.com (Christos Zoulas)
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape
To: oss-security@lists.openwall.com

On Sep 26,  6:54pm, jwilk@jwilk.net (Jakub Wilk) wrote:
-- Subject: Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape

| Are there any use cases for TIOCSTI other than producing exploits?

On the BSDs TIOCSTI has been limited to the superuser since the
4.4BSD Lite 2 release in 1995 (IIRC). I think that linux should
follow suit if it has not (yet). For those who are interested in
the history of this, I believe that first we checked only the
userid (4.2BSD), then we checked the userid and that the process
was a session leader (4.3BSD), and finally we decided that this
was too big of a hole and limited it to the superuser.

christos
