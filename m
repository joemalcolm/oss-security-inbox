X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4728" "Monday" "10" "July" "2017" "20:21:03" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<33a37df8-c4db-0e1c-862a-2ee2d42afb17@redhat.com>" "98" "Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" "^Date:" nil nil "7" "2017071102:21:03" "[oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" (number mark "        kseifried@re Jul 10   98/4728  " thread-indent "\"Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)\"\n") "<20170711012837.GE2012@hunt>" ("<801547.452199401-sendEmail@localhost>" "<20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>" "<20170711012837.GE2012@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13781 invoked by uid 550); 11 Jul 2017 02:21:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13753 invoked from network); 11 Jul 2017 02:21:17 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=Pj0eiG40V5ttLs2zNfL3KTH8Rh+Dd1r7aQcPBtU5IJo=;
        b=p+r/hl/5Ylbx9hT+TQxRB587HnSjECgeL7JfNTZ6Px69V5YS2VxrVF2UgHRHiE4hUR
         kva565966a4tdCnuIDpgT6QzvciD3fD4KVasTqHlRsTw0iOrISuwUS2APd0qM+DAz8yO
         mril1LHnRjXNCra5GzVWRq6flZ5UMzG4mrI8grSSUM7j7ZoSno6zKJAsBWwE1B49nTHd
         JFiMLpuIxotbWKqw9Bvz35t3qyQBhEVY4ofKluidnZVUeWxKe67A/u4g5L/nJUDDfpZ1
         9nL9MplA8cc9CEESugVUthVqQ5iRDVb2G6WvRncgTKEZ84/z5wRpOw4NiYrZ89DHYjHQ
         iHTA==
X-Gm-Message-State: AIVw111Hlt3mwb0r3JNhXhS2t/SvKWPwFecswflWFOuXCRavsU4qflqF
	IbEdpNT7tQy5NlqMkPDljA==
X-Received: by 10.36.237.12 with SMTP id r12mr1310108ith.45.1499739665681;
        Mon, 10 Jul 2017 19:21:05 -0700 (PDT)
References: <801547.452199401-sendEmail@localhost>
 <20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>
 <20170711012837.GE2012@hunt>
Message-ID: <33a37df8-c4db-0e1c-862a-2ee2d42afb17@redhat.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170711012837.GE2012@hunt>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="CFCPUdf4F1hlNbbWuhBQg67QiVnok9ibP"
Date: Mon, 10 Jul 2017 20:21:03 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] mpg123: global buffer overflow in III_i_stereo
 (layer3.c)
To: oss-security@lists.openwall.com

--CFCPUdf4F1hlNbbWuhBQg67QiVnok9ibP
Content-Type: multipart/mixed; boundary="W9sSiXsT8TAVlrcfOtWVAIqd8dEiJGoi5";
 protected-headers="v1"
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: kseifried@redhat.com
To: oss-security@lists.openwall.com
Message-ID: <33a37df8-c4db-0e1c-862a-2ee2d42afb17@redhat.com>
Subject: Re: [oss-security] mpg123: global buffer overflow in III_i_stereo
 (layer3.c)
References: <801547.452199401-sendEmail@localhost>
 <20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>
 <20170711012837.GE2012@hunt>
In-Reply-To: <20170711012837.GE2012@hunt>

--W9sSiXsT8TAVlrcfOtWVAIqd8dEiJGoi5
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable
Content-Language: en-GB

