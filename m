X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1621" "Tuesday" "30" "May" "2017" "08:50:43" "-0600" "kseifried@redhat.com" "kseifried@redhat.com" "<d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>" "38" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Date:" nil nil "5" "2017053014:50:43" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        kseifried@re May 30   38/1621  " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5398 invoked by uid 550); 30 May 2017 14:50:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5380 invoked from network); 30 May 2017 14:50:57 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JGwZz3X44sAbUBUyYnm0CCvr5UiB/WUUarqHpry7gAU=;
        b=Sx1NzgKNQK6JGz2uTwIyhD+MNkN7G9lCX0IrOqZtF34GpxSLhIh+jAs7HHTuOxrRWY
         CLvG2qYNb1DBrMpjqo6QYMl9pAXUqKLkLmlpJwVoS4T21YTPlCWoLf6sWvwjhdJXyJ4Q
         lW5QXpJor79GpyPD5jAoNBd40xzAHg0oeS4fPlzDBAjfGhWq1DVSG9VBm5f4Fwo7z36V
         AgGrjUcwNHQBPb83VFFYq7XSC9Pv8VEs8qJCGxWXey+Mxvi2/VYxET0SePZ215Aw4wlR
         PV8UiY+arhOeDb6Yhw487fstYv7LuKe84MY7HMrlVFaWWegq/g5R3Cw71sUhsMLsuemg
         jlFw==
X-Gm-Message-State: AODbwcCCicCujahesIe/8jiLOaDWpYqIK1ojRbDF9M6rdDfwkl4nD6UW
	C8RFK8pV0yeMpyIqP4bCNA==
X-Received: by 10.107.179.69 with SMTP id c66mr17104508iof.201.1496155845422;
        Tue, 30 May 2017 07:50:45 -0700 (PDT)
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
 <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
Message-ID: <d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Date: Tue, 30 May 2017 08:50:43 -0600
From: "kseifried@redhat.com" <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: oss-security@lists.openwall.com

On 05/30/2017 05:41 AM, Simon McVittie wrote:
> On Tue, 30 May 2017 at 08:17:54 +0400, Ilya Matveychikov wrote:
>> When using get_options() it's possible to specify a range of numbers,
>> like 1-100500. The problem is that it doesn't track array size while
>> calling internally to get_range() which iterates over the range and
>> fills the memory with numbers.
> 
> Is there a realistic way in which an attacker can provide Linux kernel
> command-line arguments, without being able to achieve arbitrary code
> execution via those command-line arguments?
> 
> In other words, is this a security vulnerability, or just a bug?
> 
> (If the attacker can already achieve arbitrary code execution then
> this bug does not give them any capability they do not already have.)
> 
>     S

Here's my response from the initial assignment:

For the purposes of CVE this is a vulnerability (secureboot says you
won't be monkeying with the kernel in general). In general: the promise
of secureboot is not a fully secure system, the promise of secureboot is
a secured bootchain, so for example the kernel itself is trusted and
secure, once it goes to user space, then things go to "it depends" (e.g.
if you have signed binaries that are secure, you would in theory have a
secure userland, if you boot to unsigned binaries, then good luck and
have fun). But code execution within the kernel is generally a definite
no-no.

Please use CVE-2017-1000363 for this issue.


-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com
