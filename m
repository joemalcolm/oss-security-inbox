X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2115" "Monday" "1" "October" "2018" "14:45:47" "+0200" "Solar Designer" "solar@openwall.com" "<20181001124547.GA6845@openwall.com>" "49" "Re: [oss-security] Django security release issued: 2.1.2" "^Cc:" nil nil "10" "2018100112:45:47" "[oss-security] Django security release issued: 2.1.2" (number mark "        solar@openwa Oct  1   49/2115  " thread-indent "\"Re: [oss-security] Django security release issued: 2.1.2\"\n") "<D256F892-8344-4273-A676-93D62E0CC984@gmail.com>" ("<D256F892-8344-4273-A676-93D62E0CC984@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9358 invoked by uid 550); 1 Oct 2018 12:46:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8128 invoked from network); 1 Oct 2018 12:45:52 -0000
Message-ID: <20181001124547.GA6845@openwall.com>
References: <D256F892-8344-4273-A676-93D62E0CC984@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <D256F892-8344-4273-A676-93D62E0CC984@gmail.com>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Mon, 1 Oct 2018 14:45:47 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Django security release issued: 2.1.2
To: Carlton Gibson <carlton.gibson@gmail.com>

On Mon, Oct 01, 2018 at 11:33:47AM +0200, Carlton Gibson wrote:
> Today the Django team issued 2.1.2 as part of our security 
> process. This release address a security issue, and we encourage all 
> users to upgrade as soon as possible: 
> 
> https://www.djangoproject.com/weblog/2018/oct/01/security-release/

First of all, thank you for sharing this with oss-security.

Per oss-security list content guidelines, actual vulnerability detail
must be included in postings (message body or text/plain attachment).
The Subject could have easily been more descriptive for this list, too -
e.g., "CVE-2018-16984: Django: Password hash disclosure to "view only"
admin users".

Carlton, I'd appreciate it if you include such detail in your
oss-security postings (if any) on future occasions.  Including the links
as well is great (such as for easy access to updated revisions while
the links work); including only links is discouraged.

Here's the vulnerability detail from the above URL:

---
CVE-2018-16984: Password hash disclosure to "view only" admin users

If an admin user has the change permission to the user model, only part
of the password hash is displayed in the change form. Admin users with
the view (but not change) permission to the user model were displayed
the entire hash. While it's typically infeasible to reverse a strong
password hash, if your site uses weaker password hashing algorithms such
as MD5 or SHA1, it could be a problem.

Thanks Phithon Gong for reporting this issue.
---

BTW, the feasibility of "reversing" a password hash depends not only on
hash type, but also on how many guesses the attacker would need to make
before likely hitting the right password.  Without target user specific
information, that number depends on how common or not the password is.

Maybe the word "typically" allows for this exception for weak passwords.
However, unnecessarily revealing the password hash is a problem on its
own, not just "could be a problem" depending on hash type, although the
restriction to "admin users" and password hashing do mitigate the issue
to some extent.

Thanks,

Alexander
