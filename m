Received: (qmail 1528 invoked by uid 550); 11 Aug 2025 13:31:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19886 invoked from network); 11 Aug 2025 02:22:28 -0000
Date: Mon, 11 Aug 2025 04:22:20 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: oss-security@lists.openwall.com
Message-ID: <20250811022220.GR2576@qaa.vinc17.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAMqWyhi=xW2sq2+Hb2aJ=ta-zfi_Zay6CztQ9mvDqgjbKr1HpQ@mail.gmail.com>
 <a7169751-2b66-4123-b2b5-09e35623ff80@gmail.com>
 <CAMqWyhhFgATrYJtxFP-hGLR3FN2XhnvZLHVyNtxpWdAp6fFJNQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMqWyhhFgATrYJtxFP-hGLR3FN2XhnvZLHVyNtxpWdAp6fFJNQ@mail.gmail.com>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+86 (bb2064ae) vl-169878 (2025-02-08)
Subject: Re: [oss-security] CVE-2025-55188: 7-Zip: Arbitrary file write on
 extraction, may lead to code execution

On 2025-08-09 22:55:14 -0700, lunbun wrote:
> If, say, the archive is extracted to `/tmp` and the CWD is `/tmp`, then
> yes, the best an attacker can do is guess the user's login name.

There are other issues with /tmp. If I understand correctly,
the attacker could create /tmp/config.guess and /tmp/install-sh
executable files. Then if the user compiles a libtool-based
library under a subdirectory of /tmp, one of these files could
be executed:

  https://debbugs.gnu.org/cgi/bugreport.cgi?bug=21951

And what about the /run/user/1000 directory? (In Debian,
the UID of the main user always seems to be 1000.)

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
