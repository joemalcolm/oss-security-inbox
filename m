X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1893" "Monday" "8" "June" "2015" "18:31:58" "+0200" "Sven Kieske" "svenkieske@gmail.com" "<5575C37E.2040809@gmail.com>" "54" "Re: [oss-security] Suggestions Sought for Appsec Reading List" nil nil nil "6" "2015060816:31:58" "[oss-security] Suggestions Sought for Appsec Reading List" (number mark "        svenkieske@g Jun  8   54/1893  " thread-indent "\"Re: [oss-security] Suggestions Sought for Appsec Reading List\"\n") "<CAKws9z35H5vzm3rEA5AbiT97S7BSwEPpiiFQ9kwP=EKnz1-OYg@mail.gmail.com>" ("<CAKws9z35H5vzm3rEA5AbiT97S7BSwEPpiiFQ9kwP=EKnz1-OYg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11687 invoked by uid 550); 8 Jun 2015 16:32:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11663 invoked from network); 8 Jun 2015 16:32:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=mYI0PhJeF8EMxAaxWLxslXo3lad/cO81OLIho0B/8DE=;
        b=qbGwTlOG+v/KwikX5sumtjnr1wGcU5hFFOraX+OpG16uc34shvyFVDMO9MwrMfMsjs
         Y0JUB6gik+5PgpMOaNocFMHcvMchbTGkCzbDEjtlR5ZVXjoGVgfPiUbgPWN8ercI/T0T
         uedjdj7bKl5XiCwu/J0FFfYrZ0ETFFKoj7fdi+mDWeRaPWRnV+r+0FJd4AKyZv4FN3R0
         FoOS7kIcj4yO+CIgphTd4XLlar7aIZsmzATmXzYZXW8BGWXu2bmm0oh6osEIMstMcOCu
         A4+b5hoxnVdJsI5K5VzOf5Hd/SyoUftcajXrneovH8Q/pXy82fIZ5uB4tP3Xv7xhUAOL
         h3UA==
X-Received: by 10.180.79.227 with SMTP id m3mr23912741wix.71.1433781120705;
        Mon, 08 Jun 2015 09:32:00 -0700 (PDT)
Message-ID: <5575C37E.2040809@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
References: <CAKws9z35H5vzm3rEA5AbiT97S7BSwEPpiiFQ9kwP=EKnz1-OYg@mail.gmail.com>
In-Reply-To: <CAKws9z35H5vzm3rEA5AbiT97S7BSwEPpiiFQ9kwP=EKnz1-OYg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Mon, 08 Jun 2015 18:31:58 +0200
From: Sven Kieske <svenkieske@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Suggestions Sought for Appsec Reading List
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On 08.06.2015 05:09, Scott Arciszewski wrote:
> Hi oss-sec readers!
> 
> Earlier this year, we decided to start a curated list for learning
> about application security and host it on Github.
> 
> Currently, we have a good spread of general topics and
> PHP-specific security pitfalls, but we'd like to gather more
> resources to help developers with experience in a particular
> language learn how to build more resilient applications.
> 
> https://github.com/paragonie/awesome-appsec
> 
> The list lives at that URL, please send pull requests. It's as easy
> as creating a .json file somewhere appropriately within the data/
> directory; I'll take care of the rest.
> 
> Scott Arciszewski Chief Development Officer Paragon Initiative
> Enterprises <https://paragonie.com>
> 

Is this intended just for programmers or also system administrators?

if so, you might want to add the recommendations of
https://bettercrypto.org

their recommendations can be found here as a pdf:
https://bettercrypto.org/static/applied-crypto-hardening.pdf

and on github as latex source (I believe).

if this is not about save configuration of services, please feel
free to ignore this message.

kind regards

Sven
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQGcBAEBCAAGBQJVdcN+AAoJEAq0kGAWDrqlpZcL/2uQfEpiXTMt7BHxRlXrHJXp
lQs0T7z9dsPjeibU5/XXhe9zX8r3EjrjwkJVVlBqH3rr6LZOyiNnzVWIUrzLPqSq
A7PLlKLEKGAW3W4i+/txQWd4atYt2xIVEwv52qpmoB0zFBhQ+hqszq7nnwHlkNO2
fTEuziDNv2iohTYrm6MC4+faJcobLLZzxz32/7kgXvyJfiGxUrnDAbiRcAo1L1Dh
j44GCbOo7YaQtayaQn9wYnclnrq76w0qfDHfxzIQXVyTyDAvrZAeevF34bYxcdWF
IRif1H4llhq8DXoFt49fmtKkyGXUtnJ73NOkcdizakRllX/+I1uU4n9Dk9zsLwpN
4I1wlxWasryCx2qxdSxc3mN8Ru7T35tRYrh0OJU7T1S7Z5XzrWfxAkbPv81FFJvk
nVwjBnTZ+Hq6wjyNLv/p7ZlVRnvrX9QbV7bv2u4C8y8HGjV0ZbbOnC5+uJPSMkF4
SfwpoawTe6JDBxFaQGV7TcVhn4Fi5shwJxlZiPAZcQ==
=oaHM
-----END PGP SIGNATURE-----
