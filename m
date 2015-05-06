X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2995" "Wednesday" "6" "May" "2015" "10:39:29" "-0400" "Sliv TaMere" "slivtamere@gmail.com" "<CAKQ5aGyoNrcZSpZ--ycoyGF-oSYGGW11u3Z6-A1aCd4Jy96TTQ@mail.gmail.com>" "86" "Re: [oss-security] PHP and some == wonkiness" nil nil nil "5" "2015050614:39:29" "[oss-security] PHP and some == wonkiness" (number mark "        slivtamere@g May  6   86/2995  " thread-indent "\"Re: [oss-security] PHP and some == wonkiness\"\n") "<CANtF8NCvJ0sDKF3FUsFSZMeHRHkr+4q18-LEQPh9SQagR601yw@mail.gmail.com>" ("<55479C75.3070000@redhat.com>" "<CALwr1GnxttdqOssUd82R4P8wzEd-UhuWWVY3xpkqgt09UmgBuw@mail.gmail.com>" "<554868F6.1070305@redhat.com>" "<20150505072248.GA14223@zoho.com>" "<554874C0.509@redhat.com>" "<20150505082442.GB14223@zoho.com>" "<20150505090109.GC14223@zoho.com>" "<CANtF8NCvJ0sDKF3FUsFSZMeHRHkr+4q18-LEQPh9SQagR601yw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30084 invoked by uid 550); 6 May 2015 14:51:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24564 invoked from network); 6 May 2015 14:39:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=erZIb/2662DmBposLeMU+viWAzbUGbFnxGoLwsl2x2s=;
        b=yLT9FcRYYR7jU631IbmH8UfLsupdQYWlSmM2LxlmLDupFfqcfhGWV3NLjV4DA72uJP
         F0TKxV/PNrkOtSBzCCP5W2Hy6Cv68WsdEAJmSUq7C7hYD+JhNHAUlKchPSYcahYTqWQI
         JaocBFgA/hbcaBLzFeRJmriz2yKkGeX855zF2QxLmyWFSFz9N2p9ZgtcVjFxEOYoHYPb
         82OY1XnlQLg2SGuyn5HrfFzToNMGE1GZ68Z3Z38VVCEc3eVqkhgW+HdhBMWO4TSJVbaL
         lIWhIcQKQP3UdjoC3ZRSZz4Ax2Ek3VO/CJUsodU9OwQk/jMWtjp0IqcgNqVxG2nomr7E
         jzNA==
MIME-Version: 1.0
X-Received: by 10.194.95.41 with SMTP id dh9mr63365823wjb.55.1430923169979;
 Wed, 06 May 2015 07:39:29 -0700 (PDT)
In-Reply-To: <CANtF8NCvJ0sDKF3FUsFSZMeHRHkr+4q18-LEQPh9SQagR601yw@mail.gmail.com>
References: <55479C75.3070000@redhat.com>
	<CALwr1GnxttdqOssUd82R4P8wzEd-UhuWWVY3xpkqgt09UmgBuw@mail.gmail.com>
	<554868F6.1070305@redhat.com>
	<20150505072248.GA14223@zoho.com>
	<554874C0.509@redhat.com>
	<20150505082442.GB14223@zoho.com>
	<20150505090109.GC14223@zoho.com>
	<CANtF8NCvJ0sDKF3FUsFSZMeHRHkr+4q18-LEQPh9SQagR601yw@mail.gmail.com>
Message-ID: <CAKQ5aGyoNrcZSpZ--ycoyGF-oSYGGW11u3Z6-A1aCd4Jy96TTQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7bea453c3f643e05156ac320
Date: Wed, 6 May 2015 10:39:29 -0400
From: Sliv TaMere <slivtamere@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] PHP and some == wonkiness
To: oss-security@lists.openwall.com

--047d7bea453c3f643e05156ac320
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

The =3D=3D stuff is just one of the problems of PHP:
http://eev.ee/blog/2012/04/09/php-a-fractal-of-bad-design/

2015-05-05 13:07 GMT-04:00 Grandma Eubanks <tborland1@gmail.com>:

>
> http://turbochaos.blogspot.com/2013/08/exploiting-exotic-bugs-php-type-ju=
ggling.html
>
> Your examples are seen often, and the md5 comparison example was exploited
> in SMF as my public exploit shows in the above link.
>
> if (empty($_POST['code']) || substr($realCode, 0, 10) !=3D
> substr(md5($_POST['code']), 0, 10)) [4]
>         {
>                 // Stop brute force attacks like this.
>                 validatePasswordFlood($_POST['u'], $flood_value, false);
> [5]
>
> There's also other interesting oddities with their juggling system. I
> provide several links to how you can see them, but one of my favorites is:
>
> if ($input < "30") {
>         print("$input < 30\t");
>         print((int)$input);
> }
>
> You can see how this is bypassed under the "Math is Crazy" section and th=
en
> think on how this can be extrapolated.
>
> On Tue, May 5, 2015 at 4:01 AM, mancha <mancha1@zoho.com> wrote:
>
> > On Tue, May 05, 2015 at 08:24:42AM +0000, mancha wrote:
> > > On Tue, May 05, 2015 at 09:44:00AM +0200, Florian Weimer wrote:
> > > > On 05/05/2015 09:26 AM, mancha wrote:
> > > >
> > > > > Taking sha1 as our reference hash and "=3D=3D" as our equivalence
> > > > > relation:
> > > > >
> > > > > All [a-f][0-9a-f]{39} are in equivalence class A.
> > > > >
> > > > > All 42[a-f][0-9a-f]{37} are in equivalence class B.
> > > > >
> > > > > Note: those regexes aren't representative of the full equivalence
> > > > > classes because prepending 0s doesn't alter the value (i.e.
> > > > > 0[a-f][0-9a-f]{38} is in equivalence class "A" as well..
> > > >
> > > > I cannot reproduce this.  Or you use =E2=80=9Cequivalence class=E2=
=80=9D in a
> > > > non-standard way.
> > > >
> > > > -- Florian Weimer / Red Hat Product Security
> > >
> > > I was using "equivalence class" in a standard way but mis-understood
> > > PHP's casting rules when comparing strings so never mind that comment.
> > >
> > > To raise the SNR back up, I agree with your assessment if we account
> > > for prepended 0s. So out of the 16^40 total hashes, I believe
> > > 10^38+10^37+...+10^1 of them will evaluate to float(0). A bit higher
> > > than your estimate (which only considered 10^38 of them). Same order
> > > of magnitude though.
> > >
> > > --mancha
> >
> > That has a small off-by-one because 40 0s will be cast to float(0) when
> > compared to those.
> >
> > Also, we have equivalence classes such as:
> >
> > 2e00000000000000000000000000000000000001
> > 02e0000000000000000000000000000000000001
> > ...
> > 0000000000000000000000000000000000002e01
> > 00000000000000000000000000000000000002e1
> > 0000000000000000000000000000000000000020
> >
> > --mancha
> >
>

--047d7bea453c3f643e05156ac320--
