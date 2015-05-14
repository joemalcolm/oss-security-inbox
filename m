X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1976" "Thursday" "14" "May" "2015" "10:39:42" "+0300" "DaKnOb" "daknob.mac@gmail.com" "<8F31836E-B883-469C-A4D4-54A1C91DA217@gmail.com>" "55" "Re: [oss-security] Request 2 CVE-IDs for Zeus Voting System" nil nil nil "5" "2015051407:39:42" "[oss-security] Request 2 CVE-IDs for Zeus Voting System" (number mark "        daknob.mac@g May 14   55/1976  " thread-indent "\"Re: [oss-security] Request 2 CVE-IDs for Zeus Voting System\"\n") "<20150514071347.GE889@lakka.kapsi.fi>" ("<63E299CE-40BE-4F1D-BFC0-5278B8E51C57@gmail.com>" "<20150514071347.GE889@lakka.kapsi.fi>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22226 invoked by uid 550); 14 May 2015 07:39:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22199 invoked from network); 14 May 2015 07:39:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=content-type:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=6IGA2WQq5Kg6W3eIsViowMC25WvItJZjrtNm/CJfNx4=;
        b=Z+pS7V4Klpdu7UEzrN93K0x8El4s/GiRFk6Yekmsr/ej8HeFI0prseVS8BgqgIV6oy
         NO8erKzDpyc5/Vw37LzyW/Sj5Gn3cnJAvWoOimMACykylMIurwvwLQHoIIgGkOMVQTt2
         yMaMaDkN8gIoX7EC+ffEtMNymakaYDQAs8/rnOEPwT440/D2WsHyfdpWuuLLUXsB/Q56
         BYaUj8aEK1F/25bd/bDJ6cepSZBVzj/jsBQzGWImbzeeC5ytOddT7qEmeZGt2RgFpN+3
         e2+bSgTqKtJULrbfhaidaJl6TnfzgVgGx6Lx9/AywZ6PHaG7LZD9zPffgeQ2bX9V1XfK
         iPsg==
X-Received: by 10.180.37.101 with SMTP id x5mr21637596wij.74.1431589186096;
        Thu, 14 May 2015 00:39:46 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (12B440)
In-Reply-To: <20150514071347.GE889@lakka.kapsi.fi>
Content-Transfer-Encoding: quoted-printable
Message-Id: <8F31836E-B883-469C-A4D4-54A1C91DA217@gmail.com>
References: <63E299CE-40BE-4F1D-BFC0-5278B8E51C57@gmail.com> <20150514071347.GE889@lakka.kapsi.fi>
Cc: OSS Security List <oss-security@lists.openwall.com>
Date: Thu, 14 May 2015 10:39:42 +0300
From: DaKnOb <daknob.mac@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Request 2 CVE-IDs for Zeus Voting System
To: Henri Salo <henri@nerv.fi>

Thank you for your interest, replies inline.=20

Antonios A. Chariton

> On 14 =CE=9C=CE=B1=CE=90 2015, at 10:13, Henri Salo <henri@nerv.fi> wrote:
>=20
>> On Wed, May 13, 2015 at 07:09:49PM +0300, DaKnOb wrote:
>> Zeus (https://github.com/grnet/zeus) is a fork of Helios that is actively
>> developed by GRNET (http://www.grnet.gr/) and is considered to be used in
>> Greek Elections (starts with small and rolls out to larger elections).
>=20
> Really? They are seriously considering open source application in the ele=
ctions?

Yes, the prime minister rejected the software but their argument is that it=
's open source and anyone can verify the code.=20

> Is there english news about this?

I will try to find some. So far the software was used in the university ele=
ctions (across Greece for important decisions, within universities for dean=
 / ...)

> Have they ordered or requested real security
> audits for this product?

Of course not, their argument is that "It is mathematically proven that nob=
ody can alter the votes" yet they forget the huge stack from processor erro=
rs all the way up to code errors (as I have proved to exist).

> Do you know if there is official contact person who I
> could give my (free) services to get this codebase secured.

I believe in the website https://zeus.grnet.gr/ there are emails but since =
it's Open Source and you offer your services for free, I believe it is a lo=
t better if you do this on GitHub repo because:

1. Everybody can see that you have contributed to this.
2. Everybody can see your findings and do not use this software unless all =
bugs are closed.=20
3. They are easily trackable and assignable to their developers.=20
4. If they don't do it, people can fork the code and use your opened issues=
 to make a secure copy of it.
5. [...]

> I have some
> resources from our company, which I probably can assign to audit this for=
 a few
> days.

I believe that would be great!

>=20
> --=20
> Henri Salo
