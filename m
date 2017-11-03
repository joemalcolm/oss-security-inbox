X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["595" "Friday" "3" "November" "2017" "21:26:59" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20171103212659.378593da@pc1>" "19" "[oss-security] nvi crash recovery (was Re: [oss-security] Re: Security risk of server side text editing in general and vim.tiny specifically)" "^Date:" nil nil "11" "2017110320:26:59" "[oss-security] nvi crash recovery (was Re: [oss-security] Re: Security risk of server side text editing in general and vim.tiny specifically)" (number mark "        hanno@hboeck Nov  3   19/595   " thread-indent "\"[oss-security] nvi crash recovery (was Re: [oss-security] Re: Security risk of server side text editing in general and vim.tiny specifically)\"\n") "<20171103181243.lwtf3a5f4zjr4pzi@matica.foolinux.mooo.com>" ("<2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>" "<20171103181243.lwtf3a5f4zjr4pzi@matica.foolinux.mooo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11434 invoked by uid 550); 3 Nov 2017 20:27:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11416 invoked from network); 3 Nov 2017 20:27:13 -0000
Message-ID: <20171103212659.378593da@pc1>
In-Reply-To: <20171103181243.lwtf3a5f4zjr4pzi@matica.foolinux.mooo.com>
References: <2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>
	<20171103181243.lwtf3a5f4zjr4pzi@matica.foolinux.mooo.com>
X-Mailer: Claws Mail 3.15.1-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 3 Nov 2017 21:26:59 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] nvi crash recovery (was Re: [oss-security] Re: Security risk of
 server side text editing in general and vim.tiny specifically)
To: oss-security@lists.openwall.com

On Fri, 3 Nov 2017 11:12:43 -0700
Ian Zimmerman <itz@very.loosely.org> wrote:

> How much of this (and the parallel thread of course) applies to nvi?

This is actually interesting:
nvi saves recovery files to /var/tmp/vi.recover and creates them with
600 permissions.
So all the problems discussed don't really apply here.
However the dir itself gets created by the first user using nvi. Not
sure if that causes any other problems (permissions are rwx for all and
sticky bit).

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
