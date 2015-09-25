X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2140" "Thursday" "24" "September" "2015" "19:55:02" "-0500" "Austin English" "austinenglish@gmail.com" "<CACC5Q1etFdEav9SnOtf5CqqhdQVm2dSM340sExwaKzf84YcDWQ@mail.gmail.com>" "64" "Re: [oss-security] CVE request for wget" nil nil nil "9" "2015092500:55:02" "[oss-security] CVE request for wget" (number mark "        austinenglis Sep 24   64/2140  " thread-indent "\"Re: [oss-security] CVE request for wget\"\n") "<55EFE54C.4080101@suse.com>" ("<CACC5Q1dz1GhKVD+0P6Ox7Gom8A0wzFv8FzQ6fbE0twehUOhawA@mail.gmail.com>" "<55EFE54C.4080101@suse.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19904 invoked by uid 550); 25 Sep 2015 00:55:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19874 invoked from network); 25 Sep 2015 00:55:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type:content-transfer-encoding;
        bh=o5QrmulDBZ76IjHljE2W6CY3ayD+wYPMJ484a9AyT4E=;
        b=YqLA7QRTvyuH7A0AmOwQAsHwDLdNYPtvZZcMVC5MmylYdBTWYFv5e7I4jqIXRy9Aoi
         t0jJt9awq0szH9EvdGhukKLtKZlY7TnilYsggOj2RXGL/IDq/RYLumHpZ0EG/UPeWVpN
         gcTnnyA63eBkhZ4YBi9+bdfvZIf3caN9lpzU1nZCIFeattFaANuAvMz4Qdb7f+KHF8Qt
         6EEZB3KzZ98FV98ndZf2oqRGFugl5JKEm4gUOrd9UTFBxxP9p+xhEOHQuNwQSZksWpJp
         L/crRbfc1ZNHeCLST7LOk8epKTb7I0TGyhP9D/Ezzb2qaOt5vFAEe7NvMMBm/aTpStgi
         2GGA==
X-Received: by 10.107.19.70 with SMTP id b67mr3517795ioj.144.1443142541821;
 Thu, 24 Sep 2015 17:55:41 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <55EFE54C.4080101@suse.com>
References: <CACC5Q1dz1GhKVD+0P6Ox7Gom8A0wzFv8FzQ6fbE0twehUOhawA@mail.gmail.com>
 <55EFE54C.4080101@suse.com>
Message-ID: <CACC5Q1etFdEav9SnOtf5CqqhdQVm2dSM340sExwaKzf84YcDWQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com, cve-assign@mitre.org
Date: Thu, 24 Sep 2015 19:55:02 -0500
From: Austin English <austinenglish@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request for wget
To: Andreas Stieger <astieger@suse.com>

On Wed, Sep 9, 2015 at 2:52 AM, Andreas Stieger <astieger@suse.com> wrote:
> Hello,
>
> On 09/07/2015 10:39 PM, Austin English wrote:
>> This was reported to tails-dev [1] and other places [2] and is fixed
>> upstream [3].
>>
>> I've rebased the patch for 1.13.4 (attached), which is the current
>> version in Debian wheezy [4] that Tails is based on.
>>
>> Please keep me in CC, as I'm not subscribed.
>>
>> [1] https://mailman.boum.org/pipermail/tails-dev/2015-August/009370.html
>> [2] https://lists.gnu.org/archive/html/bug-wget/2015-08/msg00020.html
>> [3] http://git.savannah.gnu.org/cgit/wget.git/commit/?id=3D075d7556964f5=
a871a73c22ac4b69f5361295099
>> [4] https://packages.debian.org/wheezy/wget
>
> To reproduce:
>
> A $> nc -lv 8020
> B $> wget ftp://A:8020
>
> On A keep entering "200 ok", the following will be printed:
>
>> $ wget ftp://dexter:8020 > --2015-09-08 17:11:30-- ftp://dexter:8020/ > =
=3D>
> =E2=80=98.listing=E2=80=99 > Resolving dexter (dexter)... 10.160.4.160 > =
Connecting to
> dexter (dexter)|10.160.4.160|:8020... connected. > Logging in as
> anonymous ... Logged in! > =3D=3D> SYST ... done. =3D=3D> PWD ... done. >=
 =3D=3D>
> TYPE I ... done. =3D=3D> CWD not needed. > =3D=3D> PASV ... > Cannot pars=
e PASV
> response. > =3D=3D> PORT ...
>
> On the server side:
>
>> $ nc -lv 8020 > Connection from 10.160.4.160 port 8020 [tcp/intu-ec-svcd=
isc] accepted
>> 200 ok > USER anonymous > 200 ok > SYST > 200 ok > PWD > 200 ok > TYPE
> I > 200 ok > PASV > 200 ok > PORT 10,160,4,160,134,42
>        ^^^^^^^^^^^^
>
> This would affect IP users connecting through a privacy proxy or VPN,
> leaking their public IP address if they are otherwise connected without
> NAT. For users connecting without such a proxy but through NAT, it leaks
> the internal IP address.
>
> https://bugzilla.suse.com/show_bug.cgi?id=3D944858
>
> Andreas
>
> --
> Andreas Stieger <astieger@suse.com>
> Project Manager Security
> SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton=
, HRB 21284 (AG N=C3=BCrnberg)

Ping. It's been over two weeks, I was hoping to have a CVE for this by now =
:)

--=20
-Austin
