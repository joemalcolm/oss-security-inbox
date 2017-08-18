X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1055" "Friday" "18" "August" "2017" "13:12:03" "-0400" "Michael Orlitzky" "michael@orlitzky.com" "<2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>" "23" "Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" "^Date:" nil nil "8" "2017081817:12:03" "[oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" (number mark "        michael@orli Aug 18   23/1055  " thread-indent "\"Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation\"\n") "<87wp63jgxn.fsf@fifthhorseman.net>" ("<f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>" "<87wp63jgxn.fsf@fifthhorseman.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28322 invoked by uid 550); 18 Aug 2017 17:14:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27697 invoked from network); 18 Aug 2017 17:12:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1503076324; bh=ksmzC+m9W7gT5WQ0PFAu7JcVlnRy8dVJSz92oCm9FyA=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=e0+l4EAtbw9LlO9camPIRTCdtj8qHYOgLVsKYqEBDLbPlz0cETXu+1uriMkn5B0+7
	 dHfB+yXp0NtkNfh6rYg231u6++InVuLy5YArY5QOCPQc0HncN/XreUtkLVyZpbwWC8
	 eoaZBnOD+t0bWZPljEBXdfcR0EfndeM+FuRupKsU=
References: <f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>
 <87wp63jgxn.fsf@fifthhorseman.net>
Message-ID: <2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <87wp63jgxn.fsf@fifthhorseman.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Date: Fri, 18 Aug 2017 13:12:03 -0400
From: Michael Orlitzky <michael@orlitzky.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation
 via PID file manipulation
To: oss-security@lists.openwall.com

On 08/16/2017 06:17 PM, Daniel Kahn Gillmor wrote:
> On Wed 2017-08-16 12:10:09 -0400, Michael Orlitzky wrote:
>> The problem is avoided by creating the PID file as root, before
>> dropping privileges.
> 
> The problem can also be avoided by not using PID files at all, and
> relying instead on a service manager that actually keeps track of its
> children using more robust means (like wait() and SIGCHLD).
> 

I'm scared to reply because this is guaranteed to turn into a "you
should just use systemd, grandpa" holy war.

If we had it all to do over again, I would probably agree with you. But
there are still users with simple init systems, and many of those users
are happy (or stuck) that way. If you want to convince upstreams to
delete their PID file code and drop support for the associated init
systems, you'll have to offer them something to make up for the users
they'll lose.

For some projects, "the code gets simpler and to hell with those users"
will suffice. But for big projects where actual money is involved,
you'll have a harder time.
