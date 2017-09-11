X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1608" "Monday" "11" "September" "2017" "14:22:12" "-0600" "kseifried@redhat.com" "kseifried@redhat.com" "<83ad8e1c-c317-49f1-8bbb-b613b48263f9@redhat.com>" "46" "Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" nil nil nil "9" "2017091120:22:12" "[oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" (number mark "U       kseifried@re Sep 11   46/1608  " thread-indent "\"Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation\"\n") "<8662b4c6-c830-bb09-0414-67e4aa52981d@orlitzky.com>" ("<f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>" "<87wp63jgxn.fsf@fifthhorseman.net>" "<2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>" "<87ingva5rf.fsf@fifthhorseman.net>" "<fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>" "<87a8268ong.fsf@fifthhorseman.net>" "<8662b4c6-c830-bb09-0414-67e4aa52981d@orlitzky.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19943 invoked by uid 550); 11 Sep 2017 20:22:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19836 invoked from network); 11 Sep 2017 20:22:26 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=R3NeuMZ6aYo1IDeW4wSgoJDFZcofiJO+cdOskwynxy8=;
        b=YkLmIaqhlxkfmzOROuHgaVYMYmQjBgXiG+hUnRGYIztMqej2MOHY1o7KUdDKLBqpIf
         m7Lmo134iFbPdl1FcPiwofnQc/IJ9q/UwvybiNdMkisPpZtnPtNiQgR3UqT+BNb+qrAk
         eg4QUA2g7j/w7ybltdgG2ATCplrnLEQQYTgRF88gTBKowRNcdvkIavF1/B4ToDK7a71s
         Tui/IAz9YviewkMivMLwkI9F7bnF70Dv4D0E5OtjKSPyRATzXdWVZRBd3XzBDo/JOPM5
         1atvQ0n6TdZl0EZeClZ7gyDUgbtcbO7eHR+PlDq1Undumhle3nHQwRFiQDIxam8595i6
         BnXA==
X-Gm-Message-State: AHPjjUiG6Mlo8EU+LN6EHchm2+iSVsZD8MGfDvEuaBk0/lgHOkthe8zm
	MNkCjmy8QZX6q3H2
X-Google-Smtp-Source: AOwi7QDHDh3AQYYKxjYNGn/sSIxs8IiwgUTPClzuVqGY25tiUrllidwwXqqnIabi5hm9imjxh2tEjA==
X-Received: by 10.200.51.137 with SMTP id c9mr17080980qtb.263.1505161335173;
        Mon, 11 Sep 2017 13:22:15 -0700 (PDT)
To: oss-security@lists.openwall.com, Michael Orlitzky <michael@orlitzky.com>
Cc: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
References: <f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>
 <87wp63jgxn.fsf@fifthhorseman.net>
 <2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>
 <87ingva5rf.fsf@fifthhorseman.net>
 <fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>
 <87a8268ong.fsf@fifthhorseman.net>
 <8662b4c6-c830-bb09-0414-67e4aa52981d@orlitzky.com>
From: "kseifried@redhat.com" <kseifried@redhat.com>
Message-ID: <83ad8e1c-c317-49f1-8bbb-b613b48263f9@redhat.com>
Date: Mon, 11 Sep 2017 14:22:12 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <8662b4c6-c830-bb09-0414-67e4aa52981d@orlitzky.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation
 via PID file manipulation



On 2017-09-11 01:58 PM, Michael Orlitzky wrote:
> On 09/07/2017 12:22 PM, Daniel Kahn Gillmor wrote:
> It's just me as far as I know. I stumbled onto this by accident while
> cleaning up an OpenRC init script that was shipped as part of an
> upstream package. I updated it, and then noticed that my init script was
> vulnerable to the PID file trick. Then I realized that everybody else
> has the same problem.
> 
> You probably need a human to make the final decision on whether or not
> an init script is vulnerable, but my lame heuristic so far has been
> hilariously accurate: does the init script mess with file/directory
> ownership? If so, it's probably vulnerable to *something*.

Another note on init scripts and related, rpm and dpkg
postinstall/preinstall/etc, as a rule if it does anything with:

chmod
chown
chgrp
touch
head
tail
cat
"/etc/pki/"
"/tmp/"
"/dev/random"
"/dev/urandom"
cert commands from openssl, gnutls or nss
a pile of other things (you start to get the idea)

There is a semi good chance either something is going wrong security
wise, or it should be part of first run (e.g. things that generate a
certificate or a key, if you do that in the install/postinstall scripts
all your containers have the same secret, if you do it on first run
(typically as part of the app itself, or part of the init scripts) then
it's unique per instance. Some examples:

CVE-2016-4980 CVE-2016-4982 CVE-2016-4983 CVE-2016-4984

-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com
