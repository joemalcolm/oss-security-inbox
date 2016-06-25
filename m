X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6883" "Saturday" "25" "June" "2016" "10:41:16" "-0500" "Brandon Perry" "bperry.volatile@gmail.com" "<C5D9B35B-045D-41DD-9419-14D50BE494BA@gmail.com>" "140" "Re: [oss-security] libical 0.47 SEGV on unknown address" nil nil nil "6" "2016062515:41:16" "[oss-security] libical 0.47 SEGV on unknown address" (number mark "U       bperry.volat Jun 25  140/6883  " thread-indent "\"Re: [oss-security] libical 0.47 SEGV on unknown address\"\n") "<576EA48D.1070502@oracle.com>" ("<6565BB80-B75B-4CE3-819D-84CCE79F0CA3@gmail.com>" "<576EA48D.1070502@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6112 invoked by uid 550); 25 Jun 2016 15:41:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6088 invoked from network); 25 Jun 2016 15:41:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
         :to;
        bh=TWqj/PInMuwTs+i/ZrXq/oM+CGCSMRDE1VgDX+sJUCg=;
        b=hH3mExHr5098MKYQY2W6BLczMlzIG8FKudpdJF1ZW05iJPxWuRGuBs1K+XXq+hDbA9
         L6vNLNFr/p2BdnkjNFxP/qkEw2uE2u/1m3YH0OrP6Berc9JGlzXA3+XaoyBucEK31kx5
         2VrG0FZINAu10IfRXmwyU7CRhJMyXCCM6hfxsar7ifVrtee3gkIMKTwvwCVicS2fmzXI
         hHyxlzl2pHKDECxCRoLb+BV4FjchpZqzpnzeQT0qOLb/TCG+nHhABzVb+DkV0+B3PlFG
         LSnLzLJtstfxROzOxlWAuEwDSrj4FuAl2III0QQYRL4c2QcOFy0gP5ygBD7AVL2hADCz
         1trg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
         :message-id:references:to;
        bh=TWqj/PInMuwTs+i/ZrXq/oM+CGCSMRDE1VgDX+sJUCg=;
        b=NJk3XgVVUvl1ZYLhkklaiJfZX7+OPloTEyPhxS7nHFEg4Wo2MXBX7yxHhi2ieAOSx6
         aHr5xi/ACCilhpS+xnJMNLaKpASW2N3NeArNv+JL3mrGGlZhuRZwQz1v+mvJ/v0oPWan
         k4Gt3hCcNF6cUUx1foSRCZcko86PJW5ORMaR01AWogIqm/sh6uOILB97XEaS+nbngQ0K
         2jALrjvF/R2T/ExThp89GLAUnX7jCd11xuVSMDd2UnamzpX9MfZyHu0nKZfA6QQDWMV6
         e57gJ+VwftiPHgW0rIU3HhKzR8zbR76ecPrkNMaRC33I+oPTgPN7xA5+68MqF+lPqcb6
         dqCw==
X-Gm-Message-State: ALyK8tLIiDBHyAhWPeNglvBaNUCoPHvh950PtjON4jeoAYm82zrFPBvJwwiHef/hnn/maA==
X-Received: by 10.157.34.170 with SMTP id y39mr6518504ota.66.1466869283623;
        Sat, 25 Jun 2016 08:41:23 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Content-Type: multipart/signed; boundary="Apple-Mail=_0662E968-C032-40A0-96A2-C4A8137E0627"; protocol="application/pgp-signature"; micalg=pgp-sha512
X-Pgp-Agent: GPGMail 2.6b2
From: Brandon Perry <bperry.volatile@gmail.com>
In-Reply-To: <576EA48D.1070502@oracle.com>
Date: Sat, 25 Jun 2016 10:41:16 -0500
Cc: fulldisclosure@seclists.org
Message-Id: <C5D9B35B-045D-41DD-9419-14D50BE494BA@gmail.com>
References: <6565BB80-B75B-4CE3-819D-84CCE79F0CA3@gmail.com> <576EA48D.1070502@oracle.com>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3124)
Subject: Re: [oss-security] libical 0.47 SEGV on unknown address

