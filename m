X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2439" "Saturday" "21" "October" "2017" "12:58:47" "+0200" "Solar Designer" "solar@openwall.com" "<20171021105847.GA16973@openwall.com>" "52" "Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" "^Date:" nil nil "10" "2017102110:58:47" "[oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" (number mark "        solar@openwa Oct 21   52/2439  " thread-indent "\"Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync\"\n") "<CAOfWR+Ga88eCNj-cQiBBXzM=S+xBfE5fsbgBWXMWSnN=8_4rFw@mail.gmail.com>" ("<20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>" "<CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>" "<CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>" "<CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>" "<20171019194428.GK20315@hunt>" "<CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>" "<CABMkiz6X3N8X7nq8eCnNGVUEx8jzd7hNLk3W_8OdW0Pg+UvSYQ@mail.gmail.com>" "<CAOfWR+Ga88eCNj-cQiBBXzM=S+xBfE5fsbgBWXMWSnN=8_4rFw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15813 invoked by uid 550); 21 Oct 2017 11:00:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15366 invoked from network); 21 Oct 2017 10:58:58 -0000
Message-ID: <20171021105847.GA16973@openwall.com>
References: <20171017162507.e7lx6fbnleugoxxa@waldi.eu.org> <CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com> <CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com> <CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com> <20171019194428.GK20315@hunt> <CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com> <CABMkiz6X3N8X7nq8eCnNGVUEx8jzd7hNLk3W_8OdW0Pg+UvSYQ@mail.gmail.com> <CAOfWR+Ga88eCNj-cQiBBXzM=S+xBfE5fsbgBWXMWSnN=8_4rFw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOfWR+Ga88eCNj-cQiBBXzM=S+xBfE5fsbgBWXMWSnN=8_4rFw@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Sat, 21 Oct 2017 12:58:47 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync
To: oss-security@lists.openwall.com

Robert,

As a moderator, I let your questions through so far, as well as all
replies.  I think it is in fact beneficial to question things and make
sure people are on the same page as to what constitutes (or does not
constitute) a security issue, and what exactly the issues are.  That
said, please remember that your messages reach thousands of people and
take up a tiny bit of each person's time - which adds up to way more
time than you probably put into writing these messages.  Thus, you're
expected to invest quite some time into reading and thinking of the
replies you got so far before you post anything further.  To make this
specific, please stop and re-read and think for 10 minutes before you
possibly post anything else to this mailing list.

I feel that you posted the below without giving it enough time and
thought first:

On Fri, Oct 20, 2017 at 11:08:14PM +0000, Robert Watson wrote:
> Okay, so a script adds a symlink to /etc/shadow or something else
> confidential. Unless they're root, what good does it do them? They can't
> read it.

I think this specific question had already been addressed by Ben in:

http://www.openwall.com/lists/oss-security/2017/10/18/12

"There's stuff that will be protected by permissions (for example, you
shouldn't be able to pull down /etc/shadow - so long as nginx/apache isn't
running as root), but there are other files that you might consider
sensitive(ish). Pulling down /etc/passwd would give you a list of known
good usernames to better target brute-force attempts (for example). Or
perhaps using it to grab the config file of some dynamic site on the same
server etc."

When a thread starts going in circles like that, as a moderator I have
to intervene and stop it.  So I do.

While we're at it, I also recommend that you avoid top-posting and
over-quoting.  Here's how to format your messages better:

http://www.complang.tuwien.ac.at/anton/mail-news-errors.html
http://www.netmeister.org/news/learn2quote.html

I don't find this message formatting aspect terribly important per se,
but I may use it as yet another unreliable indicator of whether the
person posting cares for other people's time or not.  If someone
top-posts and quotes the previous message in its entirety on a mailing
list (not in business correspondence, where this unfortunately became
customary), chances are they didn't think much of what they're replying
to and what they're posting as well.

Alexander
