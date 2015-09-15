X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1047" "Tuesday" "15" "September" "2015" "16:33:13" "+0000" "Kurt Grutzmacher" "grutz@jingojango.net" "<CAMDnkS=1BX3c0CEE1+nhcjiE2LNS_QhJnYd+W98-Tb_SCBWsvg@mail.gmail.com>" "38" "Re: [oss-security] CVE-2015-6584: XSS in DataTables" nil nil nil "9" "2015091516:33:13" "[oss-security] CVE-2015-6584: XSS in DataTables" (number mark "        grutz@jingoj Sep 15   38/1047  " thread-indent "\"Re: [oss-security] CVE-2015-6584: XSS in DataTables\"\n") "<87mvwoj6gu.fsf@redhat.com>" ("<87mvwoj6gu.fsf@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28306 invoked by uid 550); 15 Sep 2015 16:51:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32523 invoked from network); 15 Sep 2015 16:33:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jingojango.net; s=dkim;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-type;
        bh=bSf9l/UudAc13ipDhy5H9HjJOsiSsJZR3oNvTckdUuA=;
        b=dfcUFgnIbMSAkrCVRfCCn1jfuPUgmXz4NQBBj8Ni52GPHjcT5w0Em6MQ6eTZpJp4fr
         XpWfNq3qHnTpGPaHHpzEYgw8/mkCZXtTUm+A//aWJ6si5MRvVxwrgozzHCipk6FlQ0N7
         pIL9kGbt/J6MYomILRajzd3weGPavXdenW8l4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-type;
        bh=bSf9l/UudAc13ipDhy5H9HjJOsiSsJZR3oNvTckdUuA=;
        b=AERezs8ZH3fUngOfvwiKymAhR7huKf9Qqu4h2FYrq61zKJc5v+c9Y1NdZYh9LUWHTx
         OntpQV323NMMX6LHqXSqpoEEf3CIMcdJxFmzWP+COydtora4bnZw6sp6sQJEQfIEW6Z9
         mvGOefzPfclDB1BWar0QyP3keKPVce4RUHBKAxIUkNHNgSeQsVmoqW6alfRdy75NPTMO
         24DYQH+3ITLaX4qOT8C/CF6wdjDExq8pRBFeuxfprOw8t71+PTzG5N6QxCxviYjaTsXy
         hLJ7viIIiYk1q0XMbgkNdAmxB4178n5SycuBwEKr7MxVdkzP1pOkEKviVzIQmUMjNlWj
         2dJg==
X-Gm-Message-State: ALoCoQnvgnQkaBVPEcdNJqIlhhb4FiilSgODkiwf9qLbeYNQ6CVn4JZ/x9vJ2JTkZVUen1hQcu24
X-Received: by 10.140.92.106 with SMTP id a97mr33446014qge.43.1442334803430;
 Tue, 15 Sep 2015 09:33:23 -0700 (PDT)
MIME-Version: 1.0
References: <87mvwoj6gu.fsf@redhat.com>
In-Reply-To: <87mvwoj6gu.fsf@redhat.com>
Message-ID: <CAMDnkS=1BX3c0CEE1+nhcjiE2LNS_QhJnYd+W98-Tb_SCBWsvg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1139644e9b54c3051fcbbd00
Date: Tue, 15 Sep 2015 16:33:13 +0000
From: Kurt Grutzmacher <grutz@jingojango.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-6584: XSS in DataTables
To: oss security list <oss-security@lists.openwall.com>

--001a1139644e9b54c3051fcbbd00
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://github.com/DataTables/DataTables/issues/602 speaks to the XSS in
the unit testing code.

https://github.com/DataTables/DataTablesSrc/commit/ccf86dc5982bd8e16d is
the commit.



On Tue, Sep 15, 2015 at 3:57 AM Martin Prpic <mprpic@redhat.com> wrote:

> Hi,
>
> CVE-2015-6584 was assigned to a cross-site scripting flaw in DataTables:
>
>
> https://www.netsparker.com/cve-2015-6384-xss-vulnerability-identified-in-=
datatables/
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-6584
>
> Any pointers on which commit fixes this issue? The advisory linked above
> only mentions it was fixed in 1.10.9, but the changelog for that version
> does not mention the CVE, or any change that looks like XSS for that
> matter.
>
> https://cdn.datatables.net/1.10.9/
> https://github.com/DataTables/DataTables/commits/master
>
> Thanks!
>
> --
> Martin Prpi=C4=8D / Red Hat Product Security
>

--001a1139644e9b54c3051fcbbd00--