--Apple-Mail=_0662E968-C032-40A0-96A2-C4A8137E0627
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_46C35C1C-5D50-4A4A-8D08-FEB9BA5DB970"


--Apple-Mail=_46C35C1C-5D50-4A4A-8D08-FEB9BA5DB970
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jun 25, 2016, at 10:34 AM, Alan Coopersmith <alan.coopersmith@oracle.c=
om> wrote:
>=20
> On 06/24/16 06:54 AM, Brandon Perry wrote:
>> I am posting this to Full Disclosure/OSS instead of reporting it because=
 I have
>> opened a handful of libical bugs in the Mozilla bug tracker, alerted
>> security@mozilla.org <mailto:security@mozilla.org>, and worked to show h=
ow and
>> where to reproduce the bugs in Thunderbird, but Mozilla hasn=E2=80=99t s=
hown any care at
>> all about the bugs. Perhaps if I give a sample to the community of the b=
ugs in
>> the bug reports, Mozilla will take the bug reports more seriously. This =
bug
>> attached had not been reported yet.
>=20
> Did you report them to libcial upstream?  http://libical.github.io/libica=
l/ <http://libical.github.io/libical/>

I had initially asked for contact information regarding reporting potential=
ly sensitive security test cases, but after a couple of days, I decided to =
look into another product that I figured would have more visibility and mor=
e power to get things fixed.

https://github.com/libical/libical/issues/235 <https://github.com/libical/l=
ibical/issues/235>
>=20
>> My roommate mentioned Thunderbird being a second-class citizen in the Mo=
zilla
>> world, so if this is the case, this should be made explicit in regards t=
o bug
>> bounty expectations.
>=20
> While Thunderbird is still a beloved child of Mozilla, it's been told it'=
s time
> to move out of its parents house and find its own sources of income/suppo=
rt:
>=20
> https://groups.google.com/d/msg/mozilla.governance/kAyVlhfEcXg/Eqyx1X62BQ=
AJ
> https://blog.mozilla.org/thunderbird/2015/12/thunderbird-active-daily-inq=
uiries-surpass-10-million/
>=20
> --
> 	-Alan Coopersmith-              alan.coopersmith@oracle.com
> 	 Oracle Solaris Engineering - http://blogs.oracle.com/alanc


--Apple-Mail=_46C35C1C-5D50-4A4A-8D08-FEB9BA5DB970
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; -webkit-line-break: after-white-space;" class=3D""><br class=3D""><di=
v><blockquote type=3D"cite" class=3D""><div class=3D"">On Jun 25, 2016, at =
10:34 AM, Alan Coopersmith &lt;<a href=3D"mailto:alan.coopersmith@oracle.co=
m" class=3D"">alan.coopersmith@oracle.com</a>&gt; wrote:</div><br class=3D"=
Apple-interchange-newline"><div class=3D""><div class=3D"">On 06/24/16 06:5=
4 AM, Brandon Perry wrote:<br class=3D""><blockquote type=3D"cite" class=3D=
"">I am posting this to Full Disclosure/OSS instead of reporting it because=
 I have<br class=3D"">opened a handful of libical bugs in the Mozilla bug t=
racker, alerted<br class=3D""><a href=3D"mailto:security@mozilla.org" class=
=3D"">security@mozilla.org</a> &lt;<a href=3D"mailto:security@mozilla.org" =
class=3D"">mailto:security@mozilla.org</a>&gt;, and worked to show how and<=
br class=3D"">where to reproduce the bugs in Thunderbird, but Mozilla hasn=
=E2=80=99t shown any care at<br class=3D"">all about the bugs. Perhaps if I=
 give a sample to the community of the bugs in<br class=3D"">the bug report=
s, Mozilla will take the bug reports more seriously. This bug<br class=3D""=
>attached had not been reported yet.<br class=3D""></blockquote><br class=
=3D"">Did you report them to libcial upstream? &nbsp;<a href=3D"http://libi=
cal.github.io/libical/" class=3D"">http://libical.github.io/libical/</a><br=
 class=3D""></div></div></blockquote><div><br class=3D""></div><div>I had i=
