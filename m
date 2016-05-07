X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["393" "Saturday" "7" "May" "2016" "09:44:55" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87inyq0yp4.fsf@alice.fifthhorseman.net>" "9" "Re: [oss-security] broken RSA keys" "^Date:" nil nil "5" "2016050713:44:55" "[oss-security] broken RSA keys" (number mark "        dkg@fifthhor May  7    9/393   " thread-indent "\"Re: [oss-security] broken RSA keys\"\n") "<20160505112114.GA25313@openwall.com>" ("<20160504124248.GA15148@openwall.com>" "<20160504172803.GA19393@openwall.com>" "<CAP9m6YeT=Vo1WQ4Jqn1QV-Cp6mBQ3EwWQ5p_=Rm4P3Na3aGcGw@mail.gmail.com>" "<20160505103405.GA25044@openwall.com>" "<20160505130336.7557b73b@pc1>" "<20160505112114.GA25313@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32435 invoked by uid 550); 7 May 2016 13:45:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32396 invoked from network); 7 May 2016 13:45:06 -0000
In-Reply-To: <20160505112114.GA25313@openwall.com>
References: <20160504124248.GA15148@openwall.com> <20160504172803.GA19393@openwall.com> <CAP9m6YeT=Vo1WQ4Jqn1QV-Cp6mBQ3EwWQ5p_=Rm4P3Na3aGcGw@mail.gmail.com> <20160505103405.GA25044@openwall.com> <20160505130336.7557b73b@pc1> <20160505112114.GA25313@openwall.com>
User-Agent: Notmuch/0.22+16~g87b7bd4 (http://notmuchmail.org) Emacs/24.5.1 (x86_64-pc-linux-gnu)
Message-ID: <87inyq0yp4.fsf@alice.fifthhorseman.net>
MIME-Version: 1.0
Content-Type: text/plain
Date: Sat, 07 May 2016 09:44:55 -0400
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] broken RSA keys
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com

On Thu 2016-05-05 07:21:14 -0400, Solar Designer wrote:
> Thanks.  I guess when I imported a PGP 2.6 key to GPG, I just did not
> notice this detail, and GPG continued to use the V3 format key for me.

FWIW, newer versions of GnuPG (since 2.1.0) have completely dropped
support for v3 keys.  This silly construction of the keyid is only one
of the problems with the v3 format.

         --dkg
