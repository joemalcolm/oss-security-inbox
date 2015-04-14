X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1739" "Tuesday" "14" "April" "2015" "14:10:12" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>" "49" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041421:10:12" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        taviso@googl Apr 14   49/1739  " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" "<552D3A20.8040909@canonical.com>" "<CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>" "<CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7502 invoked by uid 550); 14 Apr 2015 21:11:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7482 invoked from network); 14 Apr 2015 21:11:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=o4nG9UKsV/R3mxzH5eL52rLA4aOgqnHjJSDtl+wdGlA=;
        b=f4/4MP8UlkZL3A5pY87kx2aCGsXmIRI1O7ngagstGUPM/dVzU256tNZOIAmh0PY+c6
         UzuSqGqD8yABkA5NM1aMA/SKz00dOA24D4qej6JR9NpeVilfeJbGa3/UuAAV7VHdiMwb
         ZKZcOXlobnQ147I+GS13tJYsyNpdpcfA9iKlku9jjG/7M2OV5B18rs/CZA3eoa4fxNt8
         AuUc1Igpi/VbLuKgHw7lETfkVFUB3PVg3BH+iWNROPBziIN9P+6I+ErM1DjwLe7l+Ill
         bKkhSpKGnJfXAYqT+ySXf7Fxb2tHcOn6qHeoC/Ya7hI8fh4Tqp1okQ28EOAUN5J1nieK
         KUzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=o4nG9UKsV/R3mxzH5eL52rLA4aOgqnHjJSDtl+wdGlA=;
        b=MIENYfTSxZk55giLFloz6obhOGQwHOJnSJwR4LIGtihW/Y63BuXKhACXigwcKeJK9Q
         NGLZtlq8/d9v3rT/q/CKjF5MaudxTmKk1yZyv9hYP/Ka0k42Ciz3stl4cYaokLbqI4Pj
         7n87PW1jrloTykOe2xV32YRmi27PYOjPKnu/zkTjGbugmasWRBjcb09ClWdCroN/1afM
         gddHj7qnSELqOn9cKKBPHsTW9CiEeY4EZpPd6+uApmfMZk4uCeyR3ZqXbFh6G6rzJ5S9
         uyEfEptwboZ8tjB6GRxRJSNVXesQnS+3gTG4PWt1q9wsADWcbCuZ7ywxingklhZMoSE9
         lUNA==
X-Gm-Message-State: ALoCoQkIfURhSfcl0fgHEGQHQYuE6Sn1+WIiFrqccOJIbletMd2+7y/zFBr4dTi3Ob+2WLppEB7A
X-Received: by 10.55.33.94 with SMTP id h91mr44799052qkh.69.1429045846254;
 Tue, 14 Apr 2015 14:10:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
 <552D3A20.8040909@canonical.com> <CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>
 <CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>
Message-ID: <CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: Assign a CVE Identifier <cve-assign@mitre.org>, security <security@ubuntu.com>
Date: Tue, 14 Apr 2015 14:10:12 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

On Tue, Apr 14, 2015 at 2:08 PM, Tavis Ormandy <taviso@google.com> wrote:
> On Tue, Apr 14, 2015 at 1:35 PM, Tavis Ormandy <taviso@google.com> wrote:
>> On Tue, Apr 14, 2015 at 9:02 AM, Marc Deslauriers
>> <marc.deslauriers@canonical.com> wrote:
>>> Hi,
>>>
>>> On 2015-04-14 11:55 AM, cve-assign@mitre.org wrote:
>>>> This is mostly a question for the persons who assigned CVE-2015-1318
>>>> and CVE-2015-1862. Should these CVE assignments be interpreted to
>>>> mean:
>>>>
>>>>   CVE-2015-1318 - in Apport, an unprivileged user can use a
>>>>                   namespace-based attack because there is an execve by
>>>>                   root after a chroot into a user-specified directory
>>>
>>> Yes, I assigned CVE-2015-1318 to that specific issue in Apport.
>>>
>>> Marc.
>>
>> It looks like this is the patch for Apport:
>>
>> http://bazaar.launchpad.net/~apport-hackers/apport/trunk/revision/2943#data/apport
>>
>> It's far more complicated than I expected, and not obviously correct.
>> It could probably use some review, I'll think about it today.
>>
>> Tavis.
>
> Wait, my first thought is that it's not obvious to me that
> /proc/net/unix is guaranteed to be newline delimited, newline is a
> perfectly valid name in a filename, no?
>
>>>> import socket
>>>> socket.socket(socket.AF_UNIX, socket.SOCK_STREAM).bind('test\ntest')
>>>> sock = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
>>>> sock.bind('/tmp/foo\nbar')
>>>> sock.listen(1)
>
> $ grep -A1 foo /proc/net/unix
> 0000000000000000: 00000002 00000000 00010000 0001 01 4772228 /tmp/foo
> bar

And with complete control over this line, it seems like it's game over.

                container = lxc.Container(path[-2], real_path)

I'm calling this re-broken.

Tavis.
