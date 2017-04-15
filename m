X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["692" "Saturday" "15" "April" "2017" "12:13:28" "+0200" "Andreas Lausch-Waas" "andreas@flausch.at" "<6cb75b56-b1b4-d381-1110-1e0cad5fb6b4@flausch.at>" "18" "Re: [oss-security] alloca in inline functions can be dangerous" "^Date:" nil nil "4" "2017041510:13:28" "[oss-security] alloca in inline functions can be dangerous" (number mark "        andreas@flau Apr 15   18/692   " thread-indent "\"Re: [oss-security] alloca in inline functions can be dangerous\"\n") "<CAJ6=jSCBZjEsKoOhq=AJMcF+HcDcks9=kz57a-xXWJDrKw7bTQ@mail.gmail.com>" ("<a18696795bb4b91a@frisell.zx2c4.com>" "<CAJ6=jSCBZjEsKoOhq=AJMcF+HcDcks9=kz57a-xXWJDrKw7bTQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3441 invoked by uid 550); 15 Apr 2017 22:02:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21996 invoked from network); 15 Apr 2017 10:13:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=flausch.at; s=dkim11;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject; bh=q5XK3XS1GN4+E06G4oy9f4fh0+iHm85yzHuynE9Qhy4=;
	b=i7waAtOY3mlszlDuxqbanGFUcIBlEoabCWDIj9g/WXCJ9qf1JbF2PQDOUd0pewPAJYdYdPTGOFluAWiwpjLiHfv79eWe7aPtflOM90C9Vx1ps9Z/RM7j32AxP7Ey7Cv+pI5nbxARnhNT7P25vfhb3w7nx/uvBaUXgwL7451DxwE=;
References: <a18696795bb4b91a@frisell.zx2c4.com>
 <CAJ6=jSCBZjEsKoOhq=AJMcF+HcDcks9=kz57a-xXWJDrKw7bTQ@mail.gmail.com>
Message-ID: <6cb75b56-b1b4-d381-1110-1e0cad5fb6b4@flausch.at>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.0
MIME-Version: 1.0
In-Reply-To: <CAJ6=jSCBZjEsKoOhq=AJMcF+HcDcks9=kz57a-xXWJDrKw7bTQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-IE
X-SA-Do-Not-Run: Yes
X-AV-Do-Run: Yes
X-SA-Exim-Connect-IP: 84.113.151.22
X-SA-Exim-Mail-From: andreas@flausch.at
X-SA-Exim-Scanned: No (on mx06lb.world4you.com); SAEximRunCond expanded to false
Date: Sat, 15 Apr 2017 12:13:28 +0200
From: Andreas Lausch-Waas <andreas@flausch.at>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] alloca in inline functions can be dangerous
To: oss-security@lists.openwall.com

On 2017-04-10 16:55, Leandro Pereira wrote:
> On Mon, Apr 10, 2017 at 7:36 AM, Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>> I'm interested if anybody else has encountered this behavior or has any
>> thoughts about it.
> Yes, and I usually mark those functions with __attribute__((noinline))
> to avoid precisely this kind of behavior.
>

This (VLAs in loops or inlines filling the stack) would be a gcc bug: 
"Jumping or breaking out of the scope of the array name deallocates the 
storage. Jumping into the scope is not allowed; you get an error message 
for it.". See https://gcc.gnu.org/onlinedocs/gcc/Variable-Length.html

At least GCC 6.3.1 does not call alloca for VLAs.


--
Andreas
