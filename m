X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["998" "Saturday" "21" "October" "2017" "12:39:34" "+0100" "Simon McVittie" "smcv@debian.org" "<20171021113934.bk2kdbl66o6anpbr@perpetual.pseudorandom.co.uk>" "21" "Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" "^Date:" nil nil "10" "2017102111:39:34" "[oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" (number mark "        smcv@debian. Oct 21   21/998   " thread-indent "\"Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync\"\n") "<CAOfWR+Ga88eCNj-cQiBBXzM=S+xBfE5fsbgBWXMWSnN=8_4rFw@mail.gmail.com>" ("<20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>" "<CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>" "<CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>" "<CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>" "<20171019194428.GK20315@hunt>" "<CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>" "<CABMkiz6X3N8X7nq8eCnNGVUEx8jzd7hNLk3W_8OdW0Pg+UvSYQ@mail.gmail.com>" "<CAOfWR+Ga88eCNj-cQiBBXzM=S+xBfE5fsbgBWXMWSnN=8_4rFw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23742 invoked by uid 550); 21 Oct 2017 11:39:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23721 invoked from network); 21 Oct 2017 11:39:50 -0000
Message-ID: <20171021113934.bk2kdbl66o6anpbr@perpetual.pseudorandom.co.uk>
References: <20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>
 <CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>
 <CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>
 <CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>
 <20171019194428.GK20315@hunt>
 <CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>
 <CABMkiz6X3N8X7nq8eCnNGVUEx8jzd7hNLk3W_8OdW0Pg+UvSYQ@mail.gmail.com>
 <CAOfWR+Ga88eCNj-cQiBBXzM=S+xBfE5fsbgBWXMWSnN=8_4rFw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOfWR+Ga88eCNj-cQiBBXzM=S+xBfE5fsbgBWXMWSnN=8_4rFw@mail.gmail.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Sat, 21 Oct 2017 12:39:34 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in
 Debian mirror script ftpsync
To: oss-security@lists.openwall.com

On Fri, 20 Oct 2017 at 23:08:14 +0000, Robert Watson wrote:
> Okay, so a script adds a symlink to /etc/shadow or something else
> confidential. Unless they're root, what good does it do them? They can't
> read it.

In that particular case, it would do an attacker no good. (Unless the
web server that will be serving the mirrored content is running as root,
but don't do that.)

However, there are plenty of files on a system that are readable by the
web server, but should not be readable by random people on the Internet.
If the same web server has password-protected directories (for example
using Apache .htaccess/.htpasswd) then the files with their passwords
usually need to be readable by the web server, but should not be served.

/etc/passwd is another common example: it doesn't contain actual
passwords since shadow passwords became widespread, but having a list
of valid usernames available to the public would make life easier for
an attacker, and should usually be avoided.

    smcv
