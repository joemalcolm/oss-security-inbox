X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1834" "Monday" "31" "December" "2018" "18:38:36" "-0800" "Matthew Fernandez" "matthew.fernandez@gmail.com" "<3F256A9C-EBE9-420C-B8F6-32AD39A664C5@gmail.com>" "42" "Re: [oss-security] Asserts considered harmful (or GMP spills its sensitive information)" "^Cc:" nil nil "12" "2019010102:38:36" "[oss-security] Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        matthew.fern Dec 31   42/1834  " thread-indent "\"Re: [oss-security] Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<20181231191642.GB7238@zira.vinc17.org>" "<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18090 invoked by uid 550); 1 Jan 2019 11:31:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20131 invoked from network); 1 Jan 2019 02:38:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references;
        bh=y0dgg+Cggqx8w2zmCXtq+zxbNQ4fW780X/EiMzMeQe0=;
        b=gsgkHw+JqIfJheEzWN+28BrfK9CYCOJxdgWjvIkCKHQVYLxvR7kPN7eblSEtQjkrdt
         tBiiuyMRjY4ThEeEGvTudMDxxbtCNGwIgJhppViZsH0WzO+dtX9i7/G7cDhdMjWIn6lv
         PEvfbI+RCNiIhQkq7ZqXW6/mP9x0+Ca6/9lydk/ekIG0bcEcfejclpbjyEgKUNeDI56q
         pYyRFTXGGka9XMyPMA5XuuqnsJEY/eE/P2ZqyTrx64+VppdbXJ6E9sWBFcPJCP9tunD3
         qyOfQbATOcuyQYDSxGrsaRx9tQ5xbKtJzKy3G7Ej8BKqX8rzkSMHqejYfgcu44la1ZeA
         +AQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references;
        bh=y0dgg+Cggqx8w2zmCXtq+zxbNQ4fW780X/EiMzMeQe0=;
        b=ioOCTXizF4uT9qcH5ZFirPdW4lnuBALAPBbFNOvdTW5zOCW7zQ9gyQMRgXtI4NHTxf
         gPndMxNmN91ow5/WGbww0CbyaxAJbB4hqFw4+xE5keJ/S4ruG7sRA98ZrheVx3gSW6Pz
         SGGXuZSVrYiokRvmBlhQ/SDU/VSLGJdsHZ8MSGf1BpVonFmVPHB5WURIIN86rFeV2ppG
         /wOk03U4b3HHnsweEge+ErrixKwH+JkYmaADmkFOlEoXWUSnXWF48knlN89PPf8jia3L
         2HCUG27uQCaMfUzaK7ynQMR92BnjVIvnWzh3UNZ8E0F10A16QqXSCcjnnfHgXRxjfeMz
         4J7A==
X-Gm-Message-State: AJcUukclZ5s6kwqItG8igvuziSvkUMaZHEA9e1NLan+Em/j43zSRZWlb
	PQ1mFODVhXhcoY11PTaP9wnSBK3o
X-Google-Smtp-Source: ALg8bN5RgEF0Yj4qOAn8Ae1pVkZI/JZg3b72Fb0oQwD6H/dW+z+00SIasseQMf8167FLll2OfrQlQA==
X-Received: by 2002:a63:e247:: with SMTP id y7mr8921812pgj.84.1546310319064;
        Mon, 31 Dec 2018 18:38:39 -0800 (PST)
Message-Id: <3F256A9C-EBE9-420C-B8F6-32AD39A664C5@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_6FDDAED8-9B83-43B7-B019-61E0B671F0D7"
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
In-Reply-To: <CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
 <20181231191642.GB7238@zira.vinc17.org>
 <CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
Cc: Jeffrey Walton <noloader@gmail.com>,
 gmp-bugs@gmplib.org
Date: Mon, 31 Dec 2018 18:38:36 -0800
From: Matthew Fernandez <matthew.fernandez@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Asserts considered harmful (or GMP spills its
 sensitive information)
To: oss-security@lists.openwall.com

--Apple-Mail=_6FDDAED8-9B83-43B7-B019-61E0B671F0D7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Dec 31, 2018, at 11:38, Jeffrey Walton <noloader@gmail.com> wrote:
>=20
> On Mon, Dec 31, 2018 at 2:16 PM Vincent Lefevre <vincent@vinc17.net <mail=
to:vincent@vinc17.net>> wrote:
>>=20
>> On 2018-12-31 13:03:27 -0500, Jeffrey Walton wrote:
>=20
>>> This is the first point of unwanted data egress. Sensitive information
>>> like user passwords and keys can be written to the filesystem
>>> unprotected.
>>=20
>> This can occur with any program, even not using asserts, e.g. due to
>> a segmentation fault (which may happen as a consequence of not using
>> asserts, with possibly worse consequences).
>>=20
>> If you don't want a core file, then you can instruct the kernel not
>> to write a core file. See getrlimit.
>=20
> To play devil's advocate again, that strategy requires every user to
> have the knowledge. If RTFM was going to worked, It should have
> happened in the last 50 years or so.
>=20
> Refusing to process the data and failing the API call requires no
> knowledge on the user's part.

I don=E2=80=99t have a dog in this fight, but you referenced high integrity=
 software (though I guess what is meant is confidentiality rather than inte=
grity in this case) and then say we cannot rely on people to RTFM. While I =
don=E2=80=99t doubt there are users who will fail to understand the consequ=
ences of having core dumps enabled, this is just one of many ways to leak i=
nformation in a non-hardened system. E.g. you can attach to the victim proc=
ess with gdb/ptrace and simply read its memory, if the sysadmin has not blo=
cked this with Yama or similar. Could you elaborate on the threat model you=
 have in mind?=

--Apple-Mail=_6FDDAED8-9B83-43B7-B019-61E0B671F0D7--
