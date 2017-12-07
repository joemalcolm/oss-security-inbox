X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["451" "Thursday" "7" "December" "2017" "12:17:18" "+0100" "Greg KH" "greg@kroah.com" "<20171207111718.GA1230@kroah.com>" "17" "[oss-security] Re: signed integer overflow in common_timer_get on linux 4.15.0-rc1" nil nil nil "12" "2017120711:17:18" "[oss-security] Re: signed integer overflow in common_timer_get on linux 4.15.0-rc1" (number mark "U       greg@kroah.c Dec  7   17/451   " thread-indent "\"[oss-security] Re: signed integer overflow in common_timer_get on linux 4.15.0-rc1\"\n") "<CANBt6Y257EXeL_dnxB0xXQmP+o7sS5FS3BJwPR5PsE3Wu1nKvg@mail.gmail.com>" ("<CANBt6Y257EXeL_dnxB0xXQmP+o7sS5FS3BJwPR5PsE3Wu1nKvg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13983 invoked by uid 550); 7 Dec 2017 11:17:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13965 invoked from network); 7 Dec 2017 11:17:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=EDZFDppkXsla4J2JOvCSpUohacJKw
	l+TcdWdC7QkTvI=; b=FgcKmV+1AhrIPc0qLXYxjzsdpwmLC7sKmM6/gNfX070S5
	0dt5rvfMvEVrYy/Q4LV89rXMA0LSRzyQsRXkQZk2zwaDpg9OmqZBodPW7sQWTI1K
	SvHEzVw7BsO4OD6S6XTgN9FanfavB9JvO5NJrxgrUexpI9S80GoRfphuzWmw9nB6
	KvSgeK/crQU5H958sfwlyctSnSslAw0/rd/w5AX86ggaNENH98V3fDWVVnuamuNg
	wqpipJPxAX+kVwcJO8n9MBLEbv2VmtrzXONNoe2ibND0bDmbnP/qkn+JQQc/E5Fu
	88L8oFx3agCaae6SpL3iI4GGmR49gRJv2QUI4HNuA==
X-ME-Sender: <xms:NiMpWqGvQ8Z5CQ66RxCWlLUTlAYtcA04t6nKefWHHrqdqLSmCwCq-Q>
Date: Thu, 7 Dec 2017 12:17:18 +0100
From: Greg KH <greg@kroah.com>
To: at zhou <zhouat2017@gmail.com>
Cc: security@kernel.org, secalert@redhat.com, security@suse.com,
	tglx@linutronix.de, oss-security@lists.openwall.com,
	linux-distros@vs.openwall.org
Message-ID: <20171207111718.GA1230@kroah.com>
References: <CANBt6Y257EXeL_dnxB0xXQmP+o7sS5FS3BJwPR5PsE3Wu1nKvg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANBt6Y257EXeL_dnxB0xXQmP+o7sS5FS3BJwPR5PsE3Wu1nKvg@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
Subject: [oss-security] Re: signed integer overflow in common_timer_get on linux 4.15.0-rc1

On Thu, Dec 07, 2017 at 06:01:43PM +0800, at zhou wrote:
> Hi all,
> 
> credit   to   L5@360vulcan team
> 
> I fuzzed the linux kernel and find signed integer overflow on linux
> 4.15.0-rc1+.
> the crash log can see below, the .config and the poc file ,please see the
> attachments.

Odd, doesn't seem to affect a 4.9 or 4.15-rc2 kernel here on my
machines, is there something specific in the .config that might be
triggering this?

thanks,

greg k-h
