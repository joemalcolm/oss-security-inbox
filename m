X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["645" "Tuesday" "28" "November" "2017" "20:46:58" "-0800" "Ian Zimmerman" "itz@very.loosely.org" "<20171129044658.mkrtl3nhjuhxw6k7@matica.foolinux.mooo.com>" "15" "[oss-security] Re: Security risk of server side text editing ..." "^Date:" nil nil "11" "2017112904:46:58" "[oss-security] Re: Security risk of server side text editing ..." (number mark "        itz@very.loo Nov 28   15/645   " thread-indent "\"[oss-security] Re: Security risk of server side text editing ...\"\n") "<d84e199d-8f99-531f-74a3-5b5b29176c44@orlitzky.com>" ("<201711281319.vASDJxWP010037@masaka.moolenaar.net>" "<d84e199d-8f99-531f-74a3-5b5b29176c44@orlitzky.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22281 invoked by uid 550); 29 Nov 2017 11:26:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21959 invoked from network); 29 Nov 2017 04:47:17 -0000
Message-ID: <20171129044658.mkrtl3nhjuhxw6k7@matica.foolinux.mooo.com>
Mail-Followup-To: oss-security@lists.openwall.com
References: <201711281319.vASDJxWP010037@masaka.moolenaar.net>
 <d84e199d-8f99-531f-74a3-5b5b29176c44@orlitzky.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d84e199d-8f99-531f-74a3-5b5b29176c44@orlitzky.com>
X-Loosely-Listed: yes
User-Agent: NeoMutt/20170707-dirty (1.8.3)
Date: Tue, 28 Nov 2017 20:46:58 -0800
From: Ian Zimmerman <itz@very.loosely.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Security risk of server side text editing ...
To: oss-security@lists.openwall.com

On 2017-11-28 21:05, Michael Orlitzky wrote:

> Editing a file in-place should not create *another* file in the
> current directory with a different name/suffix. I realize that's
> subjective, but a lot of (even long time) users will tell you that no
> way in hell did they expect that to happen.

Maybe, but I think editors have done this from time immemorial.  Compare
for instance the comments on the limits of locking on p. 456 of Stevens
& Rago.

-- 
Please don't Cc: me privately on mailing lists and Usenet,
if you also post the followup to the list or newsgroup.
To reply privately _only_ on Usenet, fetch the TXT record for the domain.
