X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1369" "Wednesday" "18" "May" "2016" "13:40:18" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do6qnT4yPS8B=fTaoFf2x4k-cKy2ixDZLRA8aSxRkuFo2Q@mail.gmail.com>" "54" "Re: [oss-security] CVE-2016-3698 libndp: denial of service due to insufficient validation of source of NDP messages" nil nil nil "5" "2016051811:40:18" "[oss-security] CVE-2016-3698 libndp: denial of service due to insufficient validation of source of NDP messages" (number mark "U       cbuissar@red May 18   54/1369  " thread-indent "\"Re: [oss-security] CVE-2016-3698 libndp: denial of service due to insufficient validation of source of NDP messages\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7832 invoked by uid 550); 18 May 2016 11:40:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7810 invoked from network); 18 May 2016 11:40:30 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=4wq2LaLo+UF76aoIJA3E6NBEJqOTHYoyO4ynsRA5+oQ=;
        b=EHK6uz9zQBifrAyVjhek9ZexpDdQmhmG9Oi+tf0nsrJ0benyBud6/Yu+fQn7Iyf31S
         9RpRUNvqIAlU2/mrgpHC/Xzrl9omj2CXx7wZvsbHktr3+n5D7mJ9J4nRhSYQqlF0xsxQ
         j8BWxQHdvcTKt6YtSVVXJ3W+l4oVEjE5qcAygHgFbHhywGa1A9BpUc9Oc1b1e+Ubw1Y9
         5js1JtQawH9tllFuy7M31gm8fjy8mWUkQLTMuTkLt2LD1JJutGS2VKYmRiwswx8w6aGH
         5kzNwaJLmTrZcrYqJ7ozfTHeBCiuZnebQgP2SJuf0lyDo+NuCh4K2H3BGhhlcqFvOScG
         bQxg==
X-Gm-Message-State: AOPr4FVYAS7++RAAZ+iWgazosQ2bjwnb23AHCeNkyGtSYSj8Oak63nLOMXSOkCp8mMudtY1RrH+eP0w6uEPduBIZ
MIME-Version: 1.0
X-Received: by 10.98.20.197 with SMTP id 188mr10248487pfu.144.1463571618785;
 Wed, 18 May 2016 04:40:18 -0700 (PDT)
Date: Wed, 18 May 2016 13:40:18 +0200
Message-ID: <CAKG8Do6qnT4yPS8B=fTaoFf2x4k-cKy2ixDZLRA8aSxRkuFo2Q@mail.gmail.com>
From: Cedric Buissart <cbuissar@redhat.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c0396fe71040c05331c527c
Subject: Re: [oss-security] CVE-2016-3698 libndp: denial of service due to
 insufficient validation of source of NDP messages

--94eb2c0396fe71040c05331c527c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Accidental miss-use of copy/paste : updated subject with the CVE number.

On Tue, May 17, 2016 at 8:40 PM, Cedric Buissart <cbuissar@redhat.com>
wrote:

> Dear all,
>
> An improper input validation check, and improper origin check flaw during
> the reception of NDP message was discovered in libndp. An attacker in a
> non local network could use this flaw to advertise a node as a router, and
> cause a denial of service attack, or act as a man in the middle.
>
> The patches enforce that hop limit must be 255, to ensure that the NDP
> message
> has not been routed.
>
> Patches can be found upsteam:
>
>  -  libndp: validate the IPv6 hop limit
>
> https://github.com/jpirko/libndp/commit/a4892df306e0532487f1634ba6d4c6d4b=
b381c7f
>
>  -  libndb: reject redirect and router advertisements from non-link-local
>
> https://github.com/jpirko/libndp/commit/2af9a55b38b55abbf05fd116ec097d402=
9115839
>   https://people.freedesktop.org/~lkundrak/.libndp/
>
> Known affected packages : NetworkManager >=3D 1.0
>
> Thanks to Julien Bernard (Viag=C3=A9nie) for discovering the issue
>
> Kind regards,
> --
> Cedric Buissart
> Purkynova 99
> Brno 612 45
>



--=20
Cedric Buissart,
Product Security

Purkynova 99
Brno 612 45

--94eb2c0396fe71040c05331c527c--
