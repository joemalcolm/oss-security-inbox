X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1075" "Monday" "22" "October" "2018" "20:26:38" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20181022182638.uja7q6jhxn5md36n@jwilk.net>" "23" "Re: [oss-security] Using quilt on untrusted RPM spec files" "^Date:" nil nil "10" "2018102218:26:38" "[oss-security] Using quilt on untrusted RPM spec files" (number mark "        jwilk@jwilk. Oct 22   23/1075  " thread-indent "\"Re: [oss-security] Using quilt on untrusted RPM spec files\"\n") "<20180927155934.GB8696@f195.suse.de>" ("<20180927155934.GB8696@f195.suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3863 invoked by uid 550); 22 Oct 2018 18:26:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3840 invoked from network); 22 Oct 2018 18:26:56 -0000
Message-ID: <20181022182638.uja7q6jhxn5md36n@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20180927155934.GB8696@f195.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20180927155934.GB8696@f195.suse.de>
User-Agent: NeoMutt/20180716
X-Ovh-Tracer-Id: 1613414568901269414
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtkedrgedvgdduvdejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenuc
Date: Mon, 22 Oct 2018 20:26:38 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Using quilt on untrusted RPM spec files
To: oss-security@lists.openwall.com

* Matthias Gerstner <mgerstner@suse.de>, 2018-09-27, 17:59:
>It turns out that running `quilt setup` on untrusted sources is not a 
>good idea:

Debian largely avoids this problem by having a source package format 
with built-in patch system[0]. Most of the time the unpacked source 
package will have patches applied, so there's no need for the reviewer 
to run untrusted code to prepare the source.

(That said, dpkg-source had quite a few path traversal bugs in the 
past[1] and I have a hunch there's more to be found...)

While debian/rules can have optional "patch" target[2] (which is a bit 
like RPM's %prep), it felt to disuse these days. A developer wouldn't 
call "debian/rules patch" against a random not-yet-reviewed package, 
because it would be unusual to have this target implemented.

[0] https://manpages.debian.org/stretch/dpkg-dev/dpkg-source.1.en.html#Format:_3.0_%28quilt%29
[1] https://security-tracker.debian.org/tracker/source-package/dpkg
[2] https://www.debian.org/doc/debian-policy/ch-source.html#main-building-script-debian-rules

-- 
Jakub Wilk
