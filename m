X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["869" "Friday" "16" "June" "2017" "08:20:40" "+1000" "Brian May" "brian@linuxpenguins.xyz" "<87a858dhaf.fsf@prune.linuxpenguins.xyz>" "21" "Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close()" "^Date:" nil nil "6" "2017061522:20:40" "[oss-security] Re: MySQL - use-after-free after mysql_stmt_close()" (number mark "U       brian@linuxp Jun 16   21/869   " thread-indent "\"Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close()\"\n") "<CANO=Ty0mQugCFyHqxzSVyc+2NUQcL5f42xXu9w=NQ5XvJHU75w@mail.gmail.com>" ("<201706082349.03355@pali>" "<201706122347.54536@pali>" "<1497534642.3053.3.camel@redhat.com>" "<CANO=Ty0mQugCFyHqxzSVyc+2NUQcL5f42xXu9w=NQ5XvJHU75w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3579 invoked by uid 550); 15 Jun 2017 22:20:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3548 invoked from network); 15 Jun 2017 22:20:58 -0000
X-Virus-Scanned: amavisd-new at kolabnow.com
In-Reply-To: <CANO=Ty0mQugCFyHqxzSVyc+2NUQcL5f42xXu9w=NQ5XvJHU75w@mail.gmail.com>
References: <201706082349.03355@pali> <201706122347.54536@pali> <1497534642.3053.3.camel@redhat.com> <CANO=Ty0mQugCFyHqxzSVyc+2NUQcL5f42xXu9w=NQ5XvJHU75w@mail.gmail.com>
Message-ID: <87a858dhaf.fsf@prune.linuxpenguins.xyz>
MIME-Version: 1.0
Content-Type: text/plain
Date: Fri, 16 Jun 2017 08:20:40 +1000
From: Brian May <brian@linuxpenguins.xyz>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close()
To: oss-security <oss-security@lists.openwall.com>

Kurt Seifried <kseifried@redhat.com> writes:

> Should we assign CVEs for code examples/documentation? E.g. We assign CVEs
> for code shipped to people in digital form. Why not assign CVEs for code in
> documentation or commonly used examples? We can go with the rational that
> CVEs get assigned to the affected code bases (e.g. when someone implements
> that documentation/code), but it might also be good to educate the
> community about bad examples/documentation/etc.

For a prior example, in this case of documentation suggesting insecure
configuration, see:

http://www.openwall.com/lists/oss-security/2015/03/28/7

I note that the documentation still has the bad example listed, with no
indication that this is bad.

http://www.openldap.org/doc/admin24/guide.html#Access Control Examples
-- 
Brian May <brian@linuxpenguins.xyz>
https://linuxpenguins.xyz/brian/
