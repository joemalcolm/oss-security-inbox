X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["670" "Monday" "2" "July" "2018" "18:32:54" "+0100" "Simon McVittie" "smcv@debian.org" "<20180702173254.GC2555@espresso.pseudorandom.co.uk>" "15" "Re: [oss-security] accountsservice: insufficient path check in user_change_icon_file_authorized_cb()" "^Date:" nil nil "7" "2018070217:32:54" "[oss-security] accountsservice: insufficient path check in user_change_icon_file_authorized_cb()" (number mark "        smcv@debian. Jul  2   15/670   " thread-indent "\"Re: [oss-security] accountsservice: insufficient path check in user_change_icon_file_authorized_cb()\"\n") "<20180702141024.iudvf2tx7fsf3q66@jwilk.net>" ("<20180702122122.GD8324@f195.suse.de>" "<20180702141024.iudvf2tx7fsf3q66@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26406 invoked by uid 550); 2 Jul 2018 17:33:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26359 invoked from network); 2 Jul 2018 17:33:09 -0000
Message-ID: <20180702173254.GC2555@espresso.pseudorandom.co.uk>
References: <20180702122122.GD8324@f195.suse.de>
 <20180702141024.iudvf2tx7fsf3q66@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180702141024.iudvf2tx7fsf3q66@jwilk.net>
User-Agent: Mutt/1.10.0 (2018-05-17)
Date: Mon, 2 Jul 2018 18:32:54 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] accountsservice: insufficient path check in
 user_change_icon_file_authorized_cb()
To: oss-security@lists.openwall.com

On Mon, 02 Jul 2018 at 16:10:24 +0200, Jakub Wilk wrote:
> You patch uses g_file_get_path(), which AFIACT doesn't use any filesystem
> I/O for canonicalisation, so that should be fine.

It's specifically documented not to do any blocking I/O, and might provide
syntactic canonicalisation (the documentation doesn't specifically say
either way) but does not provide filesystem-aware canonicalisation.
The documentation also specifically says that the returned path "might
contain symlinks".

It might be a good idea to double-check that the result of
g_file_get_path() starts with "/", doesn't contain "/../" and (just for
completeness) doesn't end with "/..".

    smcv
