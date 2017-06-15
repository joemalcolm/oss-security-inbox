X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["974" "Thursday" "15" "June" "2017" "10:28:04" "-0700" "Kurt H Maier" "khm@sciops.net" "<20170615172804.GA21944@wopr>" "21" "Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close()" "^Date:" nil nil "6" "2017061517:28:04" "[oss-security] Re: MySQL - use-after-free after mysql_stmt_close()" (number mark "        khm@sciops.n Jun 15   21/974   " thread-indent "\"Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close()\"\n") "<CANO=Ty0mQugCFyHqxzSVyc+2NUQcL5f42xXu9w=NQ5XvJHU75w@mail.gmail.com>" ("<201706082349.03355@pali>" "<201706122347.54536@pali>" "<1497534642.3053.3.camel@redhat.com>" "<CANO=Ty0mQugCFyHqxzSVyc+2NUQcL5f42xXu9w=NQ5XvJHU75w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32603 invoked by uid 550); 15 Jun 2017 17:28:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32518 invoked from network); 15 Jun 2017 17:28:28 -0000
Message-ID: <20170615172804.GA21944@wopr>
Mail-Followup-To: oss-security@lists.openwall.com
References: <201706082349.03355@pali>
 <201706122347.54536@pali>
 <1497534642.3053.3.camel@redhat.com>
 <CANO=Ty0mQugCFyHqxzSVyc+2NUQcL5f42xXu9w=NQ5XvJHU75w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANO=Ty0mQugCFyHqxzSVyc+2NUQcL5f42xXu9w=NQ5XvJHU75w@mail.gmail.com>
Date: Thu, 15 Jun 2017 10:28:04 -0700
From: Kurt H Maier <khm@sciops.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: MySQL - use-after-free after
 mysql_stmt_close()
To: oss-security@lists.openwall.com

On Thu, Jun 15, 2017 at 08:21:29AM -0600, Kurt Seifried wrote:
> 1) Official documentation that says "do this [insecure thing]" should
> probably get a CVE (e.g. "turn off all the encryption to make it work more
> easily"). This should probably get a CVE, especially as it results in
> operational changes which won't get a CVE (since it's not in code that
> "ships", it's just on the end of whoever is using it).

I really like this idea.  What would be the approach to software whose
documentation starts out with "turn off selinux," out of curiosity?
Obviously this lessens the security stance of the system, but presumably
the system is designed to be operable without selinux.  Would CVEs get
assigned for all bad ideas, or just those that expose actual attack
vectors?

> 3) Unofficial but commonly used documentation and code examples, I guess
> the best example here is stackoverflow and friends?

This is going to cause you to hit INT_MAX relatively quickly.


khm
