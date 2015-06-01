X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1244" "Sunday" "31" "May" "2015" "21:52:45" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87k2vofb4i.fsf@alice.fifthhorseman.net>" "28" "Re: [oss-security] [CVE-2015-0839] hp-plugin binary driver verification" nil nil nil "5" "2015060101:52:45" "[oss-security] [CVE-2015-0839] hp-plugin binary driver verification" (number mark "        dkg@fifthhor May 31   28/1244  " thread-indent "\"Re: [oss-security] [CVE-2015-0839] hp-plugin binary driver verification\"\n") "<20150529130035.GA28407@enricozini.org>" ("<20150529130035.GA28407@enricozini.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24529 invoked by uid 550); 1 Jun 2015 01:53:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24509 invoked from network); 1 Jun 2015 01:53:13 -0000
In-Reply-To: <20150529130035.GA28407@enricozini.org>
References: <20150529130035.GA28407@enricozini.org>
User-Agent: Notmuch/0.20 (http://notmuchmail.org) Emacs/24.4.1 (x86_64-pc-linux-gnu)
Message-ID: <87k2vofb4i.fsf@alice.fifthhorseman.net>
MIME-Version: 1.0
Content-Type: text/plain
Date: Sun, 31 May 2015 21:52:45 -0400
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [CVE-2015-0839] hp-plugin binary driver verification
To: Enrico Zini <enrico@enricozini.org>, oss-security@lists.openwall.com

On Fri 2015-05-29 09:00:35 -0400, Enrico Zini wrote:
> I was forced to run hp-plugin to download a binary driver for the new
> printer, and I noticed this bit:
>
>   Downloading plug-in from:
>   Receiving digital keys: /usr/bin/gpg --homedir /home/enrico/.hplip/.gnupg --no-permission-warning --keyserver pgp.mit.edu --recv-keys 0xA59047B9
>   Creating directory plugin_tmp
>   Verifying archive integrity... All good.
>
> The use of a short key ID worries me, because it is now trivial to
> generate keys with arbitrary key IDs, and gpg --recv-keys will happily
> download all those it finds. Also, pgp.mit.edu is a keyserver where
> everyone can upload arbitrary keys.
>
> You can run "gpg --recv 70096AD1" to play with multiple keys having the
> same key ID.
>
> I assume hp-plugin is open to downloading and verifying plugins signed
> by any key that one can verify that have that short key ID, and that
> with that and some fiddling with DNS one can cause systems running
> hp-plugin to download and run malicious code.
>
> A quick fix would be to use the full fingerprint instead of the key id.

A better quick fix would be to ship the authoritative key in hplip
directly, and avoid all interaction with the keyservers.

          --dkg