nitially asked for contact information regarding reporting potentially sens=
itive security test cases, but after a couple of days, I decided to look in=
to another product that I figured would have more visibility and more power=
 to get things fixed.</div><div><br class=3D""></div><div><a href=3D"https:=
//github.com/libical/libical/issues/235" class=3D"">https://github.com/libi=
cal/libical/issues/235</a></div><br class=3D""><blockquote type=3D"cite" cl=
ass=3D""><div class=3D""><div class=3D""><br class=3D""><blockquote type=3D=
"cite" class=3D"">My roommate mentioned Thunderbird being a second-class ci=
tizen in the Mozilla<br class=3D"">world, so if this is the case, this shou=
ld be made explicit in regards to bug<br class=3D"">bounty expectations.<br=
 class=3D""></blockquote><br class=3D"">While Thunderbird is still a belove=
d child of Mozilla, it's been told it's time<br class=3D"">to move out of i=
ts parents house and find its own sources of income/support:<br class=3D"">=
<br class=3D""><a href=3D"https://groups.google.com/d/msg/mozilla.governanc=
e/kAyVlhfEcXg/Eqyx1X62BQAJ" class=3D"">https://groups.google.com/d/msg/mozi=
lla.governance/kAyVlhfEcXg/Eqyx1X62BQAJ</a><br class=3D"">https://blog.mozi=
lla.org/thunderbird/2015/12/thunderbird-active-daily-inquiries-surpass-10-m=
illion/<br class=3D""><br class=3D"">-- <br class=3D""><span class=3D"Apple=
-tab-span" style=3D"white-space:pre">	</span>-Alan Coopersmith- &nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alan.coo=
persmith@oracle.com<br class=3D""><span class=3D"Apple-tab-span" style=3D"w=
hite-space:pre">	</span> Oracle Solaris Engineering - http://blogs.oracle.c=
om/alanc<br class=3D""></div></div></blockquote></div><br class=3D""></body=
></html>=

--Apple-Mail=_46C35C1C-5D50-4A4A-8D08-FEB9BA5DB970--

--Apple-Mail=_0662E968-C032-40A0-96A2-C4A8137E0627
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJXbqYhAAoJEKJq8VjVbt2pRwoQAJtucDiOKUlyIVXc93RpU69u
/eOo+f+Y7du8V7DnyYRkL8K64bKg6Uf+HF6kjwxr3ZhyzID1GURanao6vLSL2yyS
/LN5xJGJdboZ0O+/Zvk4o9QBjHAP6G+vH5h808iF8Z/Pr5/3pLWzVH6eNKhtOvjt
CZEK+hVTaXb06qAzm9y9+MUAecj4/xPHi63mnUCvYZubvNTSgoYah1w8gYccDdzK
ZlGD1Us7vSN8t0C/P6+fqcQUf4dg1+956rLGR+SxFNOvQ/+YeuHQbr09FNSZ9tj+
J3MeTcjL9t7PpQ3JlYuZUGMYNJoTtT9LzQWKtC1WgIkHxnVi66DDgiRF9Y/r83nj
l8Ubq2qJ5Ax8O7nnRc/P6JO5AU0JsJc1vbq/3qaRn5AJzF0BRbQgKty66rlqd8ME
Fjap3j2I/SzZtA7Yfu552yQwV/oxyS5T+PIN/HZc/f9ycYSb9QvYCfdM9RFKAMSs
P9V2DYOOQoANFgXDdSU79jUwZm1voSToV/e+wavojiuy2r0vn6jPSuqXvHeHRKQZ
xuNeZjaQRUd7SckzhSaSfQ/keDsw5O2dJvSYEZQYoGD1iApAC7zLCMV/FJVXSi39
hQ66y6RwHXpEAfmebApuONCxPfz2ZWeK8NvlH59EjDEztMjB+zIJaucrlXbkVtnr
v6GYIFX0EAckeveE5M9Y
=ht4z
-----END PGP SIGNATURE-----

--Apple-Mail=_0662E968-C032-40A0-96A2-C4A8137E0627--
