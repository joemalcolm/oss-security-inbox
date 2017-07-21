X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["883" "Friday" "21" "July" "2017" "13:07:57" "+0200" "Nicolas RUFF" "nicolas.ruff@gmail.com" "<CABoQFUCsBzb6fKfAKrDnNp8um_2dcEaxiHDQZXsvyXBK-7fW2A@mail.gmail.com>" "21" "Re: [oss-security] CoreOS membership to linux-distros (updated)" "^Date:" nil nil "7" "2017072111:07:57" "[oss-security] CoreOS membership to linux-distros (updated)" (number mark "        nicolas.ruff Jul 21   21/883   " thread-indent "\"Re: [oss-security] CoreOS membership to linux-distros (updated)\"\n") "<NT2ewSquUVWSMuwQD9mS66GINerAtE1IodPQcjwuABcw6_-xHNatY9qmcPa6ICmd3OB1Exrmg2gm3npm-JsFkvY3dylH7vsHdOdBUOwOCZw=@itk.swiss>" ("<9479d640-2002-2462-9d81-2379d60d8f54@coreos.com>" "<20170720041303.GA4266@gremlin.ru>" "<20170720104242.GA21676@kroah.com>" "<1ED75849-154D-47B3-8D07-6E0797B1D277@apple.com>" "<NT2ewSquUVWSMuwQD9mS66GINerAtE1IodPQcjwuABcw6_-xHNatY9qmcPa6ICmd3OB1Exrmg2gm3npm-JsFkvY3dylH7vsHdOdBUOwOCZw=@itk.swiss>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26479 invoked by uid 550); 21 Jul 2017 11:15:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12119 invoked from network); 21 Jul 2017 11:08:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=M56LOuhyK3uU1qmI28IULd0oyetWt/Y1rb5/lliZjpw=;
        b=LCjXf/uYMTSxYB6ZGnQZ8Pm0hKUzlltAEoIlv/ESlzjnQFBO6UiucEsp8aT0c++UDT
         f7APLB7fTF+FZzj3VARD1eRcYght7AcIJgJVY7JurVMGbccsxC6agPni3gp5MGYFddhz
         G1zPZzJlaaFCXTP6yoh1NB345fTqhVJCkE6fzryBlfV8DxPW7PM9A7XarpQ/KDD87RMr
         iVdE9GfnbpfU/9XCtQGtTrU4hAVI6BRiCb4Q6COL/ttfYHnsXUULVVUf6xTlrd1dKfVn
         PvWNWwUzdtLsPNQgpfLEeWLns46nzpJTOXVkzEppNkQLQ0vRri3TUo7vZWLdOLYMprVJ
         6sEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=M56LOuhyK3uU1qmI28IULd0oyetWt/Y1rb5/lliZjpw=;
        b=T0IvdROBwea5I/R373k+vcudw3HyNX+nl2+mDp1su09hdeFCcFR4tYRnZuykM1nzW4
         oPr2yFaA/KCWJgrH3r/jrK1LlnNsnZs6Oq+6kiWlgvY1sRYtWhIr1O375FtM8hwz9AEf
         T9xQba9TMF1fmmtM+/Znasp1MW/VFUKqu8PfJmPvug8OR0b3mTufb6rUeZJPGvXgWtBi
         iUcXdQyEBEFZjtxMezyp+EgBEo5TOZ7ZjJvzQa6bpaUF/d6/fiq+sx4rKpDNBKhM7Wbu
         xYkztup7KptElqSbBbDzJwof1D4zD6CfA0TpWJuQdeOprJqToovCQ1JoWa89posLhshU
         vTpA==
X-Gm-Message-State: AIVw1104svSAKYgBxDFvyHqI1DvUWz9sj/nnIV2IdSS2KXt1S4P6PcMG
	RUk3/NSzcmHpHk103rbvm4iM2fqSFbmpHTw=
X-Received: by 10.55.121.199 with SMTP id u190mr9444493qkc.216.1500635297680;
 Fri, 21 Jul 2017 04:08:17 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <NT2ewSquUVWSMuwQD9mS66GINerAtE1IodPQcjwuABcw6_-xHNatY9qmcPa6ICmd3OB1Exrmg2gm3npm-JsFkvY3dylH7vsHdOdBUOwOCZw=@itk.swiss>
References: <9479d640-2002-2462-9d81-2379d60d8f54@coreos.com>
 <20170720041303.GA4266@gremlin.ru> <20170720104242.GA21676@kroah.com>
 <1ED75849-154D-47B3-8D07-6E0797B1D277@apple.com> <NT2ewSquUVWSMuwQD9mS66GINerAtE1IodPQcjwuABcw6_-xHNatY9qmcPa6ICmd3OB1Exrmg2gm3npm-JsFkvY3dylH7vsHdOdBUOwOCZw=@itk.swiss>
Message-ID: <CABoQFUCsBzb6fKfAKrDnNp8um_2dcEaxiHDQZXsvyXBK-7fW2A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Fri, 21 Jul 2017 13:07:57 +0200
From: Nicolas RUFF <nicolas.ruff@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CoreOS membership to linux-distros (updated)
To: oss-security@lists.openwall.com

> A more recent, Android-centered presentation (http://kernsec.org/files/ls=
s2015/vanderstoep.pdf) cites Wikipedia, stating that "[...] the security of=
 an SELinux system depends primarily on the correctness of the kernel and i=
ts security-policy configuration", further highlighting the lack of in-dept=
h research.

Not sure if we should derail this thread into a SELinux discussion,
but a friend of mine had a look lately and found dozens of
implementation issues (none of which got CVE assigned AFAIK):
https://github.com/SELinuxProject/selinux/commits?author=3Dfishilico

Let's consider this one, it makes you wonder if this code has ever been run:

https://github.com/SELinuxProject/selinux/commit/1004a3b3f1885e3138b4818d22=
2fc48930ea7461
- for (i =3D 0; i < j; j++)
+ for (i =3D 0; i < j; i++)
  semanage_module_info_destroy(sh, &(*modinfo)[i]);

Regards,
- Nicolas RUFF
