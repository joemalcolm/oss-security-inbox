X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["970" "Friday" "23" "July" "2021" "14:39:33" "-0600" "Mats Wichmann" "mats@wichmann.us" nil "23" "Re: [oss-security] ipython3 may execute code from the current working directory" nil nil nil "7" nil nil (number mark "U       mats@wichman Jul 23   23/970   " thread-indent "\"Re: [oss-security] ipython3 may execute code from the current working directory\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] ipython3 may execute code from the current working directory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19971 invoked by uid 550); 23 Jul 2021 20:42:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18233 invoked from network); 23 Jul 2021 20:39:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=from:to
	:references:subject:message-id:date:mime-version:in-reply-to
	:content-type:content-transfer-encoding; s=sasl; bh=Hn9lSBTQixcy
	lVDo6pcrJ1IMkNPKpfaiUNZSXIUj4eg=; b=LR9nq9U/r07Nc9ElSXgoEdxy7JXO
	1pp4qbWPlfCid9U/HONwBOIEW+VaW2Bvl0hxC4073N9iOwomU1nM6eZ5pcNoDhn4
	aNOjHUI7Gn5Hi3OU2hp7AJUF936I/olapMN18H5gya7Tj8Al/8mmSiQX07elT3cd
	5T0nq2fWgcA2bvc=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=wichmann.us;
 h=from:to:references:subject:message-id:date:mime-version:in-reply-to:content-type:content-transfer-encoding; s=2018-07.pbsmtp; bh=AqgJ1amydBDqGvtzJKYy4kCnjl7Ai29irR+ruO3l7XM=; b=XQnkv6fOgzXgF8oUnuy2lLox89QHll1+qNSNUXEbaLBkVEVU0J52ixENOAlGnwM0s2HbS+fv9BigcpBqCAselbsr+oq/a/sJKYRxzfM965KwldP0ec3PdXZQWYaUtbEeWrfkMx5RoV4nVrsNVhCzjytIEOvyPzj1t5phJNcszoY=
From: Mats Wichmann <mats@wichmann.us>
To: oss-security@lists.openwall.com
References: <CAGUWgD9MsQts5_jV9=nr8X6mwZyW-NU2JzYnosdMqQ0G06nH6w@mail.gmail.com>
 <20210722113545.hewzinrjmy7jon6c@jwilk.net>
Message-ID: <85b3215f-530e-a698-ac60-57a03763fd3b@wichmann.us>
Date: Fri, 23 Jul 2021 14:39:33 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210722113545.hewzinrjmy7jon6c@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
X-Pobox-Relay-ID: 
 184DA886-EBF6-11EB-9BC5-FA9E2DDBB1FC-81526775!pb-smtp21.pobox.com
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] ipython3 may execute code from the current working
 directory


On 7/22/21 5:35 AM, Jakub Wilk wrote:
> * Georgi Guninski <gguninski@gmail.com>, 2021-07-22, 11:52:
>> Summary: under certain circumstances, ipython3 may execute code from=20
>> the current working directory.
>=20
> Looks like this might be intentional? Or at least there's an option to=20
> turn off this behavior:
>=20
> https://github.com/ipython/ipython/blob/7.25.0/IPython/core/shellapp.py#L=
219=20

normally (cpython), an empty string in sys.path doesn't mean "current=20
directory", it means "script directory", the directory the script you're=20
running is found in [1].  that only falls back to current directory in=20
case there is no script directory - which happens if you invoke the=20
interpreter interactively . So maybe ipython isn't interpreting this the=20
same way?

there have been more than one security concern about the way this makes=20
it possible for untrusted modules to get loaded.

[1]  https://docs.python.org/3/library/sys.html#sys.path
