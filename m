X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1183" "Tuesday" "11" "August" "2015" "16:13:48" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<874mk5poqr.fsf@alice.fifthhorseman.net>" "30" "Re: [oss-security] Terminal escape sequences - the new XSS for admins?" nil nil nil "8" "2015081120:13:48" "[oss-security] Terminal escape sequences - the new XSS for admins?" (number mark "        dkg@fifthhor Aug 11   30/1183  " thread-indent "\"Re: [oss-security] Terminal escape sequences - the new XSS for admins?\"\n") "<CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>" ("<CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13372 invoked by uid 550); 11 Aug 2015 20:14:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13353 invoked from network); 11 Aug 2015 20:14:10 -0000
In-Reply-To: <CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>
References: <CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>
User-Agent: Notmuch/0.20.2 (http://notmuchmail.org) Emacs/24.5.1 (x86_64-pc-linux-gnu)
Message-ID: <874mk5poqr.fsf@alice.fifthhorseman.net>
MIME-Version: 1.0
Content-Type: text/plain
Date: Tue, 11 Aug 2015 16:13:48 -0400
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Terminal escape sequences - the new XSS for admins?
To: Kurt Seifried <kseifried@redhat.com>, oss-security <oss-security@lists.openwall.com>

On Tue 2015-08-11 12:23:59 -0400, Kurt Seifried wrote:
> So we've had a bunch of this stuff over the years:
>
> http://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=terminal+escape
>
> And now more recently:
>
> http://turbochaos.blogspot.ca/2014/08/journalctl-terminal-escape-injection.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1084577
>
> And we have at least one more coming down the pipeline that's pretty
> widespread.
>
> Also I'm thinking of all those docker apps that log to STDOUT.
>
> So the basic TL;DR: please don't use really ancient terminal programs that
> are vulnerable to this stuff. It appears in testing that most (all?) of the
> Red Hat stuff is ok, but I can't speak for other vendors.

Do we have a catalog of terminal programs that are vulnerable, or of
particularly dangerous escape sequences to test with each terminal
emulator?  I'd be happy to try to organize a torches-and-pitchforks run
through the debian archive if i know what to look for.

https://security.stackexchange.com/questions/56307/can-cat-ing-a-file-be-a-potential-security-risk

has some good links and discussion from just last year but nothing
systematized that i can see.

   --dkg