On 2017-07-10 7:28 PM, Seth Arnold wrote:
> On Mon, Jul 10, 2017 at 11:42:53AM +0200, Dr. Thomas Orgis wrote:
>> Is this really worth a CVE, though? So far I was only able to see a
>> crash triggered by the AddressSanitizer. Never from a normal build. So
> It is common to assign CVEs for issues discovered via fuzzers and
> sanitizers even if the consequences aren't visible without them: perhaps
> the consequences aren't visible to users only by accident.
To expand on this: some fuzzing results are largely "who cares", e.g. a
locally executed file converter for office files that crashes, no code
execution largely devolves to "well don't open that file again", but a
web browser/email client, or libraries they depend upon that cause a
crash, yeah, that's a problem (I really hate waiting for all my tabs to
reload, and hopefully I didn't lose any data/progress).
> Some people only accept a vulnerability report if there's an exploit that
> goes along with it but developing even a proof of concept is difficult
> and error-prone. Lack of an exploit doesn't prove that an issue can safely
> be ignored. (There's always someone more dedicated to writing an exploit.)

The beauty is that CVE is now a claims based system, obviously the
stronger the claim (e.g. working exploit code, or a professional
reputation helps) the better the case for a CVE, and conversely there is
also a DISPUTE process, again the stronger the claim, the closer you'll
get to REJECT =3D). Of course proving a negative can be tricky. On the
flip side we do have historical data (e.g. Null pointer deref in Linux
kernel, that's usually a CVE!).
>
> Assigning a CVE number makes downstream consumers aware of the issue and
> each can prioritize a fix as they see fit based on their own threat model=
s.
It also simply creates an entry in the taxonomy so we can discuss it.
The result of that can be "we need to fix this" or "we need to stop
using this" (e.g. some pieces of software have over 1000 CVE's and are
well known to be vectors for infection in web drive by attacks). It lets
us move away from qualitative data to quantitative data (facts yo!) or
any numbr of other responses ("the risk is acceptable").
>> every build of mpg123 in the wild, except for extremely hardened
>> distros that build everything with GCC's sanitizers enabled for daily
>> use, is not affected. Are people running binaries in production with
>> the sanitizers on?
> I believe the general consensus is that only the UBSAN sanitizer is safe
> for 'daily use'; the others aren't themselves security hardened and in
> fact have lead to exploits. This thread has more discussion:
> http://www.openwall.com/lists/oss-security/2016/02/18/1
>
> Thanks

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com



--W9sSiXsT8TAVlrcfOtWVAIqd8dEiJGoi5--

--CFCPUdf4F1hlNbbWuhBQg67QiVnok9ibP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJZZDYQAAoJEBYNRVNeJnmTWEIQANfQJEWnisO/Z+2zo5alZt5U
+wNa4Wjh6tNMxep8fi/gdBNRBGABJunw1+yFX8e1XfPismIJb5da2GSXIetYaXuO
pZK5RMAwv0kxPZd4y4nboEgfnj4SpHuB9aq8CwVFd+sUZMl2aA8xA7U4zYDXF4br
PJgr88kPT3Tb4AfCPioiDjKKLH3AktX5uWiKlUglLU3m5BOwM4xNSnI0cSgcdzHD
jjeC01DMPyEr3ly8wMUKmsiqWcWBj3wIc4EJLvAweKIORdvCa5azDdl2tTdPnXqN
wp1220J8ZONixbv1N1ZdrkXhl3/T7tUHLAkwwakE1Ky+pPO82M5xIaHkXLWgwfG6
pMOpjvLSygiRgmQQfTUQELhKoFASFrim021OZD7KqmZbtuOv8IWix9jXO8CLVLG7
3SgzWZx2ROFhuoRpLRprPTjAXgVOZjmAgg4boZmQTS9T5nYrxgFkc0CJ7J3NNXgT
Tsz+BSnb37w41nkpnaasqDG3b+Rxj3wf5v5i51MTvuCYO3TLl+Dycd1T1VPzE7Zs
x9gZV0Xu73zSWuLTc4V0cpE61ARYPy90egpKWeNoPk/uY757wP0A/LrG3K/x1RJS
ufaqtqVnC7q9g2Ub3VE/McG+Qd5jSit3uaknKPWPyh/EHgWjxGapGt5+4FyzoIb4
u+sZVI35ibptT6I6t6Ep
=uuzf
-----END PGP SIGNATURE-----

--CFCPUdf4F1hlNbbWuhBQg67QiVnok9ibP--
