X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["879" "Tuesday" "28" "November" "2017" "21:05:28" "-0500" "Michael Orlitzky" "michael@orlitzky.com" "<d84e199d-8f99-531f-74a3-5b5b29176c44@orlitzky.com>" "17" "Re: [oss-security] Re: Security risk of server side text editing ..." "^Date:" nil nil "11" "2017112902:05:28" "[oss-security] Re: Security risk of server side text editing ..." (number mark "        michael@orli Nov 28   17/879   " thread-indent "\"Re: [oss-security] Re: Security risk of server side text editing ...\"\n") "<201711281319.vASDJxWP010037@masaka.moolenaar.net>" ("<201711281319.vASDJxWP010037@masaka.moolenaar.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25626 invoked by uid 550); 29 Nov 2017 02:06:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24427 invoked from network); 29 Nov 2017 02:06:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1511921149; bh=/Hh1Mn6N03e4fBLE29RmDZhEQcIOCF04IwioADELImA=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=WPNpXMWeoa0yrigqcUQ36+gIqobEiY7DO8sT+zktARWSIWT0coSColOppc64xKE7N
	 CIoi0GCU4brYIFsxQS+yS701S/hKtOLzFFmZlmgyzRBp78nVwAKfU3DgyG8d6jzuxm
	 a/Nelw3GbMmb4S4/GtEa00Y2DR4JIaXxuLoFZss0=
References: <201711281319.vASDJxWP010037@masaka.moolenaar.net>
Message-ID: <d84e199d-8f99-531f-74a3-5b5b29176c44@orlitzky.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <201711281319.vASDJxWP010037@masaka.moolenaar.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Date: Tue, 28 Nov 2017 21:05:28 -0500
From: Michael Orlitzky <michael@orlitzky.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Security risk of server side text editing ...
To: oss-security@lists.openwall.com

On 11/28/2017 08:19 AM, Bram Moolenaar wrote:
> 
> This is a problem with the configuration of the web server.  It should
> not publish files it doesn't know about.  The problem also happens for
> any other file manipulation, e.g. "cp file.php file.php.orig" if you
> want to make some temporary changes.  A .orig and .rej file may also
> appear when applying a patch.

The main difference in my mind is that when you "cp" a file, you expect
it to create a new file. Likewise with patch it tells you that the
rejects were saved in a new file.

Editing a file in-place should not create *another* file in the current
directory with a different name/suffix. I realize that's subjective, but
a lot of (even long time) users will tell you that no way in hell did
they expect that to happen. (What's the argument against using a
subdirectory of $HOME to store these temporary files?)
