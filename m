X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1064" "Tuesday" "12" "July" "2016" "11:14:53" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20160712091158.4wlwrde7wbcj6swo@jwilk.net>" "37" "Re: [oss-security] Pylint checks not as static as one would think" nil nil nil "7" "2016071209:14:53" "[oss-security] Pylint checks not as static as one would think" (number mark "U       jwilk@jwilk. Jul 12   37/1064  " thread-indent "\"Re: [oss-security] Pylint checks not as static as one would think\"\n") "<20140929123221.GA4178@jwilk.net>" ("<20140929123221.GA4178@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1451 invoked by uid 550); 12 Jul 2016 09:15:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1427 invoked from network); 12 Jul 2016 09:15:11 -0000
Date: Tue, 12 Jul 2016 11:14:53 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20160712091158.4wlwrde7wbcj6swo@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20140929123221.GA4178@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20140929123221.GA4178@jwilk.net>
User-Agent: Mutt/1.6.1-neo (2016-06-11)
X-Ovh-Tracer-Id: 13047209597258487718
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeeltddrfeejgdduudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecu
Subject: Re: [oss-security] Pylint checks not as static as one would think

* Jakub Wilk <jwilk@jwilk.net>, 2014-09-29, 14:32:
>$ cat moo.py
>from _moo import *
>
>$ cat moo.c
>#include <stdio.h>
>#include <signal.h>
>void __attribute__((constructor)) moo() {
>	printf("moo!\n");
>	kill(0, SIGSEGV);
>}
>
>$ gcc -Wall -shared -fPIC moo.c -o _moo.so
>
>$ pylint moo.py
>No config file found, using default configuration
>moo!
>Segmentation fault

This was fixed in Pylint 1.4.0:

|   * Added new options for controlling the loading of C extensions.
|     By default, only C extensions from the stdlib will be loaded
|     into the active Python interpreter for inspection, because they
|     can run arbitrary code on import. The option
|     `--extension-pkg-whitelist` can be used to specify modules
|     or packages that are safe to load.

Beware that by default Pylint reads configuration file from cwd, and 
this configuration file can whitelist malicious extensions. You probably 
want to use --rcfile=/dev/null when cwd is untrusted.

And here's another code execution bug:
https://github.com/PyCQA/pylint/issues/959

-- 
Jakub Wilk
