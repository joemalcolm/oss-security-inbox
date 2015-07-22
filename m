X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["417" "Wednesday" "22" "July" "2015" "11:41:57" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9pswFUdyDhJGXd7_1ESUV-ckxnVoUxVokUhtqgOwO6UNA@mail.gmail.com>" "9" "Re: [oss-security] CVE Request for OpenSSH vulnerability - authentication limits bypass" nil nil nil "7" "2015072209:41:57" "[oss-security] CVE Request for OpenSSH vulnerability - authentication limits bypass" (number mark "        Jason@zx2c4. Jul 22    9/417   " thread-indent "\"Re: [oss-security] CVE Request for OpenSSH vulnerability - authentication limits bypass\"\n") "<CAFB=mGAAaJOB3VsvhGnsBVP0COwe4MiRv5t2cDx9UA=qJ0KyPw@mail.gmail.com>" ("<CAFB=mGAAaJOB3VsvhGnsBVP0COwe4MiRv5t2cDx9UA=qJ0KyPw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31819 invoked by uid 550); 22 Jul 2015 09:52:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18258 invoked from network); 22 Jul 2015 09:42:12 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:in-reply-to:references:date:message-id:subject:from:to
	:content-type; s=mail; bh=zXagL38LMkVdJyha3FQ63EucSKU=; b=pVOeMh
	EaYdbBXcbKYgpx7FiZnt+hpo/X/h5FAQVsagAi5Bxc65OCIkWF/KXltEz66UQxyW
	rvykmtKOkQhMUv0v4sxrIWk1ME7/A7ZkrTvXyrHbheBWR+HcXJl+1iJDI8bs1J1D
	y6MTCNXTxe1P7ptPnMhj8YUGB/gjluXcni5A5GrHILraWXaOLUIm73oJrNOfikB6
	cyz5KqRwlh7Lyu9MJ9D95QvmOJyBEspSUao5hAG/6LwtSdfo8/J/aE1kaR66aKLt
	UijnNZz3WTIJzZBF25/Xtht6c137tVyLMIHfJki9jBy0y+6f+/H3QJzrRDf4e9Du
	Hl7p09ddBA/Brndg==
MIME-Version: 1.0
X-Received: by 10.112.210.137 with SMTP id mu9mr1416007lbc.95.1437558117102;
 Wed, 22 Jul 2015 02:41:57 -0700 (PDT)
In-Reply-To: <CAFB=mGAAaJOB3VsvhGnsBVP0COwe4MiRv5t2cDx9UA=qJ0KyPw@mail.gmail.com>
References: <CAFB=mGAAaJOB3VsvhGnsBVP0COwe4MiRv5t2cDx9UA=qJ0KyPw@mail.gmail.com>
Message-ID: <CAHmME9pswFUdyDhJGXd7_1ESUV-ckxnVoUxVokUhtqgOwO6UNA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 22 Jul 2015 11:41:57 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request for OpenSSH vulnerability -
 authentication limits bypass
To: oss-security <oss-security@lists.openwall.com>

On Tue, Jul 21, 2015 at 11:16 AM, king cope
<isowarez.isowarez.isowarez@googlemail.com> wrote:
> even more for local attacks. Technically this vulnerability affects
> OpenSSH. It can be found with FreeBSD installations because these use
> the keyboard-interactive authentication
> mechanism (that is the one affected) in combination with pam.


IIRC, default Gentoo OpenSSH also ships with KeyboardInteractive + Pam.
